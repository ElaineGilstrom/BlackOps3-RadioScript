# BlackOps3-RadioScript
this is a .GSC script for call of duty black ops 3 that makes it easy to add radios or things like radios to your map. 

Installation:
-1. Copy the code into your mapname.gsc or into seperate gsc
-2. If you copied the code into your mapname.gsc call initRadios with the parameter being the targetname of your radios, if you copied it into its own gsc, include it using a using statement, add it to the zone parsetree and call it as filename::initRadios("radio targetname");
-3. In radiant set all the triggers for your radios to the targetname you set when calling the initRadios function
-4. In radiant add the kvp "script_noteworthy" and set it to the alias of the sound you wish to use
-5. In radiant add the kvp "script_flag" set the value to 0 if you want it to have unlimited activations, or set it to the number of activations you wish for it to have (ie "1" will make it be able to activate 1 time, "5" will make it be able to be activated 5 times. This means you will be able to press and hold [use] on it and have it play as many times as you set it to be able to, not that it will repeat itself that many times when you activate it)
-6. Add the sound files to your csv file
-7. Add #precache("sound", "alias for your sound); for every sound file you use in your main
-8. Compile and test
