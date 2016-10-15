module Mercadolibre
  class Publication
    attr_accessor :body
  
    def initialize
      self.body = default_publication_json()
    end

    def self.create_publication(json)
      if @@api.present?
        @api = @@api
        @api.create_item(json)
      end
    end
  
    private
      def default_publication_json
        return {
          "title":"Item de test - No Ofertar",
          "category_id":"MLA3530",
          "price":10,
          "currency_id":"ARS",
          "available_quantity":1,
          "buying_mode":"buy_it_now",
          "listing_type_id":"gold_special",
          "condition":"new",
          "description": "Item de test - No Ofertar",
          "video_id": "YOUTUBE_ID_HERE",
          "warranty": "12 months",
          "pictures":[
          {"source":"http://mla-s2-p.mlstatic.com/968521-MLA20805195516_072016-O.jpg"}
          ]
        }
      end
  end
end