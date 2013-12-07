targetcpu=armv5te
targetdir=/usr/local/bin
origdir=/opt/eldk-5.4/$targetcpu/sysroots/i686-eldk-linux/usr/bin/$targetarch-linux-gnueabi;

cd $origdir

for i in $(ls arm-linux*); do ln -s $PWD/$i $targetdir/$(echo $i | sed s/arm-linux-gnueabi/arm-linux/ ); done
