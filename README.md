# Monitoring Bot

[![Bot API](https://img.shields.io/badge/Bot%20API-v.5.0-00aced.svg?style=flat-square&logo=telegram)](https://core.telegram.org/bots/api)
[![Coverage Status](https://img.shields.io/codecov/c/github/yagop/node-telegram-bot-api?style=flat-square&logo=codecov)](https://codecov.io/gh/yagop/node-telegram-bot-api)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/donate?hosted_button_id=C5U24TX9EN332)

## Install
```sh
npm i node-telegram-bot-api

mkdir ssl
cd ssl
openssl req -newkey rsa:2048 -sha256 -nodes -keyout my.key -x509 -days 365 -out my.pem -subj "/C=US/ST=Your City/L=Brooklyn/O=Your Company/<Your IP>:443"
```
Update settings.v file:
   *telegram token*  = **<telegram token>**
   *chat access username* = **<telegram username>**
   *solana key path* = **/<username>/solana**
   *bot certificate* = **ssl/my.pem**

## Description

- The bot makes it possible to monitor the state of the node.
- Execute commands from anywhere via telegram.
- Execute scheduled commands at a specific date and time.

## Commands *(and synonyms)*:
**watch** *(monitoring, m, w)* - satus monitoring
    start *(enable)*           - starts monitoring.
    interval *(set)* 15        - sets the interval to 15 minutes.
    status *(state)*           - check status of monitoring.
    stop *(disable)*           - stops monitoring.
**configuration** *(config, cfg)* - view solana.service file.
**key validator**                 - get solana validator key.
**key vote**                      - get solana vote key.
**balance** *(b)*                 - check solana balance ( validator & vote ).
**install** 1.1.1                 - install and restart the Solana service **(unless a configuration update is required)**.
**catchup**                       - solana catchup.
**delinquent**                    - ckeck delinquent validator.
**version** *(v)*                 - get solana version.
**stakes validator**              - view solana stakes validator.
**stakes vote**                   - view solana stakes vote.



## Licensing

**The MIT License (MIT)**

Copyright © 2021 Klamenzui
