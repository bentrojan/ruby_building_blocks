require 'spec_helper'

describe 'Caesar Cipher' do

	before :all do
		@ex1 = "What a string!"
		@ex2 = "Th1s 0n3 h45 numb3r5!"
		@ex3 = "calculus: u + me = US"
		@ex4 = "f"
		@ex5 = ""
	end	

	describe 'caesar_cipher' do 
		it 'returns the right answer key:5' do
			caesar_cipher(@ex1, 5).should eql 'Bmfy f xywnsl!'
		end			
	end
	
	describe 'caesar_cipher' do
		it 'returns the right answer key:13 with numbers' do
			caesar_cipher(@ex2, 13).should eql 'Gu1f 0a3 u45 ahzo3e5!'
		end
	end
	
	describe 'caesar_cipher' do
		it 'returns the right answer key:4 with maths' do
			caesar_cipher(@ex3, 4).should eql 'gepgypyw: y + qi = YW'
		end
	end
	
	describe 'caesar_cipher' do
		it 'returns the right answer key:25 one letter' do
			caesar_cipher(@ex4, 25).should eql 'e'
		end
	end
	
	describe 'caesar_cipher' do
		it 'doens\'t break with empty string' do
			caesar_cipher(@ex5, 1).should eql ''
		end
	end
	

end