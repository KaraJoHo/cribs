require './lib/room'

RSpec.describe Room do 
  let(:room) {Room.new(:bedroom, 10, "13")}

  describe '#initialize' do 
    it 'exists and has attributes' do 
      expect(room.category).to eq(:bedroom)
      expect(room.area).to eq(130)
    end
  end

  describe '#paint/is_painted?' do 
    it 'starts out as not painted and can be painted' do 
      expect(room.is_painted?).to eq(false)

      room.paint 

      expect(room.is_painted?).to eq(true)
    end
  end
end