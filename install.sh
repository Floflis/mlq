#!/bin/sh

echo "Installing mlq..."

sudo cp -f mlq /usr/bin/mlq

sudo mkdir /usr/lib/mlq
sudo cp -f mlq-parser.sh /usr/lib/mlq/mlq-parser.sh
sudo cp -f mlq-parser_worker.sh /usr/lib/mlq/mlq-parser_worker.sh

installfail(){
   echo "Installation has failed."
   exit 1
}

if [ -f /usr/bin/mlq ];then
   echo "- Turning mlq into an executable..."
   sudo chmod +x /usr/bin/mlq
   if mlq babyisalive; then echo "Done! Running \"mlq -r '#first' sample.html\" command as example to use it:" && (mlq -r '#first' sample.html &);exit 0; else installfail; fi
   else
      installfail
fi
