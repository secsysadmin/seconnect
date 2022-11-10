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

     def active_class(path)
          if request.path == path
               return 'active'
          else
               return ''
          end
     end
end
