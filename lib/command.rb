class Command
  def deprecated?(command)
    deprecated_commands.any? { |c| c == command }
  end

  def valid?(command)
    all.any? { |c| c == command }
  end

  def deprecated_commands
    %w[MAINTAINER]
  end

  def all
    %w[ADD COPY ENV EXPOSE FROM LABEL STOPSIGNAL USER VOLUME WORKDIR ONBUILD ARG CMD RUN ENTRYPOINT HEALTHCHECK SHELL]
  end
end
