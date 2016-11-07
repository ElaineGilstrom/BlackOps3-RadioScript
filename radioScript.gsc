
function initRadios(radioTrigTargetName) {//script_flag = {<=0 == unlimited triggers, >0 == trigger specified times}, script_noteworthy = sound alias
	foreach(ent in GetEntArray(radioTrigTargetName, "targetname")) {
		ent thread sinpleRadioadioThink();
	}
}

function sinpleRadioadioThink() {
	hintStr = "Press &&1 to Enable Music";
	sound = self.script_noteworthy;
	soundLen = SoundGetPlaybackTime(sound);
	reps = int(self.script_flag);
	if(reps >= 0) {
		for(;;) {
			self SetHintString(hintStr);
			self waittill("trigger");
			self SetHintString("");
			self PlaySound(sound);
			wait soundLen;
		}
	} else {
		while(reps > 0) {
			reps--;
			self SetHintString(hintStr);
			self waittill("trigger");
			self SetHintString("");
			self PlaySound(sound);
			wait soundLen;
		}
	}

	self Delete();
}