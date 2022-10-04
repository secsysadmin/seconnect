# frozen_string_literal: true

class VendorsController < ApplicationController
     before_action :set_vendor, only: %i[show edit update destroy]

     # GET /vendors or /vendors.json
     def index
          @vendors = Vendor.all
     end

     # GET /vendors/1 or /vendors/1.json
     def show; end

     # GET /vendors/new
     def new
          @vendor = Vendor.new
     end

     # GET /vendors/1/edit
     def edit; end

     # POST /vendors or /vendors.json
     def create
          @vendor = Vendor.new(vendor_params)

          respond_to do |format|
               if @vendor.save
                    format.html do
                         redirect_to(vendor_url(@vendor),
                                     notice: 'Vendor was successfully created.'
                                    )
                    end
                    format.json { render(:show, status: :created, location: @vendor) }
               else
                    format.html { render(:new, status: :unprocessable_entity) }
                    format.json { render(json: @vendor.errors, status: :unprocessable_entity) }
               end
          end
     end

     # PATCH/PUT /vendors/1 or /vendors/1.json
     def update
          respond_to do |format|
               if @vendor.update(vendor_params)
                    format.html do
                         redirect_to(vendor_url(@vendor),
                                     notice: 'Vendor was successfully updated.'
                                    )
                    end
                    format.json { render(:show, status: :ok, location: @vendor) }
               else
                    format.html { render(:edit, status: :unprocessable_entity) }
                    format.json { render(json: @vendor.errors, status: :unprocessable_entity) }
               end
          end
     end

     # DELETE /vendors/1 or /vendors/1.json
     def destroy
          @vendor.destroy!

          respond_to do |format|
               format.html do
                    redirect_to(vendors_url, notice: 'Vendor was successfully destroyed.')
               end
               format.json { head(:no_content) }
          end
     end

     private

     # Use callbacks to share common setup or constraints between actions.
     def set_vendor
          @vendor = Vendor.find(params[:id])
     end

     # Only allow a list of trusted parameters through.
     def vendor_params
          params.require(:vendor).permit(:vendor_name, :street_address, :city, :state, :zip_code,
                                         :email, :phone_number
          )
     end
end
