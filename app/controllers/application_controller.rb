class ApplicationController < ActionController::Base
  include SessionsHelper

  def render_404
    render file: "#{Rails.root}/public/404.html", status: :not_found
  end
end
