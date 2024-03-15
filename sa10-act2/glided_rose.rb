class GildedRose
    def update_quality
      @items.each do |item|
        item_class = determine_item_class(item)
        item_instance = item_class.new(item)
        item_instance.tick
      end
    end
  
    def determine_item_class(item)
      case item.name
      when "Normal Item"
        NormalItem
      when "Aged Brie"
        AgedBrie
      # add cases for other item types
      end
    end
  end
  
  class NormalItem
    def initialize(item)
      @item = item
    end
  
    def tick
      # logic for updating normal items
    end
  end
  
  class AgedBrie
    def initialize(item)
      @item = item
    end
  
    def tick
      # logic for updating aged brie items
    end
  end
  