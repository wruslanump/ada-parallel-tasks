with Ada.Text_IO;
with pkg_ada_dtstamp;

-- ========================================================
package body pkg_ada_task_level1 
--   with SPARK_Mode => on
is
   package ATIO  renames Ada.Text_IO;
   package PADTS renames pkg_ada_dtstamp;

   -- =======================================
   procedure exec_speed_monitor_tasks 
   -- =======================================   
   is
      -- Without using task type below (WORKS)
      -- ====================================
      task task_display_speed;
      task task_read_speed;
      task task_monitor_overspeed;
      
      -- Using task type below (ALSO WORKS)
      -- =====================================
      -- task type task_display_speed;
      -- task type task_read_speed;
      -- task type task_monitor_overspeed;
      -- display_speed     : task_display_speed;
      -- read_speed        : task_read_speed;
      -- monitor_overspeed : task_monitor_overspeed;
      
     -- =====================     
        task body task_display_speed is
     -- =====================   
        begin
          -- loop  -- RUN FOREVER
          for I in 1..10 loop
              PADTS.dtstamp; ATIO.Put_Line("Running --> task_display_speed(100 msec cycle)");
              PADTS.exec_delay_msec (100);
          end loop;
        end task_display_speed;
        
    -- =====================     
        task body task_read_speed is
    -- =====================    
        begin
          -- loop  -- RUN FOREVER
          for I in 1..10 loop
              PADTS.dtstamp; ATIO.Put_Line("Running --> task_read_speed(250 msec cycle) ");
              PADTS.exec_delay_msec (250);
          end loop;
        end task_read_speed;    
        
    -- =====================     
        task body task_monitor_overspeed is
    -- =====================    
        begin
          -- loop  -- RUN FOREVER
          for I in 1..10 loop
              PADTS.dtstamp; ATIO.Put_Line("Running --> task_monitor_overspeed(500 msec cycle)");
              PADTS.exec_delay_msec (500);
          end loop;
        end task_monitor_overspeed;   
   -- =====================================================
   begin 
      null;
  
   end exec_speed_monitor_tasks;
-- ========================================================
begin
    null;

end pkg_ada_task_level1;
-- ========================================================
