CREATE OR REPLACE TABLE BOLIB.MYTABLE ( 

	"ID" INTEGER DEFAULT NULL , 

	SOMETEXT CHAR(15) CCSID 37 DEFAULT NULL )   

	  

	RCDFMT MYTABLE    ; 

  

GRANT DELETE , INSERT , SELECT , UPDATE   

ON BOLIB.MYTABLE TO PUBLIC ; 

  

GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   

ON BOLIB.MYTABLE TO QPGMR WITH GRANT OPTION ; 

  
