class AdminController < ApplicationController
  before_action :require_admin, expect: [:index]
  # before_action :require_admin

  def admin
  end

  def index
  end

  private

  def require_admin
    unless current_user.isAdmin?
      redirect_to root_path
    end
  end
end
