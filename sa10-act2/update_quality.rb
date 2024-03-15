def update_quality
    @items.each do |item|
      update_item(item)
    end
  end
  
  def update_item(item)
    case item.name
    when "Normal Item"
      update_normal_item(item)
    when "Aged Brie"
      update_aged_brie(item)
    # add cases for other item types
    end
  end
  
  def update_normal_item(item)
    # logic for updating normal items
  end
  
  def update_aged_brie(item)
    # logic for updating aged brie items
  end