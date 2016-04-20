var config = require('../config')
if (!config.tasks.libs) return

var browserSync = require('browser-sync')
var changed = require('gulp-changed')
var gulp = require('gulp')
var path = require('path')
var getDestFolder = require('../lib/getDestFolder')

var paths = {
    src: path.join(config.root.src, config.tasks.libs.src, '/**/*')
}

var libsTask = function () {
    paths.dest = path.join(getDestFolder(process.env.NODE_ENV), config.tasks.libs.dest);
    return gulp.src(paths.src)
        //.pipe(changed(paths.dest)) // Ignore unchanged files
        .pipe(gulp.dest(paths.dest))
        .pipe(browserSync.stream())
}

gulp.task('libs', libsTask)
module.exports = libsTask
