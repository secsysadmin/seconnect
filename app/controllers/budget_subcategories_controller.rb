class BudgetSubcategoriesController < ApplicationController
  before_action :set_budget_subcategory, only: %i[ show edit update destroy ]

  # GET /budget_subcategories or /budget_subcategories.json
  def index
    @budget_subcategories = BudgetSubcategory.all
  end

  # GET /budget_subcategories/1 or /budget_subcategories/1.json
  def show
  end

  # GET /budget_subcategories/new
  def new
    @budget_subcategory = BudgetSubcategory.new
  end

  # GET /budget_subcategories/1/edit
  def edit
  end

  # POST /budget_subcategories or /budget_subcategories.json
  def create
    @budget_subcategory = BudgetSubcategory.new(budget_subcategory_params)

    respond_to do |format|
      if @budget_subcategory.save
        format.html { redirect_to budget_subcategory_url(@budget_subcategory), notice: "Budget subcategory was successfully created." }
        format.json { render :show, status: :created, location: @budget_subcategory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @budget_subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_subcategories/1 or /budget_subcategories/1.json
  def update
    respond_to do |format|
      if @budget_subcategory.update(budget_subcategory_params)
        format.html { redirect_to budget_subcategory_url(@budget_subcategory), notice: "Budget subcategory was successfully updated." }
        format.json { render :show, status: :ok, location: @budget_subcategory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @budget_subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_subcategories/1 or /budget_subcategories/1.json
  def destroy
    @budget_subcategory.destroy

    respond_to do |format|
      format.html { redirect_to budget_subcategories_url, notice: "Budget subcategory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_subcategory
      @budget_subcategory = BudgetSubcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def budget_subcategory_params
      params.require(:budget_subcategory).permit(:committee_id, :subcategory_name, :subcategory_amount, :status)
    end
end
