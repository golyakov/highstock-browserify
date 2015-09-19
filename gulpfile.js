var gulp = require('gulp');
var concat = require('gulp-concat');

gulp.task('default', function () {
    gulp.start('server', 'browser');
});

gulp.task('server', function () {
    return gulp
        .src([
            './servershim.js',
            './node_modules/highstock-release/adapters/standalone-framework.js',
            './highchartsAdapter.js',
            './node_modules/highstock-release/highstock.js',
            './highcharts.js',
            './node_modules/highstock-release/modules/exporting.js',
            './node_modules/highstock-release/modules/no-data-to-display.js'
        ])
        .pipe(concat('index.js'))
        .pipe(gulp.dest('./'));
});

gulp.task('browser', function () {
    return gulp
        .src([
            './node_modules/highstock-release/adapters/standalone-framework.js',
            './highchartsAdapter.js',
            './node_modules/highstock-release/highstock.js',
            './highcharts.js',
            './node_modules/highstock-release/modules/exporting.js',
            './node_modules/highstock-release/modules/no-data-to-display.js'
        ])
        .pipe(concat('browser.js'))
        .pipe(gulp.dest('./'));
});