onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/clk_100mhz
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/clk_25mhz
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/rst
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/vsync
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/hsync
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/blank
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/comp_sync
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/pixel_r
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/pixel_g
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/pixel_b
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/vgaclk
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/led
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/ram_addr
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/ram_data
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/zz_in
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/zz_out
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_data
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_almost_empty
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_almost_full
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_empty
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_full
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_write
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_read
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp_data
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp_vsync
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp_hsync
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_vsync
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/fifo_hsync
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/din
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/empty
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/full
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/almost_empty
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/almost_full
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/clk
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/rst
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/addr
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/dout
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/fifo_wr_en
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/zero_zero
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/vsync
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/hsync
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/led
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/pixel_x
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/pixel_y
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/state
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/next_state
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/char_data
add wave -noupdate -format Literal -radix decimal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/char_addr
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/subAddr
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/data_in
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/px
add wave -noupdate -format Logic /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/characters/clka
add wave -noupdate -format Literal -radix decimal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/characters/addra
add wave -noupdate -format Literal /tb_VGA_TopLevelWrapper/UUT/vga_ctl/dp0/characters/douta
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {665 ps} 0}
configure wave -namecolwidth 362
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {563 ps} {741 ps}
