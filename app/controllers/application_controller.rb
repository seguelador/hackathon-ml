class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :mercadolibre

  @@api       = nil
  @@auth_data = nil

  private
    def mercadolibre
      #binding.pry
      if @@api.present? && !@@api.access_token.present?
        # auth_data (access_token, refresh_token, expired_at)
        @@auth_data = @@api.authenticate(params[:code])
      else
        @@api = Mercadolibre::Api.new({
          app_key: '1750802386298036',
          app_secret: '7BSn4krZe6bJiRLH3MSqNaVQYQygcBl9',
          callback_url: 'http://localhost:3000',
          site: 'MLC'
        })
      end
    end
end
