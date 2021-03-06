CREATE OR REPLACE VIEW BOLIB.PERSONL1 ( 

--  SQL1506   30   Key or attribute for PERSONL1 in BOLIB ignored. 

	PERSONID , 

	FIRSTNAME , 

	LASTNAME ) 

	AS 

	SELECT 

	PERSONID , 

	FIRSTNAME , 

	LASTNAME   

	FROM BOLIB.PERSON 

	  

	RCDFMT PERSFMTL1  ; 

  

LABEL ON TABLE BOLIB.PERSONL1 

	IS 'Simple view over person table' ; 

  

GRANT DELETE , INSERT , SELECT , UPDATE   

ON BOLIB.PERSONL1 TO PUBLIC ; 

  

GRANT ALTER , DELETE , INSERT , REFERENCES , SELECT , UPDATE   

ON BOLIB.PERSONL1 TO QPGMR WITH GRANT OPTION ; 

  
