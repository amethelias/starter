## ATLA Usage
The original readme is preserved below for reference. For ATLA usage follow the following instructions:

1. Be sure to have the XCode Command-Line tools installed: `xcode-select --install`
2. Easy_install pip, and then pip install Ansible: `sudo easy_install pip; sudo pip install ansible`
3. If you plan to use PHPStorm you will need to install the Mac Java installable found here: https://support.apple.com/kb/DL1572?locale=en_US
4. In order to complete the portion of the install that clones a private repo you will need to have an RSA key set up with github on this machine. Do so now (https://help.github.com/articles/generating-ssh-keys/, N.B. a quick way to copy your public key is with this command `echo "$(cat ~/.ssh/id_rsa.pub)" | pbcopy`). If you set a keyphrase, allow Mac keychain to remember it during the test in the linked instructions. 
5. Clone the project on your machine: `git clone https://github.com/amethelias/starter.git ~/ansible; cd ~/ansible`
6. Last, run the shell script to perform the install: `./ansible-provision.sh`
> **Additional Note:** Expect that this will ask twice for the sudo password, once to run and once for ansible.

## Introduction

Welcome to osxc !

osxc is a simple configuration tool for OS X (in fact, it just makes it easier for you to use ansible on OS X).

You can reach our (temporarily not updated and old) [website](http://osxc.github.io) if you want to know more. But don't follow the instructions there to get started, just stay here for that !

## Get started

> **Warning:** All of this is subject to change, just be sure you're able to reach this page to see the latest instructions when it'll be updated. Don't worry though, we will not change brutally the structure of your current repo (not like we did with legacy). All we are going to do is add a CLI tool.

> **Additional Note:** If you're installing system-wide `sudo ansible-galaxy install -r requirements.yml` otherwise edit `ansible.cfg` and comment out `roles_path:./roles` to install the roles in your osxc.starter fork before running **Step 5**.

1. Be sure to have the XCode Command-Line tools installed: `xcode-select --install`
2. Easy_install pip, and then pip install Ansible: `sudo easy_install pip; sudo pip install ansible` (or `sudo pip install --upgrade ansible` if Ansible has already been installed via pip and needs upgrading to 1.8+)
3. While that's happening [Fork this repo](https://github.com/osxc/starter/fork) and then clone your fork anywhere you want on your machine: `git clone https://github.com/<yourname>/starter.git ~/src/osxc; cd ~/src/osxc`
4. Take a quick look at `configuration.yml` and `installation.yml` customizing to your liking.
5. Start osxc with `ansible-galaxy install -r requirements.yml && ansible-playbook desktop.yml`

At the end, you'll only need to repeat step 5.

Now you're ready to further tweak the configuration we gave you. Have fun ! (You may want to read the [Ansible documentation](http://docs.ansible.com/index.html) in this case ...)

## Learn More

If you want to get more documentation or just want to see what osxc can do for you, here's a [repository list on ansible galaxy](https://galaxy.ansible.com/list#/users/6499) where you can find all the publicly available roles for osxc.
