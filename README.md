# standard-php-dev-env
Repository with basic environment for development with PHP language.

Thanks to @paslandau for the great work provided in [docker-php-tutorial](https://github.com/paslandau/docker-php-tutorial/tree/part_3_structuring-the-docker-setup-for-php-projects), specifically the branch part 3, which served as the basis for this repository.

## Environment
This repository contains four containers that make it possible to start coding after compiling the environment triggered by the make command.

The four services available are:
| Service | Version |
| ------- | ------- |
| php-cli | 7.4 |
| php-fpm | 7.4 |
| mysql | 8 |
| nginx | latest |

## Execution
To run the build and start the job, just clone the repository, access the created folder, and enter the following command lines:
```sh
make docker-clean
make docker-init
make docker-build-from-scratch
make docker-up
```
And to stop the services:
```sh
make docker-down
```

## To do:
* Improve this documentation
* Include a service for email testing
