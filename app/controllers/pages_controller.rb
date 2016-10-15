class PagesController < ApplicationController
  def index
    if @@api.present? 
      @api = @@api
    end
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
end
