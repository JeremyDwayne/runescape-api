require "grand_exchange/category"
require "grand_exchange/item"

module Runescape
  module GrandExchange

  end
end

=begin
      ================================================================================================
      RS Grand Exchange API Variables 
      ================================================================================================
      1. Category
      Variable			Description																				              	Data type
      letter				The first letter of an item												              	string
      items					The number of items																              	int

      2. Items
      Variable     Description  																			              	Data type
      total        The number of items        												              	int
      items        List of items     																	              	[string...] (array of strings)
      icon         The item sprite image     													              	string
      icon_large   The item detail image     													              	string
      id           The ItemID of the item     												              	int
      type         The item category 																	              	string
      typeIcon     The item image category    												                string
      name         The item name 																			              	string
      description  The item examine 																	              	string
      current      The item trade history over the past day     			              	[string...] (array of strings)
      today        The item trade history for today     							              	[string...] (array of strings)
      trend        The positive, negative or neutral change in price                  string
      price        The item trade price        												              	string
      members      If the item is a member's only item    						              	boolean
      
      Item Category ID's

      ID No.	Category Name
      0			  Miscellaneous
      1			  Ammo
      2 			Arrows
      3 			Bolts
      4 			Construction materials
      5 			Construction projects
      6 			Cooking ingredients
      7 			Costumes
      8 			Crafting materials
      9 			Familiars
      10			Farming produce
      11			Fletching materials
      12			Food and drink
      13			Herblore materials
      14			Hunting equipment
      15			Hunting produce
      16			Jewellery
      17			Mage armour
      18			Mage weapons
      19			Melee armour - low level
      20			Melee armour - mid level
      21			Melee armour - high level
      22			Melee weapons - low level
      23			Melee weapons - mid level
      24			Melee weapons - high level
      25			Mining and smithing
      26			Potions
      27			Prayer armour
      28			Prayer materials
      29			Range armour
      30			Range weapons
      31			Runecrafting
      32			Runes, Spells and Teleports
      33			Seeds
      34			Summoning scrolls
      35			Tools and containers
      36			Woodcutting product
      37			Pocket items

      3. Detail
      Variable  		Description  																			              	Data type
      item  				Lists the data for the item 											               	string
      icon  				The item sprite image  														              	string
      icon_large	  The item detail image  														              	string
      type  				The item category  																              	string
      typeIcon  		The item image category  													              	string
      name  				The item name  																		              	string
      description  	The item examine  																              	string
      members  			If the item is a member's only item 							                boolean
      trend  				The positive, negative or neutral change in price                 string
      price  				The item trade price  														              	string
      change  			The item fluctuation over the past 30 days				                string
      current  			The item trade history over the past day  				              	[string...] (array of strings)
      today 				The item trade history for today  								              	[string...] (array of strings)
      day30 				The item trade history over 30 days   						              	[string...] (array of strings)
      day90 				The item trade history over 90 days   						              	[string...] (array of strings)
      day180  			The item trade history over 180 days  						              	[string...] (array of strings)

      4. Graph
      Variable	    Description	                                                      Data type
      daily	        The item trade history over the past day	                        [string...] (array of strings)
      average	      The item trade history for today	                                [string...] (array of strings)
      timecode	    The first number showing the milliseconds since 1 January 1970	  int
      price	        The second number showing the exact price and the average price	  int
      ================================================================================================
=end
