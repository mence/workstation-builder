#!/bin/bash

echo "Installing Node apps..."

echo "Upgrade npm"
npm install -g npm

echo "Install versions of node"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
nvm install 4.4
nvm install stable

# Development
yarn global add bower --prefix /usr/local
yarn global add hotel --prefix /usr/local
yarn global add npm-check --prefix /usr/local
yarn global add devtool --prefix /usr/local
yarn global add jsome --prefix /usr/local # https://github.com/Javascipt/Jsome
yarn global add nodemon --prefix /usr/local # https://github.com/remy/nodemon
yarn global add git-recent --prefix /usr/local
yarn global add lebab --prefix /usr/local # https://github.com/lebab/lebab
yarn global add flow-bin --prefix /usr/local
yarn global add jquery
yarn global add ntl

# Yeoman
yarn global add yo --prefix /usr/local

## Yeoman Generators
# yarn global add generator-webapp
# yarn global add generator-react-server
# yarn global add generator-react-static

# React
yarn global add react --prefix /usr/local
yarn global add react@16.0.0-alpha.6
yarn global add create-react-app --prefix /usr/local
yarn global add jest --prefix /usr/local
yarn global add react-native
yarn global add react-native-cli --prefix /usr/local
yarn global add ignite-cli --prefix /usr/local # https://github.com/infinitered/ignite
yarn global add react-monocle --prefix /usr/local # https://github.com/team-gryff/react-monocle

# Typescript
yarn global add typescript --prefix /usr/local
yarn global add ts-jest --prefix /usr/local

# Serverless
yarn global add serverless --prefix /usr/local

## Serverless plugins
# yarn global add serverless-aws-documentation
# yarn global add serverless-build-plugin
# yarn global add serverless-coffeescript
# yarn global add serverless-command-line-event-args
# yarn global add serverless-crypt
# yarn global add serverless-jest-plugin
# yarn global add serverless-mocha-plugin
# yarn global add serverless-offline
# yarn global add serverless-dynamodb-local
# yarn global add serverless-offline-scheduler
# yarn global add serverless-plugin-aws-alerts
# yarn global add serverless-plugin-browserify
# yarn global add serverless-plugin-graphiql
# yarn global add serverless-plugin-optimize
# yarn global add serverless-plugin-package-dotenv-file
# yarn global add serverless-plugin-webpack
# yarn global add serverless-plugin-write-env-vars
# yarn global add serverless-prune-plugin
# yarn global add serverless-plugin-typescript
# yarn global add serverless-webpack

# Linters (also used in SublimeLinter)
yarn global add eslint --prefix /usr/local
yarn global add babel-eslint
yarn global add eslint-config-airbnb
yarn global add eslint-plugin-flowtype
yarn global add eslint-plugin-import
yarn global add eslint-plugin-jsx-a11y
yarn global add eslint-plugin-react
yarn global add bootlint --prefix /usr/local
yarn global add coffeelint --prefix /usr/local
yarn global add csslint --prefix /usr/local
yarn global add htmlhint@latest --prefix /usr/local
yarn global add jshint --prefix /usr/local
yarn global add jsxhint --prefix /usr/local
yarn global add write-good --prefix /usr/local
yarn global add pug-lint --prefix /usr/local # https://github.com/pugjs/pug-lint
yarn global add tslint --prefix /usr/local # https://github.com/palantir/tslint
yarn global add tslint-react --prefix /usr/local
yarn global add tslint-eslint-rules --prefix /usr/local

# textlint
yarn global add textlint --prefix /usr/local
## textlint rules
# yarn global add textlint-rule-no-todo --prefix /usr/local
# yarn global add textlint-rule-no-start-duplicated-conjunction --prefix /usr/local
# yarn global add textlint-rule-max-number-of-lines --prefix /usr/local
# yarn global add textlint-rule-max-comma --prefix /usr/local
# yarn global add textlint-rule-no-exclamation-question-mark --prefix /usr/local
# yarn global add textlint-rule-no-dead-link --prefix /usr/local
# yarn global add textlint-rule-alex --prefix /usr/local
# yarn global add textlint-rule-common-misspellings --prefix /usr/local
# yarn global add textlint-rule-write-good --prefix /usr/local
# yarn global add textlint-plugin-html --prefix /usr/local

