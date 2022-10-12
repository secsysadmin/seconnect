# frozen_string_literal: true

class UsersController < ApplicationController
     before_action :set_user, only: %i[show edit update destroy]

     # GET /users/1 or /users/1.json
     def show
          @user = User.find(params[:id])
     end

     # GET /users/new
     def new
          @user = User.new
     end

     # GET /users/1/edit
     def edit
          @user = User.find(params[:id])
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
          respond_to do |format|
               if @user.update(user_params)
                    format.html do
                         redirect_to(user_url(@user), notice: 'User was successfully updated.')
                    end
                    format.json { render(:show, status: :ok, location: @user) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @user.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /users/1 or /users/1.json
     # def destroy
     #   @user.destroy

     #   respond_to do |format|
     #     format.html { redirect_to users_url, notice: "User was successfully destroyed." }
     #     format.json { head :no_content }
     #   end
     # end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_user
          @user = User.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def user_params
          # eventually committee_id and permission_type MUST be removed from this permit list to prevent users from being able to set
          # these attributes, for now they will remain for testing purposes.
          params.require(:user).permit(:first_name, :last_name, :street_address, :city, :state,
                                       :zip_code, :uin, :email, :password, :phone_number, :committee_id, :permission_type
          )
     end
end
