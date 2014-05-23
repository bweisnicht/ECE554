################################################################################
#Description:
#Author:
#Date:
#Important:
#      1. Do not modify $27 - interrupt register data.
#         This is used to store the interrupt status.
#   REGISTERS USED FOR TESTING
#    - CAN'T USE: 1-15, 17-21, 23, 26, 27 
#
#
#VGA SETUP:
#
#
#  0x06308: button
#
#
#
# 
################################################################################
###//== START OF PROGRAM ==================================================//###
################################################################################
###//== START OF MAIN INTERRUPTS ==========================================//###
################################################################################
#Description:
#      Jump to specific interrupt
#      Interrupts: spart1, spart2, buttons, filter, timer, flash
#
#Registers used:
#      $23: temporary register
#      $26: interrupt register address
#      $27: interrupt register data
#
#      TESTING:
#      $24: spart address
#      $25: 0xaaaaaa, 0xbbbbbb
################################################################################
.Jinterrupts:                     #//START OF INTERRUPT HANDLER
        lbi  $26,      0x006      #
        slbi $26,      0x824      # r26 = interrupt register address
        ld   $27, $26, 0          # r27 = interrupt register data
        addi $23, $27, 0          # r23 = temporary register with int_reg_data


        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        lbi  $24,      0x006  #//TESTING PHASE: REMOVE LATER:
        slbi $24,      0x820  #//TESTING PHASE: REMOVE LATER: $24 = SPART ADDRESS = 0x006820
        lbi  $25,      0xbbb  #//TESTING PHASE: REMOVE LATER:
        slbi $25,      0xbbb  #//TESTING PHASE: REMOVE LATER: $25: 0xbbbbbb = start of interrupts
        st   $25, $24, 0      #//TESTING PHASE: REMOVE LATER: print: start of interrupts
        st   $27, $24, 0      #//TESTING PHASE: REMOVE LATER: print: interrupt status
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER


        andi $23, $23, 1          #
        bnez $23, .Jspart1        # spart interrupt 1 occured
.JintSpart2:                      #//START OF SPART2 CHECK
        rori $23, $27, 1          # r23 = interrupt register rotated 1
        andi $23, $23, 1          #
        bnez $23, .Jspart2        # spart interrupt 2 occured
.JintButton:                      #//START OF BUTTON CHECK
        rori $23, $27, 2          # r23 = interrupt register rotated 2
        andi $23, $23, 1          #
        bnez $23, .Jbutton        # FPGA buttons interrupt occured 
.JintFilter:                      #//START OF FILTER CHECK
        rori $23, $27, 3          # r23 = interrupt register rotated 3
        andi $23, $23, 1          #
        bnez $23, .Jfilter        # filter interrupt occured
.JintTimer:                       #//START OF TIMER CHECK
        rori $23, $27, 4          # r23 = interrupt register rotated 4
        andi $23, $23, 1          #
        bnez $23, .Jtimer         # timer interrupt occured 
.JintFlash:                       #//START OF FLASH CHECK
        rori $23, $27, 5          # r23 = interrupt register rotated 5
        andi $23, $23, 1          #
        bnez $23, .Jflash         # compact flash interrupt occured 
.Jinterruptend:                   #//END OF INTERRUPT HANDLER


        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        lbi  $24,      0x006  #//TESTING PHASE: REMOVE LATER:
        slbi $24,      0x820  #//TESTING PHASE: REMOVE LATER: $24 = SPART ADDRESS
        lbi  $25,      0xaaa  #//TESTING PHASE: REMOVE LATER:
        slbi $25,      0xaaa  #//TESTING PHASE: REMOVE LATER: $25 = 0xaaaaaa
        st   $25, $24, 0      #//TESTING PHASE: REMOVE LATER: print: reti
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER


        reti                      # return from interrupt
################################################################################
###//== END OF MAIN INTERRUPTS ============================================//###
###//== START OF SPART 1 INTERRUPT ========================================//###
################################################################################
#Description:
#      Handle spart1 interrupt, then return to main interrupt handler.
#      Spart1 interrupt: Data has been received.
#      Handled: Do nothing.
#
#Registers used:
#      $27: interrupt register data
################################################################################
.Jspart1:                         #//START OF SPART 1 INTERRUPT
        andi $27, $27, 0x1fe      # reset interrupt register
        j    .JintSpart2          # return from spart 1 interrupt             
################################################################################
###//== END OF SPART 1 INTERRUPT ==========================================//###
###//== START OF SPART 2 INTERRUPT ========================================//###
################################################################################
#Description:
#      Handle spart2 interrupt, then return to main interrupt handler.
#      Spart2 interrupt: Transmit buffer is ready
#      Handled: Do nothing.
#
#Registers used:
#      $27: interrupt register data
################################################################################
.Jspart2:                         #//START OF SPART 2 INTERRUPT
         andi $27, $27, 0x1fd     # reset interrupt register
         j    .JintButton         # return from spart 2 interrupt
################################################################################
###//== END OF SPART 2 INTERRUPT ==========================================//###
###//== START OF FPGA Buttons INTERRUPT ===================================//###
################################################################################
#Description: 
#      Handle FPGA button interrupt; return to main interrupt handler.
#      Button interrupt: Button status has changed
#      Handled: ????????????????????????//TODO:
#
#Volume Information:
#      Memory Setup: [xxxx xxxx 000L LLLL 000R RRRR]
#      LLLLL or RRRRR settings: minVolume=[11111]; maxVolume=[00000]
#      Possible Volume Settings:
#         11111: 000% - minimum volume
#         01111: 052% - stage 1
#         00111: 077% - stage 2
#         00011: 090% - stage 3
#         00001: 097% - stage 4
#         00000: 100% - maximum volume
#
#Equalizer Level Information:
#      1. There are 16 different equalizer levels.
#      2. Levels are changed by adding or subtracting 1
#      3. The levels are stored in banddata as:
#         0x000000 or 0x000001 or 0x000002 or ... or 0x00000F
#
#Registers used:
#      $27: interrupt register data
#      $1  = fpgaaddr
#      $2  = fpgadata
#      $3  = vgaaddr
#      $4  = buttons
#      $5  = switches
#      $6  = temporary register
#      $7  = filteraddr
#      $8  = band
#      $9  = banddata
#      $10 = flashaddr
#      $11 = volumeaddr
#      $12 = volumedata
#      $13 = modeaddr
#      $14 = modestat
#      $15 = codecaddr
#      $16 = pauseaddr
#      $17 = codecpauseaddr
#      $24:
#      $25:
################################################################################
.Jbutton:                         #//START OF FPGA BUTTON INTERRUPT


        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
       # lbi  $24,      0x006  #//TESTING PHASE: REMOVE LATER:
       # slbi $24,      0x820  #//TESTING PHASE: REMOVE LATER: $24 = SPART ADDRESS
       # lbi  $25,      0x777  #//TESTING PHASE: REMOVE LATER:
       # slbi $25,      0x777  #//TESTING PHASE: REMOVE LATER: $25 = 0xaaaaaa
       # st   $25, $24, 0      #//TESTING PHASE: REMOVE LATER: print: reti
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATE

        lbi  $1,       0x006      #
        slbi $1,       0x81c      # fpgaaddr = 0x00681C
        ld   $2,  $1,  0          # fpgadata <= [fpgaaddr]
        lbi  $15,      0x006      #
        slbi $15,      0x808      # codecaddr = 0x006808
        lbi  $11,      0x003      #
        slbi $11,      0xffe      # volumeaddr = 0x003FFE
        lbi  $3,       0x006      #
        slbi $3,       0x54e      # vgaaddr = 0x00654e
        lbi  $13,      0x400      # modeaddr = 0x0400
        ld   $14, $13, 0          # modestat <= [modeaddr]
        andi $4,  $2,  0x01f      # initialize buttons
        srai $5,  $2,  5          #
        andi $5,  $5,  0x007      # initialize switches
        lbi  $16,      0x003      #
        slbi $16,      0xfff      # pauseaddr = 0x003FFF
        lbi  $17,      0x006      #
        slbi $17,      0x809      # codecpauseaddr = 0x006809
        beqz $14, .Jbuttonuser    # if modestat not set; branch to user mode
