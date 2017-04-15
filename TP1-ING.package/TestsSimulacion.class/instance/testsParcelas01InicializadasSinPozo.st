as yet unclassified
testsParcelas01InicializadasSinPozo
	"comment stating purpose of message"
	| yac unSimulador |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 10.
	yac := Yacimiento simulador: unSimulador hectareas: 1000 parcelas: 5 ppetroleoInicial: 0.3 paguaInicial: 0.4 pgasInicial: 0.3 volInicial: 1000.
	yac parcelas collect: [ :each | self assert: each pozos size = 0 ].