class DashboardController < ApplicationController
  def index
    if current_user.nil?
      render :status => :forbidden, :text => "403 forbidden"
    end
  end
end
