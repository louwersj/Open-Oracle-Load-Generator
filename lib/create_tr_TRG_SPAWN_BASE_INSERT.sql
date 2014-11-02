/* NAME:
 * create_tr_TRG_SPAWN_BASE_INSERT.sql
 *
 * DESC:
 * create trigger TRG_SPAWN_BASE_INSERT
 * 
 * LOG:
 * VERSION---DATE--------NAME-------------COMMENT
 * 0.1       02NOV2014   Johan Louwers    Initial upload to github.com
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

CREATE OR REPLACE TRIGGER TRG_SPAWN_BASE_INSERT
  AFTER INSERT ON T_OOLT_BASE
  FOR EACH ROW
BEGIN
  INSERT INTO T_OOLT_SPLIT0
         (
             DATACOL0,
             DATACOL1,
             DATACOL2,
             TIMECHECK
         )
         VALUES
         (
             :new.DATACOL0,
             :new.DATACOL1,
             :new.DATACOL2,
             CURRENT_TIMESTAMP
         );
END TRG_SPAWN_BASE_INSERT;
/
