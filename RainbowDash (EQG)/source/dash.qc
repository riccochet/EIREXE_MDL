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
