#################################
#
# Remove Windows10 Bloatware
#
#################################


$BloatAll = @(

    "*bingsports*"
    "*CommsPhone*"
    "*ConnectivityStore*"
    "*Microsoft.Appconnector*"
    "*Microsoft.BingNews*"
    "*Microsoft.BingWeather*"
    "*Microsoft.GetHelp*"
    "*Microsoft.Getstarted*"
    "*Microsoft.Messaging*"
    "*Microsoft.Microsoft3DViewer*"
    "*Microsoft.MicrosoftOfficeHub*"
    "*Microsoft.MicrosoftSolitaireCollection*"
    "*Microsoft.MicrosoftStickyNotes*"
    "*Microsoft.MixedReality.Portal*"
    "*Microsoft.Office.OneNote*"
    "*Microsoft.OneConnect*"
    "*Microsoft.People*"
    "*Microsoft.SkypeApp*"
    "*Microsoft.Wallet*"
    "*Microsoft.WindowsCamera*"
    "*Microsoft.WindowsFeedbackHub*"
    "*Microsoft.WindowsMaps*"
    "*Microsoft.WindowsSoundRecorder*"
    "*Microsoft.Xbox.TCUI*"
    "*Microsoft.XboxApp*"
    "*Microsoft.XboxGameOverlay*"
    "*Microsoft.XboxGamingOverlay*"
    "*Microsoft.XboxIdentityProvider*"
    "*Microsoft.XboxSpeechToTextOverlay*"
    "*Microsoft.YourPhone*"
    "*Microsoft.ZuneMusic*"
    "*Microsoft.ZuneVideo*"
    "*windowsphone*"
    "*XboxOneSmartGlass*"
)



foreach ($bloat in $BloatAll) {

    Get-AppxPackage -AllUsers | Where-Object name -like $bloat | Remove-AppxPackage -AllUsers
    Get-AppxProvisionedPackage -Online | Where-Object displayname -like $bloat | Remove-AppxProvisionedPackage -AllUsers -Online

}