.Jbuttonifequalizer:              #//EQUALIZER MODE
        lbi  $7,       0x005      #
        slbi $7,       0x000      # filteraddr = 0x005000
        srai $8,  $2,  5          #
        andi $8,  $8,  0x007      # initialize ban
        add  $6,  $7,  $8         #
        ld   $9,  $6,  0          # banddata <= [band + filteraddr]
        andi $9,  $9,  0x00f  #//ADDED RECENTLY
        andi $6,  $4,  0x004      #
        beqz $6,  .Jbuttondecband # if button[2] not pressed; branch to decBand
.Jbuttonincband:                  #//INCREASE BAND LEVEL
        addi $6,  $9,  0x1f1      # 
        beqz $6,  .Jbuttonend     # if banddata = maxlevel(15); branch to end
        addi $9,  $9,  1          # increment banddata
        add  $6,  $8,  $7         #
        st   $9,  $6,  0          # [band + filteraddr] <= banddata
        j    .Jbuttonsprint       #


#        addi $9,  $9,  15   #RECENTLY ADDED FOR DISPLAY PURPOSES
#        add  $3,  $3,  $8         # vgaaddr = vgaaddr + band
#        st   $9,  $3,  0          # [vgaaddr] <= banddata
#        j    .Jbuttonend          # end of equalizer mode
.Jbuttondecband:                  #//DECREASE BAND LEVEL
        andi $6,  $4,  0x008      #
        beqz $6,  .Jbuttonchange1 # if button[3] not pressed; branch to change1
        beqz $9,  .Jbuttonend     # if banddata = minlevel(0); branch to end
        addi $9,  $9,  0x1ff      # decrement banddata
        add  $6,  $8,  $7         #
        st   $9,  $6,  0          # [filteraddr + band] <= banddata



.Jbuttonsprint:                   #
        addi $9,  $9,  0x1f6      # banddata = banddata - 10
        bltz $9,  .Jbuttonlessz   #
        addi $9,  $9,  0x20       #
        j    .Jbuttonbprint       #
.Jbuttonlessz:                    #
        addi $9,  $9,  10         #
        addi $9,  $9,  15   #RECENTLY ADDED FOR DISPLAY PURPOSES 
.Jbuttonbprint:                   #
        add  $3,  $3,  $8         # vgaaddr = vgaaddr + band
        st   $9,  $3,  0          # [vgaaddr] <= banddata
        j    .Jbuttonend          # end of equalizer mode



.Jbuttonchange1:                  #//CHANGE TO USER MODE
        andi $6,  $4,  0x001      #
        beqz $6,  .Jbuttonprev    # if button[0] not pressed; branch to prev
        andi $14, $14, 0          # modestat = 0
        st   $14, $13, 0          # [modeaddr] <= modestat
        j    .Jbuttonend          # end of equalizer mode
.Jbuttonprev:                     #//CHANGE TO PREVIOUS SONG
        andi $6,  $4,  0x002      #
        beqz $6,  .Jbuttonpause   # if button[1] not pressed; branch to end
        lbi  $10,      0x005      #
        slbi $10,      0x008      # flashaddr = 0x05008
        lbi  $6,       1          #
        st   $6,  $10, 0          # [flashaddr] <= 1
        j    .Jbuttonend              #


.Jbuttonuser:                     #//USER MODE
        andi $6,  $4,  0x001      #
        beqz $6,  .Jbuttonnxtsong # if button[0] not pressed; branch to nextSong
.Jbuttonmodechange2:              #//CHANGE TO EQUALIZE MODE
        lbi  $14,      1          # modestat = 1
        st   $14, $13, 0          # [modeaddr] <= modestat
        j    .Jbuttonend          # end of user mode
.Jbuttonnxtsong:                  #//CHANGE SONG TO NEXT SONG
        andi $6,  $4,  0x002      #
        beqz $6,  .Jbuttonincvol  # if button[1] not pressed; branch to incVol
        lbi  $10,      0x005      #
        slbi $10,      0x008      # flashaddr = 0x005008
        lbi  $6,       1          # 
        st   $6,  $10, 0          # [flashaddr] <= 1
        j    .Jbuttonend              # end of user mode
.Jbuttonincvol:                   #//INCREASE VOLUME
        andi $6,  $4,  0x004      #
        beqz $6,  .Jbuttondecvol  # if button[2] not pressed; branch to decVol
        ld   $12, $11, 0          # volumedata <= [volumeaddr]
        andi $6,  $12, 0x01f      # tmp = volumeData[4:0] = RRRRR
        beqz $6,  .Jbuttonend     # if tmp = maxVolume; branch to end
        srai $6,  $6,  1          # tmp = tmp >> 1
        andi $12, $12, 0x1e0      # volumedata = {volumedata[23:5],00000}
        or   $12, $12, $6         # volumedata = volumedata | tmp
        st   $12, $15, 0          # [codecaddr] <= volumedata
        st   $12, $11, 0          # [volumeaddr] <= volumedata
        j    .Jbuttonend          # end of user mode
.Jbuttondecvol:                   #//DECREASE VOLUME
        andi $6,  $4,  0x008      #
        beqz $6,  .Jbuttonpause   # if button[3] not pressed; branch to pause
        ld   $12, $11, 0          # volumedata <= [volumeaddr]
        andi $6,  $12, 0x01f      # tmp = volumeData[4:0] = RRRRR
        addi $6,  $6,  0x1e1      # tmp = tmp - 0x00001f
        beqz $6,  .Jbuttonend     # if tmp = minVolume; branch to end
        andi $6,  $12, 0x01f      # tmp = volumedata[4:0] = RRRRR
        slli $6,  $6,  1          #
        addi $6,  $6,  1          # tmp = {tmp[22:0],1}
        or   $12, $12, $6         # volumedata = volumedata | tmp
        st   $12, $15, 0          # [codecaddr] <= volumedata
        st   $12, $11, 0          # [volumeaddr] <= volumedata
        j    .Jbuttonend          #
.Jbuttonpause:                    #//PLAY PAUSE TOGGLE
        andi $6,  $4,  0x010      # 
        beqz $6,  .Jbuttonend     # if button[4] not pressed; no button was pressed

        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        #lbi  $24,      0x006  #//TESTING PHASE: REMOVE LATER:
        #slbi $24,      0x820  #//TESTING PHASE: REMOVE LATER: $24 = SPART ADDRESS
        #lbi  $25,      0x333  #//TESTING PHASE: REMOVE LATER:
        #slbi $25,      0x333  #//TESTING PHASE: REMOVE LATER: $25 = 0xaaaaaa
        #st   $25, $24, 0      #//TESTING PHASE: REMOVE LATER: print: reti
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATE


        ld   $6,  $16, 0          # tmp <= [pauseaddr]
        beqz $6,  .Jbuttonx1      # if tmp = 0; branch to x1
        lbi  $6,       0          #
        st   $6,  $16, 0          # [pauseaddr] <= 0
        st   $6,  $17, 0          # [codecpauseaddr] <= 0
        j    .Jbuttonend          # end of user mode
