require_relative('../lib/docker_file')

d = DockerFile.new('../docs/Dockerfile')
puts(d.dump('CMD'))
puts(d.dump('EXPOSE'))
puts(d.deprecated)
puts(d.lines_count)
