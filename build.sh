
cat ./servershim.js > index.js
cat ./standalone-framework.js >> index.js
echo "window.HighchartsAdapter = HighchartsAdapter;" >> index.js
cat ./highstock.js >> index.js
echo "module.exports = Highcharts = window.Highcharts;" >> index.js
cat ./exporting.js >> index.js
cat ./standalone-framework.js > browser.js
echo "window.HighchartsAdapter = HighchartsAdapter;" >> browser.js
cat ./highstock.js >> browser.js
echo "module.exports = window.Highcharts;" >> browser.js
cat ./exporting.js >> browser.js
