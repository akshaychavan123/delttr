# app/controllers/admin_controller.rb

class AdminController < ApplicationController
    before_action :require_super_admin, only: [:super_admin_only_action]
  
    # ...
  
    private
  
    def require_super_admin
      unless current_admin_user.super_admin?
        flash[:error] = "You do not have permission to access this action."
        redirect_to admin_dashboard_path # Redirect to appropriate page
      end
    end
  end
  