CREATE OR REPLACE TABLE BOLIB.EXPOBJT ( 

	ODDCEN CHAR(1) CCSID 37 NOT NULL , 

	ODDDAT CHAR(6) CCSID 37 NOT NULL , 

	ODDTIM CHAR(6) CCSID 37 NOT NULL , 

	ODLBNM CHAR(10) CCSID 37 NOT NULL , 

	ODOBNM CHAR(10) CCSID 37 NOT NULL , 

	ODOBTP CHAR(8) CCSID 37 NOT NULL , 

	ODOBAT CHAR(10) CCSID 37 NOT NULL , 

	ODOBFR CHAR(1) CCSID 37 NOT NULL , 

	ODOBSZ DECIMAL(10, 0) NOT NULL , 

	ODOBTX CHAR(50) CCSID 37 NOT NULL , 

	ODOBLK CHAR(1) CCSID 37 NOT NULL , 

	ODOBDM CHAR(1) CCSID 37 NOT NULL , 

	ODCCEN CHAR(1) CCSID 37 NOT NULL , 

	ODCDAT CHAR(6) CCSID 37 NOT NULL , 

	ODCTIM CHAR(6) CCSID 37 NOT NULL , 

	ODOBOW CHAR(10) CCSID 37 NOT NULL , 

	ODSCEN CHAR(1) CCSID 37 NOT NULL , 

	ODSDAT CHAR(6) CCSID 37 NOT NULL , 

	ODSTIM CHAR(6) CCSID 37 NOT NULL , 

	ODSCMD CHAR(10) CCSID 37 NOT NULL , 

	ODSSZE DECIMAL(10, 0) NOT NULL , 

	ODSSLT NUMERIC(2, 0) NOT NULL , 

	ODSDEV CHAR(10) CCSID 37 NOT NULL , 

	ODSV01 CHAR(6) CCSID 37 NOT NULL , 

	ODSV02 CHAR(6) CCSID 37 NOT NULL , 

	ODSV03 CHAR(6) CCSID 37 NOT NULL , 

	ODSV04 CHAR(6) CCSID 37 NOT NULL , 

	ODSV05 CHAR(6) CCSID 37 NOT NULL , 

	ODSV06 CHAR(6) CCSID 37 NOT NULL , 

	ODSV07 CHAR(6) CCSID 37 NOT NULL , 

	ODSV08 CHAR(6) CCSID 37 NOT NULL , 

	ODSV09 CHAR(6) CCSID 37 NOT NULL , 

	ODSV10 CHAR(6) CCSID 37 NOT NULL , 

	ODSVMR CHAR(1) CCSID 37 NOT NULL , 

	ODRCEN CHAR(1) CCSID 37 NOT NULL , 

	ODRDAT CHAR(6) CCSID 37 NOT NULL , 

	ODRTIM CHAR(6) CCSID 37 NOT NULL , 

	ODCPFL CHAR(6) CCSID 37 NOT NULL , 

	ODSRCF CHAR(10) CCSID 37 NOT NULL , 

	ODSRCL CHAR(10) CCSID 37 NOT NULL , 

	ODSRCM CHAR(10) CCSID 37 NOT NULL , 

	ODSRCC CHAR(1) CCSID 37 NOT NULL , 

	ODSRCD CHAR(6) CCSID 37 NOT NULL , 

	ODSRCT CHAR(6) CCSID 37 NOT NULL , 

	ODCMNM CHAR(7) CCSID 37 NOT NULL , 

	ODCMVR CHAR(6) CCSID 37 NOT NULL , 

	ODOBLV CHAR(8) CCSID 37 NOT NULL , 

	ODUMOD CHAR(1) CCSID 37 NOT NULL , 

	ODPPNM CHAR(7) CCSID 37 NOT NULL , 

	ODPPVR CHAR(6) CCSID 37 NOT NULL , 

	ODPCNR CHAR(5) CCSID 37 NOT NULL , 

	ODAPAR CHAR(6) CCSID 37 NOT NULL , 

	ODSSQN NUMERIC(4, 0) NOT NULL , 

	ODLCEN CHAR(1) CCSID 37 NOT NULL , 

	ODLDAT CHAR(6) CCSID 37 NOT NULL , 

	ODLTIM CHAR(6) CCSID 37 NOT NULL , 

	ODSFIL CHAR(10) CCSID 37 NOT NULL , 

	ODSFLB CHAR(10) CCSID 37 NOT NULL , 

	ODASP NUMERIC(2, 0) NOT NULL , 

	ODLBL CHAR(17) CCSID 37 NOT NULL , 

	ODPTFN CHAR(7) CCSID 37 NOT NULL , 

	ODOBSY CHAR(8) CCSID 37 NOT NULL , 

	ODCRTU CHAR(10) CCSID 37 NOT NULL , 

	ODCRTS CHAR(8) CCSID 37 NOT NULL , 

	ODUUPD CHAR(1) CCSID 37 NOT NULL , 

	ODUCEN CHAR(1) CCSID 37 NOT NULL , 

	ODUDAT CHAR(6) CCSID 37 NOT NULL , 

	ODUCNT DECIMAL(5, 0) NOT NULL , 

	ODTCEN CHAR(1) CCSID 37 NOT NULL , 

	ODTDAT CHAR(6) CCSID 37 NOT NULL , 

	ODODMN CHAR(2) CCSID 37 NOT NULL , 

	ODCPVR CHAR(6) CCSID 37 NOT NULL , 

	ODCVRM CHAR(6) CCSID 37 NOT NULL , 

	ODPVRM CHAR(6) CCSID 37 NOT NULL , 

	ODCPRS CHAR(1) CCSID 37 NOT NULL , 

	ODOASP CHAR(1) CCSID 37 NOT NULL , 

	ODAAPI CHAR(1) CCSID 37 NOT NULL , 

	ODAPIC CHAR(1) CCSID 37 NOT NULL , 

	ODUATR CHAR(10) CCSID 37 NOT NULL , 

	ODACEN CHAR(1) CCSID 37 NOT NULL , 

	ODADAT CHAR(6) CCSID 37 NOT NULL , 

	ODATIM CHAR(6) CCSID 37 NOT NULL , 

	ODAUDT CHAR(10) CCSID 37 NOT NULL , 

	ODSIZU DECIMAL(10, 0) NOT NULL , 

	ODBPUN DECIMAL(10, 0) NOT NULL , 

	ODPGP CHAR(10) CCSID 37 NOT NULL , 

	ODSSQL NUMERIC(10, 0) NOT NULL , 

	ODOSIG CHAR(1) CCSID 37 NOT NULL , 

	ODJRST CHAR(1) CCSID 37 NOT NULL , 

	ODJRNM CHAR(10) CCSID 37 NOT NULL , 

	ODJRLB CHAR(10) CCSID 37 NOT NULL , 

	ODJRIM CHAR(1) CCSID 37 NOT NULL , 

	ODJREN CHAR(1) CCSID 37 NOT NULL , 

	ODJRCN CHAR(1) CCSID 37 NOT NULL , 

	ODJRDT CHAR(6) CCSID 37 NOT NULL , 

	ODJRTI CHAR(6) CCSID 37 NOT NULL , 

	ODSSZU DECIMAL(10, 0) NOT NULL , 

	ODSBPU DECIMAL(10, 0) NOT NULL , 

	ODASPL NUMERIC(5, 0) NOT NULL , 

	ODLASN NUMERIC(5, 0) NOT NULL , 

	ODOADN CHAR(10) CCSID 37 NOT NULL , 

	ODLADN CHAR(10) CCSID 37 NOT NULL , 

	ODSSIG CHAR(1) CCSID 37 NOT NULL , 

	ODMSIG CHAR(1) CCSID 37 NOT NULL , 

	ODASSZ DECIMAL(15, 0) NOT NULL , 

	ODALGN CHAR(1) CCSID 37 NOT NULL , 

	ODOADG CHAR(10) CCSID 37 NOT NULL , 

	ODLADG CHAR(10) CCSID 37 NOT NULL , 

	ODSJRA CHAR(10) CCSID 37 NOT NULL , 

	ODSJRL CHAR(10) CCSID 37 NOT NULL , 

	ODSJRD CHAR(10) CCSID 37 NOT NULL , 

	ODSJRG CHAR(10) CCSID 37 NOT NULL , 

	ODJRJF CHAR(1) CCSID 37 NOT NULL , 

	ODDTL CHAR(10) CCSID 37 NOT NULL )   

	  

	RCDFMT EXPOBJT    ; 

  

