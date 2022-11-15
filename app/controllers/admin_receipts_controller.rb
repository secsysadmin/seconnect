class AdminReceiptsController < ApplicationController
  before_action :set_admin_receipt, only: %i[ show edit update destroy ]

  # GET /admin_receipts or /admin_receipts.json
  def index
    @admin_receipts = AdminReceipt.all
  end

  # GET /admin_receipts/1 or /admin_receipts/1.json
  def show
  end

  # GET /admin_receipts/new
  def new
    @admin_receipt = AdminReceipt.new
  end

  # GET /admin_receipts/1/edit
  def edit
  end

  # POST /admin_receipts or /admin_receipts.json
  def create
    @admin_receipt = AdminReceipt.new(admin_receipt_params)

    respond_to do |format|
      if @admin_receipt.save
        format.html { redirect_to admin_receipt_url(@admin_receipt), notice: "Admin receipt was successfully created." }
        format.json { render :show, status: :created, location: @admin_receipt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_receipts/1 or /admin_receipts/1.json
  def update
    respond_to do |format|
      if @admin_receipt.update(admin_receipt_params)
        format.html { redirect_to admin_receipt_url(@admin_receipt), notice: "Admin receipt was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_receipt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_receipts/1 or /admin_receipts/1.json
  def destroy
    @admin_receipt.destroy

    respond_to do |format|
      format.html { redirect_to admin_receipts_url, notice: "Admin receipt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_receipt
      @admin_receipt = AdminReceipt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_receipt_params
      params.fetch(:admin_receipt, {})
    end
end
