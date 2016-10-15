class PagesController < ApplicationController
  before_action :set_api

  def index
    publication = Mercadolibre::Publication.new
    if @api.item_valid?(publication.body)
      response = @api.create_item(publication.body)
    end
    binding.pry
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
