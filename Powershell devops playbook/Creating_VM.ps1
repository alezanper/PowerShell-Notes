# Create a resource group
New-AzResourceGroup -Name myResourceGroup -Location EastUS

# Create Virtual machine
New-AzVm `
    -ResourceGroupName "myResourceGroup" `
    -Name "myVM" `
    -Location "East US" `
    -VirtualNetworkName "myVnet" `
    -SubnetName "mySubnet" `
    -SecurityGroupName "myNetworkSecurityGroup" `
    -PublicIpAddressName "myPublicIpAddress" `
    -OpenPorts 80,3389

# Connect to virtual machine
Get-AzPublicIpAddress -ResourceGroupName "myResourceGroup" | Select "IpAddress"

# Create a remote connection
mstsc /v:x.x.x.x

# Install web server
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Clean Up Resources
Remove-AzResourceGroup -Name myResourceGroup

