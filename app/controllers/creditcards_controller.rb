# frozen_string_literal: true

class CreditcardsController < ApplicationController
     before_action :set_creditcard, only: %i[show edit update destroy]

     # GET /creditcards or /creditcards.json
     def index
          @creditcards = Creditcard.all
     end

     def approved
          @creditcards = Creditcard.all
     end

     def inprogress
          @creditcards = Creditcard.all
     end

     # GET /creditcards/1 or /creditcards/1.json
     def show; end

     # GET /creditcards/new
     def new
          @user = User.find(session[:user_id])
          @creditcard = Creditcard.new(user_id: @user.id, status: 'pending')
     end

     # GET /creditcards/1/edit
     def edit; end

     # POST /creditcards or /creditcards.json
     def create
          @creditcard = Creditcard.new(creditcard_params)

          respond_to do |format|
               if @creditcard.save
                    format.html do
                         redirect_to(creditcard_url(@creditcard),
                                     notice: 'Creditcard was successfully created.'
                                    )
                    end
                    format.json { render(:show, status: :created, location: @creditcard) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json { render(json: @creditcard.errors, status: :unprocessable_entity) }
               end
          end
     end

     # PATCH/PUT /creditcards/1 or /creditcards/1.json
     def update
          respond_to do |format|
               if @creditcard.update(creditcard_params)
                    format.html do
                         redirect_to(creditcard_url(@creditcard),
                                     notice: 'Creditcard was successfully updated.'
                                    )
                    end
                    format.json { render(:show, status: :ok, location: @creditcard) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @creditcard.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /creditcards/1 or /creditcards/1.json
     def destroy
          @creditcard.destroy!

          respond_to do |format|
               format.html do
                    redirect_to(creditcards_url, notice: 'Creditcard was successfully deleted.')
               end
               format.json { head(:no_content) }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_creditcard
          @creditcard = Creditcard.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def creditcard_params
          params.require(:creditcard).permit(:user_id, :payment_link, :phone,
                                             :Confirmation_order, :reservation_name, :status, :notes, :file, :vendor_id, :travel_password_cc, :amount, :contact_name
          )
     end
end
