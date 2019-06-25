﻿
-- Generate SQL for PFs --
CALL QSYS2.GENERATE_SQL('MYTABLE%', 'BOLIB', 'TABLE', REPLACE_OPTION => '1', CREATE_OR_REPLACE_OPTION => '1', CONSTRAINT_OPTION => '2');
DROP TABLE QTEMP/Q_GENSQL;

-- Types: [ALIAS, CONSTRAINT, FUNCTION, INDEX, MASK, PERMISSION, PROCEDURE, SCHEMA, SEQUENCE, TABLE, TRIGGER, VARIABLE, VIEW, XSR]

-- Eh, not quite working as desired --
CALL QSYS2.GENERATE_SQL(
  DATABASE_OBJECT_NAME => 'MYTABLE',
  DATABASE_OBJECT_LIBRARY_NAME => 'BOLIB',
  DATABASE_OBJECT_TYPE => 'TABLE',
  DATABASE_SOURCE_FILE_NAME => 'QSQLSRC',
  DATABASE_SOURCE_FILE_LIBRARY_NAME => 'BOLIB',
  DATABASE_SOURCE_FILE_MEMBER => 'GENSQL',
  REPLACE_OPTION => '1',
  CREATE_OR_REPLACE_OPTION => '1',
  STATEMENT_FORMATTING_OPTION => '0'
);




