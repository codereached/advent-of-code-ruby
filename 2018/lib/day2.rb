class Day2
  def self.get_checksum(boxes)
    counter = {2 => 0, 3 => 0}
    boxes.each do |box| 
        letters = Hash.new(0)
        box.each_char do |char|
          letters[char] += 1
        end
        counter[2] += 1 if letters.select{|k,v| v == 2}.count > 0
        counter[3] += 1 if letters.select{|k,v| v == 3}.count > 0           
      end
      counter[2] * counter[3]
  end

  def self.get_box(boxes)
    boxes.first.length.times do |length|
      box_index = Hash.new(0)
      boxes.each do |box|
        id = box[0...length] + box[(length+1)..-1]
        box_index[id] += 1     
      end
      box_index = box_index.invert
      return box_index[2] if box_index[2]
    end
  end
end