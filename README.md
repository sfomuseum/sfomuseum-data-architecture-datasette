# sfomuseum-data-architecture-datasette

Dockerfile for using SFO Museum architecture data with `datasette`.

## Set up

First of all you'll need to have `Docker` installed. If you don't already head over to [their website](https://www.docker.com/products/docker-desktop) to download the necessary tools.

Once you have you'll want to "build" the `sfomuseum-data-architecture-datasette` Docker container, from the command line, like this:

```
$> docker build -t sfomuseum-data-architecture .
```

To launch the container you would type:

```
$> docker run -it -p 8080:8001 sfomuseum-data-architecture
```

And then to view the data open the following URL in your web browser:

```
http://localhost:8080
```

## See also

* https://datasette.readthedocs.io/en/stable/
* https://github.com/simonw/datasette

* https://millsfield.sfomuseum.org/distributions/sqlite/
* https://github.com/sfomuseum-data/

* https://www.docker.com