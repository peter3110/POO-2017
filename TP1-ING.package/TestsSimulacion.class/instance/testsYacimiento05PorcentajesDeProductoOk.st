as yet unclassified
testsYacimiento05PorcentajesDeProductoOk
	"comment stating purpose of message"
	| unSimulador |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 10.
	self should: [
		Yacimiento simulador: unSimulador hectareas: 1000 parcelas: 10 ppetroleoInicial: 0.5 paguaInicial: 0.4 	                          pgasInicial: 0.3 volInicial: 1000.
	] raise: Error.
   
	