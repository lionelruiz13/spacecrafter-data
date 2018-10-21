add_subdirectory(day_earth)
add_subdirectory(milkyways)
add_subdirectory(panoramas)


########### install files ###############

INSTALL(FILES 01.sts	07.sts	13.sts	K0.sts	K6.sts	 M02.sts  M08.sts  M14.sts  M20.sts	02.sts	08.sts	14.sts	K1.sts	K7.sts	 M03.sts  M09.sts  M15.sts  M21.sts	03.sts	09.sts	15.sts	K2.sts	K8.sts	 M04.sts  M10.sts  M16.sts  startup.sts	04.sts	10.sts	16.sts	K3.sts	K9.sts	 M05.sts  M11.sts  M17.sts	05.sts	11.sts	17.sts	K4.sts	M00.sts  M06.sts  M12.sts  M18.sts	06.sts	12.sts	18.sts	K5.sts	M01.sts  M07.sts  M13.sts  M19.sts DESTINATION share/${PACKAGE}/data/scripts/fscripts)

