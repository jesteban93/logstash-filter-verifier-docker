# logstash-filter-verifier-docker
logstash-filter-verifier in a docker container

using code from https://github.com/magnusbaeck/logstash-filter-verifier

Building the container:

``` docker build . -t logstash-filter-verifier:latest ```

Running the container:

The local filters folder should follow this structure:

```[+] filters
      |---- [+] pipeline_1
      |      |----> pipeline_1.conf
      |      |----> pipeline_1_1.conf
      |      |----> [+] tests
      |              |----> pipeline_1.json
      |---- [+] pipeline_2```

Then when runing the docker it will find the tests automatically and run them against its corresponding filter/s.

``` docker run -d -v <FULL_PATH>/filters:/logstash/filters logstash-filter-verifier:latest ```

Results of tests will be in docker logs


