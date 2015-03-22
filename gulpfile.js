var gulp = require('gulp');
var shell = require('gulp-shell');
var runSequence = require('run-sequence');
var rimraf = require('rimraf');

var config = {
    runTest: "bundle exec ruby test/run_test.rb",
    grammarFiles: "grammar/*.g",
    grammarOutput: "antlr/",
    sourceDir: "src/**/*.rb",
    testDir: "test/**/*.rb",
    exampleDir: "example/*.siam"
};

gulp.task('clean-grammar-build', function() {
    console.log("Cleaning grammer...");
    rimraf(config.grammarOutput, function() {});
});

gulp.task('build-grammar', function() {
    console.log("Building grammar...");
    return gulp.src(config.grammarFiles, {read:false})
        .pipe(shell([
            'bundle exec antlr4ruby <%= file.path %> -o ' + config.grammarOutput
        ]));
});

gulp.task('grammar', function(callback) {
    runSequence('clean-grammar-build', 'build-grammar', callback);
});

gulp.task('build', function(callback) {
    runSequence('grammar', 'test', callback);
});

gulp.task('watch', function() {
    gulp.watch(config.grammarFiles, ['build']);
    gulp.watch(config.sourceDir, ['test']);
    gulp.watch(config.testDir, ['test']);
    gulp.watch(config.exampleDir, ['test']);
});

gulp.task('test', shell.task([config.runTest]));

gulp.task('default', function() {
});
