# Docker File Linter
> In this project, I built a [Dockerfile](https://hub.docker.com/) linter that is able to parse a docker file and assess its validity. The linter is also able to dump the whole parsed file or specific commands from the file.

## Built With

- Ruby
- Tested with RSpec

## Getting Started

### Prerequisites

Mac or linux operating system and have Ruby installed.\
To test, RSpec must be installed.


### Installation

Open the terminal and type in:
```
cd [desire location]
git clone https://github.com/appiersign/docker-file-linter.git
cd docker-file-linter
bin/main.rb

```
To install RSpec open terminal and enter the following

```
gem install rspec
```

### Run Test

Navigate to the root directory ` docker-file-linter/ ` in the terminal and run

```
rspec
```


### Instructions

- import the DockerFile class
- create an instance of the DockerFile class

```
docker_file = DockerFile.new('path/to/dockerfile')
```

To dump the whole parsed file
```
p(docker_file.dump)
```

To dump a specific docker command or reference

```
p(docker_file.dump(command))
```

To test with the main.rb file in the terminal

```
cd bin
ruby main.rb
```

## Authors

👤 **Solomon Appier-Sign**

- Github: [@githubhandle](https://github.com/appiersign)
- Twitter: [@twitterhandle](https://twitter.com/appiersign)
- Linkedin: [linkedin](https://www.linkedin.com/in/solomon-appier-sign)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/appiersign/bubble-sort/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse, TSE's, Rubymine IDE

## 📝 License

This project is [MIT](lic.url) licensed.
