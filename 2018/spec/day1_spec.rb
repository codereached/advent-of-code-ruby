require "day1"
require "file_to_data"

describe Day1 do
  context "part a" do
    it "returns frequency of test data" do
      data = FileToData.get_data("data/day1a_test.txt")
      expect(Day1.get_frequency(data)).to eq(3)
    end
  it "returns frequency" do
      data = FileToData.get_data("data/day1.txt")
      expect(Day1.get_frequency(data)).to eq(525)
    end   
  end
  context "part b" do 
    it "returns duplicate from test data" do
      data = FileToData.get_data("data/day1b_test.txt")
      expect(Day1.find_duplicate(data)).to eq(10)
    end  
    it "returns duplicate" do
      data = FileToData.get_data("data/day1.txt")
      expect(Day1.find_duplicate(data)).to eq(75749)
    end  
  end  
end
