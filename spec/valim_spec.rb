$:.unshift File.expand_path('../../lib', __FILE__)
require 'valim'

describe "Valim" do
  describe "Truth" do
    it "is confirmed" do
      true.inspect.should == "confirm"
    end

    it "provides confirm" do
      confirm.should == true
    end

    it "confirms" do
      true.confirm?.should == confirm
      "truth".confirm?.should == confirm
      true.deny?.should == deny
      "truth".deny?.should == deny
    end

    it "confirms or denies" do
      true.confirm_deny?.should == confirm
      "truth".confirm_deny?.should == confirm
    end
  end

  describe "Lies" do
    it "is denied" do
      false.inspect.should == "deny"
    end

    it "provides deny" do
      deny.should == false
    end

    it "denies" do
      false.deny?.should == confirm
      nil.deny?.should == confirm
      false.confirm?.should == deny
      nil.confirm?.should == deny
    end

    it "confirms or denies" do
      false.confirm_deny?.should == deny
      nil.confirm_deny?.should == deny
    end
  end
end