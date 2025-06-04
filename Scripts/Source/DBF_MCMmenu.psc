Scriptname DBF_MCMmenu extends MCM_ConfigBase
{
  MCM Helper configuration script for Dynamic Book Framework.
  Handles loading settings using inherited functions and reacting to updates.
  Provides getter functions for other scripts to access current settings.
  Based on MCM Helper documentation examples.
}

; --- Constants ---
String Property SETTING_FILEPATH = "sDBF_FilePath:Main" auto     ; ID from MCM Helper config
String Property SETTING_LOGGING = "bDBF_LoggingEnabled:Main" auto  ; ID from MCM Helper config

; --- Variables holding current settings ---
String CurrentJournalFilePath = "" 
Bool CurrentLoggingEnabled
Bool SettingsHaveBeenLoaded = false


; --- Initialization & Settings Loading ---

; OnConfigInit is called when the config menu is first initialized.
; OnGameReload is also often used, or OnPageReset. Let's use OnConfigInit.
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
    CurrentJournalFilePath = GetModSettingString(SETTING_FILEPATH) 
    CurrentLoggingEnabled = GetModSettingBool(SETTING_LOGGING) 
    ; -----------------------------------------------------------------
    
    SettingsHaveBeenLoaded = true
    Debug.Trace("[DBF_MCM] Settings Loaded: Path='" + CurrentJournalFilePath + "', Logging=" + CurrentLoggingEnabled)
EndFunction