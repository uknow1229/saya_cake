class Public::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params,  if: :devise_controller?
  def new
  end
  
  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:first_name, :last_name, :furigana_first_name, :furigana_last_name, :post_code, :address, :telephone_number])
  end
end
