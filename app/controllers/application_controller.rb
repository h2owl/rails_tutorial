class ApplicationController < ActionController::Base
  def index
    render plain: 'dummy.'
  end
end
