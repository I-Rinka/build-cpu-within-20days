onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pip_cpu_opt

do {wave.do}

view wave
view structure
view signals

do {pip_cpu.udo}

run -all

quit -force
