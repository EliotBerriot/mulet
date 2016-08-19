# Why ?

At the moment, the process of setting up a development environment for B2G OS on a desktop computer is quite complicated.

This docker image is an attempt to make things easier to newcomers, like me.

# Which platforms are supported

Since this docker image runs a GUI app (firefox), it's not as portable as other docker images.

I don't expect it to work on Windows machines. It can probably work on Mac OS with a few modifications. Feel free to submit your PRs ;)

# Installation

Ensure you have [Docker and docker-compose installed and working](https://docs.docker.com/compose/install/).

You also need a gaia profile (it will be mounted in the container)

After that, simply copy the `docker-compose.yml` file, and edit it to match your setup.

You should only have to edit the `/firefox-profile` volume line to make it work.

# Running

Once your docker-compose file is okay, running `docker-compose up` should do the trick ;)
