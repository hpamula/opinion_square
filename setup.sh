#!/bin/bash

set -e
sudo apt update && sudo apt upgrade -y
sudo apt install nodejs npm
# sudo apt install sqlite3 libsqlite3-dev
npx express-generator backend --no-view
cd backend
# who knows, maybe command below is redundant
# npm install
npm install sqlite3
# npm start
# maybe mkdir models db controllers
cd ..
npm create vite@latest frontend -- --template react
cd frontend
# who knows, maybe command below is redundant
# npm install
# after `npm start` in one terminal, run below in another terminal to run both
# npm run dev
