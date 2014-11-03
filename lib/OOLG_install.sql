/* NAME:
 * OOLG_install.sql
 *
 * DESC:
 * installation script for OOLG. Will call all the sub scripts which will 
 * form the full installation of OOLG within the database. 
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       01NOV2014   Johan Louwers    Initial upload to github.com
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

SET serveroutput on format wrapped;
DECLARE
BEGIN
  DBMS_OUTPUT.put_line (' '); 
  DBMS_OUTPUT.put_line (' ***************************************'); 
  DBMS_OUTPUT.put_line (' *      Open Oracle Load Generator     *');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' ');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' * starting installation OOLG          *');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' ');


  DBMS_OUTPUT.put_line (' ');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' * creating tabels                     *');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' ');
  @@create_T_OOLT_BASE.sql
  @@create_T_OOLT_SPLIT0.sql
  @@create_T_OOLT_SPLIT1.sql
  @@create_T_OOLT_SPLIT2.sql


  DBMS_OUTPUT.put_line (' ');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' * creating procedures                 *');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' ');
  @@create_proc_t_oolt_reset_seq.sql


  DBMS_OUTPUT.put_line (' ');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' * creating sequences                  *');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' ');
  @@create_s_AUTO_ID_OOLT_BASE_0_SEQ.sql
  @@create_s_AUTO_ID_OOLT_SPLIT_0_SEQ.sql
  @@create_s_AUTO_ID_OOLT_SPLIT_1_SEQ.sql
  @@create_s_AUTO_ID_OOLT_SPLIT_2_SEQ.sql


  DBMS_OUTPUT.put_line (' ');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' * creating triggers                   *');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' ');
  @@create_tr_AUTO_ID_OOLT_BASE_0_TRG.sql
  @@create_tr_AUTO_ID_OOLT_SPLIT_0_TRG.sql
  @@create_tr_AUTO_ID_OOLT_SPLIT_1_TRG.sql
  @@create_tr_AUTO_ID_OOLT_SPLIT_0_TRG.sql
  @@create_tr_TRG_SPAWN_BASE_INSERT.sql
  @@create_tr_TRG_SPAWN_SPLIT0_INSERT.sql
  @@create_tr_TRG_SPAWN_SPLIT1_INSERT.sql

  DBMS_OUTPUT.put_line (' ');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' * Installation completed              *');
  DBMS_OUTPUT.put_line (' ***************************************');
  DBMS_OUTPUT.put_line (' ');

END;
