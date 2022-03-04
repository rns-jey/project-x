class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    # Here you can write logic based on roles to return different after sign in paths
    if current_user.role == "super_admin"
      rails_admin_path
    elsif current_user.role == "admin"
      root_admin_path
    else
      root_member_path
    end
  end
end
