Scriptname DBF_MCMmenu extends MCM_ConfigBase
{
  MCM Helper configuration script for Dynamic Book Framework.
  Handles loading settings using inherited functions and reacting to updates.
  Provides getter functions for other scripts to access current settings.
  Based on MCM Helper documentation examples.
}
; Config
bool ReloadBookINI
bool SettingsHaveBeenLoaded = false

; --- Initialization & Settings Loading ---
; OnConfigInit is called when the config menu is first initialized.
Event OnConfigInit()
    Debug.Trace("[DBF_MCM] OnConfigInit: Loading initial settings.")
    LoadSettings()
EndEvent

; Optional: OnPageReset ensures settings are fresh if user revisits page
Event OnPageReset(string page)
	Debug.Trace("[DBF_MCM] OnPageReset: " + page + " - Reloading settings.")
 	LoadSettings()
EndEvent

; Central function to load settings from MCM Helper storage
Function LoadSettings()
    Debug.Trace("[DBF_MCM] LoadSettings running...")
    ; --- Use DIRECT function calls inherited from MCM_ConfigBase --- 

    ; -----------------------------------------------------------------
    SettingsHaveBeenLoaded = true
    Debug.Trace("[DBF_MCM] Settings Loaded")
EndFunction