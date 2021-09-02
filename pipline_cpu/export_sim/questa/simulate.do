onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib testbench_opt

do {wave.do}

view wave
view structure
view signals

do {testbench.udo}

run -all

quit -force
