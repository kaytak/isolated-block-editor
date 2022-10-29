#! /usr/bin/tsh

BUILD_ENV=es6
babel src --out-dir build-module --source-maps --ignore 'src/**/__tests__/*.js','src/browser/*' --copy-files --no-copy-ignored && rm -rf build-module/browser
BUILD_ENV=cjs
babel src --out-dir build --source-maps --ignore 'src/**/__tests__/*.js','src/browser/*' --copy-files --no-copy-ignored && rm -rf build/browser
BUILD_ENV=es6
NODE_ENV=production
webpack --mode production --progress --config ./webpack.config.browser.js && rm build-browser/core.js
tsc --build

