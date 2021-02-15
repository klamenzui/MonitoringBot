# Monitoring Bot

[![Bot API](https://img.shields.io/badge/Bot%20API-v.5.0-00aced.svg?style=flat-square&logo=telegram)](https://core.telegram.org/bots/api)
[![Coverage Status](https://img.shields.io/codecov/c/github/yagop/node-telegram-bot-api?style=flat-square&logo=codecov)](https://codecov.io/gh/yagop/node-telegram-bot-api)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/donate?hosted_button_id=C5U24TX9EN332)

## Install
- Create Bot https://t.me/botfather .
- Then get bot from github.
- Install node-telegram-bot-api and create keypare as followed:
```sh
npm i node-telegram-bot-api

mkdir ssl
cd ssl
openssl req -newkey rsa:2048 -sha256 -nodes -keyout my.key -x509 -days 365 -out my.pem -subj "/C=US/ST=Your City/L=Brooklyn/O=Your Company/<Your IP>:443"
```
- Update settings.v file:
   *telegram token*  = **<telegram token>**
   *chat access username* = **<telegram username>**
   *solana key path* = **/<username>/solana**
   *bot certificate* = **ssl/my.pem**
- Run the Bot ```sh node monitoring_bot.js``` (use ```sh screen ..``` for leaving terminal witout stopping the Bot running)
 
 Now on Telegram you can just write the following to the Bot  ```sh /mb v``` (or /tds) and then you will be answered according to your request.
  
## Description

- The bot makes it possible to monitor the state of the node.
- Executes commands anywhere via Telegram.
- Executes scheduled commands at a specific date and time.

## Commands *(and synonyms)*:
- **watch** *(monitoring, m, w)* - satus monitoring
    - start *(enable)*           - starts monitoring.
    - interval *(set)* 15        - sets the interval to 15 minutes.
    - status *(state)*           - checks status of monitoring.
    - stop *(disable)*           - stops monitoring.
- **configuration** *(config, cfg)* - shows solana.service file.
- **key validator**                 - gets solana validator key.
- **key vote**                      - gets solana vote key.
- **balance** *(b)*                 - checks solana balance (validator & vote).
- **install** x.x.x                 - updates and restarts Solana service **(unless a configuration update is required)**.
- **catchup**                       - solana catchup.
- **delinquent**                    - ckecks delinquent validator.
- **version** *(v)*                 - get solana version.
- **stakes validator**              - shows solana stakes of validator key.
- **stakes vote**                   - shows solana stakes of vote key.



## Licensing

**The MIT License (MIT)**

Copyright © 2021 Klamenzui
