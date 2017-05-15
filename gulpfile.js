var gulp = require("gulp");
var cleanCSS = require("gulp-clean-css");
var uglify = require("gulp-uglify");
var sass = require('gulp-sass');
var reload = require("gulp-livereload");

gulp.task("default", ["minifyCss", "minifyJS"]);

gulp.task("minifyCss", function(){
	gulp.src("css/*.css")
		.pipe(cleanCSS())
		.pipe(gulp.dest("dist"));
});

gulp.task("minifyJS", function(){
	gulp.src("js/*.js")
		.pipe(uglify())
		.pipe(gulp.dest("dist"));
});

gulp.task('sass', function () {
  return gulp.src('./sass/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('./dist/css'))
    .pipe(reload());
});
 
gulp.task('sass:watch', function () {
	gulp.watch('./sass/*.scss', ['sass']);
});

gulp.task("listen", function(){
	reload.listen();
	gulp.watch('./sass/*.scss', ['sass']);
});