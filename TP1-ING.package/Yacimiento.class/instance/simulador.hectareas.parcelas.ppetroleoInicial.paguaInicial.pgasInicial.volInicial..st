initialization
simulador: unSimulador hectareas: anInteger parcelas: anInteger2 ppetroleoInicial: aNumber paguaInicial: aNumber4 pgasInicial: aNumber5 volInicial: aNumber6
	aNumber6 < 0 ifTrue: [ ^(Error signal: 'yacimiento no puede tener volumen de producto negativo') ].
	(aNumber + aNumber4 + aNumber5 = 1) 
		ifFalse: [ ^(Error signal: 'porcentajes de petroleo gas y agua no suman 1') ].
	
	simulador := unSimulador.
	volumen := aNumber6.
	rigs := Set new.
	parcelas := Set new.
	
	petroleo := volumen * aNumber.
	agua := volumen * aNumber4.
	gas := volumen * aNumber5.
	hectareas := anInteger.
	hectareas / 100 < anInteger2 ifTrue: [ ^(Error signal: 'oops')].
	simulador agregarParcelas: anInteger2 en: self.
	
	