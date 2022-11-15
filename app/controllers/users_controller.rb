# frozen_string_literal: true
require 'pry'
class UsersController < ApplicationController

     def index # ADMIN ONLY
          if session[:user_id]
               @user = User.find(session[:user_id])
               # check for proper permissions
               if (@user.permission_type == 'admin')
                    @users = User.all
               else
                    redirect_to(root_url) and return
               end
          else
               redirect_to(root_url) and return
          end
     end

     # GET /users/1 or /users/1.json
     def show # ADMIN AND USER
          if session[:user_id]
               @current_user = User.find(session[:user_id]) # keep track of session user
               # check for proper permissions
               if (@current_user.permission_type == 'admin' || @current_user.permission_type == 'user')
                    @user = User.find(params[:id])
               else
                    redirect_to(root_url) and return
               end
          else
               redirect_to(root_url) and return
          end
     end

     # GET /users/new
     def new
          @user = User.new
     end

     # GET /users/1/edit
     def edit
          if session[:user_id]
               @current_user = User.find(session[:user_id]) # keep track of session user
               # check for proper permissions
               if (@current_user.permission_type == 'admin' || @current_user.permission_type == 'user')
                    @user = User.find(params[:id])
               else
                    redirect_to(root_url) and return
               end
          else
               redirect_to(root_url) and return
          end
     end

     # POST /users or /users.json
     def create
          @user = User.new(user_params)
          if @user.save
               session[:user_id] = @user.id
               redirect_to root_path, notice: "Successfully created account"
          else
               render(:new)
          end
     end

     # PATCH/PUT /users/1 or /users/1.json
     def update
          @user = User.find(params[:id])
          if session[:user_id]
               @current_user = User.find(session[:user_id]) # keep track of session user
          end

          respond_to do |format|
               if @user.update(user_params)
                    format.html do
                         
                         if (@current_user.permission_type == 'admin')
                              redirect_to(users_path, notice: 'User was successfully updated.')
                         else
                              redirect_to(user_url(@user), notice: 'User was successfully updated.')
                         end
                    end
                    # format.json { render(:show, status: :ok, location: @user) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    # format.json { render(json: @user.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /users/1 or /users/1.json
     def destroy
          @user = User.find(params[:id])
          @user.destroy

          respond_to do |format|
               format.html { redirect_to users_url, notice: "User was successfully destroyed." }
               # format.json { head :no_content }
          end
     end

     private

     # Only allow a list of trusted parameters through.
     def user_params
          params.require(:user).permit(:first_name, :last_name, :street_address, :city, :state,
                                       :zip_code, :uin, :email, :password, :phone_number, :committee_id, :permission_type, :user_id
          )
     end
end
