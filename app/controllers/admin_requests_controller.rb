class AdminRequestsController < RequestsController
    before_action :set_request, only: %i[ show edit update destroy ]
  
    # GET /requests or /requests.json
    def index
      @requests = Request.all
    end
  
    # GET /requests/1 or /requests/1.json
    def show
    end
  
    def update_status
        @request = Request.find(params[:id])
        if params[:status].present? && Post::STATUSES.include?(params[:status].to_sym)
          @post.update(status: params[:status])
          redirect_to @request, notice: "Status changed to #{@request.status}"
        else
          redirect_to @request, alert: "Stop hacking"
        end
    end
end
