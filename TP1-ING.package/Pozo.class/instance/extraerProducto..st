as yet unclassified
extraerProducto: cantMetrosCubicos
	"comment stating purpose of message"
	| aExtraerPetroleo aExtraerAgua aExtraerGas |
	aExtraerPetroleo := (self parcela yacimiento petroleo / self parcela yacimiento volumen) * cantMetrosCubicos.
	aExtraerAgua := (self parcela yacimiento agua / self parcela yacimiento volumen) * cantMetrosCubicos.
	aExtraerGas := (self parcela yacimiento gas / self parcela yacimiento volumen) * cantMetrosCubicos.
	self parcela yacimiento petroleo < aExtraerPetroleo ifTrue: [ ^Error ].
	self parcela yacimiento agua  < aExtraerAgua  ifTrue: [ ^Error ].
	self parcela yacimiento gas < aExtraerGas ifTrue: [ ^Error ].
	self parcela yacimiento extraerPetroleo: aExtraerPetroleo.
	self parcela yacimiento extraerAgua: aExtraerAgua.
	self parcela yacimiento extraerGas: aExtraerGas.