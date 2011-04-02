require 'velomemo'

describe Velomemo::Report do
  describe '#to_s' do
    before(:each) do
      @rides  = [double, double, double]
      @report = Velomemo::Report.new(@rides)
    end

    it 'uses the string representation of each ride' do
      @rides.each { |r| r.should_receive(:to_s) }
      @report.to_s
    end

    it 'separates each ride by two newlines' do
      @report.to_s.should == @rides.map(&:to_s).join("\n\n")
    end
  end
end