.Jbuttonx1:                       # switch to playmode
        lbi  $6,       0x001      #
        st   $6,  $16, 0          # [pauseaddr] <= 1
        st   $6,  $17, 0          # [codecpauseaddr] <= 1
.Jbuttonend:                      #//END OF FPGA BUTTON INTERRUPT
        andi $27, $27, 0x1fb      # reset interrupt register
        j    .JintFilter          # return from fpga button interrupt
################################################################################
# fpgaaddr  = 0x0681C
# fpgadata <= [fpgaaddr]
# vgaaddr   = 0x06308
# buttons   = fpgadata & 0x01F
# switches  = (fpgadata >> 5) & 0x00F
# modeaddr  = 0x0400
# modestat <= [modeaddr]
# if(modestat != 0){//1 -> equalizer mode
#   filteraddr = 0x05000
#   band = (fpgadata >> 6) & 0x007
#   banddata <= [band + filteraddr]
#   if(buttons[2] == 1){up pressed = increase band level
#     if(bandata = maxlevel){}//do nothing
#     else{
#       //adjust banddata 
#       banddata++
#       [band + filteraddr] <= banddata
#       //adjust equalizer display
#       vgaaddr = vgaaddr + band
#       [vgaaddr] <= banddata
#     }
#   }  
#   else if(buttons[3] == 1){down pressed = decrease band level
#     if(bandata = minlevel){}//do nothing
#     else{
#       //adjust banddata
#       banddata--
#       [band + filteraddr] <= banddata
#       //adjust equalizer display
#       vgaaddr = vgaaddr + band
#       [vgaaddr] <= banddata
#     }
#   else if(buttons[0] == 1){left pressed = switch mode
#     [modeaddr] <= 0
#   }
#   else if(buttons[1] == 1){//prev song
#     flashaddr = 0x06000
#     [flashaddr] <= 1
#   }//end next song
#   else{}//center, left, right buttons not defined: DO NOTHING
# }//end equalizer mode
# else{//0 -> user mode
#   if(bottons[0] == 1){//change to equalizer mode
#     modestat = 1
#     [modeaddr] <= modestat
#   }//end previous song
#   else if(buttons[1] == 1){//next song
#     flashaddr = 0x06001
#     [flashaddr] <= 1
#   }//end next song
#   else if(buttons[2] == 1){//increase volume
#     volumeaddr = 0x06817
#     volumedata <= [volumeaddr]
#     if(volumedata[4:0] == 00000){}//volume is at max: DO NOTHING
#     else{
#       //shift right 1 with 1 incomming for R and L
#       //TODO: IMPLEMENT L FUNCTIONALITY
#     }
#   }//end volume increase
#   else if(buttons[3] == 1){//decrease volume
#     volumeaddr = 0x06817
#     volumedata <= [volumeaddr]
#     if(volumedata[4:0] == 11111){}//volume is at min: DO NOTHING
#     else{
#       //shift left 1 with 1 incomming for R and L
#       //TODO: IMPLEMENT L FUNCTIONALITY
#     }
#   }//end volume decrease
#   else if(buttons[4] == 1){//play toggle
#     codecaddr = 0x06809
#     if([codecaddr] == 1){
#       [codecaddr] <= 0
#     }
#     else{
#       [codecaddr] <=1
#     }
#   }
#   else{}//center button selected: DO NOTHING
# }//end user mode
# reset interrupt status
# return to interrupt handler
###//== END OF FPGA Buttons INTERRUPT =====================================//###
###//== START OF FILTER INTERRUPT =========================================//###
################################################################################
#Description:
#      Handle filter interrupt then return to main interrupt handler.
#      Filter interrupt: Visualization frequency coefficients ready.
#      Handled: ????????????????????????//TODO:
#
#Registers used:
#      $27: interrupt register data
#      $1  = 8count
#      $2  = filteraddr
#      $3  = vgaaddr
#      $4  = 3count
#      $5  = filterdata
#      $6  = vgaout
#      $7  = temporary comparison register
#      $8  = blank
#      $9  = 8bar
#      $10 = 24count
#      $11 = sign
#      $12 = temporary
#      $24:
#      $25:
#      $29:
################################################################################
 #21 = 8count
 #22 = filteraddr
 #25 = filterdata
 #7 = temporary
 #28 = bigaddr
 #29 = smalladdr
 #26 = bigdata
 #24 = smalldata

.Jxfilter:                         #//START OF FILTER INTERRUPT
        lbi  $21,       8          # initialize 8count
        lbi  $22,       0x004      #
        slbi $22,       0x000      # filteraddr = 0x004000
        lbi  $28,       0x003      #
        slbi $28,       0x000      # bigaddr = 0x03000
        lbi  $29,       0x003      #
        slbi $29,       0x010      # smalladdr = 0x03001
.Jxfilterdo:                       #//START OF DO WHILE LOOP
        ld   $25,  $22,  0          # filterdata <= [filteraddr]
        ld   $26, $28,  0          # bigdata <= [bigaddr]
        ld   $24, $29,  0          # small data <= [smalladdr]
        lbi  $7,       0x800      #
        slbi $7,       0x000      # temporary = 0x7ffffff
        and  $7, $7, $25
        beqz $7, .Jxfilterpos
        subi $25, $25, 0
.Jxfilterpos:                   #

        srai $7,  $7,  4         # tmp = tmp >> 10#>>>>>>>>>>>>>>>>>>>>>>>
        addi $7,  $7,  1          # tmp = tmp + 1
        sub  $7,  $7,  $25         # tmp = filterdata - tmp
        bltz $7,  .Jsmallband     #
        srai $25,  $25,  4         # filterdata = filterdata >> 10#>>>>>>>>>>>>>>>>>>>>>>>
        add  $26, $26, $25         # bigdata = bigdata + filterdata
        st   $26, $28,  0          # [bigaddr] <= bigdata
        j    .Jincrementsx        #
.Jsmallband:                      # |val| <= (2^23 - 1)
        add  $24, $24, $25         # smalldata = smalldata + filterdata
        st   $24, $29,  0          # [smalladdr] <= smalldata
.Jincrementsx:
        addi $22,  $22,  1          # increment filteraddr
        addi $28,  $28,  1          # increment bigaddr
        addi $29,  $29,  1          # increment smalladdr
        addi $21,  $21,  0x1ff      # decrement 8count
                                  #//END OF DO WHILE LOOP
        bnez $21,  .Jxfilterdo      # if(8count !=0); branch to do
        andi $27, $27, 0x1f7      # reset interrupt register
        j    .JintTimer           # return from filter interrupt








.Jfilter:                         #//START OF FILTER INTERRUPT

      lbi  $2,       16     #CHANGE THIS FOR AVERAGE
      lbi  $3,       0x002  #CHANGE THIS FOR AVERAGE
      slbi $3,       0xffe  #counteraddr CHANGE THIS FOR AVERAGE
      ld   $4, $3,   0      #counterdata <= [counteraddr] CHANGE THIS FOR AVERAGE
      addi $4, $4, 0x1ff    #decrement counterdataCHANGE THIS FOR AVERAGE
      nop                   #CHANGE THIS FOR AVERAGE
      nop                   #CHANGE THIS FOR AVERAGE
      st $4, $3, 0          #CHANGE THIS FOR AVERAGE
      bnez $4, .Jxfilter  #CHANGE THIS FOR AVERAGE
      st $2, $3, 0          #CHANGE THIS FOR AVERAGE 
 
        lbi  $1,       8          # initialize 8count
        lbi  $2,       0x004      #
        slbi $2,       0x000      # filteraddr = 0x004000
        lbi  $3,       0x006      #
        slbi $3,       0x008      # vgaaddr = 0x006008
        lbi  $4,       3          # initialize 3count
        andi $6,  $6,  0          # initialize vgaout
        lbi  $9,       0x067      # initialize 8bar
        lbi  $8,       0x071      # initialize blank
        slli $9,  $9,  16         # shift 8bar 16
        slli $8,  $8,  16         # shift blank 16




       lbi  $14,       0x003     # 
       slbi $14,       0x000     # big
       lbi  $15,       0x003     # 
       slbi $15,       0x010     # small

