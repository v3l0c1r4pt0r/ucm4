all:
	rm uCM4-F_Silks.gbr uCM4-B_Silks.gbr
	zip jlcpcb.zip *.drl *.gbr
	cp uCM4-F_Silkscreen.gbr uCM4-F_Silks.gbr
	cp uCM4-B_Silkscreen.gbr uCM4-B_Silks.gbr
	zip oshpark.zip  *.drl *.gbr
