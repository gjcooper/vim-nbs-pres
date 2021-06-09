if exists("b:current_syntax")
    finish
endif

syntax keyword sceParameter active_buttons antialias back_clip_distance button_codes channels bits_per_sample sampling_rate code_delay
syntax keyword sceParameter default_all_responses default_attenuation default_background_color default_clear_active_stimuli default_cue_events
syntax keyword sceParameter default_cue_event_port default_default_2d_on_top default_deltat default_delta_time default_draw_mode default_font
syntax keyword sceParameter default_font_size default_formatted_text default_invert_caption default_max_responses default_mesh_ignore_warnings
syntax keyword sceParameter default_monitor_sounds default_monitor_videos default_optimize default_output_port default_pan default_path
syntax keyword sceParameter default_per_pixel_lighting default_picture_duration default_shape_antialias default_stimulus_time_in
syntax keyword sceParameter default_stimulus_time_out default_text_align default_text_color default_trial_duration default_trial_start_delay
syntax keyword sceParameter default_trial_type default_volume event_code_delimiter field_of_view front_clip_distance no_logfile pcl_file
syntax keyword sceParameter pulse_code pulse_out pulse_value pulse_width pulses_per_scan randomize_trials response_logging response_matching
syntax keyword sceParameter response_port_output scan_period scenario scenario_type screen_orientation screen_width_distance
syntax keyword sceParameter screen_height_distance screen_distance max_y screen_width screen_height screen_bit_depth sequence_interrupt
syntax keyword sceParameter stimulus_properties survey_background_color survey_color_scheme survey_cursor_color survey_input_mode
syntax keyword sceParameter survey_margin_percentage survey_max_time survey_mouse_cursor_size survey_multiple_choice_columns survey_prompt_align
syntax keyword sceParameter survey_prompt_background_color survey_prompt_font survey_prompt_font_color survey_prompt_font_size survey_prompt_height
syntax keyword sceParameter survey_prompt_percentage survey_prompt_position survey_prompt_width survey_response_align
syntax keyword sceParameter survey_response_background_color survey_response_font survey_response_font_color survey_response_font_size
syntax keyword sceParameter survey_response_height survey_response_position survey_response_width survey_scale_color survey_scale_cursor_color
syntax keyword sceParameter survey_scale_cursor_height survey_scale_cursor_width survey_scale_increment survey_scale_initial_value
syntax keyword sceParameter survey_scale_line_width survey_scale_start_mode survey_selected_color survey_scale_range survey_submit_background_color
syntax keyword sceParameter survey_submit_caption survey_submit_char survey_submit_font_size survey_submit_position survey_text_box_minimum_size
syntax keyword sceParameter survey_text_cursor_color survey_tick_count survey_tick_height target_button_codes write_codes

syntax match sceComment "\v#.*$"
syntax match sceComment "/\*\_.\{-}\*/"

syntax keyword sceFunction int abs ceil floor sqrt cos sin tan acos asin atan exp log log10 

syntax keyword sceStimulusType annulus_graphic arrow_graphic bitmap box condition_force cone constant_force cuboid custom_force cylinder d3d_picture_part ellipse_graphic force_device force_effect force_feedback graphic_surface light line_graphic mesh nothing periodic_force picture picture_part plane polygon_graphic program_audio_device program_display_device program_stimulus_manager program_video_player ramp_force sound sound_recording sphere stimulus stimulus_data stimulus_event stimulus_object text texture trial video video_report video_screen wavefile

syntax match sceOperator "\v\*"
syntax match sceOperator "\v/"
syntax match sceOperator "\v\%"
syntax match sceOperator "\v\!"
syntax match sceOperator "\v\+"
syntax match sceOperator "\v-"
syntax match sceOperator "\v\="
syntax match sceOperator "\v\=\="
syntax match sceOperator "\v\!\="
syntax match sceOperator "\v\>"
syntax match sceOperator "\v\<"
syntax match sceOperator "\v\>\="
syntax match sceOperator "\v\<\="
syntax match sceOperator "\v\&\&"
syntax match sceOperator "\v\|\|"

syntax keyword sceKeyword IF ENDIF
syntax keyword sceKeyword LOOP ENDLOOP
syntax keyword sceKeyword EXPARAM
syntax keyword sceKeyword TEMPLATE

highlight link sceComment Comment
highlight link sceKeyword Keyword
highlight link sceStimulusType Type
highlight link sceFunction Function
highlight link sceOperator Operator

let b:current_syntax = "nbssce"
