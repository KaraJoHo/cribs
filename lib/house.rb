class House 
  attr_reader :price, :address, :rooms 

  def initialize(price, address)
    @price = price.delete("$").to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average? 
    @price > 500000
  end

  def rooms_from_category(category)
    @rooms.find_all do |room| 
      room.category == category
    end
  end

  def area 
    @rooms.sum do |room| 
      room.area
    end
  end

  def details 
    house_info = {}
    house_info["price"] = @price 
    house_info["address"] = @address
    house_info
  end

  def price_per_square_foot 
    (@price / area.to_f).round(2)
  end

  
end