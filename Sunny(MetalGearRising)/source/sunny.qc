$cd	"C:\sunnymodel\source"
$modelname "EIREXE/sunnyfinal3.mdl"
$model "SANI" "sunny.smd"

$bodygroup headphones
{
studio "headphones.smd"
blank
}


$cdmaterials "EIREXE/sunnyfinal/"




// Model uses material "alotofshitimnotgoingtolist"
$attachment "eyes" "ValveBiped.Bip01_Head1" 4.50 -5.00 -0.00 rotate 0.00 -90.00 -90.00
$attachment "grenade0" "ValveBiped.Bip01_Pelvis" 7.00 1.50 1.00 rotate -0.00 0.00 -80.00
$attachment "grenade1" "ValveBiped.Bip01_Pelvis" 7.50 1.50 -3.50 rotate -0.00 0.00 -80.00
$attachment "grenade2" "ValveBiped.Bip01_Pelvis" -7.00 1.50 1.00 rotate -0.00 0.00 -80.00
$attachment "grenade3" "ValveBiped.Bip01_Pelvis" -7.50 1.50 -3.50 rotate -0.00 0.00 -80.00
$attachment "pistol" "ValveBiped.Bip01_R_Thigh" 8.00 1.00 -3.50 rotate -0.00 -0.00 -0.00
$attachment "primary" "ValveBiped.Bip01_Spine2" 0.00 -4.00 -2.00 rotate 0.00 -0.00 -0.00
$attachment "defusekit" "ValveBiped.Bip01_Pelvis" 0.00 1.50 -8.00 rotate -90.00 -90.00 0.00
$attachment "lfoot" "ValveBiped.Bip01_L_Foot" 0.00 5.00 0.00 rotate -0.00 0.00 -0.00
$attachment "rfoot" "ValveBiped.Bip01_R_Foot" 0.00 5.00 0.00 rotate -0.00 0.00 -0.00
$attachment "muzzle_flash" "ValveBiped.Bip01_L_Hand" 0.00 -0.00 -0.00 rotate -0.00 -0.00 -0.00
$attachment "pickupspot" "ValveBiped.Bip01_R_Foot" 10.00 -3.13 -3.60 rotate 90.00 135.00 0.00
$attachment "forward" "ValveBiped.forward" -0.00 -0.00 -0.00 rotate 0.00 0.00 0.00
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" -0.00 0.00 0.00 rotate -90.00 -90.00 0.00
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" -0.00 0.00 -0.00 rotate -90.00 -90.00 0.00
$attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" -0.00 -0.00 -0.00 rotate -90.00 -90.00 0.00
$attachment "bone_attachment_right" "ValveBiped.Bip01_R_Hand" -0.00 -0.00 -0.00 rotate 0.00 -0.00 -0.00
$attachment "bone_attachment_left" "ValveBiped.Bip01_L_Hand" 0.00 -0.00 -0.00 rotate -0.00 -0.00 -0.00
$includemodel "f_anm.mdl"
$includemodel "f_shd.mdl"
$includemodel "f_ss.mdl"
$includemodel "f_gst.mdl"
$includemodel "f_pst.mdl"
$surfaceprop "flesh"
$eyeposition -0.000 -0.000 70.000
$illumposition -6.924 4.331 43.009

$sequence ragdoll "ragdoll" ACT_DIERAGDOLL 1 fps 30.00
$ikchain rhand ValveBiped.Bip01_R_Hand knee  0.707 0.707 0.000
$ikchain lhand ValveBiped.Bip01_L_Hand knee  0.707 0.707 0.000
$ikchain rfoot ValveBiped.Bip01_R_Foot knee  0.707 -0.707 0.000
$ikchain lfoot ValveBiped.Bip01_L_Foot knee  0.707 -0.707 0.000
$collisionjoints "phymodel.smd" {

	$mass 90.0
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
	$animatedfriction 1.000 400.000 0.500 0.000 0.300
}
