# Basic Setup Of An Ubuntu Linux Server

in this repo you'll find a server provisioning script that updates, upgrades, and configures an ubuntu linux server.

![You Just Created A New Ubuntu Linux Server, Now What!?](cover.png)

So you've just created a new ubuntu linux server.

Naturally you ask the following question: "I've got a new ubuntu linux server, now what?"

Let's do some simple OS configuration and install some Docker stuff.

## What Is This Repo?

This repo contains ubuntu linux server provisioning bash script(s) that will update, upgrade and configure your new ubuntu linux server.

## What Does This Script Do?

The included bash scripts will configure your new ubuntu linux server with some basic software and docker container capabilities.

* Update your operating system packages
* Upgrade your operating system software and applications
* Install basic networking software tools
* Install docker & docker compose to run containers

## Future Upgrades

The following have not been implemented but will come soon.

- [software shinobi linux] Run the script into a Docker image for funsies.
- [stark industries scripts] Create standard users w/ passwords w/ keys
- [stark industries scripts] Configure Docker user permissions at install
- [software developer things] add in the custom bashrc configuration for speed
- [software developer things] add in the custom bashrc configuration for speed

## How To Run This Script?

So let's setup your new ubuntu linux server.

### Step 1 / Login To Server

Log in to your linux server.

`note` you can run this script as the `root` user or a user in the `sudo` group.

### Step 2 / Clone Repo

Clone (download) this git repo to save locally onto your linux server.

```bash
git clone https://github.com/softwareshinobi/provision-ubuntu-linux-server.git
```

You'll see output that looks similar to this:

```
Cloning into 'provision-ubuntu-linux-server'...
remote: Enumerating objects: 120, done.
remote: Counting objects: 100% (120/120), done.
remote: Compressing objects: 100% (91/91), done.
remote: Total 120 (delta 49), reused 89 (delta 26), pack-reused 0 (from 0)
Receiving objects: 100% (120/120), 1.27 MiB | 17.11 MiB/s, done.
Resolving deltas: 100% (49/49), done.
```

### Step 3 / Verify Clone

Make sure the git repo has been downloaded to your server.

```bash
ls -lha . | grep provision
```

You are looking for something like this:

```
drwxrwxr-x  4 softwareshinobi softwareshinobi 4,0K mar 19 08:14 provision-ubuntu-linux-server
```

### Step 4 / Navigate To Script

So now let's run the script. Change directories into the downloaded directory.

```bash
cd provision-ubuntu-linux-server
```

Verify you are in the correct directory

```bash
pwd
```

You are looking for an output similar to this

```
/home/ubuntu/provision-ubuntu-linux-server
```

### Step 5 / Execute Script

Now let's run the script and get started.

```bash
sudo bash provision.bash
```
