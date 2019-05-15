pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: Community 2018 (20180524-73)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_test_runner" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#1548dd8f#;
   pragma Export (C, u00001, "test_runnerB");
   u00002 : constant Version_32 := 16#050ff2f0#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#4113f22b#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#4fc9bc76#;
   pragma Export (C, u00005, "ada__command_lineB");
   u00006 : constant Version_32 := 16#3cdef8c9#;
   pragma Export (C, u00006, "ada__command_lineS");
   u00007 : constant Version_32 := 16#4635ec04#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#f32b4133#;
   pragma Export (C, u00008, "system__secondary_stackB");
   u00009 : constant Version_32 := 16#03a1141d#;
   pragma Export (C, u00009, "system__secondary_stackS");
   u00010 : constant Version_32 := 16#b66608ad#;
   pragma Export (C, u00010, "ada__exceptionsB");
   u00011 : constant Version_32 := 16#585ef86b#;
   pragma Export (C, u00011, "ada__exceptionsS");
   u00012 : constant Version_32 := 16#5726abed#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerB");
   u00013 : constant Version_32 := 16#41e5552e#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerS");
   u00014 : constant Version_32 := 16#ae860117#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#0336e7b2#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#75bf515c#;
   pragma Export (C, u00016, "system__soft_links__initializeB");
   u00017 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00017, "system__soft_links__initializeS");
   u00018 : constant Version_32 := 16#86dbf443#;
   pragma Export (C, u00018, "system__parametersB");
   u00019 : constant Version_32 := 16#0ed9b82f#;
   pragma Export (C, u00019, "system__parametersS");
   u00020 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#c88a87ec#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00022, "system__storage_elementsB");
   u00023 : constant Version_32 := 16#6bf6a600#;
   pragma Export (C, u00023, "system__storage_elementsS");
   u00024 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#1b9b8546#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#2e5681f2#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#80916427#;
   pragma Export (C, u00028, "system__exceptions__machineB");
   u00029 : constant Version_32 := 16#3bad9081#;
   pragma Export (C, u00029, "system__exceptions__machineS");
   u00030 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00030, "system__exceptions_debugB");
   u00031 : constant Version_32 := 16#38bf15c0#;
   pragma Export (C, u00031, "system__exceptions_debugS");
   u00032 : constant Version_32 := 16#6c2f8802#;
   pragma Export (C, u00032, "system__img_intB");
   u00033 : constant Version_32 := 16#44ee0cc6#;
   pragma Export (C, u00033, "system__img_intS");
   u00034 : constant Version_32 := 16#39df8c17#;
   pragma Export (C, u00034, "system__tracebackB");
   u00035 : constant Version_32 := 16#181732c0#;
   pragma Export (C, u00035, "system__tracebackS");
   u00036 : constant Version_32 := 16#9ed49525#;
   pragma Export (C, u00036, "system__traceback_entriesB");
   u00037 : constant Version_32 := 16#466e1a74#;
   pragma Export (C, u00037, "system__traceback_entriesS");
   u00038 : constant Version_32 := 16#448e9548#;
   pragma Export (C, u00038, "system__traceback__symbolicB");
   u00039 : constant Version_32 := 16#c84061d1#;
   pragma Export (C, u00039, "system__traceback__symbolicS");
   u00040 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00040, "ada__containersS");
   u00041 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00041, "ada__exceptions__tracebackB");
   u00042 : constant Version_32 := 16#20245e75#;
   pragma Export (C, u00042, "ada__exceptions__tracebackS");
   u00043 : constant Version_32 := 16#5ab55268#;
   pragma Export (C, u00043, "interfacesS");
   u00044 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00044, "interfaces__cB");
   u00045 : constant Version_32 := 16#467817d8#;
   pragma Export (C, u00045, "interfaces__cS");
   u00046 : constant Version_32 := 16#e865e681#;
   pragma Export (C, u00046, "system__bounded_stringsB");
   u00047 : constant Version_32 := 16#31c8cd1d#;
   pragma Export (C, u00047, "system__bounded_stringsS");
   u00048 : constant Version_32 := 16#0062635e#;
   pragma Export (C, u00048, "system__crtlS");
   u00049 : constant Version_32 := 16#a14b18bf#;
   pragma Export (C, u00049, "system__dwarf_linesB");
   u00050 : constant Version_32 := 16#809452f5#;
   pragma Export (C, u00050, "system__dwarf_linesS");
   u00051 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00051, "ada__charactersS");
   u00052 : constant Version_32 := 16#8f637df8#;
   pragma Export (C, u00052, "ada__characters__handlingB");
   u00053 : constant Version_32 := 16#3b3f6154#;
   pragma Export (C, u00053, "ada__characters__handlingS");
   u00054 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00054, "ada__characters__latin_1S");
   u00055 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00055, "ada__stringsS");
   u00056 : constant Version_32 := 16#96df1a3f#;
   pragma Export (C, u00056, "ada__strings__mapsB");
   u00057 : constant Version_32 := 16#1e526bec#;
   pragma Export (C, u00057, "ada__strings__mapsS");
   u00058 : constant Version_32 := 16#d68fb8f1#;
   pragma Export (C, u00058, "system__bit_opsB");
   u00059 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00059, "system__bit_opsS");
   u00060 : constant Version_32 := 16#72b39087#;
   pragma Export (C, u00060, "system__unsigned_typesS");
   u00061 : constant Version_32 := 16#92f05f13#;
   pragma Export (C, u00061, "ada__strings__maps__constantsS");
   u00062 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00062, "system__address_imageB");
   u00063 : constant Version_32 := 16#e7d9713e#;
   pragma Export (C, u00063, "system__address_imageS");
   u00064 : constant Version_32 := 16#ec78c2bf#;
   pragma Export (C, u00064, "system__img_unsB");
   u00065 : constant Version_32 := 16#ed47ac70#;
   pragma Export (C, u00065, "system__img_unsS");
   u00066 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00066, "system__ioB");
   u00067 : constant Version_32 := 16#d8771b4b#;
   pragma Export (C, u00067, "system__ioS");
   u00068 : constant Version_32 := 16#f790d1ef#;
   pragma Export (C, u00068, "system__mmapB");
   u00069 : constant Version_32 := 16#7c445363#;
   pragma Export (C, u00069, "system__mmapS");
   u00070 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00070, "ada__io_exceptionsS");
   u00071 : constant Version_32 := 16#917e91ec#;
   pragma Export (C, u00071, "system__mmap__os_interfaceB");
   u00072 : constant Version_32 := 16#1f56acd1#;
   pragma Export (C, u00072, "system__mmap__os_interfaceS");
   u00073 : constant Version_32 := 16#1ee9caf8#;
   pragma Export (C, u00073, "system__mmap__unixS");
   u00074 : constant Version_32 := 16#41e61106#;
   pragma Export (C, u00074, "system__os_libB");
   u00075 : constant Version_32 := 16#d8e681fb#;
   pragma Export (C, u00075, "system__os_libS");
   u00076 : constant Version_32 := 16#ec4d5631#;
   pragma Export (C, u00076, "system__case_utilB");
   u00077 : constant Version_32 := 16#79e05a50#;
   pragma Export (C, u00077, "system__case_utilS");
   u00078 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00078, "system__stringsB");
   u00079 : constant Version_32 := 16#2623c091#;
   pragma Export (C, u00079, "system__stringsS");
   u00080 : constant Version_32 := 16#40d3d043#;
   pragma Export (C, u00080, "system__object_readerB");
   u00081 : constant Version_32 := 16#98adb271#;
   pragma Export (C, u00081, "system__object_readerS");
   u00082 : constant Version_32 := 16#1a74a354#;
   pragma Export (C, u00082, "system__val_lliB");
   u00083 : constant Version_32 := 16#dc110aa4#;
   pragma Export (C, u00083, "system__val_lliS");
   u00084 : constant Version_32 := 16#afdbf393#;
   pragma Export (C, u00084, "system__val_lluB");
   u00085 : constant Version_32 := 16#0841c7f5#;
   pragma Export (C, u00085, "system__val_lluS");
   u00086 : constant Version_32 := 16#269742a9#;
   pragma Export (C, u00086, "system__val_utilB");
   u00087 : constant Version_32 := 16#ea955afa#;
   pragma Export (C, u00087, "system__val_utilS");
   u00088 : constant Version_32 := 16#d7bf3f29#;
   pragma Export (C, u00088, "system__exception_tracesB");
   u00089 : constant Version_32 := 16#62eacc9e#;
   pragma Export (C, u00089, "system__exception_tracesS");
   u00090 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00090, "system__wch_conB");
   u00091 : constant Version_32 := 16#5d48ced6#;
   pragma Export (C, u00091, "system__wch_conS");
   u00092 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00092, "system__wch_stwB");
   u00093 : constant Version_32 := 16#7059e2d7#;
   pragma Export (C, u00093, "system__wch_stwS");
   u00094 : constant Version_32 := 16#a831679c#;
   pragma Export (C, u00094, "system__wch_cnvB");
   u00095 : constant Version_32 := 16#52ff7425#;
   pragma Export (C, u00095, "system__wch_cnvS");
   u00096 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00096, "system__wch_jisB");
   u00097 : constant Version_32 := 16#d28f6d04#;
   pragma Export (C, u00097, "system__wch_jisS");
   u00098 : constant Version_32 := 16#0d091e1a#;
   pragma Export (C, u00098, "aunitB");
   u00099 : constant Version_32 := 16#76cdf7c6#;
   pragma Export (C, u00099, "aunitS");
   u00100 : constant Version_32 := 16#b6c145a2#;
   pragma Export (C, u00100, "aunit__memoryB");
   u00101 : constant Version_32 := 16#90c94a84#;
   pragma Export (C, u00101, "aunit__memoryS");
   u00102 : constant Version_32 := 16#e99cd447#;
   pragma Export (C, u00102, "aunit__optionsS");
   u00103 : constant Version_32 := 16#d398a95f#;
   pragma Export (C, u00103, "ada__tagsB");
   u00104 : constant Version_32 := 16#12a0afb8#;
   pragma Export (C, u00104, "ada__tagsS");
   u00105 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00105, "system__htableB");
   u00106 : constant Version_32 := 16#c2f75fee#;
   pragma Export (C, u00106, "system__htableS");
   u00107 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00107, "system__string_hashB");
   u00108 : constant Version_32 := 16#60a93490#;
   pragma Export (C, u00108, "system__string_hashS");
   u00109 : constant Version_32 := 16#e9d6512d#;
   pragma Export (C, u00109, "aunit__test_filtersB");
   u00110 : constant Version_32 := 16#9a67cba8#;
   pragma Export (C, u00110, "aunit__test_filtersS");
   u00111 : constant Version_32 := 16#6e9501f4#;
   pragma Export (C, u00111, "aunit__simple_test_casesB");
   u00112 : constant Version_32 := 16#f9679d50#;
   pragma Export (C, u00112, "aunit__simple_test_casesS");
   u00113 : constant Version_32 := 16#8872fb1a#;
   pragma Export (C, u00113, "aunit__assertionsB");
   u00114 : constant Version_32 := 16#3b7b7e5b#;
   pragma Export (C, u00114, "aunit__assertionsS");
   u00115 : constant Version_32 := 16#53a4dedb#;
   pragma Export (C, u00115, "ada_containers__aunit_listsB");
   u00116 : constant Version_32 := 16#c8d9569a#;
   pragma Export (C, u00116, "ada_containers__aunit_listsS");
   u00117 : constant Version_32 := 16#11329e00#;
   pragma Export (C, u00117, "ada_containersS");
   u00118 : constant Version_32 := 16#9b1c7ff2#;
   pragma Export (C, u00118, "aunit__memory__utilsB");
   u00119 : constant Version_32 := 16#fb2f6c57#;
   pragma Export (C, u00119, "aunit__memory__utilsS");
   u00120 : constant Version_32 := 16#01adf261#;
   pragma Export (C, u00120, "aunit__test_resultsB");
   u00121 : constant Version_32 := 16#1087836e#;
   pragma Export (C, u00121, "aunit__test_resultsS");
   u00122 : constant Version_32 := 16#9df5edcf#;
   pragma Export (C, u00122, "aunit__time_measureB");
   u00123 : constant Version_32 := 16#e95c19f5#;
   pragma Export (C, u00123, "aunit__time_measureS");
   u00124 : constant Version_32 := 16#2bce22d1#;
   pragma Export (C, u00124, "ada__calendarB");
   u00125 : constant Version_32 := 16#41508869#;
   pragma Export (C, u00125, "ada__calendarS");
   u00126 : constant Version_32 := 16#51f2d040#;
   pragma Export (C, u00126, "system__os_primitivesB");
   u00127 : constant Version_32 := 16#41c889f2#;
   pragma Export (C, u00127, "system__os_primitivesS");
   u00128 : constant Version_32 := 16#6b6cea8f#;
   pragma Export (C, u00128, "aunit__testsS");
   u00129 : constant Version_32 := 16#d96e3c40#;
   pragma Export (C, u00129, "system__finalization_mastersB");
   u00130 : constant Version_32 := 16#1dc9d5ce#;
   pragma Export (C, u00130, "system__finalization_mastersS");
   u00131 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00131, "system__img_boolB");
   u00132 : constant Version_32 := 16#b3ec9def#;
   pragma Export (C, u00132, "system__img_boolS");
   u00133 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00133, "ada__finalizationS");
   u00134 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00134, "ada__streamsB");
   u00135 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00135, "ada__streamsS");
   u00136 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00136, "system__finalization_rootB");
   u00137 : constant Version_32 := 16#09c79f94#;
   pragma Export (C, u00137, "system__finalization_rootS");
   u00138 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00138, "system__storage_poolsB");
   u00139 : constant Version_32 := 16#65d872a9#;
   pragma Export (C, u00139, "system__storage_poolsS");
   u00140 : constant Version_32 := 16#5a895de2#;
   pragma Export (C, u00140, "system__pool_globalB");
   u00141 : constant Version_32 := 16#7141203e#;
   pragma Export (C, u00141, "system__pool_globalS");
   u00142 : constant Version_32 := 16#2323a8af#;
   pragma Export (C, u00142, "system__memoryB");
   u00143 : constant Version_32 := 16#1f488a30#;
   pragma Export (C, u00143, "system__memoryS");
   u00144 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00144, "gnatS");
   u00145 : constant Version_32 := 16#d43725a0#;
   pragma Export (C, u00145, "gnat__source_infoS");
   u00146 : constant Version_32 := 16#acb182ec#;
   pragma Export (C, u00146, "gnat__tracebackB");
   u00147 : constant Version_32 := 16#6c918f86#;
   pragma Export (C, u00147, "gnat__tracebackS");
   u00148 : constant Version_32 := 16#90e9f8be#;
   pragma Export (C, u00148, "gnat__traceback__symbolicS");
   u00149 : constant Version_32 := 16#17d955ab#;
   pragma Export (C, u00149, "aunit__reporterS");
   u00150 : constant Version_32 := 16#1c0d4e63#;
   pragma Export (C, u00150, "aunit__reporter__gnattestB");
   u00151 : constant Version_32 := 16#9cd34a09#;
   pragma Export (C, u00151, "aunit__reporter__gnattestS");
   u00152 : constant Version_32 := 16#b48102f5#;
   pragma Export (C, u00152, "gnat__ioB");
   u00153 : constant Version_32 := 16#6227e843#;
   pragma Export (C, u00153, "gnat__ioS");
   u00154 : constant Version_32 := 16#b602a99c#;
   pragma Export (C, u00154, "system__exn_intB");
   u00155 : constant Version_32 := 16#04b9f058#;
   pragma Export (C, u00155, "system__exn_intS");
   u00156 : constant Version_32 := 16#e11af2d7#;
   pragma Export (C, u00156, "aunit__runB");
   u00157 : constant Version_32 := 16#4b2a8016#;
   pragma Export (C, u00157, "aunit__runS");
   u00158 : constant Version_32 := 16#276e73f2#;
   pragma Export (C, u00158, "aunit__test_suitesB");
   u00159 : constant Version_32 := 16#f3c7e671#;
   pragma Export (C, u00159, "aunit__test_suitesS");
   u00160 : constant Version_32 := 16#b8c1d9f8#;
   pragma Export (C, u00160, "gnat__command_lineB");
   u00161 : constant Version_32 := 16#9eb038d8#;
   pragma Export (C, u00161, "gnat__command_lineS");
   u00162 : constant Version_32 := 16#457fb2da#;
   pragma Export (C, u00162, "ada__strings__unboundedB");
   u00163 : constant Version_32 := 16#f39c7224#;
   pragma Export (C, u00163, "ada__strings__unboundedS");
   u00164 : constant Version_32 := 16#60da0992#;
   pragma Export (C, u00164, "ada__strings__searchB");
   u00165 : constant Version_32 := 16#c1ab8667#;
   pragma Export (C, u00165, "ada__strings__searchS");
   u00166 : constant Version_32 := 16#acee74ad#;
   pragma Export (C, u00166, "system__compare_array_unsigned_8B");
   u00167 : constant Version_32 := 16#ef369d89#;
   pragma Export (C, u00167, "system__compare_array_unsigned_8S");
   u00168 : constant Version_32 := 16#a8025f3c#;
   pragma Export (C, u00168, "system__address_operationsB");
   u00169 : constant Version_32 := 16#55395237#;
   pragma Export (C, u00169, "system__address_operationsS");
   u00170 : constant Version_32 := 16#2e260032#;
   pragma Export (C, u00170, "system__storage_pools__subpoolsB");
   u00171 : constant Version_32 := 16#cc5a1856#;
   pragma Export (C, u00171, "system__storage_pools__subpoolsS");
   u00172 : constant Version_32 := 16#84042202#;
   pragma Export (C, u00172, "system__storage_pools__subpools__finalizationB");
   u00173 : constant Version_32 := 16#fe2f4b3a#;
   pragma Export (C, u00173, "system__storage_pools__subpools__finalizationS");
   u00174 : constant Version_32 := 16#020a3f4d#;
   pragma Export (C, u00174, "system__atomic_countersB");
   u00175 : constant Version_32 := 16#f269c189#;
   pragma Export (C, u00175, "system__atomic_countersS");
   u00176 : constant Version_32 := 16#039168f8#;
   pragma Export (C, u00176, "system__stream_attributesB");
   u00177 : constant Version_32 := 16#8bc30a4e#;
   pragma Export (C, u00177, "system__stream_attributesS");
   u00178 : constant Version_32 := 16#927a893f#;
   pragma Export (C, u00178, "ada__text_ioB");
   u00179 : constant Version_32 := 16#5194351e#;
   pragma Export (C, u00179, "ada__text_ioS");
   u00180 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00180, "interfaces__c_streamsB");
   u00181 : constant Version_32 := 16#b1330297#;
   pragma Export (C, u00181, "interfaces__c_streamsS");
   u00182 : constant Version_32 := 16#ec083f01#;
   pragma Export (C, u00182, "system__file_ioB");
   u00183 : constant Version_32 := 16#e1440d61#;
   pragma Export (C, u00183, "system__file_ioS");
   u00184 : constant Version_32 := 16#bbaa76ac#;
   pragma Export (C, u00184, "system__file_control_blockS");
   u00185 : constant Version_32 := 16#c58b51c3#;
   pragma Export (C, u00185, "gnat__directory_operationsB");
   u00186 : constant Version_32 := 16#c7a80b87#;
   pragma Export (C, u00186, "gnat__directory_operationsS");
   u00187 : constant Version_32 := 16#adb6d201#;
   pragma Export (C, u00187, "ada__strings__fixedB");
   u00188 : constant Version_32 := 16#a86b22b3#;
   pragma Export (C, u00188, "ada__strings__fixedS");
   u00189 : constant Version_32 := 16#a79e599e#;
   pragma Export (C, u00189, "gnat__os_libS");
   u00190 : constant Version_32 := 16#d763507a#;
   pragma Export (C, u00190, "system__val_intB");
   u00191 : constant Version_32 := 16#0e90c63b#;
   pragma Export (C, u00191, "system__val_intS");
   u00192 : constant Version_32 := 16#1d9142a4#;
   pragma Export (C, u00192, "system__val_unsB");
   u00193 : constant Version_32 := 16#621b7dbc#;
   pragma Export (C, u00193, "system__val_unsS");
   u00194 : constant Version_32 := 16#084c16d0#;
   pragma Export (C, u00194, "gnat__regexpS");
   u00195 : constant Version_32 := 16#95f86c43#;
   pragma Export (C, u00195, "system__regexpB");
   u00196 : constant Version_32 := 16#65074bc8#;
   pragma Export (C, u00196, "system__regexpS");
   u00197 : constant Version_32 := 16#b4645806#;
   pragma Export (C, u00197, "gnat__stringsS");
   u00198 : constant Version_32 := 16#33489ddc#;
   pragma Export (C, u00198, "gnattest_generatedS");
   u00199 : constant Version_32 := 16#d29151d0#;
   pragma Export (C, u00199, "gnattest_main_suiteB");
   u00200 : constant Version_32 := 16#eea1e993#;
   pragma Export (C, u00200, "gnattest_main_suiteS");
   u00201 : constant Version_32 := 16#b81ffcb0#;
   pragma Export (C, u00201, "ttc_dataS");
   u00202 : constant Version_32 := 16#a1208b3b#;
   pragma Export (C, u00202, "hk_dataS");
   u00203 : constant Version_32 := 16#5b71f7f4#;
   pragma Export (C, u00203, "ttc_data__stringsB");
   u00204 : constant Version_32 := 16#5b335058#;
   pragma Export (C, u00204, "ttc_data__stringsS");
   u00205 : constant Version_32 := 16#fe1ffede#;
   pragma Export (C, u00205, "ada__strings__boundedB");
   u00206 : constant Version_32 := 16#89c18940#;
   pragma Export (C, u00206, "ada__strings__boundedS");
   u00207 : constant Version_32 := 16#7ec26662#;
   pragma Export (C, u00207, "ada__strings__superboundedB");
   u00208 : constant Version_32 := 16#da6addee#;
   pragma Export (C, u00208, "ada__strings__superboundedS");
   u00209 : constant Version_32 := 16#d5f9759f#;
   pragma Export (C, u00209, "ada__text_io__float_auxB");
   u00210 : constant Version_32 := 16#48248c7b#;
   pragma Export (C, u00210, "ada__text_io__float_auxS");
   u00211 : constant Version_32 := 16#181dc502#;
   pragma Export (C, u00211, "ada__text_io__generic_auxB");
   u00212 : constant Version_32 := 16#16b3615d#;
   pragma Export (C, u00212, "ada__text_io__generic_auxS");
   u00213 : constant Version_32 := 16#8aa4f090#;
   pragma Export (C, u00213, "system__img_realB");
   u00214 : constant Version_32 := 16#819dbde6#;
   pragma Export (C, u00214, "system__img_realS");
   u00215 : constant Version_32 := 16#42a257f7#;
   pragma Export (C, u00215, "system__fat_llfS");
   u00216 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00216, "system__float_controlB");
   u00217 : constant Version_32 := 16#a6c9af38#;
   pragma Export (C, u00217, "system__float_controlS");
   u00218 : constant Version_32 := 16#3e932977#;
   pragma Export (C, u00218, "system__img_lluB");
   u00219 : constant Version_32 := 16#3b7a9044#;
   pragma Export (C, u00219, "system__img_lluS");
   u00220 : constant Version_32 := 16#16458a73#;
   pragma Export (C, u00220, "system__powten_tableS");
   u00221 : constant Version_32 := 16#c2ca0511#;
   pragma Export (C, u00221, "system__val_realB");
   u00222 : constant Version_32 := 16#b81c9b15#;
   pragma Export (C, u00222, "system__val_realS");
   u00223 : constant Version_32 := 16#b2a569d2#;
   pragma Export (C, u00223, "system__exn_llfB");
   u00224 : constant Version_32 := 16#fa4b57d8#;
   pragma Export (C, u00224, "system__exn_llfS");
   u00225 : constant Version_32 := 16#a347755d#;
   pragma Export (C, u00225, "ada__text_io__modular_auxB");
   u00226 : constant Version_32 := 16#bd5ba9c9#;
   pragma Export (C, u00226, "ada__text_io__modular_auxS");
   u00227 : constant Version_32 := 16#b10ba0c7#;
   pragma Export (C, u00227, "system__img_biuB");
   u00228 : constant Version_32 := 16#b49118ca#;
   pragma Export (C, u00228, "system__img_biuS");
   u00229 : constant Version_32 := 16#4e06ab0c#;
   pragma Export (C, u00229, "system__img_llbB");
   u00230 : constant Version_32 := 16#f5560834#;
   pragma Export (C, u00230, "system__img_llbS");
   u00231 : constant Version_32 := 16#a756d097#;
   pragma Export (C, u00231, "system__img_llwB");
   u00232 : constant Version_32 := 16#5c3a2ba2#;
   pragma Export (C, u00232, "system__img_llwS");
   u00233 : constant Version_32 := 16#eb55dfbb#;
   pragma Export (C, u00233, "system__img_wiuB");
   u00234 : constant Version_32 := 16#dad09f58#;
   pragma Export (C, u00234, "system__img_wiuS");
   u00235 : constant Version_32 := 16#af68253e#;
   pragma Export (C, u00235, "gnat__calendarB");
   u00236 : constant Version_32 := 16#69bc3631#;
   pragma Export (C, u00236, "gnat__calendarS");
   u00237 : constant Version_32 := 16#55e7135b#;
   pragma Export (C, u00237, "interfaces__c__extensionsS");
   u00238 : constant Version_32 := 16#95569f93#;
   pragma Export (C, u00238, "ada__calendar__formattingB");
   u00239 : constant Version_32 := 16#7ddaf16f#;
   pragma Export (C, u00239, "ada__calendar__formattingS");
   u00240 : constant Version_32 := 16#e3cca715#;
   pragma Export (C, u00240, "ada__calendar__time_zonesB");
   u00241 : constant Version_32 := 16#77b56b93#;
   pragma Export (C, u00241, "ada__calendar__time_zonesS");
   u00242 : constant Version_32 := 16#7a1e0d3c#;
   pragma Export (C, u00242, "gnat__calendar__time_ioB");
   u00243 : constant Version_32 := 16#727c9c73#;
   pragma Export (C, u00243, "gnat__calendar__time_ioS");
   u00244 : constant Version_32 := 16#d37ed4a2#;
   pragma Export (C, u00244, "gnat__case_utilB");
   u00245 : constant Version_32 := 16#cdcd8fd3#;
   pragma Export (C, u00245, "gnat__case_utilS");
   u00246 : constant Version_32 := 16#9dca6636#;
   pragma Export (C, u00246, "system__img_lliB");
   u00247 : constant Version_32 := 16#577ab9d5#;
   pragma Export (C, u00247, "system__img_lliS");
   u00248 : constant Version_32 := 16#21b74cc4#;
   pragma Export (C, u00248, "gnat__formatted_stringB");
   u00249 : constant Version_32 := 16#4afd88b8#;
   pragma Export (C, u00249, "gnat__formatted_stringS");
   u00250 : constant Version_32 := 16#e18a47a0#;
   pragma Export (C, u00250, "ada__float_text_ioB");
   u00251 : constant Version_32 := 16#1fef695b#;
   pragma Export (C, u00251, "ada__float_text_ioS");
   u00252 : constant Version_32 := 16#1e40f010#;
   pragma Export (C, u00252, "system__fat_fltS");
   u00253 : constant Version_32 := 16#f64b89a4#;
   pragma Export (C, u00253, "ada__integer_text_ioB");
   u00254 : constant Version_32 := 16#082ea75f#;
   pragma Export (C, u00254, "ada__integer_text_ioS");
   u00255 : constant Version_32 := 16#f6fdca1c#;
   pragma Export (C, u00255, "ada__text_io__integer_auxB");
   u00256 : constant Version_32 := 16#09097bbe#;
   pragma Export (C, u00256, "ada__text_io__integer_auxS");
   u00257 : constant Version_32 := 16#4969a46f#;
   pragma Export (C, u00257, "ada__long_float_text_ioB");
   u00258 : constant Version_32 := 16#b70c8a94#;
   pragma Export (C, u00258, "ada__long_float_text_ioS");
   u00259 : constant Version_32 := 16#3872f91d#;
   pragma Export (C, u00259, "system__fat_lfltS");
   u00260 : constant Version_32 := 16#09572056#;
   pragma Export (C, u00260, "ada__long_integer_text_ioB");
   u00261 : constant Version_32 := 16#f7320ead#;
   pragma Export (C, u00261, "ada__long_integer_text_ioS");
   u00262 : constant Version_32 := 16#fb5a60c9#;
   pragma Export (C, u00262, "system__arith_64B");
   u00263 : constant Version_32 := 16#5ccd1b9e#;
   pragma Export (C, u00263, "system__arith_64S");
   u00264 : constant Version_32 := 16#dd13bf65#;
   pragma Export (C, u00264, "system__exn_lliB");
   u00265 : constant Version_32 := 16#c7a297ab#;
   pragma Export (C, u00265, "system__exn_lliS");
   u00266 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00266, "system__concat_2B");
   u00267 : constant Version_32 := 16#44953bd4#;
   pragma Export (C, u00267, "system__concat_2S");
   u00268 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00268, "system__concat_4B");
   u00269 : constant Version_32 := 16#3851c724#;
   pragma Export (C, u00269, "system__concat_4S");
   u00270 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00270, "system__concat_3B");
   u00271 : constant Version_32 := 16#4d45b0a1#;
   pragma Export (C, u00271, "system__concat_3S");
   u00272 : constant Version_32 := 16#608e2cd1#;
   pragma Export (C, u00272, "system__concat_5B");
   u00273 : constant Version_32 := 16#c16baf2a#;
   pragma Export (C, u00273, "system__concat_5S");
   u00274 : constant Version_32 := 16#ed063051#;
   pragma Export (C, u00274, "system__fat_sfltS");
   u00275 : constant Version_32 := 16#9c35946d#;
   pragma Export (C, u00275, "hk_data__converterB");
   u00276 : constant Version_32 := 16#f145e02f#;
   pragma Export (C, u00276, "hk_data__converterS");
   u00277 : constant Version_32 := 16#3c51476e#;
   pragma Export (C, u00277, "ttc_data__strings__test_dataB");
   u00278 : constant Version_32 := 16#4c9c1c22#;
   pragma Export (C, u00278, "ttc_data__strings__test_dataS");
   u00279 : constant Version_32 := 16#269b1972#;
   pragma Export (C, u00279, "aunit__test_fixturesB");
   u00280 : constant Version_32 := 16#3b99f1a5#;
   pragma Export (C, u00280, "aunit__test_fixturesS");
   u00281 : constant Version_32 := 16#5f2efa29#;
   pragma Export (C, u00281, "ttc_data__strings__test_data__testsB");
   u00282 : constant Version_32 := 16#8d3e7e40#;
   pragma Export (C, u00282, "ttc_data__strings__test_data__testsS");
   u00283 : constant Version_32 := 16#52f1910f#;
   pragma Export (C, u00283, "system__assertionsB");
   u00284 : constant Version_32 := 16#8bb8c090#;
   pragma Export (C, u00284, "system__assertionsS");
   u00285 : constant Version_32 := 16#9b4e49dc#;
   pragma Export (C, u00285, "ttc_data__strings__test_data__tests__suiteB");
   u00286 : constant Version_32 := 16#9994a571#;
   pragma Export (C, u00286, "ttc_data__strings__test_data__tests__suiteS");
   u00287 : constant Version_32 := 16#78683681#;
   pragma Export (C, u00287, "aunit__test_callerB");
   u00288 : constant Version_32 := 16#581d22b8#;
   pragma Export (C, u00288, "aunit__test_callerS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  gnat%s
   --  gnat.io%s
   --  gnat.io%b
   --  gnat.source_info%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.exn_int%s
   --  system.exn_int%b
   --  system.exn_llf%s
   --  system.exn_llf%b
   --  system.exn_lli%s
   --  system.exn_lli%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_lli%s
   --  system.img_lli%b
   --  system.io%s
   --  system.io%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  gnat.strings%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.case_util%s
   --  system.standard_library%s
   --  system.exception_traces%s
   --  ada.exceptions%s
   --  system.wch_stw%s
   --  system.val_util%s
   --  system.val_llu%s
   --  system.val_lli%s
   --  system.os_lib%s
   --  system.bit_ops%s
   --  ada.characters.handling%s
   --  ada.exceptions.traceback%s
   --  ada.exceptions.last_chance_handler%s
   --  system.secondary_stack%s
   --  system.case_util%b
   --  system.address_image%s
   --  system.bounded_strings%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.wch_stw%b
   --  system.val_util%b
   --  system.val_llu%b
   --  system.val_lli%b
   --  system.bit_ops%b
   --  ada.exceptions.traceback%b
   --  system.soft_links%s
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.containers%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  system.bounded_strings%b
   --  system.exception_traces%b
   --  system.memory%s
   --  system.memory%b
   --  system.os_lib%b
   --  ada.strings.maps%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  interfaces.c%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.standard_library%b
   --  system.mmap%s
   --  ada.strings.maps%b
   --  interfaces.c%b
   --  system.object_reader%s
   --  system.dwarf_lines%s
   --  system.dwarf_lines%b
   --  system.mmap.unix%s
   --  system.mmap.os_interface%s
   --  system.mmap%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  system.object_reader%b
   --  system.mmap.os_interface%b
   --  ada.command_line%s
   --  ada.command_line%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%s
   --  ada.strings.fixed%b
   --  ada.strings.superbounded%s
   --  ada.strings.superbounded%b
   --  ada.strings.bounded%s
   --  ada.strings.bounded%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  gnat.case_util%s
   --  gnat.case_util%b
   --  gnat.os_lib%s
   --  interfaces.c.extensions%s
   --  system.arith_64%s
   --  system.arith_64%b
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.fat_sflt%s
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.img_real%s
   --  system.img_real%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.storage_pools.subpools%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.val_real%s
   --  system.val_real%b
   --  system.val_uns%s
   --  system.val_uns%b
   --  system.val_int%s
   --  system.val_int%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.time_zones%s
   --  ada.calendar.time_zones%b
   --  ada.calendar.formatting%s
   --  ada.calendar.formatting%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.float_aux%s
   --  ada.text_io.float_aux%b
   --  ada.float_text_io%s
   --  ada.float_text_io%b
   --  ada.long_float_text_io%s
   --  ada.long_float_text_io%b
   --  ada.text_io.integer_aux%s
   --  ada.text_io.integer_aux%b
   --  ada.integer_text_io%s
   --  ada.integer_text_io%b
   --  ada.long_integer_text_io%s
   --  ada.long_integer_text_io%b
   --  ada.text_io.modular_aux%s
   --  ada.text_io.modular_aux%b
   --  gnat.calendar%s
   --  gnat.calendar%b
   --  gnat.calendar.time_io%s
   --  gnat.calendar.time_io%b
   --  gnat.directory_operations%s
   --  gnat.directory_operations%b
   --  gnat.traceback%s
   --  gnat.traceback%b
   --  gnat.traceback.symbolic%s
   --  system.assertions%s
   --  system.assertions%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  gnat.formatted_string%s
   --  gnat.formatted_string%b
   --  system.regexp%s
   --  system.regexp%b
   --  gnat.regexp%s
   --  gnat.command_line%s
   --  gnat.command_line%b
   --  ada_containers%s
   --  aunit%s
   --  aunit.memory%s
   --  aunit.memory%b
   --  aunit%b
   --  aunit.memory.utils%s
   --  aunit.memory.utils%b
   --  ada_containers.aunit_lists%s
   --  ada_containers.aunit_lists%b
   --  aunit.tests%s
   --  aunit.time_measure%s
   --  aunit.time_measure%b
   --  aunit.test_results%s
   --  aunit.test_results%b
   --  aunit.assertions%s
   --  aunit.assertions%b
   --  aunit.test_filters%s
   --  aunit.options%s
   --  aunit.simple_test_cases%s
   --  aunit.simple_test_cases%b
   --  aunit.test_filters%b
   --  aunit.reporter%s
   --  aunit.reporter.gnattest%s
   --  aunit.reporter.gnattest%b
   --  aunit.test_fixtures%s
   --  aunit.test_fixtures%b
   --  aunit.test_caller%s
   --  aunit.test_caller%b
   --  aunit.test_suites%s
   --  aunit.test_suites%b
   --  aunit.run%s
   --  aunit.run%b
   --  gnattest_generated%s
   --  hk_data%s
   --  hk_data.converter%s
   --  hk_data.converter%b
   --  ttc_data%s
   --  ttc_data.strings%s
   --  ttc_data.strings%b
   --  ttc_data.strings.test_data%s
   --  ttc_data.strings.test_data%b
   --  ttc_data.strings.test_data.tests%s
   --  ttc_data.strings.test_data.tests%b
   --  ttc_data.strings.test_data.tests.suite%s
   --  ttc_data.strings.test_data.tests.suite%b
   --  gnattest_main_suite%s
   --  gnattest_main_suite%b
   --  test_runner%b
   --  END ELABORATION ORDER

end ada_main;
