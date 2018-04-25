class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:nombre,:apellidopaterno,:apellidomaterno,:edad,:peso, :email, :password, :altura, :talla, :admin, :linker, :experience])
    devise_parameter_sanitizer.permit(:account_update, keys:[:nombre,:apellidopaterno,:apellidomaterno,:edad,:peso, :email, :password, :altura, :talla, :admin, :linker, :experience])
  end

  def agregar(user_id, linker)
    @arriendo = Arriendo.find_by(nropedido: linker)
    @arriendo.update_attribute(:user_id, user_id)
    User.find(user_id).update_attribute(:linker, nil)
  end
  helper_method :agregar
end
