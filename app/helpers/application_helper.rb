# frozen_string_literal: true

module ApplicationHelper
     def logged_in?
          !!session[:user_id]
     end

     def user_signed_in?
          !!session[:user_id]
     end

     def current_user
          @current_user ||= User.find_by(id: session[:user_id]) if !!session[:user_id]
     end

     def flash_class(level)
          bootstrap_alert_class = {
            "success" => "alert-success",
            "error" => "alert-danger",
            "notice" => "alert-info",
            "alert" => "alert-danger",
            "warn" => "alert-warning"
          }
          bootstrap_alert_class[level]
     end
end
