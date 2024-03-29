# frozen_string_literal: true

class InvoicesController < ApplicationController
     before_action :set_invoice, only: %i[show edit update destroy]
     before_action :require_user
   
     # GET /invoices or /invoices.json
     def index
       @invoices = Invoice.all
     end
   
     # GET /invoices/1 or /invoices/1.json
     def show; end
   
     # GET /invoices/new
     def new
       @invoice = Invoice.new
       @invoice.items << Item.new
       @invoice.items << Item.new
       @invoice.items << Item.new
       @invoice.items << Item.new
       @invoice.items << Item.new
     end
   
     # GET /invoices/1/edit
     def edit; end
   
     # POST /invoices or /invoices.json
     def create
       @invoice = Invoice.new(invoice_params)
       @invoice.user_id = current_user.id
       respond_to do |format|
         if @invoice.save
           format.html do
             redirect_to(invoice_url(@invoice),
                         notice: 'Invoice was successfully created.'
                        )
           end
           format.json { render(:show, status: :created, location: @invoice) }
         else
           format.html { render(:new, status: :unprocessable_entity) }
           format.json { render(json: @invoice.errors, status: :unprocessable_entity) }
         end
       end
     end
   
     # PATCH/PUT /invoices/1 or /invoices/1.json
     def update
       respond_to do |format|
         if @invoice.update(invoice_params)
           format.html do
             redirect_to(invoice_url(@invoice),
                         notice: 'Invoice was successfully updated.'
                        )
           end
           format.json { render(:show, status: :ok, location: @invoice) }
         else
           format.html { render(:edit, status: :unprocessable_entity) }
           format.json { render(json: @invoice.errors, status: :unprocessable_entity) }
         end
       end
     end
   
     # DELETE /invoices/1 or /invoices/1.json
     def destroy
       @invoice.destroy!
   
       respond_to do |format|
         format.html do
           redirect_to(invoices_url, notice: 'Invoice was successfully deleted.')
         end
         format.json { head(:no_content) }
       end
     end
   
     private
   
     # Use callbacks to share common setup or constraints between actions.
     def set_invoice
       @invoice = Invoice.find(params[:id])
     end
   
     # Only allow a list of trusted parameters through.
     def invoice_params
      params.require(:invoice).permit(:vendor_id, :tax_id_number, :address, :city,
                                      :state, :zip, :payment_method, :notes, :travel_password,
                                      items_attributes: [
                                        :items_purchased, 
                                        :budget, 
                                        :category, 
                                        :subcategory, 
                                        :taxcategory, 
                                        :gift, 
                                        :cost
                                      ]
                                     )
    end
    
   
     # Add the require_user method
     def require_user
       unless session[:user_id] && (User.find(session[:user_id]).permission_type == 'user' || User.find(session[:user_id]).permission_type == 'admin')
         redirect_to(root_url) and return
       end
     end
   end
   