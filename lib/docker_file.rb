class DockerFile

  def initialize(file_path)
    @lines = []
    @multiline_command = false
    @file = File.open(file_path)
    lines
  end

  def lines
    @file.readlines.each do |line|
      current_line = line.gsub("\n", '')
      @lines << current_line unless current_line.empty?
    end
  end

  def lines_count
    @lines.length
  end

  def dump
    @lines
  end

  def comment?(line)
    line.split(/ /)[0] == '#'
  end
end
