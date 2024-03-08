# cloud-mock
Docker network with minio and stac-browser to mock cloud environment for development activities


---

## Getting Started

1. Create a `.env` file (see `example.env` for content) at the root of this repo. 
1.  If pulling test data from s3 add AWS credentials to the `.env` and sync the data:
    ```sh
    chmod +x copy-test-data.sh && ./copy-test-data.sh
    ```
1. Start the docker network 
    ```sh 
    docker-compose up
    ```

### minio
- In a browser go to http://localhost:9000
- Sign in using username and password from the `.env`.
- Verify that the data is available.

![](docs/stand-up-minio.gif)

### stac-browser
- In a browser go to http://localhost:8080
- Landing page is the community catalog hosted by [radiantearth](https://radiantearth.github.io/stac-browser/#/)
- Verify that the data is available.

## Usage (example)
 
1. Run `docker-compose up` on cloud-mock, make sure  *example-data* has been copied to the minio bucket.
2. Clone [ras-stac](https://github.com/fema-ffrd/ras-stac)
3. In `ras-stac`, make sure `.env` is in place and run the  `populate-sample-data.sh` script to create a sample stac catalog.
4. Navigate to [stac-browser](http://localhost:8080) and enter the locally hosted, newly created stac-catalog using the catalog url: `http://localhost:9000/pilot/stac/catalog.json`

![](docs/stac-example.gif)