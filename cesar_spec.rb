require "caesar_cipher"

describe "the cipher" do

    it "converts a string" do
      caesar_cipher("What a string!", 5).should == "Bmfy f xywnsl!"
    end


end
