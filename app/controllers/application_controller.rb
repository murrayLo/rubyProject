class ApplicationController < ActionController::Base
  #require user sign-in before allowing any action
  before_action :authenticate_user!
end
