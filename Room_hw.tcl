# TCL File Generated by Component Editor 18.0
# Tue May 05 17:55:59 CDT 2020
# DO NOT MODIFY


# 
# Room "Room" v1.0
#  2020.05.05.17:55:59
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module Room
# 
set_module_property DESCRIPTION ""
set_module_property NAME Room
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "ECE385 Final"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME Room
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL new_component
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file Rooms.sv SYSTEM_VERILOG PATH Rooms.sv TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file Rooms.sv SYSTEM_VERILOG PATH Rooms.sv


# 
# parameters
# 


# 
# display items
# 


# 
# connection point CLK
# 
add_interface CLK clock end
set_interface_property CLK clockRate 50000000
set_interface_property CLK ENABLED true
set_interface_property CLK EXPORT_OF ""
set_interface_property CLK PORT_NAME_MAP ""
set_interface_property CLK CMSIS_SVD_VARIABLES ""
set_interface_property CLK SVD_ADDRESS_GROUP ""

add_interface_port CLK CLK clk Input 1


# 
# connection point RESET
# 
add_interface RESET reset end
set_interface_property RESET associatedClock CLK
set_interface_property RESET synchronousEdges DEASSERT
set_interface_property RESET ENABLED true
set_interface_property RESET EXPORT_OF ""
set_interface_property RESET PORT_NAME_MAP ""
set_interface_property RESET CMSIS_SVD_VARIABLES ""
set_interface_property RESET SVD_ADDRESS_GROUP ""

add_interface_port RESET RESET reset Input 1


# 
# connection point Slave
# 
add_interface Slave avalon end
set_interface_property Slave addressUnits SYMBOLS
set_interface_property Slave associatedClock CLK
set_interface_property Slave associatedReset RESET
set_interface_property Slave bitsPerSymbol 8
set_interface_property Slave burstOnBurstBoundariesOnly false
set_interface_property Slave burstcountUnits SYMBOLS
set_interface_property Slave explicitAddressSpan 0
set_interface_property Slave holdTime 0
set_interface_property Slave linewrapBursts false
set_interface_property Slave maximumPendingReadTransactions 0
set_interface_property Slave maximumPendingWriteTransactions 0
set_interface_property Slave readLatency 0
set_interface_property Slave readWaitStates 0
set_interface_property Slave readWaitTime 0
set_interface_property Slave setupTime 0
set_interface_property Slave timingUnits Cycles
set_interface_property Slave writeWaitTime 0
set_interface_property Slave ENABLED true
set_interface_property Slave EXPORT_OF ""
set_interface_property Slave PORT_NAME_MAP ""
set_interface_property Slave CMSIS_SVD_VARIABLES ""
set_interface_property Slave SVD_ADDRESS_GROUP ""

add_interface_port Slave AVL_ADDR address Input 5
add_interface_port Slave AVL_CS chipselect Input 1
add_interface_port Slave AVL_BYTE_EN byteenable Input 1
add_interface_port Slave AVL_READ read Input 1
add_interface_port Slave AVL_READDATA readdata Output 8
add_interface_port Slave AVL_WRITE write Input 1
add_interface_port Slave AVL_WRITEDATA writedata Input 8
set_interface_assignment Slave embeddedsw.configuration.isFlash 0
set_interface_assignment Slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment Slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment Slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point Export_Data
# 
add_interface Export_Data conduit end
set_interface_property Export_Data associatedClock CLK
set_interface_property Export_Data associatedReset RESET
set_interface_property Export_Data ENABLED true
set_interface_property Export_Data EXPORT_OF ""
set_interface_property Export_Data PORT_NAME_MAP ""
set_interface_property Export_Data CMSIS_SVD_VARIABLES ""
set_interface_property Export_Data SVD_ADDRESS_GROUP ""

add_interface_port Export_Data Export_Data new_signal Output 8
