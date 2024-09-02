xephyr :2 -ac -screen 960x600x8 &
PID=$!
sleep 5
pushd linux || exit
./linuxxdoom -disp :2 -3 $@
popd
kill $PID 2> /dev/null