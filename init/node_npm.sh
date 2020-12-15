#!/bin/sh

# Update npm itself
# npm update -g npm

#
# Install npm packages
#

# Web Develop
npm install -g http-server
npm install -g json-server
npm install -g easymock
npm install -g js-beautify
npm install -g quicktype
npm install -g npx          # for Nodist

# Vue.js
npm install -g @vue/devtools
npm install -g @vue/cli
npm install -g @vue/cli-service-global

# Linter
npm install -g eslint
npm install -g eslint-plugin-vue
npm install -g eslint-plugin-react
npm install -g jsonlint-mod
npm install -g plato
npm install -g hint

# Documentation
npm i -g gitbook-cli

# Utilities
npm install -g chokidar-cli
npm install -g depcheck
npm install -g npm-check-updates
npm install -g ghwd
npm install -g gitmoji-cli
