/* NAME:
 * clean_data.sql
 *
 * DESC:
 * Used to clean all the data and make the test environment ready for a complete new test.
 * This holds that data will be removed from the tables and sequences will be reset. 
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

-- clean tables
TRUNCATE TABLE T_OOLT_BASE;
TRUNCATE TABLE T_OOLT_SPLIT0;
TRUNCATE TABLE T_OOLT_SPLIT1;
TRUNCATE TABLE T_OOLT_SPLIT2;

-- reset sequences
execute t_oolt_reset_seq('AUTO_ID_OOLT_BASE_0_SEQ');
execute t_oolt_reset_seq('AUTO_ID_OOLT_SPLIT_0_SEQ');
execute t_oolt_reset_seq('AUTO_ID_OOLT_SPLIT_1_SEQ');
execute t_oolt_reset_seq('AUTO_ID_OOLT_SPLIT_1_SEQ');
/
