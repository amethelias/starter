#! /bin/bash
sudo ansible-galaxy install --force -r requirements.yml && ansible-playbook desktop.yml --ask-sudo-pass #--verbose