as yet unclassified
removeRig: unRig
	"comment stating purpose of message"
	(rigs contains: unRig) ifFalse: [ ^(Error signal: 'el rig no esta en este pozo') ].
	
	rigs remove: unRig.
	unRig desactivar.