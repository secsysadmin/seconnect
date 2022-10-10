# frozen_string_literal: true
require 'pry'
class SessionsController < ApplicationController
     def create
          @user = User.find_by(email: params[:email])
          ## authenticate user credentials
          if !!@user && @user.authenticate(params[:password])
               # set session and redirect on success
               session[:user_id] = @user.id
               redirect_to(home_path(@user))
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

     def omniauth 
          user = User.find_or_create_by(uid: request.env['omniauth.auth'][:uid]) do |u|
               u.first_name = request.env['omniauth.auth'][:info][:first_name]
               u.last_name = request.env['omniauth.auth'][:info][:last_name]
               u.email = request.env['omniauth.auth'][:info][:email]
               u.permission_type = 'user'
               u.password = SecureRandom.hex(15)
          end 
          if user.valid?
               session[:user_id] = user.id
               redirect_to(home_path(user))
          else
               redirect_to root 
          end

     end 
     # def request
     #     @request = Request.find_by(user_id: params[:user_id])
     # end
end
