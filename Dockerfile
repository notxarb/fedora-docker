FROM fedora:33
EXPOSE 8080
RUN ls -lha /var/lib
RUN ls -lha /var/lib/rpm
RUN ls -lha /var/lib/dnf
RUN whoami
RUN dnf update -y
RUN dnf install -y subversion-javahl
RUN dnf install -y java-11-openjdk-devel
RUN dnf install -y maven
RUN dnf clean all
