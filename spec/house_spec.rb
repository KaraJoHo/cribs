require './lib/room' 
require './lib/house'

RSpec.describe House do 
  let(:house) {House.new("$400000", "123 sugar lane")}
  
  let(:room_1) {Room.new(:bedroom, 10, '13')}
  let(:room_2) {Room.new(:bedroom, 11, '15')}

  describe '#initialize' do 
    it 'exists and has attributes' do 
      expect(house).to be_a(House)
      expect(house.price).to eq(400000)
      expect(house.address).to eq("123 sugar lane")
      expect(house.rooms).to eq([])
    end
  end
end