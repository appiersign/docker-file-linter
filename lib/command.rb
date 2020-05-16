class Command
  private_constant VALID_COMMANDS = %w[ADD COPY ENV EXPOSE FROM LABEL STOPSIGNAL USER VOLUME WORKDIR ONBUILD ARG CMD RUN ENTRYPOINT HEALTHCHECK SHELL].freeze
  private_constant DEPRECATED_COMMANDS = %w[MAINTAINER].freeze

  def deprecated?(command)
    DEPRECATED_COMMANDS.any? { |c| c == command }
  end

  def valid?(command)
    VALID_COMMANDS.any? { |c| c == command }
  end
end
