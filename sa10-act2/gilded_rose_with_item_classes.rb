class GildedRose
    ITEM_CLASSES = {
      "Normal Item" => NormalItem,
      "Aged Brie" => AgedBrie
      # add entries for other item types
    }.freeze
  
    def update_quality
      @items.each do |item|
        item_instance = ITEM_CLASSES[item.name].new(item)
        item_instance.tick
      end
    end
  end