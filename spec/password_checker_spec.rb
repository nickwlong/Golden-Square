require 'password_checker'

RSpec.describe 'password_checker class'
    context "Check for error from pwrd length" do
        it "fails" do
            facebook = PasswordChecker.new
            expect { facebook.check('qwerty') }.to raise_error "Invalid password, must be 8+ characters" 
        end
    end
