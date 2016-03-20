# Tournament
---

This projectis written in Python. It is a module that uses PostgreSQL database to keept rack of players and matches in a game tournament using the technique Swiss Pairing.  In the next following sections it is going to be discussed: the technologies used, how to run generate the database, how to run the tests for the modules.

## Table of Contents

- [Introduction](#introduction)
- [Technologies](#technologies)
- [Installation](#installation)
- [Contents](#contents)
- [References](#references)

====
### Introduction

This project is designed to: to teach you how to create and use databases through the use of database schemas and how to manipulate the data inside the database. This project has two parts: defining the database schema (SQL table definitions) in tournament.sql, and writing code that will use it to track a Swiss tournament in tournament.py.

====
### Technologies
-  PostgreSQL - Database
-  Python 2.7 - Scripting Language
-  Vagrant - Virtualization
-  Virtual Box - Virtual Machine
====
## System Requirements
For the following software, choose the installation appropiate to your Operative System.
- [Virtual Box Version 5.0](https://www.virtualbox.org/wiki/Downloads)
- [Python Version 2.7](https://www.python.org/downloads/)
- [Vagrant Version 1.8.1](https://www.vagrantup.com/downloads.html)
- [Python IDE - IDLE](https://docs.python.org/3/library/idle.html)
- Command Line or Terminal.

====
## Installation
First, fork the [fullstack-nanodegree-vm repository](#https://www.google.com/url?q=http://github.com/udacity/fullstack-nanodegree-vm&sa=D&ust=1458487900160000&usg=AFQjCNHBQhACq_wS9zRVL9hdU0GzvSaU2w) so that you have a version of your own within your Github account.

Next clone your fullstack-nanodegree-vm repo to your local machine.

### Using the Vagrant Virtual Machine

The Vagrant VM has PostgreSQL installed and configured, as well as the psql command line interface (CLI), so that you don't have to install or configure them on your local machine.

To use the Vagrant virtual machine, navigate to the `full-stack-nanodegree-vm/tournament directory in the terminal`, then:
- Use the command `vagrant up` (powers on the virtual machine)
- Use the command `vagrant ssh` (logs into the virtual machine). 
- Use the command `cd /vagrant` to change directory to the synced folders in order to work on your project.
- And finally use the command `ls` on the command line, you'll see your tournament folder.

### To run the script

In the command line (and while inside the directory `/vagrant/tournament`) type `python tournament_test.py`.

====

## Description




