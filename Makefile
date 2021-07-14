all:
	rm uCM4-F_Silks.gbr uCM4-B_Silks.gbr
	zip jlcpcb.zip *.drl *.gbr
	cp uCM4-F_Silkscreen.gbr uCM4-F_Silks.gbr
	cp uCM4-B_Silkscreen.gbr uCM4-B_Silks.gbr
	zip oshpark.zip  *.drl *.gbr

bom:
	awk 'FS="," { print $$2 "," $$1 "," $$3 ",\"\""; };' uCM4-top-pos.csv | tail -n +2 > bom.auto.csv

cpl:
	( echo '"Designator","Mid X","Mid Y","Layer","Rotation"'; awk 'FS="," { print $$1 "," $$4 "," $$5 ",\"Top\"," $$6; };' uCM4-top-pos.csv | tail -n +2 ) > cpl.auto.csv
