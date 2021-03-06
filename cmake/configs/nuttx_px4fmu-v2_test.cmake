include(nuttx/px4_impl_nuttx)

px4_nuttx_configure(HWCLASS m4 CONFIG nsh ROMFS y ROMFSROOT px4fmu_test)

set(config_module_list
	#
	# Board support modules
	#
	drivers/device
	drivers/stm32
	drivers/stm32/adc
	drivers/stm32/tone_alarm
	drivers/led
	drivers/px4fmu
	drivers/px4io
	drivers/boards
	drivers/rgbled
	drivers/mpu6000
#TO FIT	drivers/mpu9250
	drivers/lsm303d
	drivers/l3gd20
	drivers/hmc5883
	drivers/ms5611
	#drivers/mb12xx
	#drivers/srf02
	#drivers/sf0x
	#drivers/ll40ls
	#drivers/teraranger
	drivers/gps
	#drivers/pwm_out_sim
	#drivers/hott
	#drivers/hott/hott_telemetry
	#drivers/hott/hott_sensors
	drivers/blinkm
	drivers/airspeed
	drivers/ets_airspeed
	drivers/ms4525_airspeed
	drivers/ms5525_airspeed
	drivers/sdp3x_airspeed
	drivers/frsky_telemetry
	modules/sensors
	#drivers/mkblctrl
	drivers/px4flow
	#drivers/oreoled
	#drivers/vmount
	drivers/pwm_input
	drivers/camera_trigger
	#drivers/bst
	#drivers/snapdragon_rc_pwm
	#drivers/lis3mdl

	#
	# System commands
	#
	systemcmds/bl_update
	systemcmds/config
	systemcmds/dumpfile
	#systemcmds/esc_calib
#TO FIT	systemcmds/hardfault_log
	systemcmds/mixer
	systemcmds/motor_ramp
	systemcmds/mtd
	systemcmds/nshterm
	systemcmds/param
	systemcmds/perf
	systemcmds/pwm
	systemcmds/reboot
	#systemcmds/sd_bench
	systemcmds/top
	#systemcmds/topic_listener
	systemcmds/ver

	#
	# Testing
	#
	drivers/sf0x/sf0x_tests
	drivers/test_ppm
	#lib/rc/rc_tests
	modules/commander/commander_tests
	modules/mc_pos_control/mc_pos_control_tests
	lib/controllib/controllib_test
	modules/mavlink/mavlink_tests
	modules/uORB/uORB_tests
	systemcmds/tests

	#
	# General system control
	#
	modules/commander
	modules/load_mon
	modules/navigator
	modules/mavlink
	#modules/gpio_led
	#modules/uavcan
	modules/land_detector

	#
	# Estimation modules
	#
	#modules/attitude_estimator_q
	#modules/position_estimator_inav
	#modules/local_position_estimator
	modules/ekf2

	#
	# Vehicle Control
	#
	modules/fw_pos_control_l1
	modules/fw_att_control
	modules/mc_att_control
	modules/mc_pos_control
	modules/vtol_att_control

	#
	# Logging
	#
	#modules/logger
	#modules/sdlog2

	#
	# Library modules
	#
	modules/systemlib/param
	modules/systemlib
	modules/uORB
	modules/dataman

	#
	# Libraries
	#
	lib/controllib
	lib/conversion
	lib/DriverFramework/framework
	lib/ecl
	lib/geo
	lib/geo_lookup
	lib/launchdetection
	lib/led
	lib/mathlib
	lib/mathlib/math/filter
	lib/mixer
	lib/runway_takeoff
	lib/tailsitter_recovery
	lib/terrain_estimation
	lib/version
	platforms/nuttx

	# had to add for cmake, not sure why wasn't in original config
	platforms/common
	platforms/nuttx/px4_layer

	#
	# OBC challenge
	#
	#examples/bottle_drop

	#
	# Rover apps
	#
	#examples/rover_steering_control

	#
	# Demo apps
	#
	#examples/math_demo
	# Tutorial code from
	# https://px4.io/dev/px4_simple_app
	#examples/px4_simple_app

	# Tutorial code from
	# https://px4.io/dev/daemon
	#examples/px4_daemon_app

	# Tutorial code from
	# https://px4.io/dev/debug_values
	#examples/px4_mavlink_debug

	# Tutorial code from
	# https://px4.io/dev/example_fixedwing_control
	#examples/fixedwing_control

	# Hardware test
	#examples/hwtest
)
