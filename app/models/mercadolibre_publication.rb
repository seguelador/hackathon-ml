module Mercadolibre
  class Publication
    attr_accessor :body
  
    def initialize
      self.body = default_publication_json()
    end
  
    private
      def default_publication_json
        return {
          "accepts_mercadopago":true,
          "title":"Item de test - No Ofertar",
          "category_id":"MLC1430",
          "price":10,
          "subtitle":"prueba",
          "currency_id":"CLP",
          "available_quantity":1,
          "buying_mode":"buy_it_now",
          "listing_type_id":"gold_special",
          "condition":"new",
          "description":"Item de test - No Ofertar",
          "video_id":"k68MW1iHfno",
          "warranty":"12 months",
          "pictures":[
          {"source":"http://mla-s2-p.mlstatic.com/968521-MLA20805195516_072016-O.jpg"}
          ]
        }
      end
  end
end