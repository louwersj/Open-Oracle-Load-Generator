/* NAME:
 * create_T_OOLT_SPLIT1.sql
 *
 * DESC:
 * create table T_OOLT_SPLIT1
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       31OCT2014   Johan Louwers    Initial upload to github.com
 *
 * LICENSE:
 * Copyright (C) 2014  Johan Louwers
 * 
 * This code is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This code is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this code; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 * 
 */
 
  CREATE TABLE T_OOLT_SPLIT1
  (
    ID        NUMBER NOT NULL ,
    DATACOL0  VARCHAR2(20 BYTE) ,
    DATACOL1  VARCHAR2(20 BYTE) ,
    DATACOL2  VARCHAR2(20 BYTE) ,
    TIMECHECK TIMESTAMP(6) NOT NULL ,
    CONSTRAINT T_OOLT_SPLIT1_PK PRIMARY KEY ( ID ) USING INDEX ( CREATE UNIQUE INDEX T_OOLT_SPLIT1_PK ON T_OOLT_SPLIT1 (ID ASC) LOGGING TABLESPACE SYSTEM PCTFREE 10 INITRANS 2 STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT ) NOPARALLEL ) ENABLE
  )
  LOGGING TABLESPACE SYSTEM PCTFREE 10 PCTUSED 40 INITRANS 1 STORAGE
  (
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
  )
  NOCOMPRESS;
  /
