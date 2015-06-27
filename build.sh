#!/usr/bin/env bash

cat ./servershim.js > index.js
cat ./node_modules/highstock-release/adapters/standalone-framework.js >> index.js
echo "window.HighchartsAdapter = HighchartsAdapter;" >> index.js
cat ./node_modules/highstock-release/highstock.js >> index.js
echo "module.exports = Highcharts = window.Highcharts;" >> index.js
cat ./node_modules/highstock-release/modules/exporting.js >> index.js
cat ./node_modules/highstock-release/modules/no-data-to-display.js >> index.js

cat ./node_modules/highstock-release/adapters/standalone-framework.js > browser.js
echo "window.HighchartsAdapter = HighchartsAdapter;" >> browser.js
cat ./node_modules/highstock-release/highstock.js >> browser.js
echo "module.exports = window.Highcharts;" >> browser.js
cat ./node_modules/highstock-release/modules/exporting.js >> browser.js
cat ./node_modules/highstock-release/modules/no-data-to-display.js >> browser.js
