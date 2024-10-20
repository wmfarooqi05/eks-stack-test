This is the architecture of this example

- Fluentd is getting logs from 3 input sources
    - `http/app.sh` file is sending logs to fluentd on port 9880
    - `file/app.sh` file is writing logs to `/app/example-log.log` file.
    - Docker logs
- It is outputting all these logs to elasticsearch.

```
+-----------------+        +-----------------+        +--------------------+
|                 |        |                 |        |                    |
|  HTTP LOGS       +------->+                 +------->+                    |
|                 |        |                 |        |                    |
+-----------------+        |                 |        |                    |
                           |                 |        |                    |
+-----------------+        |                 |        |                    |
|                 |        |                 |        |                    |
|  FILE LOGGING   +------->+   FluentD       +------->+   Elasticsearch    |
|                 |        |                 |        |                    |
+-----------------+        |                 |        |                    |
                           |                 |        |                    |
+-----------------+        |                 |        |                    |
|                 |        |                 |        |                    |
|  DOCKER LOGS     +------->+                +------->+                    |
|                 |        |                 |        |                    |
+-----------------+        +-----------------+        +--------------------+
```