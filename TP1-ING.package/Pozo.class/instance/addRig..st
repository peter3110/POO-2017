as yet unclassified
addRig: unRig
	"comment stating purpose of message"
	(rigs size >= self parcela yacimiento simulador maxCantRigsSimultaneos) 
		ifTrue: [ ^(Error signal: 'demasiados rigs activos en este pozo') ].
	(self parcela yacimiento rigs includes: unRig) 
		ifFalse: [ ^(Error signal: 'unRig no pertence al mismo yacimiento que este pozo') ].
		
	rigs add: unRig.
	unRig activar.