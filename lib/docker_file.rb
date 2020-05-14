class DockerFile

  def initialize(file_path)
    @multiline_command = false
    @file = File.open(file_path)
  end
end