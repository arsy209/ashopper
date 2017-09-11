class AuthorizedUserController < ApplicationController
  before_action :authorization

  def authorization
    if current_user
    else
      render file: 'public/404', layout: false, status: 404
    end
  end
end
