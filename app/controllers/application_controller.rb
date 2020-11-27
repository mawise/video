class ApplicationController < ActionController::Base
  def verify_admin
    if current_user.admin != 1
      redirect_to root_path
    end
  end
end
