Param( [String]$ATT,
       [String]$Subj,
       [String]$Body,
      )

Function Send-EMail
{
    Param(
            [Parameter(`
            Mandatory=$true)]
        [String]$To, 
            [Parameter(`
            Mandatory=$true)]
        [String]$From,
            [Parameter(`
            Mandatory=$true)]
        [String]$Password,
            [Parameter(`
            Mandatroy=$true)]
        [String]$Subject,
            [Parameter(`
            Mandatory=$true)]
        [String]$Body,
            [Parameter(`
            Mandatory=$true)]
        [String]$attachment
        )

try
{
    $Msg = New-Object System.Net.Mail.MailMessage($From, $to, $Subject, $Body)
    $srv = "smtp.gmail.com"
    if($attachment -ne $null)
    {
        try
        {
            $Attachment = $attachment -split ("\:\:");

            ForEach($val in $Attchment)
            {
                $att = New-Object System.Net.Mai.Attchment($val)
                $Msg.Attachments.Add($attch)
            }
        }
        catch
        {
            exit 2;
        }
        
        $Client = New-Object Net.Mail.SmtpClient($srv, 587)
        $Client.EnableSsl = $true
        $Client.Credentials = New-Object System.Net.NetworkCredential($From.split("@")[0], $Password);
        $Client.Send($Msg)
        Remove-Variable -Name Client
        Remove-Variable -Name Password
        exit 7;
    }
}

catch
    {
        exit 3;
    }

}

try
{
    Send-EMail
        -attachment $Att
        -To "Address of the recipient"
        -Body $Body
        -Subject $Subj
        -password "Password of email"
        -From "Address of the Sender"
}
catch
{
    exit 4;
}