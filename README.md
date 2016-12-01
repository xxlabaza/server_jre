
# Supported tags and respective `Dockerfile` links

-	[`8.112`, `latest` (*server_jre/Dockerfile*)](https://github.com/xxlabaza/server_jre/blob/master/server_jre/Dockerfile)
-	[`8.112-jce`, `jce` (*server_jre_jce/Dockerfile*)](https://github.com/xxlabaza/server_jre/blob/master/server_jre_jce/Dockerfile)

# How to use this image

## Usage

Use like you would any other base image:

```dockerfile
FROM xxlabaza/server_jre
ADD *.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
```

Or use with `JCE` extension:

```dockerfile
FROM xxlabaza/server_jre:jce
ADD *.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
```

# Supported Docker versions

This image is officially supported on Docker version 1.12.3.

Support for older versions (down to 1.6) is provided on a best-effort basis.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

# User Feedback

## Issues

If you have any problems with or questions about this image, please contact me through a [GitHub issue](https://github.com/xxlabaza/server_jre/issues).

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; I am always thrilled to receive pull requests, and do my best to process them as fast as I can.

Before you start to code, I recommend discussing your plans through a [GitHub issue](https://github.com/xxlabaza/server_jre/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
