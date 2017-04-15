as yet unclassified
testsSimulador02SimuladorQueNoAceptaRigs
	"comment stating purpose of message"
	| yac unSimulador unRig |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 0.
	unRig := Rig poderExcavacion: 1 costoAlquiler: 1 consumicionDiaria: 1.
	yac := Yacimiento simulador: unSimulador hectareas: 10000 parcelas: 1 ppetroleoInicial: 0.2 paguaInicial: 0.1 pgasInicial: 0.7 volInicial: 100.
	yac addRig: unRig.
	
	yac parcelas collect: [ :par |
		par hacerPozo.
		par pozos collect: [ :poz | 
			self should: [ poz addRig: unRig ] raise: Error.
		]
	].