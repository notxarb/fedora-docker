FROM fedora:33
EXPOSE 8080
RUN ls /var/lib
RUN ls /var/lib/rpm
RUN ls /var/lib/dnf
RUN dnf update -y
RUN dnf install -y subversion-javahl
RUN dnf install -y java-11-openjdk-devel
RUN dnf install -y maven
RUN dnf clean all
