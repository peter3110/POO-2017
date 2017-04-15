as yet unclassified
testsYacimiento04ExtraccionDeProductoOk
	"comment stating purpose of message"
	| yac unSimulador |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 10.
	yac := Yacimiento simulador: unSimulador hectareas: 1000 parcelas: 5 ppetroleoInicial: 0.3 paguaInicial: 0.4 pgasInicial: 0.3 volInicial: 1000.
	yac extraerAgua: 10. self assert: yac agua equals: 390.
	yac extraerPetroleo: 10. self assert: yac petroleo equals: 290.
	yac extraerGas: 10. self assert: yac gas equals: 290.