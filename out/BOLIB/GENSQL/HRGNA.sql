CREATE OR REPLACE TABLE BOLIB.HRGNA ( 

--  SQL150B   10   REUSEDLT(*NO) in table HRGNA in BOLIB ignored. 

--  SQL1506   30   Key or attribute for HRGNA in BOLIB ignored. 

	KANA CHAR(16) CCSID 937 NOT NULL DEFAULT '' , 

--  SQL1503   30   Data type changed to similar data type supported by the st 

--                 andards option. 

	ROMAJI CHAR(3) CCSID 37 NOT NULL DEFAULT '' )   

	  

	RCDFMT HRGNAFMT   ; 

  

LABEL ON TABLE BOLIB.HRGNA 

	IS 'Hiragana and Romaji table' ; 

  

GRANT DELETE , INSERT , SELECT , UPDATE   

ON BOLIB.HRGNA TO PUBLIC ; 

  

GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   

ON BOLIB.HRGNA TO QPGMR WITH GRANT OPTION ; 

  
