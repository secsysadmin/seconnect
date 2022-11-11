# frozen_string_literal: true

class BudgetSubcategoriesController < ApplicationController
     before_action :set_budget_subcategory, only: %i[show edit update destroy]

     # GET /budget_subcategories or /budget_subcategories.json
     def index
          @budget_subcategories = BudgetSubcategory.all
     end

     # GET /budget_subcategories/1 or /budget_subcategories/1.json
     def show; end

     # GET /budget_subcategories/new
     def new
          @budget_subcategory = BudgetSubcategory.new
     end

     # GET /budget_subcategories/1/edit
     def edit; end

     # POST /budget_subcategories or /budget_subcategories.json
     def create
          @budget_subcategory = BudgetSubcategory.new(budget_subcategory_params)

          respond_to do |format|
               if @budget_subcategory.save
                    format.html do
                         redirect_to(budget_subcategory_url(@budget_subcategory),
                                     notice: 'Budget subcategory was successfully created.'
                                    )
                    end
                    format.json { render(:show, status: :created, location: @budget_subcategory) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json do
                         render(json: @budget_subcategory.errors, status: :unprocessable_entity)
                    end
               end
          end
     end

     # PATCH/PUT /budget_subcategories/1 or /budget_subcategories/1.json
     def update
          respond_to do |format|
               if @budget_subcategory.update(budget_subcategory_params)
                    format.html do
                         redirect_to(budget_subcategory_url(@budget_subcategory),
                                     notice: 'Budget subcategory was successfully updated.'
                                    )
                    end
                    format.json { render(:show, status: :ok, location: @budget_subcategory) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json do
                         render(json: @budget_subcategory.errors, status: :unprocessable_entity)
                    end
               end
          end
     end

     # DELETE /budget_subcategories/1 or /budget_subcategories/1.json
     def destroy
          @budget_subcategory.destroy!

          respond_to do |format|
               format.html do
                    redirect_to(budget_subcategories_url,
                                notice: 'Budget subcategory was successfully destroyed.'
                               )
               end
               format.json { head(:no_content) }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_budget_subcategory
          #  User.find(session[:user_id]).committee_id
          @budget_subcategory = BudgetSubcategory.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def budget_subcategory_params
          params.require(:budget_subcategory).permit(:name, :budgeted)
     end
end
