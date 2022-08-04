require 'gratitudes'

RSpec.describe "graditudes class" do
    it 'Add and returns sentence' do
        gratitudes = Gratitudes.new
        gratitudes.add('my children')
        gratitudes.add('my Mum')
        result = gratitudes.format
        expect(result).to eq "Be grateful for: my children, my Mum"
    end
    it 'Add and returns sentence with one add' do
        gratitudes = Gratitudes.new
        gratitudes.add('my children')
        result = gratitudes.format
        expect(result).to eq "Be grateful for: my children"
    end
end