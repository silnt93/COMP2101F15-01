function sysreport {
  gwmi win32_operatingsystem | fl pscomputername, name, version, osarchitecture, serialnumber, registereduser
  gwmi win32_bios
  gwmi win32_processor |ft -auto
  gwmi win32_cachememory | ft -auto deviceid, installedsize, level
  gwmi win32_physicalmemory | ft -auto banklabel, devicelocator, description, @{n="Size(MB)";e={$_.capacity/1mb -as [int]}}, speed
  gwmi win32_diskdrive|ft -auto interfacetype, caption, @{n="Size(GB)";e={$_.size/1000000000 -as [int]}}, manufacturer, serialnumber, firmwarerevision
  gwmi win32_videocontroller|ft -auto Description, @{n="Mode";e={[string]$_.currenthorizontalresolution + "x" + $_.currentverticalresolution + " @" + $_.currentbitsperpixel + "bpp"}}, driverversion
  gwmi win32_desktopmonitor |ft -auto displaytype, monitormanufacturer, name, screenwidth, screenheight
  gwmi win32_usbcontrollerdevice| foreach {[wmi]($_.dependent)}|ft -auto description, deviceid, present, status
}
