class PagesController < ApplicationController
  before_action :set_api

  def index
  end

  def result
  end

  def detail
  end

  def profile
  end

  def login
  end

  def sign_up
  end

  def forgot_password
  end

  def faq
  end

  def post_ads
  end

  private
    def set_api
      if @@api.present? 
        @api = @@api
      end
    end
end
