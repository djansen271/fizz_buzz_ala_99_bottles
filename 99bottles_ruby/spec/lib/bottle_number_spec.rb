require 'spec_helper'

describe BottleNumber do
  describe '.for factory' do
    it 'produces the  proper speical class' do
      expect(BottleNumber.for(0).class).to eq(BottleNumber0)
      expect(BottleNumber.for(1).class).to eq(BottleNumber1)
      expect(BottleNumber.for(6).class).to eq(BottleNumber6)
    end

    it 'produces the  proper generic class' do
      expect(BottleNumber.for(3).class).to eq(BottleNumber)
      expect(BottleNumber.for(10).class).to eq(BottleNumber)
      expect(BottleNumber.for(99).class).to eq(BottleNumber)
    end
  end
end