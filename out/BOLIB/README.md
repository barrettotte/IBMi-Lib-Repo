# BOLIB

## Objects

| Name | Type | Extension | Size (KB) | Description |
|-----|-----|-----|-----|-----|
| CLCRTPG | *PGM | CLP | 49152 | Create MI program using QPRCRTPG API |
| EMPTYINV | *FILE | LF | 36864 |  |
| EVFEVENT | *FILE | PF | 49152 |  |
| EXPOBJT | *FILE | PF | 110592 |  |
| EXPPF | *FILE | PF | 69632 | Output file for DSPFD TYPE(*ATR) FILEATR(*PF) |
| FIRSTCL | *PGM | CLLE | 90112 | MY FIRST CL PROGRAM |
| FIZZBUZZ | *PGM | RPGLE | 114688 | Fizzbuzz in RPGLE Free |
| FLASHCARDS | *FILE | DSPF | 8192 |  |
| FPGMCALL | *PGM | RPGLE | 106496 | Calling CMD from RPGLE |
| HIRAGANAFL | *PGM | RPGLE | 122880 | Hiragana flashcards |
| HRGNA | *FILE | PF | 73728 | Hiragana and Romaji table |
| HXCVT | *PGM | RPGLE | 139264 | Convert Hex character to Decimal - HXCVTDSP DSPF |
| HXCVTDSP | *FILE | DSPF | 8192 | Convert Hex character to decimal - HXCVT |
| INVENTORY | *FILE | PF | 229376 |  |
| MI01 | *PGM |  | 24576 | Compare two packed arguments and return larger |
| MYTABLE | *FILE | PF | 40960 |  |
| ORDER | *FILE | PF | 94208 | Multiple key field table |
| PERSON | *FILE | PF | 98304 | Simple person table |
| PERSONL1 | *FILE | LF | 69632 | Simple view over person table |
| PERSONL2 | *FILE | LF | 57344 | Another simple view over person table |
| PERSONL3 | *FILE | LF | 73728 | View over person table on age > 30 |
| QCLLESRC | *FILE | PF | 32768 | CLLE Source File |
| QCLSRC | *FILE | PF | 49152 | CL Source File |
| QDDSSRC | *FILE | PF | 139264 | DDS Source file |
| QMISRC | *FILE | PF | 32768 | MI Source File |
| QRPGLESRC | *FILE | PF | 98304 | RPGLE Source |
| QRPGSRC | *FILE | PF | 24576 | RPG Source file |
| QSQLSRC | *FILE | PF | 73728 | SQL Source File |
| TAN | *SRVPGM | CLE | 122880 | SQL FUNCTION TAN |
| TEST | *FILE | PF | 45056 |  |
| TESTMI01 | *PGM | CLP | 45056 | Test MI01 |
| UPDATE_QOH | *PGM | CLE | 81920 | SQL PROCEDURE UPDATE_QOH |
| XFIZZBUZZ | *PGM | RPGLE | 102400 | FIZZBUZZ IN RPGLE FIXED |


## Members

### QCLLESRC Members

| Name | Description | Type | Record Length |
|-----|-----|-----|-----|
| FIRSTCL | My first CL program | CLLE | 92 |
### QCLSRC Members

| Name | Description | Type | Record Length |
|-----|-----|-----|-----|
| CLCRTPG | Create MI program using QPRCRTPG API | CLP | 92 |
| TESTMI01 | Test MI01 | CLP | 92 |
### QDDSSRC Members

| Name | Description | Type | Record Length |
|-----|-----|-----|-----|
| FLASHCARDS |  | DSPF | 92 |
| HRGNA | Hiragana and Romaji table | PF | 92 |
| HXCVTDSP | Convert Hex character to decimal - HXCVT | DSPF | 92 |
| ORDER | Multiple key field table | PF | 92 |
| PERSON | Simple person table | PF | 92 |
| PERSONL1 | Simple view over person table | LF | 92 |
| PERSONL2 | Another simple view over person table | LF | 92 |
| PERSONL3 | View over person table on age > 30 | LF | 92 |
### QMISRC Members

| Name | Description | Type | Record Length |
|-----|-----|-----|-----|
| MI01 | Return larger of two packed arguments | MI | 92 |
### QRPGLESRC Members

| Name | Description | Type | Record Length |
|-----|-----|-----|-----|
| FIZZBUZZ | Fizzbuzz in RPGLE Free | RPGLE | 212 |
| HIRAGANAFL | Hiragana flashcards | RPGLE | 212 |
| HXCVT | Convert Hex character to Decimal - HXCVTDSP DSPF | RPGLE | 212 |
| PGMCALL | Call a Program - QCMDEXC (Work with Spool Files) | RPGLE | 212 |
### QRPGSRC Members

| Name | Description | Type | Record Length |
|-----|-----|-----|-----|
| HELLORPG | Hello World in RPG | RPG | 92 |
### QSQLSRC Members

| Name | Description | Type | Record Length |
|-----|-----|-----|-----|
| EMPTY_INV | View of all empty inventory items | SQL | 212 |
| INVENTORY | Inventory of items | SQL | 212 |
| TAN | Calculate tangent | SQL | 212 |
| UPDATE_QOH | Update inventory item quantity on hand | SQL | 212 |
