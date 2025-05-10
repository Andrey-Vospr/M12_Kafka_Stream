FROM confluentinc/cp-server-connect:7.8.1 AS base

USER root

RUN confluent-hub install --no-prompt confluentinc/kafka-connect-azure-blob-storage:1.6.24 
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-azure-blob-storage-source:2.6.10

USER appuser
