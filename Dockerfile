FROM java:latest
RUN wget http://mirror.ox.ac.uk/sites/rsync.apache.org/jena/binaries/apache-jena-fuseki-3.4.0.zip
RUN unzip apache-jena-fuseki-3.4.0.zip
RUN mv apache-jena-fuseki-3.4.0 /jena-fuseki
WORKDIR /jena-fuseki
ADD ./projects.ttl /jena-fuseki

CMD ["./fuseki-server", "--update", "--file=projects.ttl", "/ds"]
