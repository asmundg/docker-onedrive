# docker-onedrive
Dockerized onedrive client

Conveniently wrapped environment for running skilion's onedrive client
(https://github.com/skilion/onedrive).

This requires an initial manual invocation to set up auth:

    docker-compose run onedrive onedrive

When auth has completed, the service can be started detatched:

    docker-compose up -d onedrive
