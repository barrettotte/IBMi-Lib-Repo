CREATE OR REPLACE TABLE BOLIB.EXPPF ( 

--  SQL150B   10   REUSEDLT(*NO) in table EXPPF in BOLIB ignored. 

	PHRCEN CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHRDAT CHAR(6) CCSID 37 NOT NULL DEFAULT '' , 

	PHRTIM CHAR(6) CCSID 37 NOT NULL DEFAULT '' , 

	PHFILE CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHLIB CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHFTYP CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHFILA CHAR(4) CCSID 37 NOT NULL DEFAULT '' , 

	PHMXD CHAR(3) CCSID 37 NOT NULL DEFAULT '' , 

	PHFATR CHAR(6) CCSID 37 NOT NULL DEFAULT '' , 

	PHSYSN CHAR(8) CCSID 37 NOT NULL DEFAULT '' , 

	PHASP DECIMAL(3, 0) NOT NULL DEFAULT 0 , 

	PHRES CHAR(4) CCSID 37 NOT NULL DEFAULT '' , 

	PHDTAT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHWAIT DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHWATR DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHSHAR CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHLVLC CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHTXT CHAR(50) CCSID 37 NOT NULL DEFAULT '' , 

	PHNOFM DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHFCCN CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHFCDT CHAR(6) CCSID 37 NOT NULL DEFAULT '' , 

	PHFCTM CHAR(6) CCSID 37 NOT NULL DEFAULT '' , 

	PHFLS CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHICAP CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHRES2 CHAR(9) CCSID 37 NOT NULL DEFAULT '' , 

	PHACCP CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHSELO CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHCSEQ CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHNOMB DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHRES3 CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHSQLT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHRES4 CHAR(8) CCSID 37 NOT NULL DEFAULT '' , 

	PHMAXM DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHMANT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHRECV CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHFKAP CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHSIZ DECIMAL(10, 0) NOT NULL DEFAULT 0 , 

	PHSIZI DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHSIZM DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHRCDC DECIMAL(10, 0) NOT NULL DEFAULT 0 , 

	PHALLO CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHCONT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHUNIT DECIMAL(3, 0) NOT NULL DEFAULT 0 , 

	PHFRCR DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHDLTP DECIMAL(3, 0) NOT NULL DEFAULT 0 , 

	PHMXKL DECIMAL(3, 0) NOT NULL DEFAULT 0 , 

	PHMXRL DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHJRNL CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHJRNM CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHJRLB CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHJRIM CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHJRSC CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHJRSD CHAR(6) CCSID 37 NOT NULL DEFAULT '' , 

	PHJRST CHAR(6) CCSID 37 NOT NULL DEFAULT '' , 

	PHJROM CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHNAML DECIMAL(3, 0) NOT NULL DEFAULT 0 , 

	PHRMTN CHAR(50) CCSID 37 NOT NULL DEFAULT '' , 

	PHRDLT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHNACM DECIMAL(3, 0) NOT NULL DEFAULT 0 , 

	PHACCM CHAR(14) CCSID 37 NOT NULL DEFAULT '' , 

	PHALRD CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHALWT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHALUP CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHALDT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHDCTL CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHINID NUMERIC(11, 0) NOT NULL DEFAULT 0 , 

	PHDCTN CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHFILN CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHRUSE CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHCSID DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHMXK2 DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHSSEQ CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHSSLB CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHLGID CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHTBSH CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHTBSU CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHNOCS DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHNOTR DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHTBLN DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHLNTB VARCHAR(258) CCSID 37 NOT NULL DEFAULT '' , 

	PHAPSZ CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHDSTF CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHNODG CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHNODL CHAR(10) CCSID 37 NOT NULL DEFAULT '' , 

	PHNUMP DECIMAL(4, 0) NOT NULL DEFAULT 0 , 

	PHPRTK VARCHAR(3300) ALLOCATE(33) CCSID 37 NOT NULL DEFAULT '' , 

	PHFLPS CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHPRBY CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHMQMT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHMQRF CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHMQOE CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHMQCL CHAR(2) CCSID 37 NOT NULL DEFAULT '' , 

	PHAPGS DECIMAL(5, 0) NOT NULL DEFAULT 0 , 

	PHVOLT CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHMQRS CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHMQRM CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHMQWN CHAR(1) CCSID 37 NOT NULL DEFAULT '' , 

	PHKPIM CHAR(1) CCSID 37 NOT NULL DEFAULT '' )   

	  

	RCDFMT QWHFDPHY   ; 

  

LABEL ON TABLE BOLIB.EXPPF 

	IS 'Output file for DSPFD TYPE(*ATR) FILEATR(*PF)' ; 

  

LABEL ON COLUMN BOLIB.EXPPF 

