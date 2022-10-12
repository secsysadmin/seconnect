class PayinvoiceController < ApplicationController
    before_action :set_payinvoice, only: %i[show edit update destroy] 

    def index
        @payinvoice = payinvoice.all
   end
   def show 
    end
   def new
    @payinvoice = Payinvoice.new
    end
    def edit; end

    def create
        @payinvoice = Payinvoice.new(request_params)

        respond_to do |format|
             if @payinvoice.save
                  format.html do
                       redirect_to(request_url(@payinvoice),
                                   notice: 'Request was successfully created.'
                                  )
                  end
                  format.json { render(:show, status: :created, location: @payinvoice) }
             else
                  format.html { render(:new, status: :unprocessable_entity) }
                  format.json { render(json: @payinvoice.errors, status: :unprocessable_entity) }
             end
        end
   end
   def update
    respond_to do |format|
         if @payinvoice.update(payinvoice_params)
              format.html do
                   redirect_to(payinvoice_url(@payinvoice),
                               notice: 'Request was successfully updated.'
                              )
              end
              format.json { render(:show, status: :ok, location: @payinvoice) }
         else
              format.html { render(:edit, status: :unprocessable_entity) }
              format.json { render(json: @payinvoice.errors, status: :unprocessable_entity) }
         end
    end
    private

    # Use callbacks to share common setup or constraints between actions.
    def set_request
         @payinvoice = Payinvoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_params
         params.require(:payinvoice).permit(:vendor, :vendor_name, :vendor_id, :address, :city,
                                         :state, :zip, :payment method
         )
    end
end


