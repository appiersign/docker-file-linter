require_relative('../lib/docker_file')

d = DockerFile.new('../Dockerfile')
puts(d.dump('CMD'))
puts(d.deprecated)
puts(d.lines_count)