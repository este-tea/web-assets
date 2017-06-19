module.exports = function(grunt) {

  grunt.initConfig({
      sass: {
        options: {
          outputStyle: 'expanded',
          sourceMap: false
        },
        dist: {
          files: [{
            expand: true,
            cwd: 'sass',
            src: '**/*.scss',
            dest: 'css/',
            ext: '.css'
          }]
        }
      },
      watch: {
        files: 'sass/**/*.scss',
        tasks: 'sass'
      }
    });

  grunt.loadNpmTasks('grunt-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('default', ['sass', 'watch']);

};
