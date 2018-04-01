class Dashboard::DashboardController < ApplicationController
  skip_before_action :verify_authenticity_token

  layout 'dashboard'
  def index
  end
end
