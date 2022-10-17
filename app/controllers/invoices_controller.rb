class InvoicesController < ApplicationController
    before_action :set_invoice, only: %i[show edit update destroy]
    def index
        @invoices = Invoice.all
    end
    def show
    end
    def edit
    end
    def new
        @invoice = Invoice.new
   end
    def destroy
        @invoice.destroy!

          respond_to do |format|
               format.html do
                    redirect_to(requests_url, notice: 'Invoice was successfully destroyed.')
               end
               format.json { head(:no_content) }
          end
    end
    def update
        respond_to do |format|
             if @invoice.update(invoice_params)
                  format.html do
                       redirect_to(invoice_url(@invoice),
                                   notice: 'Invoice was successfully updated.'
                                  )
                  end
                  format.json { render(:show, status: :ok, location: @invoice) }
             else
                  format.html { render(:edit, status: :unprocessable_entity) }
                  format.json { render(json: @invoice.errors, status: :unprocessable_entity) }
             end
        end
   end
    def create
        @invoice = Invoice.new(invoice_params)
        respond_to do |format|
            if @invoice.save
                format.html do
                    redirect_to(request_url(@invoice), notice: 'Invoice was successfully created.')
                end
                format.json { render(:show, status: :created, location: @invoice) }
            else
                format.html { render(:new, status: :unprocessable_entity) }
                format.json { render(json: @invoice.errors, status: :unprocessable_entity) }
            end
        end
    end
    private

     # Use callbacks to share common setup or constraints between actions.
     def set_invoice
          @invoice = Invoice.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def invoice_params
        params.permit(:vendor_title, :vendor_ids, :vendor_address, :vendor_city, :vendor_state,
          :vendor_zip, :vendor_paymentmethod)
     end
end
