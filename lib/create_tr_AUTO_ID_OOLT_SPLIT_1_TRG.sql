/* NAME:
 * create_tr_AUTO_ID_OOLT_SPLIT_1_TRG.sql
 *
 * DESC:
 * create trigger AUTO_ID_OOLT_SPLIT_1_TRG
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
 
create or replace
TRIGGER AUTO_ID_OOLT_SPLIT_1_TRG BEFORE INSERT ON T_OOLT_SPLIT1
FOR EACH ROW 
BEGIN
  BEGIN
    IF :NEW.ID IS NULL THEN
      SELECT AUTO_ID_OOLT_SPLIT_1_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
