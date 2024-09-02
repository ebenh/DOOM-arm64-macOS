xephyr :2 -ac -screen 320x200x8 &
PID=$!
sleep 2
pushd linux || exit
./linuxxdoom -disp :2
popd
kill $PID 2> /dev/null