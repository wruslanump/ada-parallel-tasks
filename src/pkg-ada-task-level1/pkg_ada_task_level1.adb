with Ada.Text_IO;
with pkg_ada_dtstamp;

-- ========================================================
package body pkg_ada_task_level1 
--   with SPARK_Mode => on
is
   package ATIO  renames Ada.Text_IO;
   package PADTS renames pkg_ada_dtstamp;

   -- =======================================
   procedure exec_three_tasks 
   -- =======================================   
   is
      task type tsktyp_01;
      task type tsktyp_02;
      task type tsktyp_03;
      
      the_task_01 : tsktyp_01;
      the_task_02 : tsktyp_02;
      the_task_03 : tsktyp_03;
     
     -- =====================     
        task body tsktyp_01 is
     -- =====================   
        begin
          -- loop  -- RUN FOREVER
          for I in 1..10 loop
              PADTS.dtstamp; ATIO.Put_Line("Running tsktyp_01 --> tsk_display_speed(100 msec cycle)");
              PADTS.exec_delay_msec (100);
          end loop;
        end tsktyp_01;
        
    -- =====================     
        task body tsktyp_02 is
    -- =====================    
        begin
          -- loop  -- RUN FOREVER
          for I in 1..10 loop
              PADTS.dtstamp; ATIO.Put_Line("Running tsktyp_02 --> tsk_read_speed(250 msec cycle) ");
              PADTS.exec_delay_msec (250);
          end loop;
        end tsktyp_02;    
        
    -- =====================     
        task body tsktyp_03 is
    -- =====================    
        begin
          -- loop  -- RUN FOREVER
          for I in 1..10 loop
              PADTS.dtstamp; ATIO.Put_Line("Running tsktyp_03 --> tsk_monitor_engine(500 msec cycle)");
              PADTS.exec_delay_msec (500);
          end loop;
        end tsktyp_03;   
   
   begin 
      null;
  
   end exec_three_tasks;
-- ========================================================
begin
    null;

end pkg_ada_task_level1;
-- ========================================================
