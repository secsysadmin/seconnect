# frozen_string_literal: true

require 'pry'
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

     def createuser
          @committee = Committee.find_or_create_by!(committee_name: 'default')
          @user = User.find_or_create_by!(uid: '100003231053752770743') do |u|
               u.first_name = 'user'
               u.last_name = 'brs'
               u.email = 'secbrsuser@gmail.com'
               u.permission_type = 'user'
               u.committee_id = @committee.id
          end
          ## authenticate user credentials
          if @user.valid?
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

     def createadmin
          @committee = Committee.find_or_create_by!(committee_name: 'default')
          @user = User.find_or_create_by!(uid: '109290679077990497398') do |u|
               u.first_name = 'admin'
               u.last_name = 'brs'
               u.email = 'secbrs23@gmail.com'
               u.permission_type = 'admin'
               u.committee_id = @committee.id
          end

          ## authenticate user credentials
          if @user.valid?
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

     def omniauth
          user = User.find_or_create_by!(uid: request.env['omniauth.auth'][:uid]) do |u|
               u.first_name = request.env['omniauth.auth'][:info][:first_name]
               u.last_name = request.env['omniauth.auth'][:info][:last_name]
               u.email = request.env['omniauth.auth'][:info][:email]
               u.permission_type = 'user'
               committee = Committee.find_by(committee_name: "default")
               puts "committee = #{committee.inspect}"
               u.committee_id = committee.id
               # budget_subcategory = BudgetSubcategory.find_by(subcategory_name: "default")
               # u.budget_subcategory.committee_id = committee.id
          end
          if user.valid?
               # set session and redirect on success
               session[:user_id] = user.id
               if user.permission_type == 'admin'
                    redirect_to(admin_home_path(user))
               else
                    redirect_to(user_home_path(user))
               end
          else
               # error message on fail
               message = 'omniauth failed'
               redirect_to(login_path, notice: message)
          end
     end

     def user_home
          if session[:user_id]
               @user = User.find(session[:user_id])
               @committee = Committee.find(@user.committee_id)
          end
     end

     def financial_forms
          @user = User.find(session[:user_id]) if session[:user_id]
          respond_to do |format|
               format.html { render(:financial_forms) }
          end
     end
end
