class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
    logger.debug stored_location_for(resource).inspect
    super(resource)
  end
end