.Jfilterdo:                       #//START OF DO WHILE LOOP
        lbi  $10,      24         # initialize 24count



      ld $24, $14, 0
      ld $25, $15, 0
      srai $25, $25, 4
      add $5, $24, $25



  #        ld   $5,  $2,  0          # filterdata <= [filteraddr]#remove
        addi $2,  $2,  1          # increment filteraddr
        lbi  $24,      0x001      # 
        slli $24, $24, 7         # incrementreg
        slli $24, $24, 5        # incrementreg
        sub  $5,  $24,  $5        # filterdata = filterdata - incrementreg
.Jfilterwhile1:                   #//START OF WHILE1 LOOOP STATEMENT
        bltz $5,  .Jfilterwhile2  # if(filterdata < incrementreg); branch to while2
        beqz $10, .Jfilterwhile2  # if(24count == 0) branch to while2
.Jfilterif1:                      #//IF1 STATEMENT
        addi $7,  $4,  0x1fd      # tmp = 3count - 3
        bnez $7,  .Jfilterelse1   # if(3count != 3); branch to else1
                                  #//INSIDE IF1 STATEMENT
        addi $6,  $9,  0          # vgaout = 8bar
        addi $4,  $4,  0x1ff      # decrement 3count
        j    .Jfilterif2          # branch to if2
.Jfilterelse1:                    #//ELSE1 STATEMENT
        or   $6,  $6,  $9         # vgaout = vgaout | 8bar
        addi $4,  $4,  0x1ff      # decrement 3count
.Jfilterif2:                      #//IF2 STATEMENT
        beqz $4,  .Jfilterelse2   # if(3count == 0); branch to else2
        srai $6,  $6,  8          # vgaout = vgaout << 8
        j    .Jfilterendwhile1    # branch to end while1
.Jfilterelse2:                    #//ELSE2 STATEMENT
        st   $6,  $3,  0          # [vgaaddr] <= vgaout
        addi $3,  $3,  1          # increment vgaaddr
        lbi  $4,       3          # 3count = 3
.Jfilterendwhile1:                #//UPDATE BEFORE END OF WHILE1
        addi $10, $10, 0x1ff      # decrement 24count
        sub  $5,  $24,  $5        # filterdata = filterdata - incrementreg
        j    .Jfilterwhile1       # jump to while1 statement    
.Jfilterwhile2:                   #//START OF WHILE2 LOOP STATEMENT
        beqz $10, .Jfilterprewhile# if(24count == 0); branch to prewhile
        addi $10, $10, 0x1ff      # decrement 24count
.Jfilterif3:                      #//IF3 STATEMENT
        addi $7,  $4,  0x1fd      # tmp = 3count - 3
        bnez $7,  .Jfilterelse3   # if(3count != 3); branch to else3
                                  #//INSIDE IF3 STATEMENT
        addi $6,  $8,  0          # vgaout = blank
        addi $4,  $4,  0x1ff      # decrement 3count
        j    .Jfilterif4          # branch to if2
.Jfilterelse3:                    #//ELSE3 STATEMENT
        or   $6,  $6,  $8         # vgaout = vgaout | blank
        addi $4,  $4,  0x1ff      # decrement 3count
.Jfilterif4:                      #//IF4 STATEMENT
        beqz $4,  .Jfilterelse4   # if(3count == 0); branch to else4
        srai $6,  $6,  8          # vgaout = vgaout << 8
        j    .Jfilterwhile2       # branch to while2
.Jfilterelse4:                    #//ELS42 STATEMENT
        st   $6,  $3,  0          # [vgaaddr] <= vgaout
        addi $3,  $3,  1          # increment vgaaddr
        lbi  $4,       3          # 3count = 3
        j    .Jfilterwhile2       # jump to while1 statement
.Jfilterprewhile:                 #//PREWHILE STATEMENT
        addi $1,  $1,  0x1ff      # decrement 8count
        lbi  $29,      0x322      #
        slbi $29,      0x835      # "VIS"
        addi $3,  $3,  1          # increment vgaaddr
        st   $29, $3,  0          #
        lbi  $29,      0x2B2      #
        slbi $29,      0x034      # "UAL"
        addi $3,  $3,  1          # increment vgaaddr
        st   $29, $3,  0          # 
        lbi  $29,      0x203      #
        slbi $29,      0x928      # "IZA"
        addi $3,  $3,  1          # increment vgaaddr
        st   $29, $3,  0          # 
        lbi  $29,      0x2E2      #
        slbi $29,      0x833      # "TIO"
        addi $3,  $3,  1          # increment vgaaddr
        st   $29, $3,  0          # 
        lbi  $29,      0x213      #
        slbi $29,      0xe2d      # "N_B"
        addi $3,  $3,  1          # increment vgaaddr
        st   $29, $3,  0          # 
        lbi  $29,      0x232      #
        slbi $29,      0xd20      # "AND"
        addi $3,  $3,  1          # increment vgaaddr
        st   $29, $3,  0          #
        subi $7, $1,   8      # subtract 8
        addi $7, $7,  14

        st   $7,  $3,  1          #
        addi $3,  $3,  0x1fa      # vgaaddr = vgaaddr - 7
        addi $3,  $3,  73         # vgaaddr  = vgaaddr + 74
        addi $14, $14, 1          # increment bigaddr
        addi $15, $15, 1          # increment smalladdr

                                  #//END OF DO WHILE LOOP
        bnez $1,  .Jfilterdo      # if(8count !=0); branch to do

       lbi  $14,       0x003     # 
       slbi $14,       0x000     # big
       lbi  $15,       0x003     # 
       slbi $15,       0x010     # small
       lbi  $16,       0x002     # 
       slbi $16,       0xfff     # n
       lbi  $0,        4         #>>>>>>>>>>>>>>>>>>>>>>>
       st   $0, $16,   0
       lbi  $0,        0
       st   $0, $15,   0 # band 0
       st   $0, $14,   0
       st   $0, $15,   1 # band 1
       st   $0, $14,   1
       st   $0, $15,   2 # band 2
       st   $0, $14,   2
       st   $0, $15,   3 # band 3
       st   $0, $14,   3
       st   $0, $15,   4 # band 4
       st   $0, $14,   4
       st   $0, $15,   5 # band 5
       st   $0, $14,   5
       st   $0, $15,   6 # band 6
       st   $0, $14,   6
       st   $0, $15,   7 # band 7
       st   $0, $14,   7

        andi $27, $27, 0x1f7      # reset interrupt register
        j    .JintTimer           # return from filter interrupt
















	
