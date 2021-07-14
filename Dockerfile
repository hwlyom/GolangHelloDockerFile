FROM debian:stable
LABEL maintainer="julio@martinez.ec"
RUN apt-get update && apt-get upgrade && apt-get -y install telnet openssh-server openssh-client golang git && git clone https://github.com/hwlyom/GolangHelloWorldWeb.git && cd GolangHelloWorldWeb/ && go run hellohulyomweb.go

#RUN apt-get upgrade                                      (NO!!! each "RUN" will build a new container)
#RUN apt-get -y install apache2 telnet elinks openssh     (NO!!! each "RUN" will build a new container)

EXPOSE 8080
EXPOSE 22                              

#CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]  # runs the list of commands (starting apache here)
#CMD ["go run GolangHelloWorldWeb/hellohulyomweb.go","-D","FOREGROUND"]  # runs the list of commands
CMD ["/bin/bash","-D","FOREGROUND"]