( PHRCEN IS 'Retrieval           Century' , 

	PHRDAT IS 'Retrieval           Date' , 

	PHRTIM IS 'Retrieval           Time' , 

	PHFILE IS 'File' , 

	PHLIB IS 'Library' , 

	PHFTYP IS 'Type                Of                  File' , 

	PHFILA IS 'File                Attribute' , 

	PHMXD IS 'Reserved' , 

	PHFATR IS 'File                Attribute' , 

	PHSYSN IS 'System              Name' , 

	PHASP IS 'ASP                 Auxiliary Storage   Pool ID' , 

	PHRES IS 'Reserved' , 

	PHDTAT IS 'FILETYPE            File Type' , 

	PHWAIT IS 'WAITFILE            Maximum File        Wait Time' , 

	PHWATR IS 'WAITRCD             Maximum Record      Wait Time' , 

	PHSHAR IS 'Reserved' , 

	PHLVLC IS 'LVLCHK              Record Format       Level Check' , 

	PHTXT IS 'TEXT                Text                ''Description''' , 

	PHNOFM IS 'Number Of           Record              Formats' , 

	PHFCCN IS 'Century             Created' , 

	PHFCDT IS 'Date                Created' , 

	PHFCTM IS 'Time                Created' , 

	PHFLS IS 'Externally          Described' , 

	PHICAP IS 'DBCS                Capable' , 

	PHRES2 IS 'Reserved' , 

	PHACCP IS 'Access              Path' , 

	PHSELO IS 'S/O                 Select/Omit' , 

	PHCSEQ IS 'Alternative         Collating           Sequence' , 

	PHNOMB IS 'Number              Of                  Members' , 

	PHRES3 IS 'Reserved' , 

	PHSQLT IS 'SQL                 File                Type' , 

	PHRES4 IS 'Reserved' , 

	PHMAXM IS 'MAXMBRS             Maximum             Members' , 

	PHMANT IS 'MAINT               Access Path         Maintenance' , 

	PHRECV IS 'RECOVER             Access Path         Recovery' , 

	PHFKAP IS 'FRCACCPTH           Force Keyed         Access Path' , 

	PHSIZ IS 'Initial             Number Of           Records' , 

	PHSIZI IS 'Increment           Number Of           Records' , 

	PHSIZM IS 'Maximum             Increments' , 

	PHRCDC IS 'Record              Capacity' , 

	PHALLO IS 'ALLOCATE            Allocate Storage' , 

	PHCONT IS 'CONTIG              Contiguous          Storage' , 

	PHUNIT IS 'UNIT                Preferred           Storage Unit' , 

	PHFRCR IS 'FRCRATIO            Records To          Force A Write' , 

	PHDLTP IS 'DLTPCT              Max % Deleted       Records Allowed' , 

	PHMXKL IS 'Maximum             Key                 Length' , 

	PHMXRL IS 'Maximum             Record              Length' , 

	PHJRNL IS 'File Is             Journaled' , 

	PHJRNM IS 'Current Or          Last Journal' , 

	PHJRLB IS 'Journal             Library' , 

	PHJRIM IS 'IMAGES              Record Images' , 

	PHJRSC IS 'Century Of          Last Journal' , 

	PHJRSD IS 'Date Of             Last Journal' , 

	PHJRST IS 'Time Of             Last Journal' , 

	PHJROM IS 'OMTJRNENT           Journal Entries     To Be Omitted' , 

	PHNAML IS 'Remote File         Name Length' , 

	PHRMTN IS 'Remote              File                Name' , 

	PHRDLT IS 'Record              Delete              Ability' , 

	PHNACM IS 'Number Of           Access Methods' , 

	PHACCM IS 'ACCMTH              DDM Access Method' , 

	PHALRD IS 'Allow Read          Operation' , 

	PHALWT IS 'Allow Write         Operation' , 

	PHALUP IS 'ALWUPD              Allow Update        Operation' , 

	PHALDT IS 'ALWDLT              Allow Delete        Operation' , 

	PHDCTL IS 'Linked              To                  Dictionary' , 

	PHINID IS 'Internal            Identifier' , 

	PHDCTN IS 'Dictionary          Name' , 

	PHFILN IS 'File                Definition          Name' , 

	PHRUSE IS 'Reuse               Deleted             Records' , 

	PHCSID IS 'Coded               Character           Set ID' , 

	PHMXK2 IS 'Maximum             Key                 Length' , 

	PHSSEQ IS 'Sort                Sequence' , 

	PHSSLB IS 'SRTSEQ              table               library' , 

	PHLGID IS 'Language            ID' , 

	PHTBSH IS 'Shared              Weight              Table' , 

	PHTBSU IS 'Substitution        Characters' , 

	PHNOCS IS 'Number              Of                  Constraints' , 

	PHNOTR IS 'Number              Of                  Triggers' , 

	PHTBLN IS 'Alternative File    Name length' , 

	PHLNTB IS 'Alternative File    Name' , 

	PHAPSZ IS 'ACCPTHSIZ           Access path         size' , 

	PHDSTF IS 'Distributed         File' , 

	PHNODG IS 'Node                Group' , 

	PHNODL IS 'Node                Group               Library' , 

	PHNUMP IS 'Number of           Partitioning        keys' , 

	PHPRTK IS 'Partitioning        Key' , 

	PHFLPS IS 'File Link           Pending Status' , 

	PHPRBY IS 'SQL Table           Partitioned         By' , 

	PHMQMT IS 'MQT                 Maintained' , 

	PHMQRF IS 'Refresh             Mode' , 

	PHMQOE IS 'MQT                 Optimization        Enabled' , 

	PHMQCL IS 'MQT                 Commit              Level' , 

	PHAPGS IS 'Access Path         Logical             Page Size' , 

	PHVOLT IS 'Volatile' , 

	PHMQRS IS 'MQT                 Restore deferred' , 

	PHMQRM IS 'MQT Decimal         Floating Point      Rounding Mode' , 

	PHMQWN IS 'MQT Decimal         Floating Point      Warnings' , 

	PHKPIM IS 'Keep In             Memory' ) ; 

  

