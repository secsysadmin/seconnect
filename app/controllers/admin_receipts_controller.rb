require 'pry'
class AdminReceiptsController < ReceiptsController
    before_action :set_request, only: %i[show edit update destroy]

    def index
        @receipts = Receipt.all
    end

    def show; end


    def edit; end

   
     def update
        respond_to do |format|
             if @receipt.update(receipt_params)
                  format.html do
                       redirect_to(receipt_url(@receipt),
                                   notice: 'Receipt was successfully updated.'
                                  )
                  end
                  format.json { render(:show, status: :ok, location: @receipt) }
             else
                  format.html { render(:edit, status: :unprocessable_entity) }
                  format.json { render(json: @receipt.errors, status: :unprocessable_entity) }
             end
        end
    end
    def destroy
        @receipt.destroy!

        respond_to do |format|
             format.html do
                  redirect_to(receipts_url, notice: 'Receipt was successfully destroyed.')
             end
             format.json { head(:no_content) }
        end
   end

   private

   # Use callbacks to share common setup or constraints between actions.
   def set_receipt
        @receipt = Receipt.find(params[:id])
   end

   # Only allow a list of trusted parameters through.
   def receipt_params
        params.require(:receipt).permit(:user_id, :vendor_id, :details 
        )
   end
end

