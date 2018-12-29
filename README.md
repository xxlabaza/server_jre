
# Supported tags and respective `Dockerfile` links

> **IMPORTANT:** Strong cryptography is now enabled out of the box, so there is no separate **JCE** tag anymore

- [`12`, `latest` (*Dockerfile*)](https://github.com/xxlabaza/server_jre/blob/master/Dockerfile)
- [`8.192` (*server_jre/Dockerfile*)](https://github.com/xxlabaza/server_jre/blob/0f013e103d16e5d257128d326b2a53ccdfd060a1/server_jre/Dockerfile)
- [`8.192-jce`, `jce` (*server_jre_jce/Dockerfile*)](https://github.com/xxlabaza/server_jre/blob/0f013e103d16e5d257128d326b2a53ccdfd060a1/server_jre_jce/Dockerfile)
- [`8.112` (*server_jre/Dockerfile*)](https://github.com/xxlabaza/server_jre/blob/56332e881ca0eb8a3230448297c28f900e0f3f96/server_jre/Dockerfile)
- [`8.112-jce`, `jce` (*server_jre_jce/Dockerfile*)](https://github.com/xxlabaza/server_jre/blob/56332e881ca0eb8a3230448297c28f900e0f3f96/server_jre_jce/Dockerfile)

# How to use this image

## Usage

Use like you would any other base image:

```dockerfile
FROM xxlabaza/server_jre
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
