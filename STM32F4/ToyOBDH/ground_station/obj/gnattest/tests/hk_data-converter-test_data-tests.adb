--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into HK_Data.Converter.Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body HK_Data.Converter.Test_Data.Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Temperature (Gnattest_T : in out Test);
   procedure Test_Temperature_5f99ce (Gnattest_T : in out Test) renames Test_Temperature;
--  id:2.2/5f99ce7e2d7f6de4/Temperature/1/0/
   procedure Test_Temperature (Gnattest_T : in out Test) is
   --  hk_data-converter.ads:27:4:Temperature
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin
      AUnit.Assertions.Assert (Temperature ( Sensor_Reading(0)) = Temperature_Range(-40.0), "Temperature converter failed.");
      AUnit.Assertions.Assert (Temperature ( Sensor_Reading(4096)) = Temperature_Range(125.0), "Temperature converter failed.");

--  begin read only

   end Test_Temperature;
--  end read only


--  begin read only
   procedure Test_Light (Gnattest_T : in out Test);
   procedure Test_Light_0c6d20 (Gnattest_T : in out Test) renames Test_Light;
--  id:2.2/0c6d201bfe4d8813/Light/1/0/
   procedure Test_Light (Gnattest_T : in out Test) is
   --  hk_data-converter.ads:29:4:Light
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert (Light ( Sensor_Reading(0)) = Light_Range(0), "Light converter failed.");
      AUnit.Assertions.Assert (Light ( Sensor_Reading(608)) = Light_Range(14.84375), "Light converter failed.");
      AUnit.Assertions.Assert (Light ( Sensor_Reading(4096)) = Light_Range(100), "Light converter failed.");

--  begin read only
   end Test_Light;
--  end read only

--  begin read only
--  id:2.2/02/
--
--  This section can be used to add elaboration code for the global state.
--
begin
--  end read only
   null;
--  begin read only
--  end read only
end HK_Data.Converter.Test_Data.Tests;
