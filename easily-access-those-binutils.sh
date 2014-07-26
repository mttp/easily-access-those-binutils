targetcpu=armv5te
targetdir=/usr/local/bin
origdir=/opt/eldk-5.5/$targetcpu/sysroots/i686-eldk-linux/usr/bin/$targetcpu-linux-gnueabi;

cd $origdir

for i in $(ls arm-linux*); do ln -s $PWD/$i $targetdir/$(echo $i | sed s/arm-linux-gnueabi/arm-linux/ ); done
