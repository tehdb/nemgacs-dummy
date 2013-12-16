module.exports = (grunt) ->
	"use strict"
	grunt.initConfig
		#*****************
		watch :
			all :
				files : [
					'client/coffee/**.coffee',
					'client/jade/**.jade',
					'client/sass/**.sass',
					'server/views/**.jade'
				]
				tasks : ['build']
				options: {
					livereload: true
				}

			coffee :
				files : ['client/coffee/**.coffee']
				tasks : ['coffee:compile']

			jade :
				files : ['client/jade/**.jade']
				tasks : ['jade:compile']

			sass :
				files : ['client/sass/**.sass']
				tasks : ['compass:compile']

		#*****************
		coffee :
			compile :
				options :
					#bare : true
					join : true
				files :
					'public/js/app.js' : [
						'client/coffee/app.coffee',
						'client/coffee/services.coffee',
						'client/coffee/controllers.coffee',
						'client/coffee/filters.coffee',
						'client/coffee/directives.coffee'
						]

		#*****************
		jade :
			compile :
				files :
					'public/partials/example.tpl.html' : 'client/jade/example.jade'

		#*****************
		compass :
			compile :
				options :
					#config : 'client_src/config.rb'
					sassDir : 'client/sass'
					cssDir : 'public/css'



	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-contrib-compass')
	grunt.loadNpmTasks('grunt-contrib-jade')
	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.registerTask('build', ['coffee:compile', 'jade:compile', 'compass:compile'])



