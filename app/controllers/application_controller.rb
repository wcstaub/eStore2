class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :categories, :brands

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def categories
  	@categories = Category.order(:name)
  end

# Pluck grabs everything in one column - there will be multiples
  def brands
  	@brands = Product.pluck(:brand).sort.uniq
  end
end
