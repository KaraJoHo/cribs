require './lib/room' 
require './lib/house'

RSpec.describe House do 
  let(:house) {House.new("$400000", "123 sugar lane")}
  
  let(:room_1) {Room.new(:bedroom, 10, '13')}
  let(:room_2) {Room.new(:bedroom, 11, '15')}
  let(:room_3) {Room.new(:living_room, 25, '15')}
  let(:room_4) {Room.new(:basement, 30, '41')}

  describe '#initialize' do 
    it 'exists and has attributes' do 
      expect(house).to be_a(House)
      expect(house.price).to eq(400000)
      expect(house.address).to eq("123 sugar lane")
      expect(house.rooms).to eq([])
    end
  end

  describe '#add_rooms' do 
    it 'can add rooms' do 
      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1, room_2])
    end
  end

  describe '#above_market_average?' do 
    it 'returns true if price is over 500000' do 
      expect(house.above_market_average?).to eq(false)
    end
  end

  describe '#rooms_from_category' do 
    it 'returns a list of rooms by the given category' do 
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
      expect(house.rooms_from_category(:basement)).to eq([room_4])
    end
  end

  describe '#area' do 
    it 'returns the houses area' do 
      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

      expect(house.area).to eq(1900)
    end
  end
end