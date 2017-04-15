as yet unclassified
cavarCon: unRig
	"comment stating purpose of message"
   | aCavar profundidadRestante |
   profundidadRestante := self parcela profundidad - profundidadActual.
	profundidadRestante < 0 ifTrue: [ ^(Error signal: 'el pozo ya esta cavado al maximo en profundidad') ].
   aCavar := unRig poderExcavacion min: profundidadRestante.
	profundidadActual := profundidadActual + aCavar.