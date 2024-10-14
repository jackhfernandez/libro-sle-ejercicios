var
	nDec, nBin, pot, resto, cociente : numerico
inicio
	cls()
	nBin = 0
	pot = 0

	imprimir ("\nIngrese un numero decimal: ")
	leer (nDec)

	mientras ( nDec > 0 )
	{
		cociente = 0
		resto = nDec
		mientras ( resto > 2 )
		{
			resto = resto - 2
			cociente = cociente + 1
		}
		nDec = cociente
		si ( resto == 1 )
		{
			nBin = nBin + 10^pot
		}
		pot = pot + 1
	}
	imprimir ( nBin )
fin 