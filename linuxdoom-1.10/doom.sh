pushd linux || exit
xephyr :2 -ac -screen 320x200x8 &
sleep 2
./linuxxdoom -disp :2
popd