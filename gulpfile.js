// grab our packages
var gulp   = require('gulp'),
    nodemon = require('gulp-nodemon');

// define the default task and add the watch task to it
gulp.task('default', ['watch']);

// configure which files to watch and what tasks to use on file changes
gulp.task('watch', function() {
  gulp.watch('*.js', ['lint']);
});

gulp.task('start', function () {
  nodemon({
    script: 'server.js'
  , ext: 'js html'
  , env: { 'NODE_ENV': 'development' }
  , tasks: []
  })
})
