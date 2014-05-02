
cat ./servershim.js > index.js
cat ./highstock.js >> index.js
echo "console.log(window); module.exports = window.Highcharts;" >> index.js
cat ./highstock.js > browser.js
echo "module.exports = window.Highcharts;" >> browser.js
