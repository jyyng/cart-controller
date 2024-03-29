# The TARGET variable determines what target system the application is
# compiled for. It either refers to an XN file in the source directories
# or a valid argument for the --target option when compiling

# Possible SOMANET targets:
# SOMANET-C22
# SOMANET-C21-DX
TARGET = SOMANET-C22


# The APP_NAME variable determines the name of the final .xe file. It should
# not include the .xe postfix. If left blank the name will default to
# the project name
APP_NAME = app_handle_com

# The USED_MODULES variable lists other module used by the application.
USED_MODULES = configuration_parameters lib_bldc_torque_control lib_limited_torque_position_control module_adc module_autotune module_biss_encoder module_board-support module_controllers module_encoder_rem_14 module_encoder_rem_16mt module_filters module_hall_sensor module_incremental_encoder module_motion_control module_position_feedback module_profiles module_pwm module_serial_encoder module_shared_memory module_spi_master module_utils module_watchdog

# The flags passed to xcc when building the application
# You can also set the following to override flags for a particular language:
# XCC_XC_FLAGS, XCC_C_FLAGS, XCC_ASM_FLAGS, XCC_CPP_FLAGS
# If the variable XCC_MAP_FLAGS is set it overrides the flags passed to
# xcc for the final link (mapping) stage.
XCC_FLAGS_Debug = -g -O3 -report
XCC_FLAGS_Release = -g -O3

# The XCORE_ARM_PROJECT variable, if set to 1, configures this
# project to create both xCORE and ARM binaries.
XCORE_ARM_PROJECT = 0

# The VERBOSE variable, if set to 1, enables verbose output from the make system.
VERBOSE = 0

XMOS_MAKE_PATH ?= ../..
-include $(XMOS_MAKE_PATH)/xcommon/module_xcommon/build/Makefile.common
