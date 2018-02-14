class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ActionController::Serialization

  def current_user
    User.find_by!(name: Base64.decode64(request.headers["HTTP_AUTHORIZATION"].split.last).split(':').first)
  end
end
