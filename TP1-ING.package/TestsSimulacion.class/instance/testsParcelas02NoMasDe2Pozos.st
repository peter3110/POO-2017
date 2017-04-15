as yet unclassified
testsParcelas02NoMasDe2Pozos
	"comment stating purpose of message"
	| par yac unSimulador |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 10.
	yac := Yacimiento simulador: unSimulador hectareas: 1000 parcelas: 10 ppetroleoInicial: 0.3 paguaInicial: 0.4 pgasInicial: 0.3 volInicial: 1000.
	par := Parcela yacimiento: yac profundidad: 200. 
	self should: [ 
		par hacerPozo; hacerPozo.
	] raise: Error.