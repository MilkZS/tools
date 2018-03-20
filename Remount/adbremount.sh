#!/bin/bash
#author=milkdz




# adb remount
adb_remount(){
  echo "start to adb remount"
  adb remount
  if [ $? -eq 0 ]
  then
    echo "adb remount success"
  else
    echo "error remount failed ."
    echo "exception is $?"
  fi

}



# adb root
adb_root(){
  echo "start to adb root"
  adb root
  if [ $? -eq 0 ]
  then
    echo "adb root success"
    adb_remount
  else
    echo "adb root failed $?"  
  fi
}


# main method
main(){
echo "test the connection to phone"
adb devices
if [ $? -eq 0 ]
  then
    
    echo "connection is ok"
    adb_root
  else
    echo "please check the usb connect to the phone"
fi
}

main









