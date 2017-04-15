as yet unclassified
testsSimulador03DemasiadosRigs
	"comment stating purpose of message"
	| yac unSimulador unRig otroRig |
	unSimulador := Simulador cantidadDePozos: 10 maxCantRigsSimultaneos: 1.
	unRig := Rig poderExcavacion: 1 costoAlquiler: 1 consumicionDiaria: 1.
	otroRig := Rig poderExcavacion: 1 costoAlquiler: 1 consumicionDiaria: 1.
	yac := Yacimiento simulador: unSimulador hectareas: 10000 parcelas: 1 ppetroleoInicial: 0.2 paguaInicial: 0.1 pgasInicial: 0.7 volInicial: 100.
	yac addRig: unRig; 
	    addRig: otroRig.
	
	yac parcelas collect: [ :par |
		par hacerPozo.
	].
	yac parcelas collect: [ :par |
		self should: [
			par pozos collect: [ :poz | 
				poz addRig: unRig; addRig: otroRig.
			]
		] raise: Error.
	].