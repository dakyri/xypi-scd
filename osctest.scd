OSCdef.freeAll;

~xy = NetAddr.new("127.0.0.1", 5505);
~sc = NetAddr.new("127.0.0.1", 57120);

(
OSCdef.new(\test, {
	|msg, time, addr, recvPort|
	'bang'.postln;
	msg.postln;
	addr.postln;
}, "/viskas/gerai", ~xy);
)

~sc.sendMsg("/viskas/gerai", 1, 2, 3)

~xy.sendMsg("/midi/non", 1, 50, 100)
~xy.sendMsg("/midi/nof", 1, 50, 100)
~xy.sendMsg("/midi/key", 1, 50, 90)
~xy.sendMsg("/midi/ctl", 1, 50, 90)
~xy.sendMsg("/midi/prg", 1, 50)
~xy.sendMsg("/midi/chn", 1, 50)
~xy.sendMsg("/midi/bnd", 1, 1000)
~xy.sendMsg("/midi/tcd", 10, 20)
~xy.sendMsg("/midi/pos", 1000)
~xy.sendMsg("/midi/sel", 10)
~xy.sendMsg("/midi/clk")
~xy.sendMsg("/midi/stt")
~xy.sendMsg("/midi/cnt")
~xy.sendMsg("/midi/stp")
~xy.sendMsg("/midi/tun")