################################################################################
# 8count     = 8
# filteraddr = 0x04000
# vgaaddr    = 0x06108
# 3count     = 3
# vgaout     = 0
# 8bar       = 0x067//completely filled pixel
# 8bar       = 8bar << 16
# blank      = 0x05d//blank pixel
# blank      = blank << 16
#
# do{
#   24count    = 24
#   filterdata <= [filteraddr]
#   filterdata = filterdata & 0x7fffff
#   filteraddr++
#   increment_reg
#   while(filterdata > increment_reg && 24count != 0){//while 1: display while
#     if(3count == 3){//if1
#       vgaout = 8bar
#       3count--
#     }
#     else{//else1
#       vgaout = vgaout | 8bar
#       3count--
#     }
#     if(3count != 0){//if2
#       vgaout >> 8
#     }
#     else{//else2
#       [vgaaddr] <= vgaout
#       vgaaddr++
#       3count = 3
#     }
#     24count--
#     filterdata = filterdata - increment_reg
#   }//end display while
#   while(24count != 0){//while2: display while 2
#     24count--
#     if(3count == 3){//if3
#       vgaout = blank
#       3count--
#     }
#     else{//else3
#       vgaout = vgaout | blank
#       3count--
#     }
#     if(3count != 0){//if4
#       vgaout >> 8
#     }
#     else{//else4
#       [vgaaddr] <= vgaout
#       vgaaddr++
#       3count = 3
#     }
#   }//end display while 2
#   8count--
#   vgaaddr = vgaaddr + 27//TODO: THIS NUMBER WILL CHANGE
# }while(8count != 0)
# reset interrupt status
# return to interrupt handler
################################################################################
###//== END OF FILTER INTERRUPT ===========================================//###
###//== START OF TIMER INTERRUPT ==========================================//###
################################################################################
#Description:
#      Handle timer interrupt, then return to main interrupt handler.
#      Timer interrupt: Timer0 duration has expired
#      Handled: Do nothing.
#
#Registers used:
#      $27: interrupt register data
################################################################################
.Jtimer:                          #//START OF TIMER INTERRUPT
        andi $27, $27, 0x1ef      # reset interrupt register
        j    .JintFlash       # return from timer interrupt
################################################################################
###//== END OF TIMER INTERRUPT ============================================//###
###//== START OF COMPACT FLASH INTERRUPT ==================================//###
################################################################################
#Description:
#      Handle compact flash interrupt; return to interrupt handler.
#      Compact Flash interrupt: Filesystem data is ready
#      Handled: ??????????????????????????//TODO:
#
#Registers used:
#      $27: interrupt register data
#      $21  = 90count
#      $22  = flashaddr
#      $23  = vgaaddr
#      $24  = 3count
#      $25  = flashdata
#      $26  = vgaout
#      $29  = temporary comparison register
################################################################################
.Jflash:                          #//START OF COMPACT FLASH INTERRUPT
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        lbi  $24,      0x006  #//TESTING PHASE: REMOVE LATER:
        slbi $24,      0x820  #//TESTING PHASE: REMOVE LATER: $24 = SPART ADDRESS
        lbi  $25,      0xabc  #//TESTING PHASE: REMOVE LATER:
        slbi $25,      0xdef  #//TESTING PHASE: REMOVE LATER: $25 = SPART ADDRESS
        st   $25, $24, 0      #//TESTING PHASE: REMOVE LATER: testing
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        lbi  $21,       30         # initialize 90count
        lbi  $22,       0x005      #
        slbi $22,       0x009      # flashaddr = 0x005009
        lbi  $23,       0x006      #
        slbi $23,       0x36c      # vgaaddr = 0x00636c
        lbi  $24,       3          # initialize 3count
        lbi  $26,       0          # initialize vgaout
.Jflashdo:                        #//START OF DO WHILE LOOP
        ld   $25,  $22,  0          # flashdata <= [flashaddr]
        slli $25,  $25,  16         # flashdata = flashdata << 16
        addi $22,  $22,  1          # increment flashaddr
.Jflashif1:                       #//IF1 STATEMENT
        addi $29,  $24,  0x1fd      # tmp = 3count - 3
        bnez $29,  .Jflashelse1    # if(3count != 3); branch to else1
                                  #//INSIDE IF1 STATEMENT
        addi $26,  $25,  0          # vgaout = flashdata
        addi $24,  $24,  0x1ff      # decrement 3count
        j    .Jflashif2           # branch to if2
.Jflashelse1:                     #//ELSE1 STATEMENT
        or   $26,  $26,  $5         # vgaout = vgaout | flashdata
        addi $24,  $24,  0x1ff      # decrement 3count
.Jflashif2:                       #//IF2 STATEMENT
        beqz $24,  .Jflashelse2    # if(3count == 0); branch to else2
        srai $26,  $26,  8          # vgaout = vgaout >> 8
        j    .Jflashprewhile      # branch to prewhile
.Jflashelse2:                     #//ELSE2 STATEMENT
        st   $26,  $23,  0          # [vgaaddr] <= vgaout
        addi $23,  $23,  1          # increment vgaaddr
.Jflashprewhile:                  #//PREWHILE STATEMENT
        addi $21,  $21,  0x1ff      # decrement 90count
                                  #//END OF DO WHILE LOOP
        bnez $21,  .Jflashdo       # if(90count != 0); branch to do
        andi $27, $27, 0x1f7      # reset interrupt register
        j    .Jinterruptend           # return from filter interrupt
################################################################################
# 90count = 90
# flashaddr = 0x05008
# vgaaddr = 0x06008
# 3count = 3
#
# do{
#   flashdata <= [flashaddr]
#   flashdata = flashdata << 16
#   flashaddr++
#   if(3count == 3){
#     vgaout = flashdata
#     3count--
#   }
#   else{
#     vgaout = vgaout | flashdata
#     3count--
#   }
#   if(3count != 0){
#     vgaout >> 8
#   }
#   else{
#     [vgaaddr] <= vgaout
#     vgaaddr++
#   }
#   90count--
# }while(90count != 0)
# reset interrupt status
# return to interrupt handler
################################################################################
###//== END OF COMPACT FLASH INTERRUPT ====================================//###
###//== START OF MAIN PROGRAM =============================================//###
################################################################################
#Description:
#      Main program: pointlessly counts down; waiting for an interrupt
#
#Registers used:
#      $27: interrupt register data
#      $17: volumeAddress
#      $18: play/pause address
#      $19: equalizer coefficient address
#      $20: toggle: equalizer/play mode
#      $21: temp
#      $22:
#      $24: 
#      $25:
#      $28:
#      $29:
#      $30:
#      $14: bigs   : 0x003000
#      $15: smalls : 0x003001
#      $16: n      : 0x002fff
################################################################################
.Jmain:                           #//START OF MAIN PROGRAM


        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        #lbi  $24,      0x006  #//TESTING PHASE: REMOVE LATER:
        #slbi $24,      0x820  #//TESTING PHASE: REMOVE LATER: $24 = SPART ADDRESS
        #lbi  $25,      0xddd  #//TESTING PHASE: REMOVE LATER:
        #slbi $25,      0xddd  #//TESTING PHASE: REMOVE LATER: $25 = SPART ADDRESS
        #st   $25, $24, 0      #//TESTING PHASE: REMOVE LATER: testing
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER


                                  #//INITIALIZE MMU
        lbi  $17,      0x006      #
        slbi $17,      0x808      # codecaddr
        lbi  $18,      0x006      #
        slbi $18,      0x809      # codecpauseaddr
        lbi  $19,      0x005      #
        slbi $19,      0x000      # filterequalizeraddr
        lbi  $20,      0x003      #
        slbi $20,      0xffe      # volumeaddr 
        lbi  $21,      0x000      #
        slbi $21,      0x707      # volumedata
        lbi  $22,      0x003      #
        slbi $22,      0xfff      # pauseaddr
        lbi  $30,      0x006      # 
        slbi $30,      0x2d8      # vgaaddr = 0x062d8
        lbi  $28,      0x400      # modeaddr = 0x00400


        st   $21, $20, 0          # [volumeaddr] <= volumedata

        st   $21, $17, 0          # [codecaddr] <= volumedata
        lbi  $21,      0x000      # pausedata = 0
        st   $21, $22, 0          # [pauseaddr] <= pausedata


        st   $21, $18, 0          # [codecpauseaddr] <= pausedata
        lbi  $21,      0x007      # equalcoef = 0x007

        st   $21, $19, 0          # [equalizeaddr] <= equalcoef
        st   $21, $19, 1          # [equalizeaddr + 1] <= equalcoef
        st   $21, $19, 2          # [equalizeaddr + 2] <= equalcoef
        st   $21, $19, 3          # [equalizeaddr + 3] <= equalcoef
        st   $21, $19, 4          # [equalizeaddr + 4] <= equalcoef
        st   $21, $19, 5          # [equalizeaddr + 5] <= equalcoef
        st   $21, $19, 6          # [equalizeaddr + 6] <= equalcoef
        st   $21, $19, 7          # [equalizeaddr + 7] <= equalcoef

        lbi  $30,      0x006      # 
        slbi $30,      0x54e      # vgaaddr = 0x0654e
        addi $21, $21, 15         # equalcoef = equalcoef + 15//for display purposes
        st   $21, $30, 0          # [vgaaddr] <= equalcoef
        st   $21, $30, 1          # [vgaaddr + 1] <= equalcoef
        st   $21, $30, 2          # [vgaaddr + 2] <= equalcoef
        st   $21, $30, 3          # [vgaaddr + 3] <= equalcoef
        st   $21, $30, 4          # [vgaaddr + 4] <= equalcoef
        st   $21, $30, 5          # [vgaaddr + 5] <= equalcoef
        st   $21, $30, 6          # [vgaaddr + 6] <= equalcoef
        st   $21, $30, 7          # [vgaaddr + 7] <= equalcoef
        lbi  $21,      0          #
        st   $21, $28, 0          # [modeaddr] <= 0

