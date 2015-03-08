define ->

	class Camera

		init: ->
			@.build()
			@.addListeners()

		build: ->
			@.alpha = new THREE.PerspectiveCamera 75 , window.innerWidth / window.innerHeight , 1 , 10000
			@.alpha.position.z = 1000

		addListeners: ->
			window.addEventListener "resize" , @.onResize

		onResize: =>
			@.alpha.aspect = window.innerWidth / window.innerHeight
			@.alpha.updateProjectionMatrix()