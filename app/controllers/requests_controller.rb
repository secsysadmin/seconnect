# frozen_string_literal: true

class RequestsController < ApplicationController
     before_action :set_request, only: %i[show edit update destroy]

     # GET /requests or /requests.json
     def index
          @requests = Request.all
     end

     # GET /requests/1 or /requests/1.json
     def show
          @budget_subcategory = BudgetSubcategory.find(@request.budget_subcategory_id)
          @budget_category = BudgetCategory.find(@budget_subcategory.budget_category_id)
          @budget = @budget_category.budget
     end

     # GET /requests/new
     def new
          @budgets = Budget.all
          @budget_categories = BudgetCategory.where("budget_id" => params[:budget_id])
          @budget_subcategories = BudgetSubcategory.where("budget_category_id" => params[:budget_categor_id])
          @request = Request.new(status: 'In Progress')
     end

     # GET /requests/1/edit
     def edit
          @budgets = Budget.all
          @budget_categories = BudgetCategory.where("budget_id" => params[:budget_id])
          @budget_subcategories = BudgetSubcategory.where("budget_category_id" => params[:budget_category_id])
     end

     # POST /requests or /requests.json
     def create
          @request = Request.new(request_params)
          @budgets = Budget.all
          @budget_categories = BudgetCategory.where("budget_id" => params[:budget_id])
          @budget_subcategories = BudgetSubcategory.where("budget_category_id" => params[:budget_category_id])

          respond_to do |format|
               if @request.save
                    format.html do
                         redirect_to(request_url(@request),
                                     notice: 'Request was successfully created.'
                                    )
                    end
                    format.json { render(:show, status: :created, location: @request) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json { render(json: @request.errors, status: :unprocessable_entity) }
               end
          end
     end

     # PATCH/PUT /requests/1 or /requests/1.json
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

     # DELETE /requests/1 or /requests/1.json
     def destroy
          @request.destroy!

          respond_to do |format|
               format.html do
                    redirect_to(requests_url, notice: 'Request was successfully destroyed.')
               end
               format.json { head(:no_content) }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_request
          @request = Request.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def request_params
          params.require(:request).permit(:user_id, :budget_id, :budget_category_id, :budget_subcategory_id, :tax_category,
                                          :gift, :cost, :items_purchased, :type, :vendor_id, :vendor_name, :status
          )
     end
end