#        lbi  $30,      0x006      # 
#        slbi $30,      0x368      # vgaaddr = 0x06368
#        lbi  $21,      0x282      #
#        slbi $21,      0x733      # "THI"
#        st   $21, $30, 0          #
#        lbi  $21,      0x323      #
#        slbi $21,      0xe32      # "S_S"
#        st   $21, $30, 1          #
#        lbi  $21,      0x262      #
#        slbi $21,      0xd2e      # "ONG"
#        st   $21, $30, 2          #
#        lbi  $30,      0x006      # 
#        slbi $30,      0x383      # vgaaddr = 0x06383
#        lbi  $21,      0x372      #
#        slbi $21,      0x42d      # "NEX"
#        st   $21, $30, 0          #
#        lbi  $21,      0x323      #
#        slbi $21,      0xe33      # "T_S"
#        st   $21, $30, 1          #
#        lbi  $21,      0x262      #
#        slbi $21,      0xd2e      # "ONG"
#        st   $21, $30, 2          #
#        lbi  $30,      0x006      # 
#        slbi $30,      0x39e      # vgaaddr = 0x0639e
#        lbi  $21,      0x243      #
#        slbi $21,      0x12f      # "PRE"
#        st   $21, $30, 0          #
#        lbi  $21,      0x323      #
#        slbi $21,      0xe35      # "V_S"
#        st   $21, $30, 1          #
#        lbi  $21,      0x262      #
#        slbi $21,      0xd2e      # "ONG"
#        st   $21, $30, 2          #



        lbi  $30,      0x006      # 
        slbi $30,      0x533      # vgaaddr = 0x06533
        lbi  $21,      15          #
        st   $21, $30, 0          #
        addi $21, $21, 0x1     
        st   $21, $30, 1          #
        addi $21, $21, 0x1      
        st   $21, $30, 2          #
        addi $21, $21, 0x1   
        st   $21, $30, 3          #
        addi $21, $21, 0x1
        st   $21, $30, 4          #
        addi $21, $21, 0x1
        st   $21, $30, 5          #
        addi $21, $21, 0x1
        st   $21, $30, 6          #
        addi $21, $21, 0x1
        st   $21, $30, 7          #
        lbi  $21,      0x343      #
        slbi $21,      0x024      # "EQU"
        st   $21, $30, 8          #
        lbi  $21,      0x282      #
        slbi $21,      0xb20      # "ALI"
        st   $21, $30, 9          #
        lbi  $21,      0x312      #
        slbi $21,      0x439      # "ZER"
        st   $21, $30, 10         #
        lbi  $21,      0x202      #
        slbi $21,      0x13e      # "_BA"
        st   $21, $30, 11         #
        lbi  $21,      0x002      #
        slbi $21,      0x32d      # "ND:"
        st   $21, $30, 12          


        lbi  $14,       0x003     # 
        slbi $14,       0x000     # big
        lbi  $15,       0x003     # 
        slbi $15,       0x010     # small
        lbi  $16,       0x002     # 
        slbi $16,       0xffe     # counter
        lbi  $0,        16         #>>>>>>>>>>>>>>>>>>>>>>>
        st   $0, $16,   0
        lbi  $0,        4         #>>>>>>>>>>>>>>>>>>>>>>>
        st   $0, $16,   1
        lbi  $0,        0
        st   $0, $15,   0 # band 0
        st   $0, $14,   0
        st   $0, $15,   1 # band 1
        st   $0, $14,   1
        st   $0, $15,   2 # band 2
        st   $0, $14,   2
        st   $0, $15,   3 # band 3
        st   $0, $14,   3
        st   $0, $15,   4 # band 4
        st   $0, $14,   4
        st   $0, $15,   5 # band 5
        st   $0, $14,   5
        st   $0, $15,   6 # band 6
        st   $0, $14,   6
        st   $0, $15,   7 # band 7
        st   $0, $14,   7
        

.Jmainstart:                      #//START OF MAIN PROGRAM(NON-INITIALIZATION)


        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER
        #lbi  $24,      0x006  #//TESTING PHASE: REMOVE LATER:
        #slbi $24,      0x820  #//TESTING PHASE: REMOVE LATER: $24 = SPART ADDRESS
        #lbi  $25,      0xfff  #//TESTING PHASE: REMOVE LATER:
        #slbi $25,      0xfff  #//TESTING PHASE: REMOVE LATER: $25 = SPART ADDRESS
        #st   $25, $24, 0      #//TESTING PHASE: REMOVE LATER: testing
        nop                   #//TESTING PHASE: REMOVE LATER
        nop                   #//TESTING PHASE: REMOVE LATER

        lbi  $22,      0x003      #
        slbi $22,      0xfff      # pauseaddr
        lbi  $30,      0x006      # 
        slbi $30,      0x2d8      # vgaaddr = 0x062d8
        lbi  $29,      0x192      #
        slbi $29,      0xf2f      # "PP:"
        st   $29, $30, 63         #
        ld   $29, $22, 0          # 29 = pausedata
        addi $29, $29, 15         # //for display purposes
        nop                       #
        nop                       #
        st   $29, $30, 64         #
        nop                       #
        nop                       #
        nop                       #
                                  #//START OF TOGGLE MODE PRINT
        lbi  $28,      0x400      # modeaddr = 0x00400
        ld   $29, $28, 0          # $29 = togglemodedata
        beqz $29, .Jtog1          # if togglemode = 0; branch to user mode
        lbi  $29,      0x232      #
        slbi $29,      0xe2c      # "MOD"
        st   $29, $30, 117        #
        lbi  $29,      0x3e1      #
        slbi $29,      0x924      # "E:_"
        st   $29, $30, 118        #
        lbi  $29,      0x343      #
        slbi $29,      0x024      # "EQU"
        st   $29, $30, 119        #
        j    .Jmainstart          # return to loop
