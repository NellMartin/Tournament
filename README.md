# Read Me File 

This projectis is written and based in Python. It is a module that uses PostgreSQL database to keept rack of players and matches in a game tournament using the technique Swiss Pairing for each round in the tournament matches.  In the next following sections it is going to be discussed: the technologies used, how to generate and run the database, and how to run the tests for the modules.

## Table of Contents
- [Introduction](#introduction)
- [Technologies](#technologies)
- [System Requirements](#system-requirements)
- [Installation](#installation)
- [Contents](#contents)

---
#### Introduction

This project is designed to: teach how to create and use databases through the use of database schemas and how to manipulate the data inside the database. This project has two parts: defining the database schema (SQL table definitions) in tournament.sql, and writing code that will use it to track a Swiss tournament in tournament.py.

---
#### Technologies
-  PostgreSQL - Database
-  Python 2.7 - Scripting Language
-  Vagrant - Virtualization
-  Virtual Box - Virtual Machine

---
#### System Requirements
For the following software, choose the installation appropiate to your Operative System.
- [Virtual Box Version 5.0](https://www.virtualbox.org/wiki/Downloads)
- [Python Version 2.7](https://www.python.org/downloads/)
- [Vagrant Version 1.8.1](https://www.vagrantup.com/downloads.html)
- [Python IDE - IDLE](https://docs.python.org/3/library/idle.html)
- Command Line or Terminal.

---
#### Installation
First, fork the [fullstack-nanodegree-vm repository](#https://www.google.com/url?q=http://github.com/udacity/fullstack-nanodegree-vm&sa=D&ust=1458487900160000&usg=AFQjCNHBQhACq_wS9zRVL9hdU0GzvSaU2w) so that you have a version of your own within your Github account.

Next, clone your fullstack-nanodegree-vm repo to your local machine.

##### Using the Vagrant Virtual Machine

The Vagrant VM has PostgreSQL installed and configured, as well as the psql command line interface (CLI), so that you don't have to install or configure them on your local machine.

To use the Vagrant virtual machine, navigate to the `full-stack-nanodegree-vm/tournament directory in the terminal`, then:
- Use the command `vagrant up` (powers on the virtual machine).
- Use the command `vagrant ssh` (logs into the virtual machine). 
- Use the command `cd /vagrant` to change directory to the synced folders in order to work on your project.
- And finally use the command `ls` on the command line, you'll see your tournament folder.

##### To run the script

In the command line (and while inside the directory `/vagrant/tournament`) type `python tournament_test.py`.

---
### Contents

File | Description | Contains
--- | --- | ---
**tournament.py**| Contains Python modules with execution of queries. | Contains:  <ul> <li>connect (connect database)</li><li> deleteMatches (delete all records from database)</li> <li> deletePlayers (delete all players from database)</li> <li>countPlayers (count Players)</li> <li> registerPlayer (register a player)</li> <li>playerStandings (retrieve list of winners)</li> <li>reportMatch (set the winner and loser and store in database)</li> <li>swissPairing ( Return list of pairs of players for next round in the match)</li><ul>
**tournament.sql**| Defines the database schema.  | Contains: Tables (players, matches), Views (Summary of winners, losers, and billboard for standings), Unique Index (to prevent rematch of players).
**tournament_test.py** | Executes functions from tournament.py and test if current function executes correctly, and output is the expected one.|  Script to execute tournament.py.
