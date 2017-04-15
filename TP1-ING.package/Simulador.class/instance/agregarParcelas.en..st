as yet unclassified
agregarParcelas: anInteger en: unYacimiento
	"comment stating purpose of message"

	1 to: anInteger do: [ :each | 
		unYacimiento parcelas add: 
			(Parcela yacimiento: unYacimiento profundidad: self profundidadDeParcela) 
	].