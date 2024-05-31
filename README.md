This is mostly a personal project for keeping track of my autohotkey scripts. There are some useful utility include files in here, almost exclusively made by me, Patrick Abbott. These may prove useful to others, either as direct includes or to strip for parts. 

The games folder is unlikely to be of interest to anyone else. This is mostly a matter of my wanting to keep repetitive strain injury at bay. So, I tailor things like hotkeys that automate common gameplay actions that would involve a lot of clicks over time. There are a few cases where I use autohotkey to "cheat". But, only in singleplayer games.

The everyday folder is something of a catch-all. It includes stuff like scripts that add hotkeys to surface or hide windows based on certain criteria.

Note that basics.ahk is included in almost every file. This brings useful utility functions and configuration like InputMode Send along for free. Notably, this is NOT included in metaScript.ahk because that is one of few scripts that must be kept clean and safe at all costs. This is because it controls other scripts and I have chosen to not have it abort alongside almost all other scripts based on a shared hotkey. So, if metaScript misbehaves seriously, it can prove much more disruptive than other scripts. If you intend to reuse this setup, I would recommend keeping to this principle.