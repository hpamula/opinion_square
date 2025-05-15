#!/bin/bash

# ==================== GLOBAL INSTALLS ====================
set -e
sudo apt update && sudo apt upgrade -y
sudo apt install nodejs npm
# sudo apt install sqlite3 libsqlite3-dev

# ==================== LOCAL BACKEND SETUP ====================
npx express-generator backend --no-view
cd backend
# who knows, maybe command below is redundant
# npm install

# ===================== LOCAL BACKEND DATABASE SETUP ====================
# Execution flow: routes -> controllers -> services -> models -> config (database)
# Everything except routes can be omitted
# Here stays: routes (with sql querries) -> models with config (database definitions)
npm install sqlite3
# npm start
mkdir database

# ==================== LOCAL FRONTEND SETUP ====================
cd ..
npm create vite@latest frontend -- --template react
cd frontend
# who knows, maybe command below is redundant
# npm install
# after `npm start` in one terminal, run below in another terminal to run both
# npm run dev
