define ->

	class Test

		init: =>

			geometry = new THREE.BoxGeometry 200 , 200 , 200
			material = new THREE.MeshBasicMaterial(
				color: 0xff0000
				wireframe: true
			)
			@.mesh = new THREE.Mesh geometry , material
			window.site.stage.add @.mesh , @.animate

		animate: =>
			@.mesh.rotation.x += 0.01
			@.mesh.rotation.y += 0.02