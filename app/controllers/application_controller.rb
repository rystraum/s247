class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def homepage
  end

  def auto
  end

  def medical
  end

  def get_quotation
    @quotation = Quote.fetch(permitted_params)
  end

  def permitted_params
    params.permit(:car_year, :car_plate_number, :car_make, :car_model, :car_transmission, :name, :email, :age, :gender)
  end
end
