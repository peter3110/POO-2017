as yet unclassified
testsPozos01CantidadDePozosOkMax0
	"comment stating purpose of message"
	| yac unSimulador |
	unSimulador := Simulador cantidadDePozos: 0 maxCantRigsSimultaneos: 10.
	yac := Yacimiento simulador: unSimulador hectareas: 1000 parcelas: 5 ppetroleoInicial: 0.3 paguaInicial: 0.4 pgasInicial: 0.3 volInicial: 1000.
	
	self should: [
		yac parcelas collect: [ :each | 
			each hacerPozo
		]
	] raise: Error.