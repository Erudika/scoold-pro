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

## [Buy Scoold Pro 499 EUR](https://paraio.com/scoold-pro)

**One-time fee, one license per host machine. Price includes one year of updates and support.**

## Documentation

See the [README](https://github.com/Erudika/scoold) in the open source repository.

## Quick start with Docker Compose

**First, you will need to obain access keys for the private Docker registry for Scoold Pro,
by [purchasing a Pro license](https://paraio.com/scoold-pro).**

The *easiest way* to create the Scoold stack is to run `docker compose up`.

1. Create a new directory and copy [`docker-compose.yml`](docker-compose.yml) to it from this repository.
2. Create these two configuration files in the same directory (both files can be left blank for now):
```
$ touch para-application.conf scoold-application.conf
```
3. `$ docker compose up`

To stop the containers use <kbd>Ctrl</kbd> + <kbd>C</kbd>.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

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
