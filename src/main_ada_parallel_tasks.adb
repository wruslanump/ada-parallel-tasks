-- File: main_ada_parallel_tasks.adb
-- Date: Mon 22 Feb 2021 12:30:18 PM +08
-- Author: WRY wruslan.ump@gmail.com
-- ========================================================

-- IMPORT STANDARD ADA PACKAGES
with Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

-- IMPORT USER-DEFINED ADA PACKAGES
with pkg_ada_dtstamp;
with pkg_ada_task_level1;

-- ========================================================
procedure main_ada_parallel_tasks
-- ========================================================
	with SPARK_Mode => on
is 

   -- RENAME STANDARD ADA PACKAGES FOR CONVENIENCE
   package ATIO    renames Ada.Text_IO;
   package ART     renames Ada.Real_Time;
   package ASU     renames Ada.Strings.Unbounded;
   
   -- RENAME USER-DEFINED ADA PACKAGES FOR CONVENIENCE
   package PADTS   renames pkg_ada_dtstamp;
   package PATL1   renames pkg_ada_task_level1;
   
      
begin
   PADTS.dtstamp; ATIO.Put_Line ("Bismillah 3 times WRY");
   PADTS.dtstamp; ATIO.Put_Line ("Running inside GNAT Studio Community");
   ATIO.New_Line;
   
   -- Execute tasks from a package
   PATL1.exec_speed_monitor_tasks; 
      
   ATIO.New_Line; PADTS.dtstamp; ATIO.Put_Line ("Alhamdulillah 3 times WRY");
-- ========================================================   
end main_ada_parallel_tasks;
-- ========================================================
-- EXECUTION
-- /home/wruslan/github-ump/ada-parallel-tasks/exec/main_ada_parallel_tasks.adx
-- 2021-02-22 04:41:44.94013739686 Bismillah 3 times WRY
-- 2021-02-22 04:41:44.94013752742 Running inside GNAT Studio Community

-- 2021-02-22 04:41:44.94013923981 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:44.94013960597 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:44.94013982891 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.04114181224 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.14214355814 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.19264136711 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:45.24314612551 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.34414836246 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.44514128005 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:45.44514334862 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:45.44514990566 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.54615167976 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.64715408518 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.69764538293 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:45.74815574879 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.84915744030 Running tsktyp_01 --> tsk_display_speed(100 msec cycle)
-- 2021-02-22 04:41:45.94014349940 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:45.94014692288 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:46.19264967951 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:46.44514549887 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:46.44515162978 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:46.69765337137 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:46.94014697393 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:46.94015503956 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:47.19265720847 Running tsktyp_02 --> tsk_read_speed(250 msec cycle) 
-- 2021-02-22 04:41:47.44514822274 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:47.94015015944 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:48.44515242182 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:48.94015426987 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)
-- 2021-02-22 04:41:49.44515621770 Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)

-- 2021-02-22 04:41:49.94015931482 Alhamdulillah 3 times WRY
-- [2021-02-22 12:41:49] process terminated successfully, elapsed time: 05.13s