LABEL ON COLUMN BOLIB.EXPPF 

( PHRCEN TEXT IS 'Retrieval century:  0=19xx, 1=20xx' , 

	PHRDAT TEXT IS 'Retrieval date:  year/month/day' , 

	PHRTIM TEXT IS 'Retrieval time:  hour/minute/second' , 

	PHFILE TEXT IS 'File' , 

	PHLIB TEXT IS 'Library' , 

	PHFTYP TEXT IS 'Type of file:  P=PF, R=DDM PF' , 

	PHFILA TEXT IS 'File attribute:  *PHY' , 

	PHMXD TEXT IS 'Reserved' , 

	PHFATR TEXT IS 'File attribute:  PF or PF38' , 

	PHSYSN TEXT IS 'System Name (Source System, if file is DDM)' , 

	PHASP TEXT IS 'Auxiliary storage pool ID:  1=System ASP' , 

	PHRES TEXT IS 'Reserved' , 

	PHDTAT TEXT IS 'File type:  D=*DATA, S=*SRC' , 

	PHWAIT TEXT IS 'Maximum file wait time:  -1=*IMMED, 0=*CLS' , 

	PHWATR TEXT IS 'Maximum record wait time:  -1=*IMMED, -2=*NOMAX' , 

	PHSHAR TEXT IS 'Reserved' , 

	PHLVLC TEXT IS 'Record format level check:  N=*NO, Y=*YES' , 

	PHTXT TEXT IS 'Text ''description''' , 

	PHNOFM TEXT IS 'Number of record formats' , 

	PHFCCN TEXT IS 'Century created:  0=19xx, 1=20xx' , 

	PHFCDT TEXT IS 'Date created:  year/month/day' , 

	PHFCTM TEXT IS 'Time created:  hour/minute/second' , 

	PHFLS TEXT IS 'Externally described file:  N=No, Y=Yes' , 

	PHICAP TEXT IS 'DBCS capable:  N=No, Y=Yes' , 

	PHRES2 TEXT IS 'Reserved' , 

	PHACCP TEXT IS 'Access path: A=Arrival K=Keyed E=EVI S=Shared' , 

	PHSELO TEXT IS 'Select/omit file:  N=No' , 

	PHCSEQ TEXT IS 'Alternative collating sequence:  N=No, Y=Yes' , 

	PHNOMB TEXT IS 'Number of members' , 

	PHRES3 TEXT IS 'Reserved' , 

	PHSQLT TEXT IS 'SQL file type:  0=None, T=TABLE, M=MQT' , 

	PHRES4 TEXT IS 'Reserved' , 

	PHMAXM TEXT IS 'Maximum  members:  0=*NOMAX' , 

	PHMANT TEXT IS 'Maintenance:  I=*IMMED, R=*REBLD, D=*DLY' , 

	PHRECV TEXT IS 'Access path recovery:  S=*IPL,A=*AFTIPL,N=*NO' , 

	PHFKAP TEXT IS 'Force keyed access path: N=*NO, Y=*YES' , 

	PHSIZ TEXT IS 'Initial number of records:  0=*NOMAX' , 

	PHSIZI TEXT IS 'Increment number of records' , 

	PHSIZM TEXT IS 'Maximum increments' , 

	PHRCDC TEXT IS 'Record capacity:  0=*NOMAX' , 

	PHALLO TEXT IS 'Allocate storage:  N=*NO, Y=*YES' , 

	PHCONT TEXT IS 'Contiguous storage:  N=*NO, Y=*YES' , 

	PHUNIT TEXT IS 'Preferred storage unit:  0=*ANY, 255=*SSD' , 

	PHFRCR TEXT IS 'Records to force a write: 0=*NONE' , 

	PHDLTP TEXT IS 'Max % deleted records allowed:  0=*NONE' , 

	PHMXKL TEXT IS 'Maximum key length, -1 = See PHMXK2' , 

	PHMXRL TEXT IS 'Maximum record length' , 

	PHJRNL TEXT IS 'File is currently journaled: N=No, Y=Yes' , 

	PHJRNM TEXT IS 'Current or last journal' , 

	PHJRLB TEXT IS 'Current or last journal library' , 

	PHJRIM TEXT IS 'Record images:  A=*AFTER, B=*BOTH' , 

	PHJRSC TEXT IS 'Century of last journal start: 0=19xx, 1=20xx' , 

	PHJRSD TEXT IS 'Date of last journal start: year/month/day' , 

	PHJRST TEXT IS 'Time of last journal start: hour/minute/second' , 

	PHJROM TEXT IS 'Journal entries to be omitted: O=*OPNCLO, N=*NONE' , 

	PHNAML TEXT IS 'Remote file name length' , 

	PHRMTN TEXT IS 'Remote file name' , 

	PHRDLT TEXT IS 'Record delete ability:  Y=Yes, N=No' , 

	PHNACM TEXT IS 'Number of access methods' , 

	PHACCM TEXT IS 'DDM Access method' , 

	PHALRD TEXT IS 'Allow read operation:  Y=Yes, N=No' , 

	PHALWT TEXT IS 'Allow write operation:  Y=Yes, N=No' , 

	PHALUP TEXT IS 'Allow update operation:  Y=*YES, N=*NO' , 

	PHALDT TEXT IS 'Allow delete operation:  Y=*YES, N=*NO' , 

	PHDCTL TEXT IS 'Linked to Dictionary:  Y=Linked, N=Not Linked' , 

	PHINID TEXT IS 'File definition internal identifier' , 

	PHDCTN TEXT IS 'Dictionary name' , 

	PHFILN TEXT IS 'File definition name' , 

	PHRUSE TEXT IS 'Reuse Deleted Records: Y=*YES, N=*NO' , 

	PHCSID TEXT IS '-1=See DSPFFD' , 

	PHMXK2 TEXT IS 'Maximum key length' , 

	PHSSEQ TEXT IS 'Sort sequence' , 

	PHSSLB TEXT IS 'Sort sequence table library' , 

	PHLGID TEXT IS 'Language ID' , 

	PHTBSH TEXT IS 'Shared weight table: Y=Yes, N=No' , 

	PHTBSU TEXT IS 'Substitution character Y-Yes, N=No' , 

	PHNOCS TEXT IS 'Number of constraints' , 

	PHNOTR TEXT IS 'Number of triggers' , 

	PHTBLN TEXT IS 'Alternative file    name length' , 

	PHLNTB TEXT IS 'Alternative File Name' , 

	PHAPSZ TEXT IS 'Access path size 0=*MAX4GB, 1=*MAX1TB' , 

	PHDSTF TEXT IS 'Distributed File N=No, Y=Yes' , 

	PHNODG TEXT IS 'Node Group' , 

	PHNODL TEXT IS 'Node Group Library' , 

	PHNUMP TEXT IS 'Number of Partitioning keys' , 

	PHPRTK TEXT IS 'Partitioning Key' , 

	PHFLPS TEXT IS 'File in link pending status: Y=Yes N=No' , 

	PHPRBY TEXT IS 'Partitioned by: 0=Not partitioned, 1=HASH,2=RANGE' , 

	PHMQMT TEXT IS 'MQT Maintained by: 0=User' , 

	PHMQRF TEXT IS 'Refresh mode: 0=Deferred' , 

	PHMQOE TEXT IS 'MQT Optimization Enabled: 0=No, 1=Yes' , 

	PHMQCL TEXT IS 'MQT Commit level: NC,UR,CS,CL,RS,RR' , 

	PHAPGS TEXT IS 'Access path page size -1=Not applicable, 0=*KEYLEN' , 

	PHVOLT TEXT IS 'Volatile: 0=not volatile, 1=volatile' , 

	PHMQRS TEXT IS 'MQT Restore deferred: N=No, Y=Yes' , 

	PHMQRM TEXT IS 'MQT DFP Rounding Mode: C, D, E, F, G, H, U' , 

	PHMQWN TEXT IS 'MQT DFP Warnings: 0=No, 1=Yes, Blank=NA' , 

	PHKPIM TEXT IS 'Keep in memory: N=No, Y=Yes' ) ; 

  

GRANT DELETE , INSERT , SELECT , UPDATE   

ON BOLIB.EXPPF TO PUBLIC ; 

  

GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   

ON BOLIB.EXPPF TO QPGMR WITH GRANT OPTION ; 

  
