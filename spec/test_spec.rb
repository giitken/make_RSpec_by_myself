require_relative '../lib/test'

RSpec.describe 'NumberService' do
  describe '#number' do
    it '12を返す' do
      expect(NumberService.new.number).to eq(12)
    end
    it '10を返さない' do
      expect(NumberService.new.number).not_to eq(10)
    end
  end
end