.Jtog1:                           #
        lbi  $29,      0x232      #
        slbi $29,      0xe2c      # "MOD"
        st   $29, $30, 117        #
        lbi  $29,      0x3e1      #
        slbi $29,      0x924      # "E:_"
        st   $29, $30, 118        #
        lbi  $29,      0x313      #
        slbi $29,      0x234      # "USR"
        st   $29, $30, 119        #
        j    .Jmainstart          # return to loop
################################################################################
###//== END OF MAIN PROGRAM ===============================================//###
#.EXCLAM:  lbi   $24,    0x000 #"!" 
#.QUOTE:   lbi   $24,    0x001 #""" 
#.POUND:   lbi   $24,    0x002 #"#" 
#.DOLLAR:  lbi   $24,    0x003 #"$" 
#.PERCENT: lbi   $24,    0x004 #"%" 
#.AMP:     lbi   $24,    0x005 #"&" 
#.TICK:    lbi   $24,    0x006 #"`" 
#.LPAREN:  lbi   $24,    0x007 #"(" 
#.RPAREN:  lbi   $24,    0x008 #")" 
#.ASTERIX: lbi   $24,    0x009 #"*" 
#.PLUS:    lbi   $24,    0x00A #"+" 
#.COMMA:   lbi   $24,    0x00B #"," 
#.DASH:    lbi   $24,    0x00C #"-" 
#.PERIOD:  lbi   $24,    0x00D #"." 
#.FDSLASH: lbi   $24,    0x00E #"/" 
#.ZERO:    lbi   $24,    0x00F #"0" 

#.ONE:     lbi   $24,    0x010 #"1" 
#.TWO:     lbi   $24,    0x011 #"2" 
#.THREE:   lbi   $24,    0x012 #"3" 
#.FOUR:    lbi   $24,    0x013 #"4" 
#.FIVE:    lbi   $24,    0x014 #"5" 
#.SIX:     lbi   $24,    0x015 #"6" 
#.SEVEN:   lbi   $24,    0x016 #"7" 
#.EIGHT:   lbi   $24,    0x017 #"8" 
#.NINE:    lbi   $24,    0x018 #"9" 
#.COLON:   lbi   $24,    0x019 #":" 
#.SEMICOL: lbi   $24,    0x01A #";" 
#.LESS:    lbi   $24,    0x01B #"<" 
#.EQUALS:  lbi   $24,    0x01C #"=" 
#.GREATER: lbi   $24,    0x01D #">" 
#.QUEST:   lbi   $24,    0x01E #"?" 
#.AT:      lbi   $24,    0x01F #"@"

#.UPA:     lbi   $24,    0x020 #"A" 
#.UPB:     lbi   $24,    0x021 #"B" 
#.UPC:     lbi   $24,    0x022 #"C" 
#.UPD:     lbi   $24,    0x023 #"D" 
#.UPE:     lbi   $24,    0x024 #"E" 
#.UPF:     lbi   $24,    0x025 #"F" 
#.UPG:     lbi   $24,    0x026 #"G" 
#.UPH:     lbi   $24,    0x027 #"H" 
#.UPI:     lbi   $24,    0x028 #"I" 
#.UPJ:     lbi   $24,    0x029 #"J" 
#.UPK:     lbi   $24,    0x02A #"K" 
#.UPL:     lbi   $24,    0x02B #"L" 
#.UPM:     lbi   $24,    0x02C #"M" 
#.UPN:     lbi   $24,    0x02D #"N" 
#.UPO:     lbi   $24,    0x02E #"O" 
#.UPP:     lbi   $24,    0x02F #"P"

#.UPQ:     lbi   $24,    0x030 #"Q" 
#.UPR:     lbi   $24,    0x031 #"R" 
#.UPS:     lbi   $24,    0x032 #"S" 
#.UPT:     lbi   $24,    0x033 #"T" 
#.UPU:     lbi   $24,    0x034 #"U" 
#.UPV:     lbi   $24,    0x035 #"V" 
#.UPW:     lbi   $24,    0x036 #"W" 
#.UPX:     lbi   $24,    0x037 #"X" 
#.UPY:     lbi   $24,    0x038 #"Y" 
#.UPZ:     lbi   $24,    0x039 #"Z" 
#.LBRACK:  lbi   $24,    0x03A #"[" 
#.BSLASH:  lbi   $24,    0x03B #"\" 
#.RBRACK:  lbi   $24,    0x03C #"]" 
#.POWER:   lbi   $24,    0x03D #"^" 
#.UNSCORE: lbi   $24,    0x03E #"_" 
#.GBP:     lbi   $24,    0x03F #"GBP"

#.LOWA:    lbi   $24,    0x040 #"a" 
#.LOWB:    lbi   $24,    0x041 #"b" 
#.LOWC:    lbi   $24,    0x042 #"c" 
#.LOWD:    lbi   $24,    0x043 #"d" 
#.LOWE:    lbi   $24,    0x044 #"e" 
#.LOWF:    lbi   $24,    0x045 #"f" 
#.LOWG:    lbi   $24,    0x046 #"g" 
#.LOWH:    lbi   $24,    0x047 #"h" 
#.LOWI:    lbi   $24,    0x048 #"i" 
#.LOWJ:    lbi   $24,    0x049 #"j" 
#.LOWK:    lbi   $24,    0x04A #"k" 
#.LOWL:    lbi   $24,    0x04B #"l" 
#.LOWM:    lbi   $24,    0x04C #"m" 
#.LOWN:    lbi   $24,    0x04D #"n" 
#.LOWO:    lbi   $24,    0x04E #"o" 
#.LOWP:    lbi   $24,    0x04F #"p"

#.LOWQ:    lbi   $24,    0x050 #"q" 
#.LOWR:    lbi   $24,    0x051 #"r" 
#.LOWS:    lbi   $24,    0x052 #"s" 
#.LOWT:    lbi   $24,    0x053 #"t" 
#.LOWU:    lbi   $24,    0x054 #"u" 
#.LOWV:    lbi   $24,    0x055 #"v" 
#.LOWW:    lbi   $24,    0x056 #"w" 
#.LOWX:    lbi   $24,    0x057 #"x" 
#.LOWY:    lbi   $24,    0x058 #"y" 
#.LOWZ:    lbi   $24,    0x059 #"z" 
#.LBRACE:  lbi   $24,    0x05A #"{" 
#.OR:      lbi   $24,    0x05B #"|" 
#.RBRACE:  lbi   $24,    0x05C #"}" 
#.BLANK1:  lbi   $24,    0x05D #"blank" 
#.BLANK2:  lbi   $24,    0x05E #"blank" 
#.BLANK3:  lbi   $24,    0x05F #"blank"

#.BAR1:    lbi   $24,    0x060 #"1bar" 
#.BAR2:    lbi   $24,    0x061 #"2bar" 
#.BAR3:    lbi   $24,    0x062 #"3bar" 
#.BAR4:    lbi   $24,    0x063 #"4bar" 
#.BAR5:    lbi   $24,    0x064 #"5bar" 
#.BAR6:    lbi   $24,    0x065 #"6bar" 
#.BAR7:    lbi   $24,    0x066 #"7bar" 
#.BAR8:    lbi   $24,    0x067 #"8bar" 
#.BAR81:   lbi   $24,    0x068 #"8bar-bottom1" 
#.BAR82:   lbi   $24,    0x069 #"8bar-bottom2" 
#.BAR83:   lbi   $24,    0x06A #"8bar-bottom3" 
#.BAR84:   lbi   $24,    0x06B #"8bar-bottom4" 
#.BAR85:   lbi   $24,    0x06C #"8bar-bottom5" 
#.BAR86:   lbi   $24,    0x06D #"8bar-bottom6" 
#.BAR87:   lbi   $24,    0x06E #"8bar-bottom7" 
#.MIDCOL:  lbi   $24,    0x06F #"midcol"

