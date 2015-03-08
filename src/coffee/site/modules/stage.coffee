define ->

	class Stage

		tasks: []

		init: ->
			@.getElements()
			@.addListeners()
			@.build()
			@.onResize()
			@.render()

		build: ->
			@.scene = new THREE.Scene()
			@.renderer = new THREE.WebGLRenderer()
			@.main.appendChild @.renderer.domElement

		onResize: =>
			@.height = window.innerHeight
			@.width = window.innerWidth
			@.renderer.setSize( @.width , @.height )

		getElements: ->
			@.main = document.getElementsByTagName( "main" )[0]

		addListeners: ->
			window.addEventListener "resize" , @.onResize

		add: ( obj , ani ) =>
			@.scene.add obj
			@.tasks.push ani

		render: =>
			requestAnimationFrame @.render
			for task in @.tasks
				task()
			@.renderer.render @.scene, site.camera.alpha