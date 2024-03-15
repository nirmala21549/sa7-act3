class GildedRose
    def update_quality
      @items.each do |item|
        item_instance = Item.create(item)
        item_instance.tick
      end
    end
  end
  
  class Item
    def self.create(item)
      case item.name
      when "Normal Item"
        NormalItem.new(item)
      when "Aged Brie"
        AgedBrie.new(item)
      # add cases for other item types
      end
    end
  
    def initialize(item)
      @item = item
    end
  
    def tick
      # default behavior for updating item
    end
  end
  
  class NormalItem < Item
    def tick
      # logic for updating normal items
    end
  end
  
  class AgedBrie < Item
    def tick
      # logic for updating aged brie items
    end
  end
  