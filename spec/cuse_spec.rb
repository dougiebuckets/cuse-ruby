require 'cuse'

describe Kernel do
  describe "#puts (overridden)" do
    context "with one argument" do
      it "should append the appropriate string" do
        $stdout.stub!(:write)
        $stdout.should_receive(:write).with("One Let's Go Orange!")
        puts "One"
      end
    end

    context "with more then one argument" do
      it "should append the appropriate string to every arg" do
        $stdout.stub!(:write)
        $stdout.should_receive(:write).with("One Let's Go Orange!")
        $stdout.should_receive(:write).with("Two Let's Go Orange!")
        puts("One", "Two")
      end
    end
  end
end


