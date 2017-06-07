class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || projects_path
  end

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, :notice => 'Você precisa estar logado para utilizar a aplicação'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

end
