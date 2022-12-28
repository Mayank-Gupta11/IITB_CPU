transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/DUT.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/Sign_Extension_10.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/Sign_Extension_7.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/cpu.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/alu.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/mux81.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/reg.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/reg_file.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/memory.vhdl}
vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/demux18.vhdl}

vcom -93 -work work {C:/Users/mayan/OneDrive/Mayank new/IIT B/EE224/Project/IITB_RISC/IITB_RISC/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
