Add-Type -AssemblyName PresentationFramework

$options = @("Rock","Paper","Scissors")
$computer = Get-Random -InputObject $options

$user = [System.Windows.MessageBox]::Show("Choose Yes = Rock, No = Paper, Cancel = Scissors","Rock Paper Scissors","YesNoCancel")

switch ($user) {
    "Yes" {$player="Rock"}
    "No" {$player="Paper"}
    "Cancel" {$player="Scissors"}
}

$result = ""

if ($player -eq $computer) {$result="It's a Draw!"}
elseif (
($player -eq "Rock" -and $computer -eq "Scissors") -or
($player -eq "Paper" -and $computer -eq "Rock") -or
($player -eq "Scissors" -and $computer -eq "Paper")
) {$result="You Win!"}
else {$result="Computer Wins!"}

[System.Windows.MessageBox]::Show("You: $player `nComputer: $computer `n$result","Result")