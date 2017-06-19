module Runescape
  module GrandExchange
    class Item
      attr_reader :icon, :icon_large, :id, :type, :typeIcon, :name, :description, :current, :today, :members, :day30, :day90, :day180

      def initialize(attributes)
        @icon        = attributes["icon"]
        @icon_large  = attributes["icon_large"]
        @id          = attributes["id"]
        @type        = attributes["type"]
        @typeIcon    = attributes["typeIcon"]
        @name        = attributes["name"]
        @description = attributes["description"]
        @current     = attributes["current"]
        @today       = attributes["today"]
        @members     = attributes["members"]
        @day30       = attributes["day30"]
        @day90       = attributes["day90"]
        @day180      = attributes["day180"]
      end


      def self.find(id)
        response = Faraday.get("#{ITEM_URL}item=#{id}")
        attributes = JSON.parse(response.body)
        new(attributes['item'])
      end

    end
  end
end

#Example Item Response: Rocktail soup
#
#{"icon"=>"http://services.runescape.com/m=itemdb_rs/1497272511120_obj_sprite.gif?id=26313", 
#"icon_large"=>"http://services.runescape.com/m=itemdb_rs/1497272511120_obj_big.gif?id=26313",
#"id"=>26313, 
#"type"=>"Food and Drink",
#"typeIcon"=>"http://www.runescape.com/img/categories/Food and Drink",
#"name"=>"Rocktail soup",
#"description"=>"A bowl of delicious rocktail soup.",
#"current"=>{"trend"=>"neutral", "price"=>"9,230"},
#"today"=>{"trend"=>"negative", "price"=>"- 48"},
#"members"=>"true",
#"day30"=>{"trend"=>"positive", "change"=>"+0.0%"},
#"day90"=>{"trend"=>"positive", "change"=>"+15.0%"},
#"day180"=>{"trend"=>"positive", "change"=>"+14.0%"}}
