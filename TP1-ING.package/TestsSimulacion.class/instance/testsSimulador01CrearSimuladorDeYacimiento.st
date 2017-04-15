as yet unclassified
testsSimulador01CrearSimuladorDeYacimiento
	"comment stating purpose of message"
	| yac unSimulador unRig |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 10.
	yac := Yacimiento simulador: unSimulador hectareas: 10000 parcelas: 1 ppetroleoInicial: 0.2 paguaInicial: 0.1 pgasInicial: 0.7 volInicial: 100.
	unRig := Rig new.