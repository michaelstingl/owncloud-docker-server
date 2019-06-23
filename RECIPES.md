## Examples:

Some examples for starting different setups

- *owncloud-default* (`redis`, `mariadb`), *clamav*, *files_antivirus (daemon mode)*

  ```
  docker-compose \
      -f owncloud-default.yml \
      -f services/clamav.yml \
      -f configs/enable_files_antivirus_daemon.yml \
      up -d
  ```


- Example with additional users `alice`, `bob`, `test` for demo: *owncloud-default* (`redis`, `mariadb`)

  ```
  OWNCLOUD_USER_ADD=alice,bob,test \
  OC_PASS=password \
  docker-compose \
      -f owncloud-default.yml \
      -f demo/user_add.yml \
      up -d
  ```
  

- Example using environment variables: *owncloud-default* (`redis`, `mariadb`)

  ```
  ADMIN_PASSWORD=password \
  OWNCLOUD_APPS_INSTALL=oauth2 \
  docker-compose \
      -f owncloud-default.yml \
      up -d
  ```