LABEL ON COLUMN BOLIB.EXPOBJT 

( ODDCEN IS 'Display             Century' , 

	ODDDAT IS 'Display             Date' , 

	ODDTIM IS 'Display             Time' , 

	ODLBNM IS 'Library' , 

	ODOBNM IS 'Object' , 

	ODOBTP IS 'Object              Type' , 

	ODOBAT IS 'Object              Attribute' , 

	ODOBFR IS 'Storage             Freed' , 

	ODOBSZ IS 'Object              Size' , 

	ODOBTX IS 'Text description' , 

	ODOBLK IS 'Object              Locked' , 

	ODOBDM IS 'Object              Damaged' , 

	ODCCEN IS 'Creation            Century' , 

	ODCDAT IS 'Creation            Date' , 

	ODCTIM IS 'Creation            Time' , 

	ODOBOW IS 'Object              Owner' , 

	ODSCEN IS 'Save                Century' , 

	ODSDAT IS 'Save                Date' , 

	ODSTIM IS 'Save                Time' , 

	ODSCMD IS 'Save                Command' , 

	ODSSZE IS 'Saved               Size' , 

	ODSSLT IS 'Starting            Slot' , 

	ODSDEV IS 'Save                Device' , 

	ODSV01 IS 'Saved               Volume' , 

	ODSV02 IS 'Saved               Volume' , 

	ODSV03 IS 'Saved               Volume' , 

	ODSV04 IS 'Saved               Volume' , 

	ODSV05 IS 'Saved               Volume' , 

	ODSV06 IS 'Saved               Volume' , 

	ODSV07 IS 'Saved               Volume' , 

	ODSV08 IS 'Saved               Volume' , 

	ODSV09 IS 'Saved               Volume' , 

	ODSV10 IS 'Saved               Volume' , 

	ODSVMR IS 'More                Volumes' , 

	ODRCEN IS 'Restore             Century' , 

	ODRDAT IS 'Restore             Date' , 

	ODRTIM IS 'Restore             Time' , 

	ODCPFL IS 'System              Level' , 

	ODSRCF IS 'SRC file            Name' , 

	ODSRCL IS 'SRC file            Library' , 

	ODSRCM IS 'SRC file            Member' , 

	ODSRCC IS 'SRC change          Century' , 

	ODSRCD IS 'SRC change          Date' , 

	ODSRCT IS 'SRC change          Time' , 

	ODCMNM IS 'Compiler            Name' , 

	ODCMVR IS 'Compiler            Level' , 

	ODOBLV IS 'Object              Level' , 

	ODUMOD IS 'User                Modified' , 

	ODPPNM IS 'LICPGM              Name' , 

	ODPPVR IS 'LICPGM              Level' , 

	ODPCNR IS 'PTF                 Number' , 

	ODAPAR IS 'APAR                ID' , 

	ODSSQN IS 'Sequence            Number' , 

	ODLCEN IS 'Change              Century' , 

	ODLDAT IS 'Change              Date' , 

	ODLTIM IS 'Change              Time' , 

	ODSFIL IS 'Save                File' , 

	ODSFLB IS 'Save file           Library' , 

	ODASP IS 'ASP                 Number' , 

	ODLBL IS 'File label' , 

	ODPTFN IS 'PTF ID' , 

	ODOBSY IS 'System              Name' , 

	ODCRTU IS 'Created by          User' , 

	ODCRTS IS 'System              Created On' , 

	ODUUPD IS 'Usage               Updated' , 

	ODUCEN IS 'Last Used           Century' , 

	ODUDAT IS 'Last Used           Date' , 

	ODUCNT IS 'Days Used           Count' , 

	ODTCEN IS 'Reset               Century' , 

	ODTDAT IS 'Reset               Date' , 

	ODODMN IS 'Object              Domain' , 

	ODCPVR IS 'System              Version' , 

	ODCVRM IS 'Compiler            Version' , 

	ODPVRM IS 'LICPGM              Version' , 

	ODCPRS IS 'Compression         Status' , 

	ODOASP IS 'Overflowed          ASP' , 

	ODAAPI IS 'Allow API           Change' , 

	ODAPIC IS 'Changed by          API' , 

	ODUATR IS 'User-defined        Attribute' , 

	ODACEN IS 'Save                Active              Century' , 

	ODADAT IS 'Save                Active              Date' , 

	ODATIM IS 'Save                Active              Time' , 

	ODAUDT IS 'Auditing            Value' , 

	ODSIZU IS 'Object              Size                in Units' , 

	ODBPUN IS 'Bytes               Per                 Unit' , 

	ODPGP IS 'Primary             Group' , 

	ODSSQL IS 'Large               Sequence            Number' , 

	ODOSIG IS 'Object              Signed' , 

	ODJRST IS 'Currently           Journaled' , 

	ODJRNM IS 'Journal             Name' , 

	ODJRLB IS 'Journal             Library' , 

	ODJRIM IS 'Journal             Images' , 

	ODJREN IS 'Journal             Entries             Omitted' , 

	ODJRCN IS 'Journal             Century' , 

	ODJRDT IS 'Journal             Date' , 

	ODJRTI IS 'Journal             Time' , 

	ODSSZU IS 'Save                Size                in Units' , 

	ODSBPU IS 'Save                Size                Multiplier' , 

	ODASPL IS 'Object              ASP number' , 

	ODLASN IS 'Library             ASP number' , 

	ODOADN IS 'Object ASP          Device              Name' , 

	ODLADN IS 'Library ASP         Device              Name' , 

	ODSSIG IS 'Signed              Trusted             Source' , 

	ODMSIG IS 'Multiple            Signatures' , 

	ODASSZ IS 'Associated          Space               Size' , 

	ODALGN IS 'Optimum             Space               Alignment' , 

	ODOADG IS 'Object ASP          Group name' , 

	ODLADG IS 'Library ASP         Group name' , 

	ODSJRA IS 'Starting            Journal             Receiver name' , 

	ODSJRL IS 'Journal             Receiver            Library name' , 

	ODSJRD IS 'Receiver library    ASP device          Name' , 

	ODSJRG IS 'Receiver library    ASP group           Name' , 

	ODJRJF IS 'Remote              Journal             Filter' , 

	ODDTL IS 'Object              Detail              Value' ) ; 

  

