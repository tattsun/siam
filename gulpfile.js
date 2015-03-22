var gulp = require('gulp');
var shell = require('gulp-shell');
var runSequence = require('run-sequence');
var rimraf = require('rimraf');

var config = {
    syntaxFiles: "syntax/*.g",
    syntaxOutput: "src/syntax/"
};

gulp.task('clean-syntax-build', function() {
    console.log("Cleaning syntax...");
    rimraf(config.syntaxOutput, function() {});
});

gulp.task('build-syntax', function() {
    console.log("Building syntax...");
    return gulp.src(config.syntaxFiles, {read:false})
        .pipe(shell([
            'bundle exec antlr4ruby <%= file.path %> -o ' + config.syntaxOutput
        ]));
});

gulp.task('watch', function() {
    return gulp.watch(config.syntaxFiles,
                      function(_) {
                          runSequence(['clean-syntax-build', 'build-syntax'])
                      });});

gulp.task('default', function() {
    console.log("UNPI");
});
