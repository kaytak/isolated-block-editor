#! C:\Users\kandak\AppData\Local\Programs\Git\usr\bin\bash.exe

BUILD_ENV=es6
#./node_modules/.bin/babel src --out-dir build-module --source-maps --ignore 'src/**/__tests__/*.js','src/browser/*' --copy-files --no-copy-ignored && rm -rf build-module/browser
yarn build:es6a
BUILD_ENV=cjs
yarn build:cjsa
#./node_modules/.bin/babel src --out-dir build --source-maps --ignore 'src/**/__tests__/*.js','src/browser/*' --copy-files --no-copy-ignored && rm -rf build/browser
BUILD_ENV=es6
NODE_ENV=production
yarn build:browsera
#./node_modules/.bin/webpack --mode production --progress --config ./webpack.config.browser.js && rm build-browser/core.js
#./node_modules/.bin/tsc --build
yarn build:types
