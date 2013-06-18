$cd "C:\Users\EIREXE\Documents\GitHub\EIREXE_MDL\Sunny(MetalGearRising)\chell"
$modelname "player/p2_chell.mdl"
$model "chell" "chell.smd" {
     flexfile "mdldecompiler_expressions.vta" {
     }
     eyeball righteye ValveBiped.Bip01_Head1 -1.300 -3.300 65.300 eyeball_r 1.000  4.000 chell_rev2_head 0.600
     eyeball lefteye ValveBiped.Bip01_Head1 1.300 -3.300 65.300 eyeball_l 1.000  -4.000 chell_rev2_head 0.600
     // If you uncomment the following lines the eyes will be closed
     // I'm including it anyway in case anyone wants to experiment
     // eyelid  upper_right "mdldecompiler_expressions.vta" lowerer 4 -1.000000 neutral 4 0.000000 raiser 4 1.000000 split 0.1 eyeball righteye
     // eyelid  lower_right "mdldecompiler_expressions.vta" lowerer 4 -1.000000 neutral 4 0.000000 raiser 4 1.000000  split 0.1 eyeball righteye
     // If you uncomment the following lines the eyes will be closed
     // I'm including it anyway in case anyone wants to experiment
     // eyelid  upper_left "mdldecompiler_expressions.vta" lowerer 4 -1.000000 neutral 4 0.000000 raiser 4 1.000000 split -0.1 eyeball lefteye
     // eyelid  lower_left "mdldecompiler_expressions.vta" lowerer 4 -1.000000 neutral 4 0.000000 raiser 4 1.000000  split -0.1 eyeball lefteye
     flexcontroller eyes eyes_updown "range" -45.000 45.000
     flexcontroller eyes eyes_rightleft "range" -45.000 45.000
}
$lod 9
 {
  replacemodel "chell" "lod1_chell"
}
$lod 18
 {
  replacemodel "chell" "lod2_chell"
}
$lod 32
 {
  replacemodel "chell" "lod3_chell"
}
$lod 48
 {
  replacemodel "chell" "lod4_chell"
}
$lod 64
 {
  replacemodel "chell" "lod5_chell"
}
$shadowlod
{
  replacemodel "chell" "lod6_chell"
}
$cdmaterials "models\chell\"
$hboxset "default"
$hbox 1 "ValveBiped.Bip01_Head1" -2.250  -5.000  -3.150  7.250  5.000  3.350
$hbox 4 "ValveBiped.Bip01_L_UpperArm" -0.810  -2.250  -3.050  11.190  2.750  1.200
$hbox 4 "ValveBiped.Bip01_L_Forearm" -1.250  -1.880  -2.000  11.750  1.620  1.000
$hbox 4 "ValveBiped.Bip01_L_Hand" 0.000  -1.070  -1.500  6.000  0.680  3.000
$hbox 5 "ValveBiped.Bip01_R_UpperArm" -1.500  -2.250  -1.250  11.500  2.750  2.750
$hbox 5 "ValveBiped.Bip01_R_Forearm" -0.820  -1.900  -1.150  11.180  1.600  1.850
$hbox 5 "ValveBiped.Bip01_R_Hand" -0.500  -1.130  -3.250  5.500  0.630  1.750
$hbox 6 "ValveBiped.Bip01_L_Thigh" 0.500  -3.500  -3.250  17.500  4.500  3.250
$hbox 6 "ValveBiped.Bip01_L_Calf" 0.740  -2.350  -2.150  17.740  3.650  2.350
$hbox 6 "ValveBiped.Bip01_L_Foot" -2.000  -1.800  -1.450  6.000  3.200  2.050
$hbox 6 "ValveBiped.Bip01_L_Toe0" -0.170  -1.500  -1.300  2.570  0.300  1.700
$hbox 7 "ValveBiped.Bip01_R_Thigh" 0.500  -3.500  -3.000  17.500  4.500  3.000
$hbox 7 "ValveBiped.Bip01_R_Calf" 0.740  -2.350  -2.350  17.740  3.650  2.150
$hbox 7 "ValveBiped.Bip01_R_Foot" -2.000  -1.750  -2.150  6.000  3.250  1.350
$hbox 7 "ValveBiped.Bip01_R_Toe0" 0.000  -1.380  -1.630  2.740  0.380  1.630
$hbox 3 "ValveBiped.Bip01_Pelvis" -5.250  -3.880  -6.250  5.750  4.120  3.750
$hbox 3 "ValveBiped.Bip01_Spine1" -4.500  -2.000  -4.980  3.500  6.000  4.970
$hbox 2 "ValveBiped.Bip01_Spine2" -0.500  -2.500  -6.000  10.500  7.500  6.000
// Model uses material "chell_rev2_head.vmt"
// Model uses material "gambler_eyeball_l.vmt"
// Model uses material "gambler_eyeball_r.vmt"
// Model uses material "chell_rev2_torso.vmt"
// Model uses material "chell_rev2_legs.vmt"
// Model uses material "chell_hair.vmt"
$attachment "forward" "ValveBiped.forward" 0.00 0.00 0.00 rotate 0.00 0.00 -0.00
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" -0.00 0.00 -0.00 rotate -90.00 -90.00 0.00
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0.00 0.00 0.00 rotate -90.00 -90.00 0.00
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0.00 0.00 0.00 rotate -90.00 -90.00 0.00
$attachment "eyes" "ValveBiped.Bip01_Head1" 2.90 -3.70 0.09 rotate 0.00 -80.10 -90.00
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.20 -5.40 0.00 rotate 0.00 -80.00 -90.00
$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 0.00 rotate -0.00 90.00 90.00
$includemodel "f_anm.mdl"
$surfaceprop "flesh"
$eyeposition -0.000 0.000 65.000
$illumposition -0.010 -0.442 34.892
$sequence ref "ref" fps 30.00
$sequence ragdoll "ragdoll" ACT_DIERAGDOLL 1 fps 30.00
$ikchain rhand ValveBiped.Bip01_R_Hand knee  0.707 0.707 0.000
$ikchain lhand ValveBiped.Bip01_L_Hand knee  0.707 0.707 0.000
$ikchain rfoot ValveBiped.Bip01_R_Foot knee  0.707 -0.707 0.000
$ikchain lfoot ValveBiped.Bip01_L_Foot knee  0.707 -0.707 0.000
$collisionjoints "phymodel.smd" {

	$mass 70.0
	$inertia 10.00
	$damping 0.01
	$rotdamping 1.50
	$rootbone "valvebiped.bip01_pelvis"
	$jointmerge "ValveBiped.Bip01_Pelvis" "ValveBiped.Bip01_Spine1"

	$jointconstrain "valvebiped.bip01_spine2" x limit -48.00 48.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" z limit -25.00 50.00 0.00

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -39.00 39.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -79.00 95.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -93.00 23.00 0.00

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -95.00 84.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -86.00 26.00 0.00

	$jointconstrain "valvebiped.bip01_l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -149.00 4.00 0.00

	$jointconstrain "valvebiped.bip01_l_hand" x limit -37.00 37.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -57.00 59.00 0.00

	$jointconstrain "valvebiped.bip01_r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -149.00 4.00 0.00

	$jointconstrain "valvebiped.bip01_r_hand" x limit -60.00 60.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -57.00 70.00 0.00

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -8.00 75.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -97.00 32.00 0.00

	$jointconstrain "valvebiped.bip01_r_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit -12.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_head1" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -13.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -12.00 12.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -73.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -93.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit -8.00 126.00 0.00

	$jointconstrain "valvebiped.bip01_l_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -19.00 19.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -15.00 35.00 0.00

	$jointconstrain "valvebiped.bip01_r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -25.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -15.00 35.00 0.00
	$animatedfriction 1.000 400.000 0.500 0.300 0.000
}
