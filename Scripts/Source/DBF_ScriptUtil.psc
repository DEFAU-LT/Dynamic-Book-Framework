Scriptname DBF_ScriptUtil Hidden
{
  Proxy script declaring native functions implemented in the
  DynamicJournalFramework SKSE plugin DLL.
  This script itself doesn't need to be attached to anything.
}

; Native function to append text to the journal file via SKSE plugin
; Corresponds to Papyrus_AppendToFile in C++
Bool Function AppendToFile(String fileName, String textToAppend) Global Native

; New function to reload the INI file mappings for dynamic books
Function ReloadDynamicBookINI() global native