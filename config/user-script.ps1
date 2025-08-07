# Ensure the Active Directory module is available
Import-Module ActiveDirectory

# Create Organizational Unit
New-ADOrganizationalUnit -Name "Employees" -Path "DC=pixelforge,DC=local"

# Create Groups
New-ADGroup -Name "DesignTeam" -GroupScope Global -GroupCategory Security -Path "OU=Employees,DC=pixelforge,DC=local"
New-ADGroup -Name "AdminTeam" -GroupScope Global -GroupCategory Security -Path "OU=Employees,DC=pixelforge,DC=local"

# Define users and their group memberships
$users = @(
    @{Name="alice"; Group="DesignTeam"},
    @{Name="bob"; Group="DesignTeam"},
    @{Name="carla"; Group="DesignTeam"},
    @{Name="dave"; Group="AdminTeam"},
    @{Name="emma"; Group="AdminTeam"}
)

# Create users and add to groups
foreach ($user in $users) {
    $username = $user.Name
    $group = $user.Group
    $password = ConvertTo-SecureString "P@ssword123" -AsPlainText -Force

    New-ADUser -Name $username `
               -SamAccountName $username `
               -UserPrincipalName "$username@pixelforge.local" `
               -AccountPassword $password `
               -Enabled $true `
               -Path "OU=Employees,DC=pixelforge,DC=local"

    Add-ADGroupMember -Identity $group -Members $username
}

