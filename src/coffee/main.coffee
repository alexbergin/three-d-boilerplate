"use strict"

require.config
	baseUrl: "/scripts"

	paths:
		"classlist": "vendor/classlist/classList"
		"THREE": "vendor/threejs/build/three"
		"jquery": "vendor/jquery/dist/jquery"
		"requestAnimationFrame": "vendor/requestAnimationFrame/app/requestAnimationFrame"

	shim: 
		"THREE"
		
	deps: [
		"THREE"
	]
		
require [ "site/boot" ] , ( Site ) ->
	new Site()