# frozen_string_literal: true

class AdminRequestsController < RequestsController
     before_action :set_request, only: %i[show edit update destroy]

     # GET /requests or /requests.json
     def index
          @requests = Request.all
     end

     # GET /requests/1 or /requests/1.json
     def show; end

     def edit; end

     def update
          respond_to do |format|
               if @request.update(request_params)
                    format.html do
                         redirect_to(request_url(@request),
                                     notice: 'Request was successfully updated.'
                                    )
                    end
                    format.json { render(:show, status: :ok, location: @request) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @request.errors, status: :unprocessable_entity) }
               end
          end
     end

     def destroy
          @request.destroy!

          respond_to do |format|
               format.html do
                    redirect_to(requests_url, notice: 'Request was successfully destroyed.')
               end
               format.json { head(:no_content) }
          end
     end

     def update_status
          @request = Request.find(params[:id])
          if params[:status].present? && Post::STATUSES.include?(params[:status].to_sym)
               @post.update!(status: params[:status])
               redirect_to(@request, notice: "Status changed to #{@request.status}")
          else
               redirect_to(@request, alert: 'Stop hacking')
          end
     end

     def set_request
          @request = Request.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def request_params
          params.require(:request).permit(:user_id, :budget_id, :category, :subcategory, :subcategory_name, :tax_category,
                                          :gift, :cost, :items_purchased, :type, :vendor_id, :vendor_name, :status
          )
     end
end
