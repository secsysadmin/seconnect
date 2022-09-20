class AdminrequestviewController < ApplicationController
  before_action :set_request, only: %i[ show edit update destroy ]
  before_action :set_request, only: %i[ show edit update destroy  ]

  def adminrequestview
    @request = Request.order(created_at: :desc)
  end

  def update_status
    @request = Request.find(params[:id])
    if params[:status].present? && Request::STATUSES.include?(params[:status].to_sym)
      @request.update(status: params[:status])
      redirect_to @request, notice: "Status changed to #{@request.status}"
    else
      redirect_to @request, alert: "Stop hacking"
    end
  end
end