LABEL ON COLUMN BOLIB.EXPOBJT 

( ODDCEN TEXT IS 'Display century: 0=19xx, 1=20xx' , 

	ODDDAT TEXT IS 'Display date (Job date format)' , 

	ODDTIM TEXT IS 'Display time (HHMMSS)' , 

	ODLBNM TEXT IS 'Library' , 

	ODOBNM TEXT IS 'Object' , 

	ODOBTP TEXT IS 'Object type' , 

	ODOBAT TEXT IS 'Object attribute' , 

	ODOBFR TEXT IS 'Storage freed: 0=Not freed, 1=Freed' , 

	ODOBSZ TEXT IS 'Object size: 9,999,999,999=Use ODSIZU*ODBPUN' , 

	ODOBTX TEXT IS 'Text description' , 

	ODOBLK TEXT IS 'Object locked: 0=Not locked, 1=Locked' , 

	ODOBDM TEXT IS 'Object damaged: 0=Not damaged, 1=Full, 2=Partial' , 

	ODCCEN TEXT IS 'Creation century: 0=19xx, 1=20xx' , 

	ODCDAT TEXT IS 'Creation date (MMDDYY)' , 

	ODCTIM TEXT IS 'Creation time (HHMMSS)' , 

	ODOBOW TEXT IS 'Object owner' , 

	ODSCEN TEXT IS 'Save century: 0=19xx, 1=20xx' , 

	ODSDAT TEXT IS 'Save date (MMDDYY)' , 

	ODSTIM TEXT IS 'Save time (HHMMSS)' , 

	ODSCMD TEXT IS 'Save command' , 

	ODSSZE TEXT IS 'Saved size' , 

	ODSSLT TEXT IS 'Starting slot' , 

	ODSDEV TEXT IS 'Save device' , 

	ODSV01 TEXT IS 'Saved volume' , 

	ODSV02 TEXT IS 'Saved volume' , 

	ODSV03 TEXT IS 'Saved volume' , 

	ODSV04 TEXT IS 'Saved volume' , 

	ODSV05 TEXT IS 'Saved volume' , 

	ODSV06 TEXT IS 'Saved volume' , 

	ODSV07 TEXT IS 'Saved volume' , 

	ODSV08 TEXT IS 'Saved volume' , 

	ODSV09 TEXT IS 'Saved volume' , 

	ODSV10 TEXT IS 'Saved volume' , 

	ODSVMR TEXT IS 'More volumes: 0=No, 1=Yes, 2=Parallel save format' , 

	ODRCEN TEXT IS 'Restore century: 0=19xx, 1=20xx' , 

	ODRDAT TEXT IS 'Restore date (MMDDYY)' , 

	ODRTIM TEXT IS 'Restore time (HHMMSS)' , 

	ODCPFL TEXT IS 'System level' , 

	ODSRCF TEXT IS 'Source file name' , 

	ODSRCL TEXT IS 'Source file library' , 

	ODSRCM TEXT IS 'Source file member' , 

	ODSRCC TEXT IS 'Source change century: 0=19xx, 1=20xx' , 

	ODSRCD TEXT IS 'Source change date (YYMMDD)' , 

	ODSRCT TEXT IS 'Source change time (HHMMSS)' , 

	ODCMNM TEXT IS 'Compiler name' , 

	ODCMVR TEXT IS 'Compiler level' , 

	ODOBLV TEXT IS 'Object level' , 

	ODUMOD TEXT IS 'User modified: 0=Not modified, 1=Modified' , 

	ODPPNM TEXT IS 'LICPGM name' , 

	ODPPVR TEXT IS 'LICPGM level' , 

	ODPCNR TEXT IS 'PTF number' , 

	ODAPAR TEXT IS 'APAR ID' , 

	ODSSQN TEXT IS 'Sequence number: -5=See ODSSQL field' , 

	ODLCEN TEXT IS 'Change century: 0=19xx, 1=20xx' , 

	ODLDAT TEXT IS 'Change date (MMDDYY)' , 

	ODLTIM TEXT IS 'Change time (HHMMSS)' , 

	ODSFIL TEXT IS 'Save file' , 

	ODSFLB TEXT IS 'Save file library' , 

	ODASP TEXT IS 'ASP number: -1=See ODASPL field' , 

	ODLBL TEXT IS 'File label' , 

	ODPTFN TEXT IS 'PTF ID' , 

	ODOBSY TEXT IS 'System name' , 

	ODCRTU TEXT IS 'Created by user' , 

	ODCRTS TEXT IS 'System created on' , 

	ODUUPD TEXT IS 'Usage updated: Y=Yes, N=No' , 

	ODUCEN TEXT IS 'Last used century: 0=19xx, 1=20xx' , 

	ODUDAT TEXT IS 'Last used date (MMDDYY)' , 

	ODUCNT TEXT IS 'Days used count' , 

	ODTCEN TEXT IS 'Reset century: 0=19xx, 1=20xx' , 

	ODTDAT TEXT IS 'Reset date (MMDDYY)' , 

	ODODMN TEXT IS 'Object domain: *S=System, *U=User' , 

	ODCPVR TEXT IS 'System version: VxRyMz or vvrrmm' , 

	ODCVRM TEXT IS 'Compiler version: VxRyMz or vvrrmm' , 

	ODPVRM TEXT IS 'LICPGM version: VxRyMz or vvrrmm' , 

	ODCPRS TEXT IS 'Compression status' , 

	ODOASP TEXT IS 'Overflowed ASP: 0=No, 1=Yes' , 

	ODAAPI TEXT IS 'Allow change by API: 0=No, 1=Yes' , 

	ODAPIC TEXT IS 'Changed by API: 0=Not changed, 1=Changed' , 

	ODUATR TEXT IS 'User-defined attribute' , 

	ODACEN TEXT IS 'Save active century: 0=19xx, 1=20xx' , 

	ODADAT TEXT IS 'Save active date (MMDDYY)' , 

	ODATIM TEXT IS 'Save active time (HHMMSS)' , 

	ODAUDT TEXT IS 'Object auditing value' , 

	ODSIZU TEXT IS 'Object size in units' , 

	ODBPUN TEXT IS 'Bytes per unit' , 

	ODPGP TEXT IS 'Primary group' , 

	ODSSQL TEXT IS 'Large sequence number' , 

	ODOSIG TEXT IS 'Digitally signed: 0=No, 1=Yes' , 

	ODJRST TEXT IS 'Currently journaled: 0=No, 1=Yes' , 

	ODJRNM TEXT IS 'Journal name' , 

	ODJRLB TEXT IS 'Journal library' , 

	ODJRIM TEXT IS 'Journal images: 0=*AFTER, 1=*BOTH' , 

	ODJREN TEXT IS 'Journal entries omitted: 0=*NONE, 1=*OPNCLO' , 

	ODJRCN TEXT IS 'Journal century: 0=19xx, 1=20xx' , 

	ODJRDT TEXT IS 'Journal date (MMDDYY)' , 

	ODJRTI TEXT IS 'Journal time (HHMMSS)' , 

	ODSSZU TEXT IS 'Save size in units' , 

	ODSBPU TEXT IS 'Save size multiplier' , 

	ODASPL TEXT IS 'Object ASP number' , 

	ODLASN TEXT IS 'Library ASP number' , 

	ODOADN TEXT IS 'Object ASP device name' , 

	ODLADN TEXT IS 'Library ASP device name' , 

	ODSSIG TEXT IS 'Signed by trusted source: 0=No, 1=Yes' , 

	ODMSIG TEXT IS 'Multiple signatures: 0=No, 1=Yes' , 

	ODASSZ TEXT IS 'Associated space size: 0=No space' , 

	ODALGN TEXT IS 'Optimum space alignment: 0=No, 1=Yes, 2=No space' , 

	ODOADG TEXT IS 'Object ASP group name' , 

	ODLADG TEXT IS 'Library ASP group name' , 

	ODSJRA TEXT IS 'Starting journal receiver name for apply' , 

	ODSJRL TEXT IS 'Starting journal receiver library name' , 

	ODSJRD TEXT IS 'Starting receiver library ASP device name' , 

	ODSJRG TEXT IS 'Starting receiver library ASP group name' , 

	ODJRJF TEXT IS 'Remote journal filter: 0=No, 1=Yes' , 

	ODDTL TEXT IS 'Object detail (DETAIL value)' ) ; 

  

GRANT DELETE , INSERT , SELECT , UPDATE   

ON BOLIB.EXPOBJT TO PUBLIC ; 

  

GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   

ON BOLIB.EXPOBJT TO QPGMR WITH GRANT OPTION ; 

  
