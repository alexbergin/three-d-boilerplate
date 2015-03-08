define [

	"site/modules/camera"
	"site/modules/stage"
	"site/modules/test"

] , (

	Camera
	Stage
	Test

) ->

	Site = ->

		class App

			camera: new Camera
			stage: new Stage
			test: new Test

			start: ->
				run = [
					"camera"
					"stage"
					"test"
				]
				for classes in run
					do site[ classes ].init

		window.site = new App
		site.start()