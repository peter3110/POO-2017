as yet unclassified
excavar: unPozo
	"tener en cuenta poder de excavacion del rig + resistencia del terreno
	para determinar los metros del cavado en el dia. tener en cuenta cant rigs activos"
	| metrosACavar cantRigsActivosEnPozo |
	cantRigsActivosEnPozo := unPozo rigs size.
	metrosACavar := (unPozo parcela profundidad - unPozo profundidad) min: poderExcavacion.
	
	(cantRigsActivosEnPozo >= unPozo parcela yacimiento simulador maxCantRigsSimultaneos) 
		ifTrue: [ ^(Error signal: 'demasiados rigs activos en simultaneo') ].
	
	unPozo profundidad + metrosACavar > unPozo parcela profundidad 
		ifTrue: [ ^(Error signal: 'El pozo no puede cavarse a mayor profundidad que la altura de su parcela') ]
		ifFalse: [ unPozo cavar: metrosACavar ].
	
	