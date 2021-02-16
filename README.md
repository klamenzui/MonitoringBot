# Monitoring Bot

[![Bot API](https://img.shields.io/badge/Bot%20API-v.5.0-00aced.svg?style=flat-square&logo=telegram)](https://core.telegram.org/bots/api)
[![Coverage Status](https://img.shields.io/codecov/c/github/yagop/node-telegram-bot-api?style=flat-square&logo=codecov)](https://codecov.io/gh/yagop/node-telegram-bot-api)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/donate?hosted_button_id=C5U24TX9EN332)
  
## Description

- The bot makes it possible to monitor the state of the node.
- Executes commands anywhere via Telegram.
- Executes scheduled commands at a specific date and time via Telegram.
- Easy access to your Solana data like: Solana version, balance, configuration etc.

## Install
- Create Bot https://t.me/botfather .
- Then download the bot from github in the node where you run solana
- Should be installed:
```sh
#one line command
apt install jq npm nodejs screen openssl -y
```
or one by one:
```sh
#for downloading js libraries
apt install npm
#nodejs to run the bot
apt install nodejs
#jq to parse json in responses
apt install jq
#if you want the bot to keep running after closing the console
apt install screen (optional)
#to generate pem keys
apt install openssl
```
- Install node-telegram-bot-api and create keypare as followed:
```sh
#install api
npm i node-telegram-bot-api
#generate pem keys
mkdir ssl
cd ssl
openssl req -newkey rsa:2048 -sha256 -nodes -keyout my.key -x509 -days 365 -out my.pem -subj "/C=US/ST=Your City/L=Brooklyn/O=Your Company/<Your IP>:443"
```
- Update settings.v file:
   - *telegram token*  = < telegram token >
   - *chat access username* = < telegram username >
   - *solana key path* = /< username >/solana
   - *bot certificate* = ssl/my.pem
- Run the Bot ``` node monitoring_bot.js``` (use ``` screen -d -m node monitoring_bot.js``` for leaving terminal witout stopping the Bot running) or run as a service:

monitoring_bot.service:
  
```sh
[Unit]
Description=MonitoringBot
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=<USER>
ExecStart=<path to monitoring_bot.js>

[Install]
WantedBy=multi-user.target
``` 
 script should have the executable mode turned on ```chmod +x monitoring_bot.js```
 
 and run ```systemctl start monitoring_bot.service```
 
 Now on Telegram you can just write the following to the Bot  ``` /mb v``` (or /tds) and then you will be answered according to your request.

## Commands *(and synonyms)*:
- **watch** *(monitoring, m, w)* - solana satus monitoring (catchup & delinquent)
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

## Demo
[![demo](https://github.com/klamenzui/MonitoringBot/blob/main/demo.gif)](https://github.com/klamenzui/MonitoringBot/blob/main/demo.gif)

## Licensing

**The MIT License (MIT)**

Copyright © 2021 Klamenzui
