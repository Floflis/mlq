#!/bin/sh

echo "Installing mlq..."

sudo cp -f mlq /usr/bin/mlq

installfail(){
   echo "Installation has failed."
   exit 1
}

if [ -f /usr/bin/mlq ];then
   echo "- Turning mlq into an executable..."
   sudo chmod +x /usr/bin/mlq
   if mlq babyisalive; then echo "Done! Running 'mlq' command as example to use it:" && (mlq &);exit 0; else installfail; fi
   else
      installfail
fi
