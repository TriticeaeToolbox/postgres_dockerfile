> :warning: &nbsp;&nbsp; **ARCHIVED** &nbsp;&nbsp; :warning:<br />
> This repository is no longer used by the T3/Breedbase Docker instances.<br />
> T3/Breedbase now uses the official postgres Docker image for the database service.<br />
> For more information on running T3/Breedbase, see [TriticeaeToolbox/breedbase](https://github.com/TriticeaeToolbox/breedbase)

-----

[![Build Status](https://travis-ci.com/solgenomics/postgres_dockerfile.svg?branch=master)](https://travis-ci.com/solgenomics/postgres_dockerfile)

# postgres_dockerfile
Dockerfile for breeDBase Postgresql instance.  

After the image has completed startup, you will have a base database with all the required schemas and data needed for an instance of Breedbase to connect to it, and run properly.

This image is based on the postgres Docker image (https://hub.docker.com/_/postgres)

### Install docker (on Debian/Ubuntu)
For installing on Debian/Ubuntu:

```bash
apt-get install docker-ce
```

For Mac/Windows: [Docker Desktop](https://www.docker.com/products/docker-desktop)

### Run the container
To run the image:
```bash
docker run -d --name breedbase_db -p 5432:5432 breedbase/pg:latest
```

Because this image is an extension of the [postgres Docker image](https://hub.docker.com/_/postgres), you can pass in the environment variables defined by that image.  You can also mount the data directory to the host for persistent storage: 
```
-v /my/own/datadir:/var/lib/postgresql/data
```

### Logistics
#### Database
The database itself is named `breedbase` and contains a number of schemas within it.

#### Default database username/password:
```
username: postgres
password: postgres
```

### Clone the repo
```bash
git clone https://github.com/solgenomics/postgres_dockerfile
```

### Build the image
```bash
docker build -t breedbase/pg:<tag> postgres_dockerfile
```

Replace `<tag>` with an identifier of your choosing
 
