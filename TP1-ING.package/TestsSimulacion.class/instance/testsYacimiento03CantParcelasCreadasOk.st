as yet unclassified
testsYacimiento03CantParcelasCreadasOk
	"comment stating purpose of message"
	| yac1 yac2 unSimulador |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 10.
	yac1 := Yacimiento simulador: unSimulador hectareas: 1000 parcelas: 5 ppetroleoInicial: 0.3 paguaInicial: 0.4 pgasInicial: 0.3 volInicial: 1000.
	yac2 := Yacimiento simulador: unSimulador hectareas: 1000 parcelas: 10 ppetroleoInicial: 0.3 paguaInicial: 0.4 pgasInicial: 0.3 volInicial: 1000.
			
   self assert: yac1 parcelas size equals: 5.
	self assert: yac2 parcelas size equals: 10.