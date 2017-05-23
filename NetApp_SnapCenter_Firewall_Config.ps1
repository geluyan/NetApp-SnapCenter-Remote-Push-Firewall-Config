#####################################################
# NetApp SnapCenter Firewall Config
# Created by: Andy Geluykens
# Version: 1.0
# Description:
#
# This script will insert all required Firewall rules 
# for NetApp SnapCenter remote push to work
#####################################################

#SnapCenter IP Address
$snapcenterServer = xx.xx.xx.xx

# DO NOT EDIT BELOW #
#####################

New-NetFirewallRule -DisplayName "SnapCenter (SMCore HTTP Communication Port)" -Action Allow -Direction Inbound -Enabled True -Group "NetApp SnapCenter" -LocalPort 8145 -Profile Any -Protocol TCP -RemoteAddress $snapcenterServer
New-NetFirewallRule -DisplayName "SnapCenter (NetBios)" -Action Allow -Direction Inbound -Enabled True -Group "NetApp SnapCenter" -LocalPort 137 -Profile Any -Protocol UDP -RemoteAddress $snapcenterServer
New-NetFirewallRule -DisplayName "SnapCenter (DCE/RPC)" -Action Allow -Direction Inbound -Enabled True -Group "NetApp SnapCenter" -LocalPort 135 -Profile Any -Protocol TCP -RemoteAddress $snapcenterServer
New-NetFirewallRule -DisplayName "SnapCenter (SMB-In)" -Action Allow -Direction Inbound -Enabled True -Group "NetApp SnapCenter" -LocalPort 445 -Profile Any -Protocol TCP -RemoteAddress $snapcenterServer
New-NetFirewallRule -DisplayName "SnapCenter (Background Intelligent Transfer Service [BITS ])" -Action Allow -Direction Inbound -Enabled True -Group "NetApp SnapCenter" -Profile Any -RemoteAddress $snapcenterServer -Service BITS
