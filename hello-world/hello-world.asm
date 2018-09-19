lsit p = 16f84a ;procesador utilizad
include <p16f84a.inc>

constante equ b'00001111'
ORG 0 ;comienza desde la direccion de memoria 0

init bsf STATUS, PR0 ;acceder al banco 1
	clrf TRISB ;configura el puerto B
  bcf STATUS, RP0  ;acceder al banco 0

hello bcf PORT, 0 ;escribir en el pin 0 del puerto B
  goto hello
