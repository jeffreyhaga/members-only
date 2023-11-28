require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protected

  def after_sign_out_path_for(resource_or_scope)
    posts_path
  end

  protected

  def after_sign_in_path_for(resource_or_scope)
    posts_path
  end

end
