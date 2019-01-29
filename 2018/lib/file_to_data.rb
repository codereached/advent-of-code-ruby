class FileToData
  def self.get_data(file, get_int = true)
    file = File.open(file, "r")
    data = file.read.split("\n")
    file.close
    return data.map(&:to_i) if get_int
    data
  end
end
