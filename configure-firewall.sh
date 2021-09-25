#!/bin/bash

ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow 8080
ufw enable
