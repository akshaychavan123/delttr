# app/models/admin_user.rb

class AdminUser < ApplicationRecord
  # Add a boolean attribute for super admin
  attribute :super_admin, :boolean, default: false
  def super_admin?
    super_admin
  end

  # ...
end
