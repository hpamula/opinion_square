#!/bin/bash

# ==================== GLOBAL INSTALLS ====================
set -e
sudo apt update && sudo apt upgrade -y
sudo apt install nodejs npm
# sudo apt install sqlite3 libsqlite3-dev

# ==================== LOCAL BACKEND SETUP ====================
# Execution flow: routes -> controllers -> services -> models -> config (database)
cd backend
npm install express sqlite3 morgan
# mkdir database
node app.js

# ==================== LOCAL FRONTEND SETUP ====================
# commented beacuse not finished yet
# cd ..
# npm create vite@latest frontend -- --template react
# cd frontend
# who knows, maybe command below is redundant
# npm install
# after `npm start` in one terminal, run below in another terminal to run both
# npm run dev
