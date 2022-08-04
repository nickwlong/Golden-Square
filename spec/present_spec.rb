require 'present'

RSpec.describe "present class"
    context "when contents have already been wrapped" do
        it 'fails' do
            contents = Present.new
            contents.wrap("bike")
            expect { contents.wrap("car") }.to raise_error "A contents has laready been wrapped."
        end
    end

    context "when no contents have been wrapped." do
        it 'fails' do
            contents = Present.new
            expect { contents.unwrap }.to raise_error "No contents have been wrapped." 
        end 
    end
