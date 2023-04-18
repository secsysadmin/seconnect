# frozen_string_literal: true

class RequestsController < ApplicationController
     before_action :set_request, only: %i[show edit update destroy]

     # GET /requests or /requests.json
     def index
          if session[:user_id]
               @user = User.find(session[:user_id])
               # check for proper permissions
               @requests = if @user.permission_type == 'admin'
                                Request.all
                           else
                                Request.where('user_id' => @user.id)
                           end
          end
     end

     def pending
          if session[:user_id]
               @user = User.find(session[:user_id])
               # check for proper permissions
               @requests = if @user.permission_type == 'admin'
                                Request.where("status = 'pending'")
                           else
                                Request.where("status = 'pending'").where('user_id' => @user.id)
                           end
          end
     end

     def approved
          @requests = Request.all
     end

     def inprogress
          @requests = Request.all
     end

     # GET /requests/1 or /requests/1.json
     def index
          if session[:user_id]
            @current_user = User.find(session[:user_id])
            if @current_user.permission_type == 'user' || @current_user.permission_type == 'admin'
              @requests = Request.all
            else
              redirect_to(root_url) and return
            end
          else
            redirect_to(root_url) and return
          end
        end
        
        

     # GET /requests/new
     def new
          @user = User.find(session[:user_id])
          @budgets = Budget.where('locked = false')
          @budget_categories = BudgetCategory.where('budget_id' => params[:budget_id])
          @budget_subcategories = BudgetSubcategory.where('budget_category_id' => params[:budget_categor_id])
          @request = Request.new(user_id: @user.id, status: 'pending')
     end

     def show
          if session[:user_id]
            @current_user = User.find_by(id: session[:user_id]) # find_by returns nil if record not found
            if @current_user && (@current_user.permission_type == 'admin' || @current_user.permission_type == 'user')
              @user = User.find_by(id: params[:id])
              if @user
                # user found, proceed with rendering the page
              else
                flash[:error] = 'User not found'
                redirect_to(root_url) and return
              end
            else
              redirect_to(root_url) and return
            end
          else
            redirect_to(root_url) and return
          end
        end
        

     # GET /requests/1/edit
     def edit
          @user = User.find(session[:user_id]) if session[:user_id]
     end

     # POST /requests or /requests.json
     def create
          @request = Request.new(request_params)
          @budgets = Budget.all
          @budget_categories = BudgetCategory.where('budget_id' => params[:budget_id])
          @budget_subcategories = BudgetSubcategory.where('budget_category_id' => params[:budget_category_id])

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
                    redirect_to(requests_url, notice: 'Request was successfully deleted.')
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
                                          :gift, :cost, :items_purchased, :request_type, :vendor_id, :vendor_name, :status, :notes, :google_drive_link, :address, :phone_num, :uin
          )
     end

end
