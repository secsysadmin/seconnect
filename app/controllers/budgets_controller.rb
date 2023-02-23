# frozen_string_literal: true

class BudgetsController < ApplicationController
     before_action :set_budget, only: %i[show edit update destroy]

     # GET /budgets or /budgets.json
     def index
          @budgets = Budget.all
     end

     # GET /budgets/1 or /budgets/1.json
     def show
          @budget_categories = @budget.budget_category_ids
          @user = User.find(session[:user_id])
     end

     # GET /budgets/new
     def new
          @budget = Budget.new
     end

     # GET /budgets/1/edit
     def edit; end

     # POST /budgets or /budgets.json
     def create
          @budget = Budget.new(budget_params)

          respond_to do |format|
               if @budget.save
                    format.html do
                         redirect_to(budget_url(@budget),
                                     notice: 'Budget was successfully created.'
                                    )
                    end
                    format.json { render(:show, status: :created, location: @budget) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json { render(json: @budget.errors, status: :unprocessable_entity) }
               end
          end
     end

     # PATCH/PUT /budgets/1 or /budgets/1.json
     def update
          respond_to do |format|
               if @budget.update(budget_params)
                    format.html do
                         redirect_to(budget_url(@budget),
                                     notice: 'Budget was successfully updated.'
                                    )
                    end
                    format.json { render(:show, status: :ok, location: @budget) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @budget.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /budgets/1 or /budgets/1.json
     def destroy

          # delete all subcategories in budget
          @budget.budget_subcategory_ids.each do |subcategory_id|
               BudgetSubcategory.find(subcategory_id).destroy!
          end

          # delete all categories for budget
          @budget.budget_category_ids.each do |category_id|
               BudgetCategory.find(category_id).destroy!
          end

          @budget.destroy!

          respond_to do |format|
               format.html do
                    redirect_to(budgets_url, notice: 'Budget was successfully deleted.')
               end
               format.json { head(:no_content) }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_budget
          @budget = Budget.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def budget_params
          params.require(:budget).permit(:name, :amount, :fiscal_year, :budgeted, :active, :locked,
                                         :default
          )
     end
end
