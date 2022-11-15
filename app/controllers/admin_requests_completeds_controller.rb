class AdminRequestsCompletedsController < ApplicationController
  before_action :set_admin_requests_completed, only: %i[ show edit update destroy ]

  # GET /admin_requests_completeds or /admin_requests_completeds.json
  def index
    @admin_requests_completeds = AdminRequestsCompleted.all
  end

  # GET /admin_requests_completeds/1 or /admin_requests_completeds/1.json
  def show
  end

  # GET /admin_requests_completeds/new
  def new
    @admin_requests_completed = AdminRequestsCompleted.new
  end

  # GET /admin_requests_completeds/1/edit
  def edit
  end

  # POST /admin_requests_completeds or /admin_requests_completeds.json
  def create
    @admin_requests_completed = AdminRequestsCompleted.new(admin_requests_completed_params)

    respond_to do |format|
      if @admin_requests_completed.save
        format.html { redirect_to admin_requests_completed_url(@admin_requests_completed), notice: "Admin requests completed was successfully created." }
        format.json { render :show, status: :created, location: @admin_requests_completed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_requests_completed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_requests_completeds/1 or /admin_requests_completeds/1.json
  def update
    respond_to do |format|
      if @admin_requests_completed.update(admin_requests_completed_params)
        format.html { redirect_to admin_requests_completed_url(@admin_requests_completed), notice: "Admin requests completed was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_requests_completed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_requests_completed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_requests_completeds/1 or /admin_requests_completeds/1.json
  def destroy
    @admin_requests_completed.destroy

    respond_to do |format|
      format.html { redirect_to admin_requests_completeds_url, notice: "Admin requests completed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_requests_completed
      @admin_requests_completed = AdminRequestsCompleted.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_requests_completed_params
      params.fetch(:admin_requests_completed, {})
    end
end
