require 'string_builder'

RSpec.describe "class string_builder and methods" do
    it 'checks to see if add works' do
        string = StringBuilder.new
        string.add('Hello ')
        result = string.output
        expect(result).to eq "Hello "
        string.add('World!')
        result = string.output
        expect(result).to eq "Hello World!"
    end
    it 'checks to see if size works' do
        string = StringBuilder.new
        string.add("Hello ")
        string.add('World!')
        result = string.size
        expect(result).to eq 12
    end

end

