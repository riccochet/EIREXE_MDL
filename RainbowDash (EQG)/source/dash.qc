$modelname "EIREXE/humandash.mdl"
$model "human_dash" "dash.smd" {
	flexfile "jaw_open.vta"
	flex "jaw_open" frame 1
	flexcontroller "phoneme" "jaw_open" "range" 0 1
	%jaw_open = jaw_open
	
	flexfile "lips_open.vta"
	flex "lips_open" frame 1
	flexcontroller "phoneme" "lips_open" "range" 0 1
	%lips_open = lips_open
	
	flexfile "jaw_o.vta"
	flex "jaw_o" frame 1
	flexcontroller "phoneme" "jaw_o" "range" 0 1
	%jaw_o = jaw_o
	
	flexfile "jaw_a.vta"
	flex "jaw_a" frame 1
	flexcontroller "phoneme" "jaw_a" "range" 0 1
	%jaw_a = jaw_a
	
	flexfile "ass_smaller.vta"
	flex "ass_smaller" frame 1
	flexcontroller "phoneme" "ass_smaller" "range" 0 1
	%ass_smaller = ass_smaller
	
	flexfile "ass_bigger.vta"
	flex "ass_bigger" frame 1
	flexcontroller "phoneme" "ass_bigger" "range" 0 1
	%ass_bigger = ass_bigger
	
	flexfile "mouth_full.vta"
	flex "mouth_full" frame 1
	flexcontroller "phoneme" "mouth_full" "range" 0 1
	%mouth_full = mouth_full
	
	flexfile "eyelids_close.vta"
	flex "eyelids_close" frame 1
	flexcontroller "phoneme" "eyelids_close" "range" 0 1
	%eyelids_close = eyelids_close
	
	flexfile "happy_upper.vta"
	flex "happy_upper" frame 1
	flexcontroller "phoneme" "happy_upper" "range" 0 1
	%happy_upper = happy_upper
	
	flexfile "eyes_open.vta"
	flex "eyes_open" frame 1
	flexcontroller "phoneme" "eyes_open" "range" 0 1
	%eyes_open = eyes_open
	
	flexfile "r_happy_eyelidclose.vta"
	flex "r_happy_eyelidclose" frame 1
	flexcontroller "phoneme" "r_happy_eyelidclose" "range" 0 1
	%r_happy_eyelidclose = r_happy_eyelidclose
	
	flexfile "l_happy_eyelidclose.vta"
	flex "l_happy_eyelidclose" frame 1
	flexcontroller "phoneme" "l_happy_eyelidclose" "range" 0 1
	%l_happy_eyelidclose = l_happy_eyelidclose
	
	flexfile "r_eyelidclose.vta"
	flex "r_eyelidclose" frame 1
	flexcontroller "phoneme" "r_eyelidclose" "range" 0 1
	%r_eyelidclose = r_eyelidclose
	
	flexfile "l_eyelidclose.vta"
	flex "l_eyelidclose" frame 1
	flexcontroller "phoneme" "l_eyelidclose" "range" 0 1
	%l_eyelidclose = l_eyelidclose
	
	flexfile "eyebrow_rotate.vta"
	flex "eyebrow_rotate" frame 1
	flexcontroller "phoneme" "eyebrow_rotate" "range" 0 1
	%eyebrow_rotate = eyebrow_rotate
	
	flexfile "eyebrow_halfdown.vta"
	flex "eyebrow_halfdown" frame 1
	flexcontroller "phoneme" "eyebrow_halfdown" "range" 0 1
	%eyebrow_halfdown = eyebrow_halfdown
	
	flexfile "eyebrow_raise.vta"
	flex "eyebrow_raise" frame 1
	flexcontroller "phoneme" "eyebrow_raise" "range" 0 1
	%eyebrow_raise = eyebrow_raise
	
	flexfile "eyebrow_up.vta"
	flex "eyebrow_up" frame 1
	flexcontroller "phoneme" "eyebrow_up" "range" 0 1
	%eyebrow_up = eyebrow_up
	
	flexfile "eyebrow_lower.vta"
	flex "eyebrow_lower" frame 1
	flexcontroller "phoneme" "eyebrow_lower" "range" 0 1
	%eyebrow_lower = eyebrow_lower
	}
$scale 0.7
$cdmaterials "EIREXE\hdash\"
$hboxset "default"
//hbox
// Model uses material "ui0206009.vmt"
// Model uses material "ui0206001.vmt"
// Model uses material "ui0206002.vmt"
// Model uses material "ui0206004.vmt"
// Model uses material "ui0206007.vmt"
// Model uses material "ui0206012.vmt"
// Model uses material "ui0206013.vmt"
// Model uses material "ui0206014.vmt"
// Model uses material "ui0206018.vmt"
// Model uses material "ui0206015.vmt"
// Model uses material "ui0206017.vmt"
// Model uses material "ui0206020.vmt"
// Model uses material "ui0206022.vmt"
$surfaceprop "flesh"
$eyeposition 0.000 -0.000 70.000
$illumposition -4.331 -6.924 43.009
$sequence ragdoll "dash" ACT_DIERAGDOLL 1 fps 30.00
//phymodel
