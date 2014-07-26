targetcpu=armv5te
targetdir=/usr/local/bin
origdir=/opt/eldk-5.5/$targetcpu/sysroots/i686-eldk-linux/usr/bin/$targetcpu-linux-gnueabi;

if [ $EUID -ne 0 ]; then
  echo "Error: Not root user."
  exit 1
fi

cd $origdir

for i in $(ls arm-linux*) 
  do ln -s $PWD/$i $targetdir/$(echo $i | sed s/arm-linux-gnueabi/arm-linux/ )
done

