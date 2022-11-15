# frozen_string_literal: true

class AtcsController < ApplicationController
     before_action :set_atc, only: %i[show edit update destroy]

     # GET /atcs or /atcs.json
     def index
          @atcs = Atc.all
     end

     def approved
          @atcs = Atc.all
     end

     def inprogress
          @atcs = Atc.all
     end

     # GET /atcs/1 or /atcs/1.json
     def show; end

     # GET /atcs/new
     def new
          @user = User.find(session[:user_id])
          @atc = Atc.new(user_id: @user.id, status: 'pending')
     end

     # GET /atcs/1/edit
     def edit; end

     # POST /atcs or /atcs.json
     def create
          @atc = Atc.new(atc_params)

          respond_to do |format|
               if @atc.save
                    format.html do
                         redirect_to(atc_url(@atc), notice: 'Atc was successfully created.')
                    end
                    format.json { render(:show, status: :created, location: @atc) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json { render(json: @atc.errors, status: :unprocessable_entity) }
               end
          end
     end

     # PATCH/PUT /atcs/1 or /atcs/1.json
     def update
          respond_to do |format|
               if @atc.update(atc_params)
                    format.html do
                         redirect_to(atc_url(@atc), notice: 'Atc was successfully updated.')
                    end
                    format.json { render(:show, status: :ok, location: @atc) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @atc.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /atcs/1 or /atcs/1.json
     def destroy
          @atc.destroy!

          respond_to do |format|
               format.html { redirect_to(atcs_url, notice: 'Atc was successfully destroyed.') }
               format.json { head(:no_content) }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_atc
          @atc = Atc.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def atc_params
          params.require(:atc).permit(:vendor_id, :user_id, :contact_name, :phone, :email,
                                      :purchase_info, :amount, :notes, :file, :status
          )
     end
end
