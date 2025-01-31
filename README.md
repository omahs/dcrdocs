# dcrdocs

[![Build Status](https://github.com/decred/dcrdocs/workflows/Build%20and%20Test/badge.svg)](https://github.com/decred/dcrdocs/actions)
[![ISC License](https://img.shields.io/badge/license-ISC-blue.svg)](http://copyfree.org)

`dcrdocs` is source code for the [Decred project documentation](https://docs.decred.org).

`dcrdocs` is built with [MkDocs](https://www.mkdocs.org/) - a documentation toolkit written in Python.

## Development

#### Install Python

In order to develop on `dcrdocs` you will need [Python](https://www.python.org/)
installed on your system.
Version 3.9 is recommended because this is the version used by the live site,
however MkDocs does also support versions 3.6 and later.
Python 2 is not supported.

You can verify your installation of Python by checking the output from these two
commands:

```bash
$ python --version
Python 3.9.5
$ pip --version
pip 21.1.2
```

#### Install dependencies

To install MkDocs and all of the other Python libraries required by `dcrdocs`:

```bash
$ pip install mkdocs && pip install --user -r requirements.txt
```

#### Getting started

This repo contains a single configuration file named `mkdocs.yml`, and a folder named `docs` that will contain the documentation source files. MkDocs comes with a built-in dev-server that lets you preview the documentation as you work on it. Make sure you are in the same directory as the `mkdocs.yml` configuration file, and then start the server by running the `mkdocs serve` command:

```bash
$ mkdocs serve
INFO     -  Building documentation...
INFO     -  Cleaning site directory
INFO     -  Documentation built in 9.09 seconds
INFO     -  [13:26:55] Serving on http://127.0.0.1:8000/
```

If you are using Windows, you may need to inform python to search sys.path for the mkdocs module:

```bash
$ python -m mkdocs serve
INFO     -  Building documentation...
INFO     -  Cleaning site directory
INFO     -  Documentation built in 9.09 seconds
INFO     -  [13:26:55] Serving on http://127.0.0.1:8000/
```

Open up <http://127.0.0.1:8000> in your browser, and you will see the documentation home page being displayed. The dev-server also supports auto-reloading, and will rebuild your documentation whenever anything in the configuration file or the documentation directory changes.

#### Formatting

In general, stick to standard Markdown formatting. However, these docs use [Material for Mkdocs](https://squidfunk.github.io/mkdocs-material/reference/), so consult their documentation if you need additional formatting tools.

## Deploying

To deploy `dcrdocs`, first build the documentation:

```bash
$ ./bin/build_docs.sh
```

This will build the documentation into a new directory named `site`.

The version of `dcrdocs` that you just built only uses static files which are all contained within the `site/` directory, so this directory can be hosted using almost any web server software.

#### Docker

`dcrdocs` can also be built and hosted in a [Docker](https://www.docker.com/) container. Build the container using:

```bash
$ ./bin/build.sh
```

The container can then be run with:

```bash
$ docker run -d --rm -p <local port>:80 decred/dcrdocs:latest
```

## Pages to review upon new releases

#### CLI releases

- `advanced/manual-cli-install.md`
- `wallets/cli/dcrd-and-dcrwallet-cli-arguments.md`
- `wallets/cli/dcrctl-rpc-commands.md`
- `wallets/cli/cli-installation.md`
- `advanced/solo-proof-of-stake-voting.md`
- `advanced/verifying-binaries.md`
- `advanced/secure-cold-wallet-setup.md`

#### politeiavoter releases

- `advanced/solo-proof-of-stake-voting.md`

#### Decrediton releases

- `wallets/decrediton/decrediton-setup.md`
- `wallets/decrediton/using-decrediton.md`
- `wallets/decrediton/decrediton-troubleshooting.md`

#### dcrlnd release

- `lightning-network/dcrlncli/options-and-commands.md`

## Getting help

To get help with `dcrdocs` please create a [GitHub issue](https://github.com/decred/dcrdocs/issues) or the join the [Decred community](https://decred.org/community/) using your preferred chat platform.
