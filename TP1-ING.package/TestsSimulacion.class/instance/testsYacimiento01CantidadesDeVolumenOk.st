as yet unclassified
testsYacimiento01CantidadesDeVolumenOk
	"comment stating purpose of message"
	| yac unSimulador |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 10.
	yac := Yacimiento simulador: unSimulador hectareas: 1000 parcelas: 10 ppetroleoInicial: 0.3 paguaInicial: 0.4 pgasInicial: 0.3 volInicial: 1000.
   self assert: yac volumen equals: 1000.
   self assert: yac petroleo equals: 300.
	self assert: yac agua equals: 400.
	self assert: yac gas equals: 300.
	