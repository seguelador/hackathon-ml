class UsersController < ApplicationController
	before_action :set_api
  def profile
  end

  def update
  end

  private
    def set_api
      if @@api.present? 
        @api = @@api
      end
    end
end
