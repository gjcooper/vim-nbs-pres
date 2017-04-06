if exists("b:current_syntax")
    finish
endif

syntax keyword pclPreProc include

syntax keyword pclKeyword if then else elseif end
syntax keyword pclKeyword loop until begin end break continue
syntax keyword pclKeyword sub begin end
syntax keyword pclKeyword preset

syntax keyword pclBasicType int double bool string rgb_color array vector 
syntax keyword pclStimulusType annulus_graphic arrow_graphic bitmap box condition_force cone constant_force cuboid custom_force cylinder d3d_picture_part ellipse_graphic force_device force_effect force_feedback graphic_surface light line_graphic mesh nothing periodic_force picture picture_part plane polygon_graphic program_audio_device program_display_device program_stimulus_manager program_video_player ramp_force sound sound_recording sphere stimulus stimulus_data stimulus_event stimulus_object text texture trial video video_report video_screen wavefile
syntax keyword pclResponseType button_device joystick keyboard mouse program_response_manager response_data speech_response touch_device touch_interaction touch_response touch_sample
syntax keyword pclEyeTrackType aoi_event_data blink_event_data eye_position_data eye_tracker fixation_event_data pupil_data saccade_event_data
syntax keyword pclKinectType body_data body_tracker depth_data depth_image face_data kinect
syntax keyword pclOtherType data_port_ext dio_device input_file input_port language_file output_file output_port program_clock program_display_window program_file_upload_manager program_input_port_manager program_output_port_manager program_parameter_manager program_parameter_window program_pulse_manager program_recording_manager save_logfile scenario_logfile socket terminal video_capture workspace

syntax keyword pclPredefined clock pulse_manager debug_out response_manager input_port_manager output_port_manager system_keyboard term parameter_window display_window stimulus_manager display_device display_devices logfile audio_space video_player video_players logfile_directory scenario_arguments scenario_directory stimulus_directory next_picture target_response response forever stimuli_length fixed first_response correct_response all_correct_responses nth_response specific_response port_code_none keyboard_time_out keyboard_max_length keyboard_delimiter align_left align_center align_right text_column_width display_style_none display_style_bold display_style_italic display_style_underline time_out_never stimulus_hit stimulus_incorrect stimulus_miss stimulus_false_alarm stimulus_other left_coordinate center_coordinate right_coordinate top_coordinate bottom_coordinate response_hit response_incorrect response_false_alarm response_other light_point light_spot light_directional xfile_binary xfile_compressed xfile_text indefinite effect_square effect_sine effect_triangle effect_sawtooth_up effect_sawtooth_down effect_spring effect_damper effect_inertia effect_friction force_feedback_start force_feedback_stop dt_position dt_saccade dt_fixation dt_aoi dt_pupil dt_blink et_calibrate_default et_calibrate_drift_correct et_blink_start et_blink_stop et_fixation_start et_fixation_stop et_saccade_start et_saccade_stop et_feature_position et_feature_pupil et_feature_fixation et_feature_saccade et_feature_aoi et_feature_blink et_feature_multiple_eyes et_status_stopped et_status_initializing et_status_tracking et_status_tracking_left et_status_tracking_right memory_dio_device ni_dio_device dio_input dio_output file_overwrite file_append color_correction_gamma color_correction_table indefinite_port_code pi_value draw_mode_copy draw_mode_standard


syntax keyword pclFunction abs arccos arcsin arctan arctan2 arctan2d 
syntax keyword pclFunction arithmetic_mean ceil cos date date_time date_time_gmt
syntax keyword pclFunction delete_file directory_exists dist exit exp
syntax keyword pclFunction file_exists floor get_directory_files
syntax keyword pclFunction get_memory_metrics get_sdl_variable is_double is_int
syntax keyword pclFunction is_null log log10 median_value mod
syntax keyword pclFunction population_std_dev pow printf random round
syntax keyword pclFunction run_process sample_std_dev set_random_seed
syntax keyword pclFunction set_system_volume sin sqrt system_beep tan
syntax keyword pclFunction wait_interval wait_until

syntax match pclOperator "\v\*"
syntax match pclOperator "\v/"
syntax match pclOperator "\v\%"
syntax match pclOperator "\v\!"
syntax match pclOperator "\v\+"
syntax match pclOperator "\v-"
syntax match pclOperator "\v\="
syntax match pclOperator "\v\=\="
syntax match pclOperator "\v\!\="
syntax match pclOperator "\v\>"
syntax match pclOperator "\v\<"
syntax match pclOperator "\v\>\="
syntax match pclOperator "\v\<\="
syntax match pclOperator "\v\&\&"
syntax match pclOperator "\v\|\|"

syntax match pclConstant "\v<[0-9]+(\.[0-9]+)?(e[+-]?[0-9]+)?>"
syntax region pclConstant start=/\v"/ skip=/\v\\./ end=/\v"/
syntax keyword pclConstant true false

syntax match pclComment "\v#.*$"
syntax match pclComment "/\*\_.\{-}\*/"

highlight link pclComment Comment
highlight link pclKeyword Keyword
highlight link pclPredefined Keyword
highlight link pclBasicType Type
highlight link pclStimulusType Type
highlight link pclResponseType Type
highlight link pclEyeTrackType Type
highlight link pclKinectType Type
highlight link pclOtherType Type
highlight link pclPreProc PreProc
highlight link pclFunction Function
highlight link pclOperator Operator
highlight link pclConstant Constant

let b:current_syntax = "nbspcl"