# Debugging
yarn global add 0x --prefix /usr/local # https://github.com/davidmarkclements/0x
yarn global add node-inspector --prefix /usr/local # https://github.com/node-inspector/node-inspector
yarn global add iron-node --prefix /usr/local # https://github.com/s-a/iron-node
yarn global add jstrace --prefix /usr/local # https://github.com/jstrace/jstrace

# Productionizing
yarn global add clean-css # https://github.com/jakubpawlowicz/clean-css
yarn global add pm2 --prefix /usr/local # https://github.com/Unitech/pm2

# Build
yarn global add grunt-cli --prefix /usr/local
yarn global add gulp-cli --prefix /usr/local
yarn global add browserify --prefix /usr/local
yarn global add webpack --prefix /usr/local
yarn global add foreman --prefix /usr/local

# Testing
yarn global add jasmine-node
yarn global add jasmine-core
yarn global add mocha --prefix /usr/local # http://mochajs.org/
yarn global add cucumber --prefix /usr/local
yarn global add cucumber@^1.3.0
yarn global add karma
yarn global add karma-cli
yarn global add karma-coverage
yarn global add karma-jasmine
yarn global add karma-jasmine@0.1.0
yarn global add karma-mocha
yarn global add karma-cucumber-js
yarn global add istanbul # https://github.com/gotwarlost/istanbul
yarn global add nyc # https://github.com/bcoe/nyc
yarn global add trevor # https://github.com/vdemedes/trevor
yarn global add testen # https://github.com/egoist/testen - Alternative to trevor
yarn global add ava # https://github.com/avajs/ava
yarn global add phantomjs-prebuilt # https://github.com/Medium/phantomjs
yarn global add wring # https://github.com/osener/wring

# Module Development tools
yarn global add autochecker --prefix /usr/local
yarn global add snyk --prefix /usr/local # https://github.com/Snyk/snyk
yarn global add nsp --prefix /usr/local # https://github.com/nodesecurity/nsp

# Utilities
yarn global add mert --prefix /usr/local # https://github.com/eggplanetio/mert
yarn global add speed-test --prefix /usr/local # https://github.com/sindresorhus/speed-test
yarn global add vtop --prefix /usr/local # https://github.com/MrRio/vtop
yarn global add alex --prefix /usr/local # https://github.com/wooorm/alex
yarn global add iponmap --prefix /usr/local # https://github.com/nogizhopaboroda/iponmap
yarn global add ipify --prefix /usr/local # https://github.com/sindresorhus/ipify
yarn global add getmac --prefix /usr/local # https://github.com/bevry/getmac
yarn global add forever --prefix /usr/local # https://github.com/foreverjs/forever
yarn global add juliangruber/vipe --prefix /usr/local # https://github.com/juliangruber/vipe/

### --- OTHER ---

# npm install -g subdownloader # https://github.com/beatfreaker/subdownloader

# Hilarity
# npm install -g gifi # https://github.com/vdemedes/gifi

# Text
# npm install -g franc # https://github.com/wooorm/franc
# npm install -g superb # https://github.com/sindresorhus/superb
# npm install -g cat-names # https://github.com/sindresorhus/cat-names
# npm install -g dog-names # https://github.com/sindresorhus/dog-names
# npm install -g superheroes # https://github.com/sindresorhus/superheroes
# npm install -g supervillans # https://github.com/sindresorhus/supervillains
# npm install -g cool-ascii-faces # https://github.com/maxogden/cool-ascii-faces
# npm install -g cat-ascii-faces # https://github.com/melaniecebula/cat-ascii-faces
