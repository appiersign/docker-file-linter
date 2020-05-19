require_relative('./command')

class DockerFile
  attr_reader :deprecated
  attr_reader :lines_count

  def initialize(file_path)
    @command = Command.new
    @lines = []
    @lines_count = 0
    @deprecated = []
    @multiline_command = false
    @file = File.open(file_path)
    lines
  end

  def dump(command = '')
    return @lines if command.empty?

    all = ''
    @lines.each { |line| all += line + "\n" if line.split(/ /)[0] == command }
    all
  end

  private

  def increment_line_count
    @lines_count += 1
  end

  def validate_from_reference(command)
    raise(ArgumentError, 'first line must be the \'FROM\' reference') if command != 'FROM' && @lines_count == 1
    raise(ArgumentError, 'FROM reference only allowed on the first line') if @lines_count > 1 && command == 'FROM'
  end

  def validate_command_argument(line)
    raise(ArgumentError, 'argument missing for command: ' + command(line)) if line.length < 2
  end

  def lines
    @file.readlines.each do |line|
      current_line = line.gsub("\n", '')
      next if current_line.empty?

      command = command(current_line)
      next if comment?(current_line)

      if @command.deprecated?(command)
        @deprecated << current_line
      else
        raise(command + ' is not a valid docker reference') unless @command.valid?(command)
      end

      validate_command_argument(current_line)

      @lines << current_line
      increment_line_count
      validate_from_reference(command)
    end
  end

  def command(line)
    line.split(/ /)[0] unless comment?(line)
  end

  def comment?(line)
    line[0] == '#'
  end
end
