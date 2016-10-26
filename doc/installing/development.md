# Installing the OpenQuake Engine for development

To develop with the OpenQuake Engine and Hazardlib an installation from sources must be performed.

*The source installation will conflict with the package installation, so you
must remove the openquake package if it was already installed.*

The official supported distributions to develop the OpenQuake Engine and its libraries are
- Ubuntu 14.04 LTS (Trusty) 
- Ubuntu 16.04 LTS (Xenial)
- RedHat Enterprise Linux 7 
- CentOS 7
- Scientific Linux 7

This guide may work also on other Linux releases/distributions and with some adaptations on macOS.

## Prerequisites

Knowledge of [Python](https://www.python.org/) (and its virtual environments), [git](https://git-scm.com/) and [software development](https://xkcd.com/844/) are required.

Some software prerequisites are needed to build the development environment

### Ubuntu

```bash
sudo apt-get install build-essential git libhdf5-dev libgeos-dev python-virtualenv python-pip
```

### RedHat

```bash
sudo yum groupinstall "Development tools"
sudo yum install git hdf5-devel geos-devel python-virtualenv python-pip
```

## Build the development environment

A development environment will be built using a python *virtualenv*

```bash
virtualenv openquake
source openquake/bin/activate
```

## Install the OpenQuake dependencies

Inside the *virtualenv* (the prompt shows something like `(openquake)user@myhost:~$`) upgrade `pip` first

```bash
pip install -U pip
```

download the OpenQuake source code

```bash
mkdir src && cd src
git clone https://github.com/gem/oq-engine.git
git clone https://github.com/gem/oq-hazardlib.git
```

install the OpenQuake requirements (from sources or [using binary wheels](#note1)<sup>[1](#note1)</sup>)

```bash
pip install -r oq-engine/requirements-dev.txt
```


install OpenQuake itself

```bash
pip install -e oq-hazardlib/
pip install -e oq-engine/
```

Now it is possible to run the OpenQuake Engine with `oq engine`. Any change made to the `oq-engine` or `oq-hazardlib` code will be reflected in the environment.

Continue on [How to run the OpenQuake Engine](../running/unix.md)

### Sync the source code with remote

You can pull all the latest changes to the source code running

```bash
cd oq-engine
git pull
cd ..

cd oq-hazardlib
git pull
cd ..
```

`oq-engine` and `oq-hazardlib` must be always synced at the same time.

Make also sure that no new dependencies have been added checking `requirements-dev.txt` in the source code folders or running `pip`

```bash
pip install -r oq-engine/requirements-dev.txt
```

## Loading and unloading the development environment

To exit from the OpenQuake development environment type `deactivate`. Before using again the OpenQuake software the environment must be loaded back running `source openquake/bin/activate`(assuming that it has been installed under 'openquake'). For more information about *virtualenv* and its you see http://docs.python-guide.org/en/latest/dev/virtualenvs/

## Running the tests

To run the OpenQuake Engine tests see the **[testing](../testing.md)** page.

## Uninstall the OpenQuake Engine

To uninstall the OpenQuake development make sure that its environment is not loaded typing `deactivate` and the remove the folder where it has been installed: `rm -Rf openquake`.

***

### Notes ###

*<a name="note1">[1]</a>: a binary version of the dependencies (that do not require compilers, libs...) can be installed using*

```bash
pip install -r oq-engine/requirements-py27-linux64.txt
```

***

## Getting help
If you need help or have questions/comments/feedback for us, you can:
  * Subscribe to the OpenQuake users mailing list: https://groups.google.com/forum/?fromgroups#!forum/openquake-users
  * Contact us on IRC: irc.freenode.net, channel #openquake
