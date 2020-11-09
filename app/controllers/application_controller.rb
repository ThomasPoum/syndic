class ApplicationController < ActionController::Base



  def configure_permitted_parameters
    added_attrs = [:fullname]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || condos_path
  end

end
