
########### install files ###############

file(
	GLOB
	myLanguage
	*.txt
	)

INSTALL(FILES ${myLanguage} 
	DESTINATION share/${PACKAGE}/data/language
)

