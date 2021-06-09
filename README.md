![Scoold Q&A](https://raw.githubusercontent.com/Erudika/scoold/master/assets/header-pro.png)

## Scoold Pro

[![Join the chat at https://gitter.im/Erudika/scoold](https://badges.gitter.im/Erudika/scoold.svg)](https://gitter.im/Erudika/scoold?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

**Scoold** is a Q&A platform written in Java. The project was created back in 2008, released in 2012 as social network for
schools inspired by StackOverflow, and as of 2017 it has been refactored, repackaged and open-sourced.
The primary goal of this project is educational but it can also work great as a Q&A/support section for your website.

Scoold can run on Heroku or any other PaaS. It's lightweight (~4000 LOC) - the backend is handled by a separate service called
[Para](https://github.com/Erudika/para). Scoold does not require a database, and the controller logic is really simple
because all the heavy lifting is delegated to Para. This makes the code easy to read and can be learned quickly by junior developers.

**This repository exists mainly for tracking issues and feature requests.**

## Documentation

See the [README](https://github.com/Erudika/scoold) in the open source repository.

## Quick start with Docker Compose

**First, you will need to obain access keys for the private Docker registry for Scoold Pro,
by [purchasing a Pro license](https://paraio.com/scoold-pro).**
You can start the whole stack, Para + Scoold, with a single command using `docker-compose`.
First, create a new directory and copy [`docker-compose.yml`](docker-compose.yml) 
to it from this repository. Also create these files in the same directory:

1. `para-application.conf` - containing the Para configuration
2. `scoold-application.conf` - containing the Scoold configuration

Example for `para-application.conf`:
```ini
para.env = "production"
para.dao = "H2DAO"
```

Example for `scoold-application.conf`:
```ini
para.env = "production"
para.app_name = "Scoold"
para.endpoint = "http://para:8080"
para.access_key = "app:scoold"
para.secret_key = "..."
```
Docker Compose automatically creates DNS names for each of the services.
This is why the exemplary `scoold-application.conf` contains
`http://para:8080` as the value for `para.endpoint`. The internal IP
of Para will be resolved by Docker automatically.

Then you can start both Scoold and Para with Docker Compose like so:
```
$ docker-compose up
```
Follow the quick start guide above to initialize Para and create a new app for Scoold. Once you have the access keys
for that app, update `scoold-application.conf` with those and restart the Para + Scoold Docker stack:

1. Stop the containers using <kbd>Ctrl</kbd> + <kbd>C</kbd>
2. Rerun `docker-compose up`

The same pair of containers will be run, but this time Scoold has the proper
configuration, allowing it to communicate with Para successfully.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## [Buy Scoold Pro 299 EUR](https://paraio.com/scoold-pro)

**One license per host machine, per year.**

## Getting help

- Have a question? - [ask it on Gitter](https://gitter.im/Erudika/scoold)
- Found a bug? - submit a [bug report here](https://github.com/Erudika/scoold-pro/issues)
- Ask a question on Stack Overflow using the [`scoold`](https://stackoverflow.com/tags/scoold/info) tag
- For questions related to Para, use the [`para`](https://stackoverflow.com/tags/para/info) tag on Stack Overflow

## Blog

### [Read more about Scoold on our blog](https://erudika.com/blog/tags/scoold/)

![Screenshot](https://static.scoold.com/splash.png?v1)

## License
[EULA](LICENSE)