#.MIDROW   lbi   $24,    0x070 #"midrow" 
#.CROSS:   lbi   $24,    0x071 #"cross" 
#.ULW:     lbi   $24,    0x072 #"upper left window" 
#.URW:     lbi   $24,    0x073 #"upper right window" 
#.LLW:     lbi   $24,    0x074 #"lower left window" 
#.LRW:     lbi   $24,    0x075 #"lower right window" 
#.LCROSS:  lbi   $24,    0x076 #"cross left" 
#.RCROSS:  lbi   $24,    0x077 #"cross right" 
#.DCROSS:  lbi   $24,    0x078 #"cross down" 
#.UCROSS:  lbi   $24,    0x079 #"cross up" 
#.POINT:   lbi   $24,    0x07A #"point" 
#.ELIPSE:  lbi   $24,    0x07B #"elipsies" 
#.GRID1:   lbi   $24,    0x07C #"grid1" 
#.GRID2:   lbi   $24,    0x07D #"grid2" 
#.COLS1:   lbi   $24,    0x07E #"cols1" 
#.COLS2:   lbi   $24,    0x07F #"cols2" 

###//== START OF REFERENCES ===============================================//###
################################################################################
# * MMU MAP:
######################
# * MODULE        BEGIN     END       SIZE
# * instructions  0x00000   0x03FFF   0x04000
# * filter        0x04000   0x05007   0x01008
# * compact flash 0x05008   0x06007   0x01000
# * VGA           0x06008   0x06807   0x00800
# * Codec         0x06808   0x06817   0x00010
# * Timer         0x06818   0x0681B   0x00004
# * Buttons       0x0681C   0x0681F   0x00004
# * SPART         0x06820   0x06823   0x00004
# * Interrupt     0x06824   0x06824   0x00001
################################################################################
# * REGISTER USES:
######################
# *      $zero   = 0     = constant 0
# *      $at     = 1     = scratch register
# *      $v0-$v1 = 2-3   = function return values
# *      $a0-$a3 = 4-7   = function arguments
# *      $t0-$t7 = 8-15  = temporary
# *      $s0-$s7 = 16-23 = saved temporary
# *      $t8-$t9 = 24-25 = temporary
# *      $k0-$k1 = 26-27 = reserved: interrupt handlers
# *      $gp     = 28    = global pointer
# *      $sp     = 29    = stack pointer
# *      $fp     = 30    = frame pointer
# *      $ra     = 31    = return address
################################################################################
# * IMMEDIATE BOUNDS:
######################
# *    instructions(jal, j):         0x40000(-262144) = most negative(19bits)
# *    instructions(jal, j):         0x6ffff(458751)  = most positive(19bits)
# *    opcodes(5,7,12,13,15):        0x2000(-8192)    = most negative(14bits)
# *    opcodes(5,7,12,13,15):        0x1fff(8191)     = most positive(14bits)
# *    instructions(lbi, slbi):      0x800(-2048)     = most negative(12bits)
# *    instruction(lbi, slbi):       0x7ff(2047)      = most positive(12bits)
# *    opcodes(8-11,16,17,19,23,25): 0x100(-256)      = most negative(9 bits)
# *    opcodes(8-11,16,17,19,23,25): 0xff(255)        = most positive(9 bits)
################################################################################
# * INSTRUCTION ENCODING:
######################
//-------------------- JUST OPCODE -------------------------------------------//
# * HALT                          0000 0xxx xxxx xxxx xxxx xxxx;00
# * NOP                           0000 1xxx xxxx xxxx xxxx xxxx;01
# * RETI                          0001 0xxx xxxx xxxx xxxx xxxx;02
# * RTI                           0001 1xxx xxxx xxxx xxxx xxxx;03
# * RET                           0111 0xxx xxxx xxxx xxxx xxxx;14
//----------------- JUST IMMEDIATE -------------------------------------------//
# * J   <immediate>                               0010 0iii iiii iiii iiii iiii;04
# * JAL <immediate>                               0011 0iii iiii iiii iiii iiii;06
//------------- TWO REGISTERS AND IMMEDIATE ----------------------------------//
# * ADDI  <Rd>, <Rs>, <immediate>       0100 0sss ssdd dddi iiii iiii;08
# * SUBI  <Rd>, <Rs>, <immediate>       0100 1sss ssdd dddi iiii iiii;09
# * ORI   <Rd>, <Rs>, <immediate>       0101 0sss ssdd dddi iiii iiii;10
# * ANDI  <Rd>, <Rs>, <immediate>       0101 1sss ssdd dddi iiii iiii;11
# * ST    <Rd>, <Rs>, <immediate>       1000 0sss ssdd dddi iiii iiii;16
# * LD    <Rd>, <Rs>, <immediate>       1000 1sss ssdd dddi iiii iiii;17
# * STU   <Rd>, <Rs>, <immediate>       1001 1sss ssdd dddi iiii iiii;19
# * ROLI  <Rd>, <Rs>, <immediate>       1010 0sss ssdd dddi iiii iiii;20
# * SLLI  <Rd>, <Rs>, <immediate>       1010 1sss ssdd dddi iiii iiii;21
# * RORI  <Rd>, <Rs>, <immediate>       1011 0sss ssdd dddi iiii iiii;22
# * SRAI  <Rd>, <Rs>, <immediate>       1011 1sss ssdd dddi iiii iiii;23
# * BTR   <Rd>, <Rs>, <immediate> 1100 1sss ssdd dddx xxxx xxxx;25
//-------------- ONE REGISTER AND IMMEDIATE ----------------------------------//
# * BEQZ  <Rs>, <immediate>       0110 0sss ssii iiii iiii iiii;12
# * BNEZ  <Rs>, <immediate>       0110 1sss ssii iiii iiii iiii;13
# * JALR  <Rs>, <immediate>       0011 1sss ssii iiii iiii iiii;07
# * JR    <Rs>, <immediate>       0010 1sss ssii iiii iiii iiii;05
# * BLTZ  <Rs>, <immediate>       0111 1sss ssii iiii iiii iiii;15
# * SLBI  <Rs>, <immediate>       1001 0sss ssxx iiii iiii iiii;18
# * LBI   <Rs>, <immediate>       1100 0sss ssxx iiii iiii iiii;24

//------------------- THREE REGISTERS ----------------------------------------//
# * ROL <Rd>, <Rs>, <Rt>                      1101 0sss sstt tttd dddd xx00;26
# * SLL <Rd>, <Rs>, <Rt>                1101 0sss sstt tttd dddd xx01;26
# * ROR <Rd>, <Rs>, <Rt>                1101 0sss sstt tttd dddd xx10;26
# * SRA <Rd>, <Rs>, <Rt>                1101 0sss sstt tttd dddd xx11;26
# * ADD <Rd>, <Rs>, <Rt>          1101 1sss sstt tttd dddd xx00;27
# * SUB <Rd>, <Rs>, <Rt>          1101 1sss sstt tttd dddd xx01;27
# * OR  <Rd>, <Rs>, <Rt>          1101 1sss sstt tttd dddd xx10;27
# * AND <Rd>, <Rs>, <Rt>          1101 1sss sstt tttd dddd xx11;27
# * SEQ <Rd>, <Rs>, <Rt>                1110 0sss sstt tttd dddd xxxx;28
# * SLT <Rd>, <Rs>, <Rt>                1110 1sss sstt tttd dddd xxxx;29
# * SLE <Rd>, <Rs>, <Rt>                1111 0sss sstt tttd dddd xxxx;30
# * SCO <Rd>, <Rs>, <Rt>                1111 1sss sstt tttd dddd xxxx;31
################################################################################
###//== END OF REFERENCES =================================================//###




