# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/.Xil/Vivado-14004-Y7000P-Octo-Rinka/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a35tcsg324-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -include {
    C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new
    C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/ip/inst_rom
    C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/ip/data_ram
  } {
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/.Xil/Vivado-14004-Y7000P-Octo-Rinka/realtime/inst_rom_stub.v
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/.Xil/Vivado-14004-Y7000P-Octo-Rinka/realtime/data_ram_stub.v
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/confreg/confreg.v
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/decode.v
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/execute.v
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/fetch.v
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/mycpu.v
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/regfile.v
      C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/wzc_singleCycle.srcs/sources_1/new/single_cycle.v
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top single_cycle
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "C:/Users/I_Rin/Desktop/2021Practice/wzc_singleCycle/.Xil/Vivado-14004-Y7000P-Octo-Rinka/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
