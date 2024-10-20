FROM fluent/fluentd:v1.17-debian

USER root
RUN fluent-gem install fluent-plugin-elasticsearch

