require "day2"
require "file_to_data"

describe Day2 do
  it "should return checksum from test data" do
    data = FileToData.get_data("data/day2a_test.txt", false)
    expect(Day2.get_checksum(data)).to eq(12)
  end
  it "should return checksum from data" do
    data = FileToData.get_data("data/day2.txt", false)
    expect(Day2.get_checksum(data)).to eq(8398)
  end
  it "should return checksum from test data" do
    data = FileToData.get_data("data/day2b_test.txt", false)
    expect(Day2.get_box(data)).to eq("fgij")
  end
  it "should return checksum from data" do
    data = FileToData.get_data("data/day2.txt", false)
    expect(Day2.get_box(data)).to eq("hhvsdkatysmiqjxunezgwcdpr")
  end
end