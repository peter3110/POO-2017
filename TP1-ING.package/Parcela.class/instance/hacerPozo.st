as yet unclassified
hacerPozo
	"comment stating purpose of message"
	| nuevoPozo |
	pozos isNotEmpty ifTrue: [ ^(Error signal: 'prohibido cavar 2 pozos en una misma parcela')  ].
	(yacimiento parcelas select: [ :each | each pozos isNotEmpty ]) size 
		>= yacimiento simulador cantidadDePozos ifTrue: [ ^(Error signal: 'ya se cavaron demasiados pozos') ].
	nuevoPozo := Pozo iniciarCavadoEn: self.
	pozos add: nuevoPozo.
	^nuevoPozo