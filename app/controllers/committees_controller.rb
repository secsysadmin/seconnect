# frozen_string_literal: true

class CommitteesController < ApplicationController
     before_action :set_committee, only: %i[show edit update destroy]

     # GET /committees or /committees.json
     def index # ADMIN ONLY
          if session[:user_id]
               @user = User.find(session[:user_id])
               # check for proper permissions
               if (@user.permission_type == 'admin')
                    @committees = Committee.all
               else
                    redirect_to(root_url) and return
               end
          else
               redirect_to(root_url) and return
          end
     end

     # GET /committees/1 or /committees/1.json
     def show # ADMIN AND USER
          if @committee != nil && session[:user_id]
               @user = User.find(session[:user_id])
               # check for proper permissions
               if (@user.permission_type == 'admin' || @user.permission_type == 'user')
                    @users = @committee.users
               else
                    redirect_to(root_url) and return
               end
          else
               redirect_to(root_url) and return
          end
     end

     # GET /committees/new
     def new # ADMIN ONLY
          if session[:user_id]
               @user = User.find(session[:user_id])
               # check for proper permissions
               if (@user.permission_type == 'admin')
                    @committee = Committee.new
               else
                    redirect_to(root_url) and return
               end
          else
               redirect_to(root_url) and return
          end
     end

     # GET /committees/1/edit
     def edit # ADMIN ONLY
          if @committee != nil && session[:user_id]
               @user = User.find(session[:user_id])
               # check for proper permissions
               if (@user.permission_type == 'admin')
                    @users = @committee.users
               else
                    redirect_to(root_url) and return
               end
          else
               redirect_to(root_url) and return
          end
     end

     # POST /committees or /committees.json
     def create
          @committee = Committee.new(committee_params)

          respond_to do |format|
               if @committee.save
                    format.html do
                         redirect_to(committee_url(@committee),
                                     notice: 'Committee was successfully created.'
                                    )
                    end
                    format.json { render(:show, status: :created, location: @committee) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json { render(json: @committee.errors, status: :unprocessable_entity) }
               end
          end
     end

     # PATCH/PUT /committees/1 or /committees/1.json
     def update
          respond_to do |format|
               if @committee.update(committee_params)
                    format.html do
                         redirect_to(committee_url(@committee),
                                     notice: 'Committee was successfully updated.'
                                    )
                    end
                    format.json { render(:show, status: :ok, location: @committee) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @committee.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /committees/1 or /committees/1.json
     def destroy
          @committee.destroy!

          respond_to do |format|
               format.html do
                    redirect_to(committees_url, notice: 'Committee was successfully destroyed.')
               end
               format.json { head(:no_content) }
          end
     end

     private

     def set_committee
          @committee = Committee.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def committee_params
          params.require(:committee).permit(:committee_name, :budget, :user_id)
     end
end
