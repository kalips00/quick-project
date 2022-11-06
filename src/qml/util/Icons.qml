pragma Singleton

import QtQuick 2.15


/**
 * @brief Singleton managing all the icons
 */
QtObject {
    id: root


    readonly property FontLoader iconLoader:  FontLoader {
        id: loader
        source:							"qrc:///icon/MaterialIcons-Regular.ttf"
    }

    // illustrations
    readonly property string prefix:                      "qrc:/icon/"
    readonly property string empty_light:               root.prefix + "empty_light.svg"
    readonly property string empty_dark:                root.prefix + "empty_dark.svg"

    // icons
    readonly property string rotation_3d:							"\ue84d"
    readonly property string ac_unit:							"\ueb3b"
    readonly property string access_alarm:							"\ue190"
    readonly property string access_alarms:							"\ue191"
    readonly property string access_time:							"\ue192"
    readonly property string accessibility:							"\ue84e"
    readonly property string accessible:							"\ue914"
    readonly property string account_balance:							"\ue84f"
    readonly property string account_balance_wallet:							"\ue850"
    readonly property string account_box:							"\ue851"
    readonly property string account_circle:							"\ue853"
    readonly property string adb:							"\ue60e"
    readonly property string add:							"\ue145"
    readonly property string add_a_photo:							"\ue439"
    readonly property string add_alarm:							"\ue193"
    readonly property string add_alert:							"\ue003"
    readonly property string add_box:							"\ue146"
    readonly property string add_circle:							"\ue147"
    readonly property string add_circle_outline:							"\ue148"
    readonly property string add_location:							"\ue567"
    readonly property string add_shopping_cart:							"\ue854"
    readonly property string add_to_photos:							"\ue39d"
    readonly property string add_to_queue:							"\ue05c"
    readonly property string adjust:							"\ue39e"
    readonly property string airline_seat_flat:							"\ue630"
    readonly property string airline_seat_flat_angled:							"\ue631"
    readonly property string airline_seat_individual_suite:							"\ue632"
    readonly property string airline_seat_legroom_extra:							"\ue633"
    readonly property string airline_seat_legroom_normal:							"\ue634"
    readonly property string airline_seat_legroom_reduced:							"\ue635"
    readonly property string airline_seat_recline_extra:							"\ue636"
    readonly property string airline_seat_recline_normal:							"\ue637"
    readonly property string airplanemode_active:							"\ue195"
    readonly property string airplanemode_inactive:							"\ue194"
    readonly property string airplay:							"\ue055"
    readonly property string airport_shuttle:							"\ueb3c"
    readonly property string alarm:							"\ue855"
    readonly property string alarm_add:							"\ue856"
    readonly property string alarm_off:							"\ue857"
    readonly property string alarm_on:							"\ue858"
    readonly property string album:							"\ue019"
    readonly property string all_inclusive:							"\ueb3d"
    readonly property string all_out:							"\ue90b"
    readonly property string android:							"\ue859"
    readonly property string announcement:							"\ue85a"
    readonly property string apps:							"\ue5c3"
    readonly property string archive:							"\ue149"
    readonly property string arrow_back:							"\ue5c4"
    readonly property string arrow_downward:							"\ue5db"
    readonly property string arrow_drop_down:							"\ue5c5"
    readonly property string arrow_drop_down_circle:							"\ue5c6"
    readonly property string arrow_drop_up:							"\ue5c7"
    readonly property string arrow_forward:							"\ue5c8"
    readonly property string arrow_upward:							"\ue5d8"
    readonly property string art_track:							"\ue060"
    readonly property string aspect_ratio:							"\ue85b"
    readonly property string assessment:							"\ue85c"
    readonly property string assignment:							"\ue85d"
    readonly property string assignment_ind:							"\ue85e"
    readonly property string assignment_late:							"\ue85f"
    readonly property string assignment_return:							"\ue860"
    readonly property string assignment_returned:							"\ue861"
    readonly property string assignment_turned_in:							"\ue862"
    readonly property string assistant:							"\ue39f"
    readonly property string assistant_photo:							"\ue3a0"
    readonly property string attach_file:							"\ue226"
    readonly property string attach_money:							"\ue227"
    readonly property string attachment:							"\ue2bc"
    readonly property string audiotrack:							"\ue3a1"
    readonly property string autorenew:							"\ue863"
    readonly property string av_timer:							"\ue01b"
    readonly property string backspace:							"\ue14a"
    readonly property string backup:							"\ue864"
    readonly property string battery_alert:							"\ue19c"
    readonly property string battery_charging_full:							"\ue1a3"
    readonly property string battery_full:							"\ue1a4"
    readonly property string battery_std:							"\ue1a5"
    readonly property string battery_unknown:							"\ue1a6"
    readonly property string beach_access:							"\ueb3e"
    readonly property string beenhere:							"\ue52d"
    readonly property string block:							"\ue14b"
    readonly property string bluetooth:							"\ue1a7"
    readonly property string bluetooth_audio:							"\ue60f"
    readonly property string bluetooth_connected:							"\ue1a8"
    readonly property string bluetooth_disabled:							"\ue1a9"
    readonly property string bluetooth_searching:							"\ue1aa"
    readonly property string blur_circular:							"\ue3a2"
    readonly property string blur_linear:							"\ue3a3"
    readonly property string blur_off:							"\ue3a4"
    readonly property string blur_on:							"\ue3a5"
    readonly property string book:							"\ue865"
    readonly property string bookmark:							"\ue866"
    readonly property string bookmark_border:							"\ue867"
    readonly property string border_all:							"\ue228"
    readonly property string border_bottom:							"\ue229"
    readonly property string border_clear:							"\ue22a"
    readonly property string border_color:							"\ue22b"
    readonly property string border_horizontal:							"\ue22c"
    readonly property string border_inner:							"\ue22d"
    readonly property string border_left:							"\ue22e"
    readonly property string border_outer:							"\ue22f"
    readonly property string border_right:							"\ue230"
    readonly property string border_style:							"\ue231"
    readonly property string border_top:							"\ue232"
    readonly property string border_vertical:							"\ue233"
    readonly property string branding_watermark:							"\ue06b"
    readonly property string brightness_1:							"\ue3a6"
    readonly property string brightness_2:							"\ue3a7"
    readonly property string brightness_3:							"\ue3a8"
    readonly property string brightness_4:							"\ue3a9"
    readonly property string brightness_5:							"\ue3aa"
    readonly property string brightness_6:							"\ue3ab"
    readonly property string brightness_7:							"\ue3ac"
    readonly property string brightness_auto:							"\ue1ab"
    readonly property string brightness_high:							"\ue1ac"
    readonly property string brightness_low:							"\ue1ad"
    readonly property string brightness_medium:							"\ue1ae"
    readonly property string broken_image:							"\ue3ad"
    readonly property string brush:							"\ue3ae"
    readonly property string bubble_chart:							"\ue6dd"
    readonly property string bug_report:							"\ue868"
    readonly property string build:							"\ue869"
    readonly property string burst_mode:							"\ue43c"
    readonly property string business:							"\ue0af"
    readonly property string business_center:							"\ueb3f"
    readonly property string cached:							"\ue86a"
    readonly property string cake:							"\ue7e9"
    readonly property string call:							"\ue0b0"
    readonly property string call_end:							"\ue0b1"
    readonly property string call_made:							"\ue0b2"
    readonly property string call_merge:							"\ue0b3"
    readonly property string call_missed:							"\ue0b4"
    readonly property string call_missed_outgoing:							"\ue0e4"
    readonly property string call_received:							"\ue0b5"
    readonly property string call_split:							"\ue0b6"
    readonly property string call_to_action:							"\ue06c"
    readonly property string camera:							"\ue3af"
    readonly property string camera_alt:							"\ue3b0"
    readonly property string camera_enhance:							"\ue8fc"
    readonly property string camera_front:							"\ue3b1"
    readonly property string camera_rear:							"\ue3b2"
    readonly property string camera_roll:							"\ue3b3"
    readonly property string cancel:							"\ue5c9"
    readonly property string card_giftcard:							"\ue8f6"
    readonly property string card_membership:							"\ue8f7"
    readonly property string card_travel:							"\ue8f8"
    readonly property string casino:							"\ueb40"
    readonly property string cast:							"\ue307"
    readonly property string cast_connected:							"\ue308"
    readonly property string center_focus_strong:							"\ue3b4"
    readonly property string center_focus_weak:							"\ue3b5"
    readonly property string change_history:							"\ue86b"
    readonly property string chat:							"\ue0b7"
    readonly property string chat_bubble:							"\ue0ca"
    readonly property string chat_bubble_outline:							"\ue0cb"
    readonly property string check:							"\ue5ca"
    readonly property string check_box:							"\ue834"
    readonly property string check_box_outline_blank:							"\ue835"
    readonly property string check_circle:							"\ue86c"
    readonly property string chevron_left:							"\ue5cb"
    readonly property string chevron_right:							"\ue5cc"
    readonly property string child_care:							"\ueb41"
    readonly property string child_friendly:							"\ueb42"
    readonly property string chrome_reader_mode:							"\ue86d"
    readonly property string classe:							"\ue86e"
    readonly property string clear:							"\ue14c"
    readonly property string clear_all:							"\ue0b8"
    readonly property string close:							"\ue5cd"
    readonly property string closed_caption:							"\ue01c"
    readonly property string cloud:							"\ue2bd"
    readonly property string cloud_circle:							"\ue2be"
    readonly property string cloud_done:							"\ue2bf"
    readonly property string cloud_download:							"\ue2c0"
    readonly property string cloud_off:							"\ue2c1"
    readonly property string cloud_queue:							"\ue2c2"
    readonly property string cloud_upload:							"\ue2c3"
    readonly property string code:							"\ue86f"
    readonly property string collections:							"\ue3b6"
    readonly property string collections_bookmark:							"\ue431"
    readonly property string color_lens:							"\ue3b7"
    readonly property string colorize:							"\ue3b8"
    readonly property string comment:							"\ue0b9"
    readonly property string compare:							"\ue3b9"
    readonly property string compare_arrows:							"\ue915"
    readonly property string computer:							"\ue30a"
    readonly property string confirmation_number:							"\ue638"
    readonly property string contact_mail:							"\ue0d0"
    readonly property string contact_phone:							"\ue0cf"
    readonly property string contacts:							"\ue0ba"
    readonly property string content_copy:							"\ue14d"
    readonly property string content_cut:							"\ue14e"
    readonly property string content_paste:							"\ue14f"
    readonly property string control_point:							"\ue3ba"
    readonly property string control_point_duplicate:							"\ue3bb"
    readonly property string copyright:							"\ue90c"
    readonly property string create:							"\ue150"
    readonly property string create_new_folder:							"\ue2cc"
    readonly property string credit_card:							"\ue870"
    readonly property string crop:							"\ue3be"
    readonly property string crop_16_9:							"\ue3bc"
    readonly property string crop_3_2:							"\ue3bd"
    readonly property string crop_5_4:							"\ue3bf"
    readonly property string crop_7_5:							"\ue3c0"
    readonly property string crop_din:							"\ue3c1"
    readonly property string crop_free:							"\ue3c2"
    readonly property string crop_landscape:							"\ue3c3"
    readonly property string crop_original:							"\ue3c4"
    readonly property string crop_portrait:							"\ue3c5"
    readonly property string crop_rotate:							"\ue437"
    readonly property string crop_square:							"\ue3c6"
    readonly property string dashboard:							"\ue871"
    readonly property string data_usage:							"\ue1af"
    readonly property string date_range:							"\ue916"
    readonly property string dehaze:							"\ue3c7"
    readonly property string deleted:							"\ue872"
    readonly property string delete_forever:							"\ue92b"
    readonly property string delete_sweep:							"\ue16c"
    readonly property string description:							"\ue873"
    readonly property string desktop_mac:							"\ue30b"
    readonly property string desktop_windows:							"\ue30c"
    readonly property string details:							"\ue3c8"
    readonly property string developer_board:							"\ue30d"
    readonly property string developer_mode:							"\ue1b0"
    readonly property string device_hub:							"\ue335"
    readonly property string devices:							"\ue1b1"
    readonly property string devices_other:							"\ue337"
    readonly property string dialer_sip:							"\ue0bb"
    readonly property string dialpad:							"\ue0bc"
    readonly property string directions:							"\ue52e"
    readonly property string directions_bike:							"\ue52f"
    readonly property string directions_boat:							"\ue532"
    readonly property string directions_bus:							"\ue530"
    readonly property string directions_car:							"\ue531"
    readonly property string directions_railway:							"\ue534"
    readonly property string directions_run:							"\ue566"
    readonly property string directions_subway:							"\ue533"
    readonly property string directions_transit:							"\ue535"
    readonly property string directions_walk:							"\ue536"
    readonly property string disc_full:							"\ue610"
    readonly property string dns:							"\ue875"
    readonly property string do_not_disturb:							"\ue612"
    readonly property string do_not_disturb_alt:							"\ue611"
    readonly property string do_not_disturb_off:							"\ue643"
    readonly property string do_not_disturb_on:							"\ue644"
    readonly property string dock:							"\ue30e"
    readonly property string domain:							"\ue7ee"
    readonly property string done:							"\ue876"
    readonly property string done_all:							"\ue877"
    readonly property string donut_large:							"\ue917"
    readonly property string donut_small:							"\ue918"
    readonly property string drafts:							"\ue151"
    readonly property string drag_handle:							"\ue25d"
    readonly property string drive_eta:							"\ue613"
    readonly property string dvr:							"\ue1b2"
    readonly property string edit:							"\ue3c9"
    readonly property string edit_location:							"\ue568"
    readonly property string eject:							"\ue8fb"
    readonly property string email:							"\ue0be"
    readonly property string enhanced_encryption:							"\ue63f"
    readonly property string equalizer:							"\ue01d"
    readonly property string error:							"\ue000"
    readonly property string error_outline:							"\ue001"
    readonly property string euro_symbol:							"\ue926"
    readonly property string ev_station:							"\ue56d"
    readonly property string event:							"\ue878"
    readonly property string event_available:							"\ue614"
    readonly property string event_busy:							"\ue615"
    readonly property string event_note:							"\ue616"
    readonly property string event_seat:							"\ue903"
    readonly property string exit_to_app:							"\ue879"
    readonly property string expand_less:							"\ue5ce"
    readonly property string expand_more:							"\ue5cf"
    readonly property string explicit:							"\ue01e"
    readonly property string explore:							"\ue87a"
    readonly property string exposure:							"\ue3ca"
    readonly property string exposure_neg_1:							"\ue3cb"
    readonly property string exposure_neg_2:							"\ue3cc"
    readonly property string exposure_plus_1:							"\ue3cd"
    readonly property string exposure_plus_2:							"\ue3ce"
    readonly property string exposure_zero:							"\ue3cf"
    readonly property string extension:							"\ue87b"
    readonly property string face:							"\ue87c"
    readonly property string fast_forward:							"\ue01f"
    readonly property string fast_rewind:							"\ue020"
    readonly property string favorite:							"\ue87d"
    readonly property string favorite_border:							"\ue87e"
    readonly property string featured_play_list:							"\ue06d"
    readonly property string featured_video:							"\ue06e"
    readonly property string feedback:							"\ue87f"
    readonly property string fiber_dvr:							"\ue05d"
    readonly property string fiber_manual_record:							"\ue061"
    readonly property string fiber_new:							"\ue05e"
    readonly property string fiber_pin:							"\ue06a"
    readonly property string fiber_smart_record:							"\ue062"
    readonly property string file_download:							"\ue2c4"
    readonly property string file_upload:							"\ue2c6"
    readonly property string filter:							"\ue3d3"
    readonly property string filter_1:							"\ue3d0"
    readonly property string filter_2:							"\ue3d1"
    readonly property string filter_3:							"\ue3d2"
    readonly property string filter_4:							"\ue3d4"
    readonly property string filter_5:							"\ue3d5"
    readonly property string filter_6:							"\ue3d6"
    readonly property string filter_7:							"\ue3d7"
    readonly property string filter_8:							"\ue3d8"
    readonly property string filter_9:							"\ue3d9"
    readonly property string filter_9_plus:							"\ue3da"
    readonly property string filter_b_and_w:							"\ue3db"
    readonly property string filter_center_focus:							"\ue3dc"
    readonly property string filter_drama:							"\ue3dd"
    readonly property string filter_frames:							"\ue3de"
    readonly property string filter_hdr:							"\ue3df"
    readonly property string filter_list:							"\ue152"
    readonly property string filter_none:							"\ue3e0"
    readonly property string filter_tilt_shift:							"\ue3e2"
    readonly property string filter_vintage:							"\ue3e3"
    readonly property string find_in_page:							"\ue880"
    readonly property string find_replace:							"\ue881"
    readonly property string fingerprint:							"\ue90d"
    readonly property string first_page:							"\ue5dc"
    readonly property string fitness_center:							"\ueb43"
    readonly property string flag:							"\ue153"
    readonly property string flare:							"\ue3e4"
    readonly property string flash_auto:							"\ue3e5"
    readonly property string flash_off:							"\ue3e6"
    readonly property string flash_on:							"\ue3e7"
    readonly property string flight:							"\ue539"
    readonly property string flight_land:							"\ue904"
    readonly property string flight_takeoff:							"\ue905"
    readonly property string flip:							"\ue3e8"
    readonly property string flip_to_back:							"\ue882"
    readonly property string flip_to_front:							"\ue883"
    readonly property string folder:							"\ue2c7"
    readonly property string folder_open:							"\ue2c8"
    readonly property string folder_shared:							"\ue2c9"
    readonly property string folder_special:							"\ue617"
    readonly property string font_download:							"\ue167"
    readonly property string format_align_center:							"\ue234"
    readonly property string format_align_justify:							"\ue235"
    readonly property string format_align_left:							"\ue236"
    readonly property string format_align_right:							"\ue237"
    readonly property string format_bold:							"\ue238"
    readonly property string format_clear:							"\ue239"
    readonly property string format_color_fill:							"\ue23a"
    readonly property string format_color_reset:							"\ue23b"
    readonly property string format_color_text:							"\ue23c"
    readonly property string format_indent_decrease:							"\ue23d"
    readonly property string format_indent_increase:							"\ue23e"
    readonly property string format_italic:							"\ue23f"
    readonly property string format_line_spacing:							"\ue240"
    readonly property string format_list_bulleted:							"\ue241"
    readonly property string format_list_numbered:							"\ue242"
    readonly property string format_paint:							"\ue243"
    readonly property string format_quote:							"\ue244"
    readonly property string format_shapes:							"\ue25e"
    readonly property string format_size:							"\ue245"
    readonly property string format_strikethrough:							"\ue246"
    readonly property string format_textdirection_l_to_r:							"\ue247"
    readonly property string format_textdirection_r_to_l:							"\ue248"
    readonly property string format_underlined:							"\ue249"
    readonly property string forum:							"\ue0bf"
    readonly property string forward:							"\ue154"
    readonly property string forward_10:							"\ue056"
    readonly property string forward_30:							"\ue057"
    readonly property string forward_5:							"\ue058"
    readonly property string free_breakfast:							"\ueb44"
    readonly property string fullscreen:							"\ue5d0"
    readonly property string fullscreen_exit:							"\ue5d1"
    readonly property string functions:							"\ue24a"
    readonly property string g_translate:							"\ue927"
    readonly property string gamepad:							"\ue30f"
    readonly property string games:							"\ue021"
    readonly property string gavel:							"\ue90e"
    readonly property string gesture:							"\ue155"
    readonly property string get_app:							"\ue884"
    readonly property string gif:							"\ue908"
    readonly property string golf_course:							"\ueb45"
    readonly property string gps_fixed:							"\ue1b3"
    readonly property string gps_not_fixed:							"\ue1b4"
    readonly property string gps_off:							"\ue1b5"
    readonly property string grade:							"\ue885"
    readonly property string gradient:							"\ue3e9"
    readonly property string grain:							"\ue3ea"
    readonly property string graphic_eq:							"\ue1b8"
    readonly property string grid_off:							"\ue3eb"
    readonly property string grid_on:							"\ue3ec"
    readonly property string group:							"\ue7ef"
    readonly property string group_add:							"\ue7f0"
    readonly property string group_work:							"\ue886"
    readonly property string hd:							"\ue052"
    readonly property string hdr_off:							"\ue3ed"
    readonly property string hdr_on:							"\ue3ee"
    readonly property string hdr_strong:							"\ue3f1"
    readonly property string hdr_weak:							"\ue3f2"
    readonly property string headset:							"\ue310"
    readonly property string headset_mic:							"\ue311"
    readonly property string healing:							"\ue3f3"
    readonly property string hearing:							"\ue023"
    readonly property string help:							"\ue887"
    readonly property string help_outline:							"\ue8fd"
    readonly property string high_quality:							"\ue024"
    readonly property string highlight:							"\ue25f"
    readonly property string highlight_off:							"\ue888"
    readonly property string history:							"\ue889"
    readonly property string home:							"\ue88a"
    readonly property string hot_tub:							"\ueb46"
    readonly property string hotel:							"\ue53a"
    readonly property string hourglass_empty:							"\ue88b"
    readonly property string hourglass_full:							"\ue88c"
    readonly property string http:							"\ue902"
    readonly property string https:							"\ue88d"
    readonly property string image:							"\ue3f4"
    readonly property string image_aspect_ratio:							"\ue3f5"
    readonly property string import_contacts:							"\ue0e0"
    readonly property string import_export:							"\ue0c3"
    readonly property string important_devices:							"\ue912"
    readonly property string inbox:							"\ue156"
    readonly property string indeterminate_check_box:							"\ue909"
    readonly property string info:							"\ue88e"
    readonly property string info_outline:							"\ue88f"
    readonly property string input:							"\ue890"
    readonly property string insert_chart:							"\ue24b"
    readonly property string insert_comment:							"\ue24c"
    readonly property string insert_drive_file:							"\ue24d"
    readonly property string insert_emoticon:							"\ue24e"
    readonly property string insert_invitation:							"\ue24f"
    readonly property string insert_link:							"\ue250"
    readonly property string insert_photo:							"\ue251"
    readonly property string invert_colors:							"\ue891"
    readonly property string invert_colors_off:							"\ue0c4"
    readonly property string iso:							"\ue3f6"
    readonly property string keyboard:							"\ue312"
    readonly property string keyboard_arrow_down:							"\ue313"
    readonly property string keyboard_arrow_left:							"\ue314"
    readonly property string keyboard_arrow_right:							"\ue315"
    readonly property string keyboard_arrow_up:							"\ue316"
    readonly property string keyboard_backspace:							"\ue317"
    readonly property string keyboard_capslock:							"\ue318"
    readonly property string keyboard_hide:							"\ue31a"
    readonly property string keyboard_return:							"\ue31b"
    readonly property string keyboard_tab:							"\ue31c"
    readonly property string keyboard_voice:							"\ue31d"
    readonly property string kitchen:							"\ueb47"
    readonly property string label:							"\ue892"
    readonly property string label_outline:							"\ue893"
    readonly property string landscape:							"\ue3f7"
    readonly property string language:							"\ue894"
    readonly property string laptop:							"\ue31e"
    readonly property string laptop_chromebook:							"\ue31f"
    readonly property string laptop_mac:							"\ue320"
    readonly property string laptop_windows:							"\ue321"
    readonly property string last_page:							"\ue5dd"
    readonly property string launch:							"\ue895"
    readonly property string layers:							"\ue53b"
    readonly property string layers_clear:							"\ue53c"
    readonly property string leak_add:							"\ue3f8"
    readonly property string leak_remove:							"\ue3f9"
    readonly property string lens:							"\ue3fa"
    readonly property string library_add:							"\ue02e"
    readonly property string library_books:							"\ue02f"
    readonly property string library_music:							"\ue030"
    readonly property string lightbulb_outline:							"\ue90f"
    readonly property string line_style:							"\ue919"
    readonly property string line_weight:							"\ue91a"
    readonly property string linear_scale:							"\ue260"
    readonly property string link:							"\ue157"
    readonly property string linked_camera:							"\ue438"
    readonly property string list:							"\ue896"
    readonly property string live_help:							"\ue0c6"
    readonly property string live_tv:							"\ue639"
    readonly property string local_activity:							"\ue53f"
    readonly property string local_airport:							"\ue53d"
    readonly property string local_atm:							"\ue53e"
    readonly property string local_bar:							"\ue540"
    readonly property string local_cafe:							"\ue541"
    readonly property string local_car_wash:							"\ue542"
    readonly property string local_convenience_store:							"\ue543"
    readonly property string local_dining:							"\ue556"
    readonly property string local_drink:							"\ue544"
    readonly property string local_florist:							"\ue545"
    readonly property string local_gas_station:							"\ue546"
    readonly property string local_grocery_store:							"\ue547"
    readonly property string local_hospital:							"\ue548"
    readonly property string local_hotel:							"\ue549"
    readonly property string local_laundry_service:							"\ue54a"
    readonly property string local_library:							"\ue54b"
    readonly property string local_mall:							"\ue54c"
    readonly property string local_movies:							"\ue54d"
    readonly property string local_offer:							"\ue54e"
    readonly property string local_parking:							"\ue54f"
    readonly property string local_pharmacy:							"\ue550"
    readonly property string local_phone:							"\ue551"
    readonly property string local_pizza:							"\ue552"
    readonly property string local_play:							"\ue553"
    readonly property string local_post_office:							"\ue554"
    readonly property string local_printshop:							"\ue555"
    readonly property string local_see:							"\ue557"
    readonly property string local_shipping:							"\ue558"
    readonly property string local_taxi:							"\ue559"
    readonly property string location_city:							"\ue7f1"
    readonly property string location_disabled:							"\ue1b6"
    readonly property string location_off:							"\ue0c7"
    readonly property string location_on:							"\ue0c8"
    readonly property string location_searching:							"\ue1b7"
    readonly property string lock:							"\ue897"
    readonly property string lock_open:							"\ue898"
    readonly property string lock_outline:							"\ue899"
    readonly property string looks:							"\ue3fc"
    readonly property string looks_3:							"\ue3fb"
    readonly property string looks_4:							"\ue3fd"
    readonly property string looks_5:							"\ue3fe"
    readonly property string looks_6:							"\ue3ff"
    readonly property string looks_one:							"\ue400"
    readonly property string looks_two:							"\ue401"
    readonly property string loop:							"\ue028"
    readonly property string loupe:							"\ue402"
    readonly property string low_priority:							"\ue16d"
    readonly property string loyalty:							"\ue89a"
    readonly property string mail:							"\ue158"
    readonly property string mail_outline:							"\ue0e1"
    readonly property string map:							"\ue55b"
    readonly property string markunread:							"\ue159"
    readonly property string markunread_mailbox:							"\ue89b"
    readonly property string memory:							"\ue322"
    readonly property string menu:							"\ue5d2"
    readonly property string merge_type:							"\ue252"
    readonly property string message:							"\ue0c9"
    readonly property string mic:							"\ue029"
    readonly property string mic_none:							"\ue02a"
    readonly property string mic_off:							"\ue02b"
    readonly property string mms:							"\ue618"
    readonly property string mode_comment:							"\ue253"
    readonly property string mode_edit:							"\ue254"
    readonly property string monetization_on:							"\ue263"
    readonly property string money_off:							"\ue25c"
    readonly property string monochrome_photos:							"\ue403"
    readonly property string mood:							"\ue7f2"
    readonly property string mood_bad:							"\ue7f3"
    readonly property string more:							"\ue619"
    readonly property string more_horiz:							"\ue5d3"
    readonly property string more_vert:							"\ue5d4"
    readonly property string motorcycle:							"\ue91b"
    readonly property string mouse:							"\ue323"
    readonly property string move_to_inbox:							"\ue168"
    readonly property string movie:							"\ue02c"
    readonly property string movie_creation:							"\ue404"
    readonly property string movie_filter:							"\ue43a"
    readonly property string multiline_chart:							"\ue6df"
    readonly property string music_note:							"\ue405"
    readonly property string music_video:							"\ue063"
    readonly property string my_location:							"\ue55c"
    readonly property string nature:							"\ue406"
    readonly property string nature_people:							"\ue407"
    readonly property string navigate_before:							"\ue408"
    readonly property string navigate_next:							"\ue409"
    readonly property string navigation:							"\ue55d"
    readonly property string near_me:							"\ue569"
    readonly property string network_cell:							"\ue1b9"
    readonly property string network_check:							"\ue640"
    readonly property string network_locked:							"\ue61a"
    readonly property string network_wifi:							"\ue1ba"
    readonly property string new_releases:							"\ue031"
    readonly property string next_week:							"\ue16a"
    readonly property string nfc:							"\ue1bb"
    readonly property string no_encryption:							"\ue641"
    readonly property string no_sim:							"\ue0cc"
    readonly property string not_interested:							"\ue033"
    readonly property string note:							"\ue06f"
    readonly property string note_add:							"\ue89c"
    readonly property string notifications:							"\ue7f4"
    readonly property string notifications_active:							"\ue7f7"
    readonly property string notifications_none:							"\ue7f5"
    readonly property string notifications_off:							"\ue7f6"
    readonly property string notifications_paused:							"\ue7f8"
    readonly property string offline_pin:							"\ue90a"
    readonly property string ondemand_video:							"\ue63a"
    readonly property string transparency:							"\ue91c"
    readonly property string open_in_browser:							"\ue89d"
    readonly property string open_in_new:							"\ue89e"
    readonly property string open_with:							"\ue89f"
    readonly property string pages:							"\ue7f9"
    readonly property string pageview:							"\ue8a0"
    readonly property string palette:							"\ue40a"
    readonly property string pan_tool:							"\ue925"
    readonly property string panorama:							"\ue40b"
    readonly property string panorama_fish_eye:							"\ue40c"
    readonly property string panorama_horizontal:							"\ue40d"
    readonly property string panorama_vertical:							"\ue40e"
    readonly property string panorama_wide_angle:							"\ue40f"
    readonly property string party_mode:							"\ue7fa"
    readonly property string pause:							"\ue034"
    readonly property string pause_circle_filled:							"\ue035"
    readonly property string pause_circle_outline:							"\ue036"
    readonly property string payment:							"\ue8a1"
    readonly property string people:							"\ue7fb"
    readonly property string people_outline:							"\ue7fc"
    readonly property string perm_camera_mic:							"\ue8a2"
    readonly property string perm_contact_calendar:							"\ue8a3"
    readonly property string perm_data_setting:							"\ue8a4"
    readonly property string perm_device_information:							"\ue8a5"
    readonly property string perm_identity:							"\ue8a6"
    readonly property string perm_media:							"\ue8a7"
    readonly property string perm_phone_msg:							"\ue8a8"
    readonly property string perm_scan_wifi:							"\ue8a9"
    readonly property string person:							"\ue7fd"
    readonly property string person_add:							"\ue7fe"
    readonly property string person_outline:							"\ue7ff"
    readonly property string person_pin:							"\ue55a"
    readonly property string person_pin_circle:							"\ue56a"
    readonly property string personal_video:							"\ue63b"
    readonly property string pets:							"\ue91d"
    readonly property string phone:							"\ue0cd"
    readonly property string phone_android:							"\ue324"
    readonly property string phone_bluetooth_speaker:							"\ue61b"
    readonly property string phone_forwarded:							"\ue61c"
    readonly property string phone_in_talk:							"\ue61d"
    readonly property string phone_iphone:							"\ue325"
    readonly property string phone_locked:							"\ue61e"
    readonly property string phone_missed:							"\ue61f"
    readonly property string phone_paused:							"\ue620"
    readonly property string phonelink:							"\ue326"
    readonly property string phonelink_erase:							"\ue0db"
    readonly property string phonelink_lock:							"\ue0dc"
    readonly property string phonelink_off:							"\ue327"
    readonly property string phonelink_ring:							"\ue0dd"
    readonly property string phonelink_setup:							"\ue0de"
    readonly property string photo:							"\ue410"
    readonly property string photo_album:							"\ue411"
    readonly property string photo_camera:							"\ue412"
    readonly property string photo_filter:							"\ue43b"
    readonly property string photo_library:							"\ue413"
    readonly property string photo_size_select_actual:							"\ue432"
    readonly property string photo_size_select_large:							"\ue433"
    readonly property string photo_size_select_small:							"\ue434"
    readonly property string picture_as_pdf:							"\ue415"
    readonly property string picture_in_picture:							"\ue8aa"
    readonly property string picture_in_picture_alt:							"\ue911"
    readonly property string pie_chart:							"\ue6c4"
    readonly property string pie_chart_outlined:							"\ue6c5"
    readonly property string pin_drop:							"\ue55e"
    readonly property string place:							"\ue55f"
    readonly property string play_arrow:							"\ue037"
    readonly property string play_circle_filled:							"\ue038"
    readonly property string play_circle_outline:							"\ue039"
    readonly property string play_for_work:							"\ue906"
    readonly property string playlist_add:							"\ue03b"
    readonly property string playlist_add_check:							"\ue065"
    readonly property string playlist_play:							"\ue05f"
    readonly property string plus_one:							"\ue800"
    readonly property string poll:							"\ue801"
    readonly property string polymer:							"\ue8ab"
    readonly property string pool:							"\ueb48"
    readonly property string portable_wifi_off:							"\ue0ce"
    readonly property string portrait:							"\ue416"
    readonly property string power:							"\ue63c"
    readonly property string power_input:							"\ue336"
    readonly property string power_settings_new:							"\ue8ac"
    readonly property string pregnant_woman:							"\ue91e"
    readonly property string present_to_all:							"\ue0df"
    readonly property string printer:							"\ue8ad"
    readonly property string priority_high:							"\ue645"
    readonly property string publics:							"\ue80b"
    readonly property string publish:							"\ue255"
    readonly property string query_builder:							"\ue8ae"
    readonly property string question_answer:							"\ue8af"
    readonly property string queue:							"\ue03c"
    readonly property string queue_music:							"\ue03d"
    readonly property string queue_play_next:							"\ue066"
    readonly property string radio:							"\ue03e"
    readonly property string radio_button_checked:							"\ue837"
    readonly property string radio_button_unchecked:							"\ue836"
    readonly property string rate_review:							"\ue560"
    readonly property string receipt:							"\ue8b0"
    readonly property string recent_actors:							"\ue03f"
    readonly property string record_voice_over:							"\ue91f"
    readonly property string redeem:							"\ue8b1"
    readonly property string redo:							"\ue15a"
    readonly property string refresh:							"\ue5d5"
    readonly property string remove:							"\ue15b"
    readonly property string remove_circle:							"\ue15c"
    readonly property string remove_circle_outline:							"\ue15d"
    readonly property string remove_from_queue:							"\ue067"
    readonly property string remove_red_eye:							"\ue417"
    readonly property string remove_shopping_cart:							"\ue928"
    readonly property string reorder:							"\ue8fe"
    readonly property string repeat:							"\ue040"
    readonly property string repeat_one:							"\ue041"
    readonly property string replay:							"\ue042"
    readonly property string replay_10:							"\ue059"
    readonly property string replay_30:							"\ue05a"
    readonly property string replay_5:							"\ue05b"
    readonly property string reply:							"\ue15e"
    readonly property string reply_all:							"\ue15f"
    readonly property string report:							"\ue160"
    readonly property string report_problem:							"\ue8b2"
    readonly property string restaurant:							"\ue56c"
    readonly property string restaurant_menu:							"\ue561"
    readonly property string restore:							"\ue8b3"
    readonly property string restore_page:							"\ue929"
    readonly property string ring_volume:							"\ue0d1"
    readonly property string room:							"\ue8b4"
    readonly property string room_service:							"\ueb49"
    readonly property string rotate_90_degrees_ccw:							"\ue418"
    readonly property string rotate_left:							"\ue419"
    readonly property string rotate_right:							"\ue41a"
    readonly property string rounded_corner:							"\ue920"
    readonly property string router:							"\ue328"
    readonly property string rowing:							"\ue921"
    readonly property string rss_feed:							"\ue0e5"
    readonly property string rv_hookup:							"\ue642"
    readonly property string satellite:							"\ue562"
    readonly property string save:							"\ue161"
    readonly property string scanner:							"\ue329"
    readonly property string schedule:							"\ue8b5"
    readonly property string school:							"\ue80c"
    readonly property string screen_lock_landscape:							"\ue1be"
    readonly property string screen_lock_portrait:							"\ue1bf"
    readonly property string screen_lock_rotation:							"\ue1c0"
    readonly property string screen_rotation:							"\ue1c1"
    readonly property string screen_share:							"\ue0e2"
    readonly property string sd_card:							"\ue623"
    readonly property string sd_storage:							"\ue1c2"
    readonly property string search:							"\ue8b6"
    readonly property string security:							"\ue32a"
    readonly property string select_all:							"\ue162"
    readonly property string send:							"\ue163"
    readonly property string sentiment_dissatisfied:							"\ue811"
    readonly property string sentiment_neutral:							"\ue812"
    readonly property string sentiment_satisfied:							"\ue813"
    readonly property string sentiment_very_dissatisfied:							"\ue814"
    readonly property string sentiment_very_satisfied:							"\ue815"
    readonly property string settings:							"\ue8b8"
    readonly property string settings_applications:							"\ue8b9"
    readonly property string settings_backup_restore:							"\ue8ba"
    readonly property string settings_bluetooth:							"\ue8bb"
    readonly property string settings_brightness:							"\ue8bd"
    readonly property string settings_cell:							"\ue8bc"
    readonly property string settings_ethernet:							"\ue8be"
    readonly property string settings_input_antenna:							"\ue8bf"
    readonly property string settings_input_component:							"\ue8c0"
    readonly property string settings_input_composite:							"\ue8c1"
    readonly property string settings_input_hdmi:							"\ue8c2"
    readonly property string settings_input_svideo:							"\ue8c3"
    readonly property string settings_overscan:							"\ue8c4"
    readonly property string settings_phone:							"\ue8c5"
    readonly property string settings_power:							"\ue8c6"
    readonly property string settings_remote:							"\ue8c7"
    readonly property string settings_system_daydream:							"\ue1c3"
    readonly property string settings_voice:							"\ue8c8"
    readonly property string share:							"\ue80d"
    readonly property string shop:							"\ue8c9"
    readonly property string shop_two:							"\ue8ca"
    readonly property string shopping_basket:							"\ue8cb"
    readonly property string shopping_cart:							"\ue8cc"
    readonly property string short_text:							"\ue261"
    readonly property string show_chart:							"\ue6e1"
    readonly property string shuffle:							"\ue043"
    readonly property string signal_cellular_4_bar:							"\ue1c8"
    readonly property string signal_cellular_connected_no_internet_4_bar:							"\ue1cd"
    readonly property string signal_cellular_no_sim:							"\ue1ce"
    readonly property string signal_cellular_null:							"\ue1cf"
    readonly property string signal_cellular_off:							"\ue1d0"
    readonly property string signal_wifi_4_bar:							"\ue1d8"
    readonly property string signal_wifi_4_bar_lock:							"\ue1d9"
    readonly property string signal_wifi_off:							"\ue1da"
    readonly property string sim_card:							"\ue32b"
    readonly property string sim_card_alert:							"\ue624"
    readonly property string skip_next:							"\ue044"
    readonly property string skip_previous:							"\ue045"
    readonly property string slideshow:							"\ue41b"
    readonly property string slow_motion_video:							"\ue068"
    readonly property string smartphone:							"\ue32c"
    readonly property string smoke_free:							"\ueb4a"
    readonly property string smoking_rooms:							"\ueb4b"
    readonly property string sms:							"\ue625"
    readonly property string sms_failed:							"\ue626"
    readonly property string snooze:							"\ue046"
    readonly property string sort:							"\ue164"
    readonly property string sort_by_alpha:							"\ue053"
    readonly property string spa:							"\ueb4c"
    readonly property string space_bar:							"\ue256"
    readonly property string speaker:							"\ue32d"
    readonly property string speaker_group:							"\ue32e"
    readonly property string speaker_notes:							"\ue8cd"
    readonly property string speaker_notes_off:							"\ue92a"
    readonly property string speaker_phone:							"\ue0d2"
    readonly property string spellcheck:							"\ue8ce"
    readonly property string star:							"\ue838"
    readonly property string star_border:							"\ue83a"
    readonly property string star_half:							"\ue839"
    readonly property string stars:							"\ue8d0"
    readonly property string stay_current_landscape:							"\ue0d3"
    readonly property string stay_current_portrait:							"\ue0d4"
    readonly property string stay_primary_landscape:							"\ue0d5"
    readonly property string stay_primary_portrait:							"\ue0d6"
    readonly property string stop:							"\ue047"
    readonly property string stop_screen_share:							"\ue0e3"
    readonly property string storage:							"\ue1db"
    readonly property string store:							"\ue8d1"
    readonly property string store_mall_directory:							"\ue563"
    readonly property string straighten:							"\ue41c"
    readonly property string streetview:							"\ue56e"
    readonly property string strikethrough_s:							"\ue257"
    readonly property string style:							"\ue41d"
    readonly property string subdirectory_arrow_left:							"\ue5d9"
    readonly property string subdirectory_arrow_right:							"\ue5da"
    readonly property string subject:							"\ue8d2"
    readonly property string subscriptions:							"\ue064"
    readonly property string subtitles:							"\ue048"
    readonly property string subway:							"\ue56f"
    readonly property string supervisor_account:							"\ue8d3"
    readonly property string surround_sound:							"\ue049"
    readonly property string swap_calls:							"\ue0d7"
    readonly property string swap_horiz:							"\ue8d4"
    readonly property string swap_vert:							"\ue8d5"
    readonly property string swap_vertical_circle:							"\ue8d6"
    readonly property string switch_camera:							"\ue41e"
    readonly property string switch_video:							"\ue41f"
    readonly property string sync:							"\ue627"
    readonly property string sync_disabled:							"\ue628"
    readonly property string sync_problem:							"\ue629"
    readonly property string system_update:							"\ue62a"
    readonly property string system_update_alt:							"\ue8d7"
    readonly property string tab:							"\ue8d8"
    readonly property string tab_unselected:							"\ue8d9"
    readonly property string tablet:							"\ue32f"
    readonly property string tablet_android:							"\ue330"
    readonly property string tablet_mac:							"\ue331"
    readonly property string tag_faces:							"\ue420"
    readonly property string tap_and_play:							"\ue62b"
    readonly property string terrain:							"\ue564"
    readonly property string text_fields:							"\ue262"
    readonly property string text_format:							"\ue165"
    readonly property string textsms:							"\ue0d8"
    readonly property string texture:							"\ue421"
    readonly property string theaters:							"\ue8da"
    readonly property string thumb_down:							"\ue8db"
    readonly property string thumb_up:							"\ue8dc"
    readonly property string thumbs_up_down:							"\ue8dd"
    readonly property string time_to_leave:							"\ue62c"
    readonly property string timelapse:							"\ue422"
    readonly property string timeline:							"\ue922"
    readonly property string timer:							"\ue425"
    readonly property string timer_10:							"\ue423"
    readonly property string timer_3:							"\ue424"
    readonly property string timer_off:							"\ue426"
    readonly property string title:							"\ue264"
    readonly property string toc:							"\ue8de"
    readonly property string today:							"\ue8df"
    readonly property string toll:							"\ue8e0"
    readonly property string tonality:							"\ue427"
    readonly property string touch_app:							"\ue913"
    readonly property string toys:							"\ue332"
    readonly property string track_changes:							"\ue8e1"
    readonly property string traffic:							"\ue565"
    readonly property string train:							"\ue570"
    readonly property string tram:							"\ue571"
    readonly property string transfer_within_a_station:							"\ue572"
    readonly property string transformation:							"\ue428"
    readonly property string translate:							"\ue8e2"
    readonly property string trending_down:							"\ue8e3"
    readonly property string trending_flat:							"\ue8e4"
    readonly property string trending_up:							"\ue8e5"
    readonly property string tune:							"\ue429"
    readonly property string turned_in:							"\ue8e6"
    readonly property string turned_in_not:							"\ue8e7"
    readonly property string tv:							"\ue333"
    readonly property string unarchive:							"\ue169"
    readonly property string undo:							"\ue166"
    readonly property string unfold_less:							"\ue5d6"
    readonly property string unfold_more:							"\ue5d7"
    readonly property string update:							"\ue923"
    readonly property string usb:							"\ue1e0"
    readonly property string verified_user:							"\ue8e8"
    readonly property string vertical_align_bottom:							"\ue258"
    readonly property string vertical_align_center:							"\ue259"
    readonly property string vertical_align_top:							"\ue25a"
    readonly property string vibration:							"\ue62d"
    readonly property string video_call:							"\ue070"
    readonly property string video_label:							"\ue071"
    readonly property string video_library:							"\ue04a"
    readonly property string videocam:							"\ue04b"
    readonly property string videocam_off:							"\ue04c"
    readonly property string videogame_asset:							"\ue338"
    readonly property string view_agenda:							"\ue8e9"
    readonly property string view_array:							"\ue8ea"
    readonly property string view_carousel:							"\ue8eb"
    readonly property string view_column:							"\ue8ec"
    readonly property string view_comfy:							"\ue42a"
    readonly property string view_compact:							"\ue42b"
    readonly property string view_day:							"\ue8ed"
    readonly property string view_headline:							"\ue8ee"
    readonly property string view_list:							"\ue8ef"
    readonly property string view_module:							"\ue8f0"
    readonly property string view_quilt:							"\ue8f1"
    readonly property string view_stream:							"\ue8f2"
    readonly property string view_week:							"\ue8f3"
    readonly property string vignette:							"\ue435"
    readonly property string visibility:							"\ue8f4"
    readonly property string visibility_off:							"\ue8f5"
    readonly property string voice_chat:							"\ue62e"
    readonly property string voicemail:							"\ue0d9"
    readonly property string volume_down:							"\ue04d"
    readonly property string volume_mute:							"\ue04e"
    readonly property string volume_off:							"\ue04f"
    readonly property string volume_up:							"\ue050"
    readonly property string vpn_key:							"\ue0da"
    readonly property string vpn_lock:							"\ue62f"
    readonly property string wallpaper:							"\ue1bc"
    readonly property string warning:							"\ue002"
    readonly property string watch:							"\ue334"
    readonly property string watch_later:							"\ue924"
    readonly property string wb_auto:							"\ue42c"
    readonly property string wb_cloudy:							"\ue42d"
    readonly property string wb_incandescent:							"\ue42e"
    readonly property string wb_iridescent:							"\ue436"
    readonly property string wb_sunny:							"\ue430"
    readonly property string wc:							"\ue63d"
    readonly property string web:							"\ue051"
    readonly property string web_asset:							"\ue069"
    readonly property string weekend:							"\ue16b"
    readonly property string whatshot:							"\ue80e"
    readonly property string widgets:							"\ue1bd"
    readonly property string wifi:							"\ue63e"
    readonly property string wifi_lock:							"\ue1e1"
    readonly property string wifi_tethering:							"\ue1e2"
    readonly property string work:							"\ue8f9"
    readonly property string wrap_text:							"\ue25b"
    readonly property string youtube_searched_for:							"\ue8fa"
    readonly property string zoom_in:							"\ue8ff"
    readonly property string zoom_out:							"\ue900"
    readonly property string zoom_out_map:							"\ue56b"


    // used to replace reflexion that is not available for Qml singleton ?!
    readonly property var properties: [
        "rotation_3d",
        "ac_unit",
        "access_alarm",
        "access_alarms",
        "access_time",
        "accessibility",
        "accessible",
        "account_balance",
        "account_balance_wallet",
        "account_box",
        "account_circle",
        "adb",
        "add",
        "add_a_photo",
        "add_alarm",
        "add_alert",
        "add_box",
        "add_circle",
        "add_circle_outline",
        "add_location",
        "add_shopping_cart",
        "add_to_photos",
        "add_to_queue",
        "adjust",
        "airline_seat_flat",
        "airline_seat_flat_angled",
        "airline_seat_individual_suite",
        "airline_seat_legroom_extra",
        "airline_seat_legroom_normal",
        "airline_seat_legroom_reduced",
        "airline_seat_recline_extra",
        "airline_seat_recline_normal",
        "airplanemode_active",
        "airplanemode_inactive",
        "airplay",
        "airport_shuttle",
        "alarm",
        "alarm_add",
        "alarm_off",
        "alarm_on",
        "album",
        "all_inclusive",
        "all_out",
        "android",
        "announcement",
        "apps",
        "archive",
        "arrow_back",
        "arrow_downward",
        "arrow_drop_down",
        "arrow_drop_down_circle",
        "arrow_drop_up",
        "arrow_forward",
        "arrow_upward",
        "art_track",
        "aspect_ratio",
        "assessment",
        "assignment",
        "assignment_ind",
        "assignment_late",
        "assignment_return",
        "assignment_returned",
        "assignment_turned_in",
        "assistant",
        "assistant_photo",
        "attach_file",
        "attach_money",
        "attachment",
        "audiotrack",
        "autorenew",
        "av_timer",
        "backspace",
        "backup",
        "battery_alert",
        "battery_charging_full",
        "battery_full",
        "battery_std",
        "battery_unknown",
        "beach_access",
        "beenhere",
        "block",
        "bluetooth",
        "bluetooth_audio",
        "bluetooth_connected",
        "bluetooth_disabled",
        "bluetooth_searching",
        "blur_circular",
        "blur_linear",
        "blur_off",
        "blur_on",
        "book",
        "bookmark",
        "bookmark_border",
        "border_all",
        "border_bottom",
        "border_clear",
        "border_color",
        "border_horizontal",
        "border_inner",
        "border_left",
        "border_outer",
        "border_right",
        "border_style",
        "border_top",
        "border_vertical",
        "branding_watermark",
        "brightness_1",
        "brightness_2",
        "brightness_3",
        "brightness_4",
        "brightness_5",
        "brightness_6",
        "brightness_7",
        "brightness_auto",
        "brightness_high",
        "brightness_low",
        "brightness_medium",
        "broken_image",
        "brush",
        "bubble_chart",
        "bug_report",
        "build",
        "burst_mode",
        "business",
        "business_center",
        "cached",
        "cake",
        "call",
        "call_end",
        "call_made",
        "call_merge",
        "call_missed",
        "call_missed_outgoing",
        "call_received",
        "call_split",
        "call_to_action",
        "camera",
        "camera_alt",
        "camera_enhance",
        "camera_front",
        "camera_rear",
        "camera_roll",
        "cancel",
        "card_giftcard",
        "card_membership",
        "card_travel",
        "casino",
        "cast",
        "cast_connected",
        "center_focus_strong",
        "center_focus_weak",
        "change_history",
        "chat",
        "chat_bubble",
        "chat_bubble_outline",
        "check",
        "check_box",
        "check_box_outline_blank",
        "check_circle",
        "chevron_left",
        "chevron_right",
        "child_care",
        "child_friendly",
        "chrome_reader_mode",
        "classe",
        "clear",
        "clear_all",
        "close",
        "closed_caption",
        "cloud",
        "cloud_circle",
        "cloud_done",
        "cloud_download",
        "cloud_off",
        "cloud_queue",
        "cloud_upload",
        "code",
        "collections",
        "collections_bookmark",
        "color_lens",
        "colorize",
        "comment",
        "compare",
        "compare_arrows",
        "computer",
        "confirmation_number",
        "contact_mail",
        "contact_phone",
        "contacts",
        "content_copy",
        "content_cut",
        "content_paste",
        "control_point",
        "control_point_duplicate",
        "copyright",
        "create",
        "create_new_folder",
        "credit_card",
        "crop",
        "crop_16_9",
        "crop_3_2",
        "crop_5_4",
        "crop_7_5",
        "crop_din",
        "crop_free",
        "crop_landscape",
        "crop_original",
        "crop_portrait",
        "crop_rotate",
        "crop_square",
        "dashboard",
        "data_usage",
        "date_range",
        "dehaze",
        "deleted",
        "delete_forever",
        "delete_sweep",
        "description",
        "desktop_mac",
        "desktop_windows",
        "details",
        "developer_board",
        "developer_mode",
        "device_hub",
        "devices",
        "devices_other",
        "dialer_sip",
        "dialpad",
        "directions",
        "directions_bike",
        "directions_boat",
        "directions_bus",
        "directions_car",
        "directions_railway",
        "directions_run",
        "directions_subway",
        "directions_transit",
        "directions_walk",
        "disc_full",
        "dns",
        "do_not_disturb",
        "do_not_disturb_alt",
        "do_not_disturb_off",
        "do_not_disturb_on",
        "dock",
        "domain",
        "done",
        "done_all",
        "donut_large",
        "donut_small",
        "drafts",
        "drag_handle",
        "drive_eta",
        "dvr",
        "edit",
        "edit_location",
        "eject",
        "email",
        "enhanced_encryption",
        "equalizer",
        "error",
        "error_outline",
        "euro_symbol",
        "ev_station",
        "event",
        "event_available",
        "event_busy",
        "event_note",
        "event_seat",
        "exit_to_app",
        "expand_less",
        "expand_more",
        "explicit",
        "explore",
        "exposure",
        "exposure_neg_1",
        "exposure_neg_2",
        "exposure_plus_1",
        "exposure_plus_2",
        "exposure_zero",
        "extension",
        "face",
        "fast_forward",
        "fast_rewind",
        "favorite",
        "favorite_border",
        "featured_play_list",
        "featured_video",
        "feedback",
        "fiber_dvr",
        "fiber_manual_record",
        "fiber_new",
        "fiber_pin",
        "fiber_smart_record",
        "file_download",
        "file_upload",
        "filter",
        "filter_1",
        "filter_2",
        "filter_3",
        "filter_4",
        "filter_5",
        "filter_6",
        "filter_7",
        "filter_8",
        "filter_9",
        "filter_9_plus",
        "filter_b_and_w",
        "filter_center_focus",
        "filter_drama",
        "filter_frames",
        "filter_hdr",
        "filter_list",
        "filter_none",
        "filter_tilt_shift",
        "filter_vintage",
        "find_in_page",
        "find_replace",
        "fingerprint",
        "first_page",
        "fitness_center",
        "flag",
        "flare",
        "flash_auto",
        "flash_off",
        "flash_on",
        "flight",
        "flight_land",
        "flight_takeoff",
        "flip",
        "flip_to_back",
        "flip_to_front",
        "folder",
        "folder_open",
        "folder_shared",
        "folder_special",
        "font_download",
        "format_align_center",
        "format_align_justify",
        "format_align_left",
        "format_align_right",
        "format_bold",
        "format_clear",
        "format_color_fill",
        "format_color_reset",
        "format_color_text",
        "format_indent_decrease",
        "format_indent_increase",
        "format_italic",
        "format_line_spacing",
        "format_list_bulleted",
        "format_list_numbered",
        "format_paint",
        "format_quote",
        "format_shapes",
        "format_size",
        "format_strikethrough",
        "format_textdirection_l_to_r",
        "format_textdirection_r_to_l",
        "format_underlined",
        "forum",
        "forward",
        "forward_10",
        "forward_30",
        "forward_5",
        "free_breakfast",
        "fullscreen",
        "fullscreen_exit",
        "functions",
        "g_translate",
        "gamepad",
        "games",
        "gavel",
        "gesture",
        "get_app",
        "gif",
        "golf_course",
        "gps_fixed",
        "gps_not_fixed",
        "gps_off",
        "grade",
        "gradient",
        "grain",
        "graphic_eq",
        "grid_off",
        "grid_on",
        "group",
        "group_add",
        "group_work",
        "hd",
        "hdr_off",
        "hdr_on",
        "hdr_strong",
        "hdr_weak",
        "headset",
        "headset_mic",
        "healing",
        "hearing",
        "help",
        "help_outline",
        "high_quality",
        "highlight",
        "highlight_off",
        "history",
        "home",
        "hot_tub",
        "hotel",
        "hourglass_empty",
        "hourglass_full",
        "http",
        "https",
        "image",
        "image_aspect_ratio",
        "import_contacts",
        "import_export",
        "important_devices",
        "inbox",
        "indeterminate_check_box",
        "info",
        "info_outline",
        "input",
        "insert_chart",
        "insert_comment",
        "insert_drive_file",
        "insert_emoticon",
        "insert_invitation",
        "insert_link",
        "insert_photo",
        "invert_colors",
        "invert_colors_off",
        "iso",
        "keyboard",
        "keyboard_arrow_down",
        "keyboard_arrow_left",
        "keyboard_arrow_right",
        "keyboard_arrow_up",
        "keyboard_backspace",
        "keyboard_capslock",
        "keyboard_hide",
        "keyboard_return",
        "keyboard_tab",
        "keyboard_voice",
        "kitchen",
        "label",
        "label_outline",
        "landscape",
        "language",
        "laptop",
        "laptop_chromebook",
        "laptop_mac",
        "laptop_windows",
        "last_page",
        "launch",
        "layers",
        "layers_clear",
        "leak_add",
        "leak_remove",
        "lens",
        "library_add",
        "library_books",
        "library_music",
        "lightbulb_outline",
        "line_style",
        "line_weight",
        "linear_scale",
        "link",
        "linked_camera",
        "list",
        "live_help",
        "live_tv",
        "local_activity",
        "local_airport",
        "local_atm",
        "local_bar",
        "local_cafe",
        "local_car_wash",
        "local_convenience_store",
        "local_dining",
        "local_drink",
        "local_florist",
        "local_gas_station",
        "local_grocery_store",
        "local_hospital",
        "local_hotel",
        "local_laundry_service",
        "local_library",
        "local_mall",
        "local_movies",
        "local_offer",
        "local_parking",
        "local_pharmacy",
        "local_phone",
        "local_pizza",
        "local_play",
        "local_post_office",
        "local_printshop",
        "local_see",
        "local_shipping",
        "local_taxi",
        "location_city",
        "location_disabled",
        "location_off",
        "location_on",
        "location_searching",
        "lock",
        "lock_open",
        "lock_outline",
        "looks",
        "looks_3",
        "looks_4",
        "looks_5",
        "looks_6",
        "looks_one",
        "looks_two",
        "loop",
        "loupe",
        "low_priority",
        "loyalty",
        "mail",
        "mail_outline",
        "map",
        "markunread",
        "markunread_mailbox",
        "memory",
        "menu",
        "merge_type",
        "message",
        "mic",
        "mic_none",
        "mic_off",
        "mms",
        "mode_comment",
        "mode_edit",
        "monetization_on",
        "money_off",
        "monochrome_photos",
        "mood",
        "mood_bad",
        "more",
        "more_horiz",
        "more_vert",
        "motorcycle",
        "mouse",
        "move_to_inbox",
        "movie",
        "movie_creation",
        "movie_filter",
        "multiline_chart",
        "music_note",
        "music_video",
        "my_location",
        "nature",
        "nature_people",
        "navigate_before",
        "navigate_next",
        "navigation",
        "near_me",
        "network_cell",
        "network_check",
        "network_locked",
        "network_wifi",
        "new_releases",
        "next_week",
        "nfc",
        "no_encryption",
        "no_sim",
        "not_interested",
        "note",
        "note_add",
        "notifications",
        "notifications_active",
        "notifications_none",
        "notifications_off",
        "notifications_paused",
        "offline_pin",
        "ondemand_video",
        "transparency",
        "open_in_browser",
        "open_in_new",
        "open_with",
        "pages",
        "pageview",
        "palette",
        "pan_tool",
        "panorama",
        "panorama_fish_eye",
        "panorama_horizontal",
        "panorama_vertical",
        "panorama_wide_angle",
        "party_mode",
        "pause",
        "pause_circle_filled",
        "pause_circle_outline",
        "payment",
        "people",
        "people_outline",
        "perm_camera_mic",
        "perm_contact_calendar",
        "perm_data_setting",
        "perm_device_information",
        "perm_identity",
        "perm_media",
        "perm_phone_msg",
        "perm_scan_wifi",
        "person",
        "person_add",
        "person_outline",
        "person_pin",
        "person_pin_circle",
        "personal_video",
        "pets",
        "phone",
        "phone_android",
        "phone_bluetooth_speaker",
        "phone_forwarded",
        "phone_in_talk",
        "phone_iphone",
        "phone_locked",
        "phone_missed",
        "phone_paused",
        "phonelink",
        "phonelink_erase",
        "phonelink_lock",
        "phonelink_off",
        "phonelink_ring",
        "phonelink_setup",
        "photo",
        "photo_album",
        "photo_camera",
        "photo_filter",
        "photo_library",
        "photo_size_select_actual",
        "photo_size_select_large",
        "photo_size_select_small",
        "picture_as_pdf",
        "picture_in_picture",
        "picture_in_picture_alt",
        "pie_chart",
        "pie_chart_outlined",
        "pin_drop",
        "place",
        "play_arrow",
        "play_circle_filled",
        "play_circle_outline",
        "play_for_work",
        "playlist_add",
        "playlist_add_check",
        "playlist_play",
        "plus_one",
        "poll",
        "polymer",
        "pool",
        "portable_wifi_off",
        "portrait",
        "power",
        "power_input",
        "power_settings_new",
        "pregnant_woman",
        "present_to_all",
        "printer",
        "priority_high",
        "publics",
        "publish",
        "query_builder",
        "question_answer",
        "queue",
        "queue_music",
        "queue_play_next",
        "radio",
        "radio_button_checked",
        "radio_button_unchecked",
        "rate_review",
        "receipt",
        "recent_actors",
        "record_voice_over",
        "redeem",
        "redo",
        "refresh",
        "remove",
        "remove_circle",
        "remove_circle_outline",
        "remove_from_queue",
        "remove_red_eye",
        "remove_shopping_cart",
        "reorder",
        "repeat",
        "repeat_one",
        "replay",
        "replay_10",
        "replay_30",
        "replay_5",
        "reply",
        "reply_all",
        "report",
        "report_problem",
        "restaurant",
        "restaurant_menu",
        "restore",
        "restore_page",
        "ring_volume",
        "room",
        "room_service",
        "rotate_90_degrees_ccw",
        "rotate_left",
        "rotate_right",
        "rounded_corner",
        "router",
        "rowing",
        "rss_feed",
        "rv_hookup",
        "satellite",
        "save",
        "scanner",
        "schedule",
        "school",
        "screen_lock_landscape",
        "screen_lock_portrait",
        "screen_lock_rotation",
        "screen_rotation",
        "screen_share",
        "sd_card",
        "sd_storage",
        "search",
        "security",
        "select_all",
        "send",
        "sentiment_dissatisfied",
        "sentiment_neutral",
        "sentiment_satisfied",
        "sentiment_very_dissatisfied",
        "sentiment_very_satisfied",
        "settings",
        "settings_applications",
        "settings_backup_restore",
        "settings_bluetooth",
        "settings_brightness",
        "settings_cell",
        "settings_ethernet",
        "settings_input_antenna",
        "settings_input_component",
        "settings_input_composite",
        "settings_input_hdmi",
        "settings_input_svideo",
        "settings_overscan",
        "settings_phone",
        "settings_power",
        "settings_remote",
        "settings_system_daydream",
        "settings_voice",
        "share",
        "shop",
        "shop_two",
        "shopping_basket",
        "shopping_cart",
        "short_text",
        "show_chart",
        "shuffle",
        "signal_cellular_4_bar",
        "signal_cellular_connected_no_internet_4_bar",
        "signal_cellular_no_sim",
        "signal_cellular_null",
        "signal_cellular_off",
        "signal_wifi_4_bar",
        "signal_wifi_4_bar_lock",
        "signal_wifi_off",
        "sim_card",
        "sim_card_alert",
        "skip_next",
        "skip_previous",
        "slideshow",
        "slow_motion_video",
        "smartphone",
        "smoke_free",
        "smoking_rooms",
        "sms",
        "sms_failed",
        "snooze",
        "sort",
        "sort_by_alpha",
        "spa",
        "space_bar",
        "speaker",
        "speaker_group",
        "speaker_notes",
        "speaker_notes_off",
        "speaker_phone",
        "spellcheck",
        "star",
        "star_border",
        "star_half",
        "stars",
        "stay_current_landscape",
        "stay_current_portrait",
        "stay_primary_landscape",
        "stay_primary_portrait",
        "stop",
        "stop_screen_share",
        "storage",
        "store",
        "store_mall_directory",
        "straighten",
        "streetview",
        "strikethrough_s",
        "style",
        "subdirectory_arrow_left",
        "subdirectory_arrow_right",
        "subject",
        "subscriptions",
        "subtitles",
        "subway",
        "supervisor_account",
        "surround_sound",
        "swap_calls",
        "swap_horiz",
        "swap_vert",
        "swap_vertical_circle",
        "switch_camera",
        "switch_video",
        "sync",
        "sync_disabled",
        "sync_problem",
        "system_update",
        "system_update_alt",
        "tab",
        "tab_unselected",
        "tablet",
        "tablet_android",
        "tablet_mac",
        "tag_faces",
        "tap_and_play",
        "terrain",
        "text_fields",
        "text_format",
        "textsms",
        "texture",
        "theaters",
        "thumb_down",
        "thumb_up",
        "thumbs_up_down",
        "time_to_leave",
        "timelapse",
        "timeline",
        "timer",
        "timer_10",
        "timer_3",
        "timer_off",
        "title",
        "toc",
        "today",
        "toll",
        "tonality",
        "touch_app",
        "toys",
        "track_changes",
        "traffic",
        "train",
        "tram",
        "transfer_within_a_station",
        "transformation",
        "translate",
        "trending_down",
        "trending_flat",
        "trending_up",
        "tune",
        "turned_in",
        "turned_in_not",
        "tv",
        "unarchive",
        "undo",
        "unfold_less",
        "unfold_more",
        "update",
        "usb",
        "verified_user",
        "vertical_align_bottom",
        "vertical_align_center",
        "vertical_align_top",
        "vibration",
        "video_call",
        "video_label",
        "video_library",
        "videocam",
        "videocam_off",
        "videogame_asset",
        "view_agenda",
        "view_array",
        "view_carousel",
        "view_column",
        "view_comfy",
        "view_compact",
        "view_day",
        "view_headline",
        "view_list",
        "view_module",
        "view_quilt",
        "view_stream",
        "view_week",
        "vignette",
        "visibility",
        "visibility_off",
        "voice_chat",
        "voicemail",
        "volume_down",
        "volume_mute",
        "volume_off",
        "volume_up",
        "vpn_key",
        "vpn_lock",
        "wallpaper",
        "warning",
        "watch",
        "watch_later",
        "wb_auto",
        "wb_cloudy",
        "wb_incandescent",
        "wb_iridescent",
        "wb_sunny",
        "wc",
        "web",
        "web_asset",
        "weekend",
        "whatshot",
        "widgets",
        "wifi",
        "wifi_lock",
        "wifi_tethering",
        "work",
        "wrap_text",
        "youtube_searched_for",
        "zoom_in",
        "zoom_out",
        "zoom_out_map"
        ]
}
