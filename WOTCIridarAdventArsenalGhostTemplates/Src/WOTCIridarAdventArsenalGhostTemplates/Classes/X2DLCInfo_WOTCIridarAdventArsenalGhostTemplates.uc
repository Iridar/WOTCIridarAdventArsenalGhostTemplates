class X2DLCInfo_WOTCIridarAdventArsenalGhostTemplates extends X2DownloadableContentInfo;

var private SkeletalMeshSocket AdventRocketLauncherSocket;

//static event OnPostTemplatesCreated()
//{
//	local X2AbilityTemplateManager	AbilityMgr;
//	local X2AbilityTemplate			Template;
//
//	// ADVENT Rocket Launcher
//	Template = AbilityMgr.FindAbilityTemplate('RocketLauncher');
//	Template.CinescriptCameraType = "Grenadier_GrenadeLauncher";
//}

static function string DLCAppendSockets(XComUnitPawn Pawn)
{
	local array<SkeletalMeshSocket> NewSockets;

	NewSockets.AddItem(default.AdventRocketLauncherSocket);

	Pawn.Mesh.AppendSockets(NewSockets, true);

	return "";
}

defaultproperties
{
	Begin Object Class=SkeletalMeshSocket Name=DefaultAdventRocketLauncherSocket
	   SocketName="IRI_AdvRocketLauncher"
	   BoneName="GrenadeLauncherSling"
	   RelativeLocation=(X=29.992365,Y=9.519079,Z=-7.834730)
	   RelativeRotation=(Pitch=-5461,Yaw=34588,Roll=5461)
	End Object
	AdventRocketLauncherSocket = DefaultAdventRocketLauncherSocket;
}
