# frozen_string_literal: true

class SessionsController < ApplicationController
     def create
          @user = User.find_by(email: params[:email])
          ## authenticate user credentials
          if !!@user && @user.authenticate(params[:password])
               # set session and redirect on success
               session[:user_id] = @user.id
               if @user.permission_type == 'admin'
                    redirect_to(admin_home_path(@user))
               else
                    redirect_to(user_home_path(@user))
               end
          else
               # error message on fail
               message = 'Something went wrong! Make sure your username and password are correct.'
               redirect_to(login_path, notice: message)
          end
     end

     def destroy
          # def destroy
          session.clear

          respond_to do |format|
               format.html { redirect_to(login_path, notice: 'User was logged out.') }
               format.json { head(:no_content) }
          end
     end

     # def request
     #     @request = Request.find_by(user_id: params[:user_id])
     # end
end
