CREATE OR REPLACE TABLE BOLIB.ORDER ( 

--  SQL150B   10   REUSEDLT(*NO) in table ORDER in BOLIB ignored. 

--  SQL1506   30   Key or attribute for ORDER in BOLIB ignored. 

	ORDNO NUMERIC(5, 0) NOT NULL DEFAULT 0 , 

	ORDITM NUMERIC(10, 0) NOT NULL DEFAULT 0 , 

	ORDITMDES CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	ORDDATE DATE NOT NULL DEFAULT CURRENT_DATE , 

	ORDQTY NUMERIC(2, 0) NOT NULL DEFAULT 0 )   

	  

	RCDFMT ORDFMT     ; 

  

LABEL ON TABLE BOLIB.ORDER 

	IS 'Multiple key field table' ; 

  

GRANT DELETE , INSERT , SELECT , UPDATE   

ON BOLIB.ORDER TO PUBLIC ; 

  

GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   

ON BOLIB.ORDER TO QPGMR WITH GRANT OPTION ; 

  
