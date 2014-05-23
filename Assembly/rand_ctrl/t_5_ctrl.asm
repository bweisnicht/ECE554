 // seed 5
 lbi r0, 134
 slbi r0, 69
 lbi r1, 201
 slbi r1, 50
 lbi r2, 132
 slbi r2, 221
 lbi r3, 43
 slbi r3, 122
 lbi r4, 65
 slbi r4, 217
 lbi r5, 248
 slbi r5, 115
 lbi r6, 187
 slbi r6, 71
 lbi r31, 45
 slbi r31, 169
 j 24
 nop // icount 17
 nop // icount 18
 nop // icount 19
 nop // icount 20
 nop // icount 21
 nop // icount 22
 nop // icount 23
 nop // icount 24
 nop // icount 25
 nop // icount 26
 nop // icount 27
 nop // icount 28
 lbi r2, 0
 lbi r4, 0
 beqz r6, 8
 sle r6, r7, r2 // icount 32
 slt r4, r3, r5 // icount 33
 sra r7, r3, r1 // icount 34
 addi r6, r31, 2
 sll r6, r3, r7 // icount 36
 rol r6, r0, r6 // icount 37
 addi r31, r5, 6
 lbi r2, 11
 lbi r0, 0
 lbi r5, 0
 nop // to align branch icount 42
 bnez r2, 24
 addi r3, r4, 13
 rol r0, r2, r1 // icount 45
 sra r4, r7, r5 // icount 46
 rol r1, r3, r0 // icount 47
 rol r3, r5, r2 // icount 48
 nop // to align meminst icount 49
 andi r5, r5, 0xfe
 st r5, r5, 12
 or r0, r4, r7 // icount 52
 sle r3, r1, r5 // icount 53
 ori r31, r5, 13
 rol r2, r1, r7 // icount 55
 rori r31, r1, 11
 subi r0, r1, 15
 seq r2, r4, r5 // icount 58
 and r4, r1, r7 // icount 59
 lbi r31, 2
 sll r4, r2, r3 // icount 61
 slt r5, r0, r3 // icount 62
 sco r2, r0, r1 // icount 63
 roli r31, r0, 1
 sra r0, r4, r3 // icount 65
 addi r6, r0, 4
 sub r6, r3, r3 // icount 67
 addi r4, r2, 7
 lbi r5, 12
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 72
 beqz r6, 0
 lbi r3, 0
 lbi r3, 0
 nop // to align branch icount 76
 beqz r0, 32
 addi r0, r31, 6
 nop // to align meminst icount 79
 andi r1, r1, 0xfe
 ld r1, r1, 12
 sle r1, r4, r6 // icount 82
 sle r5, r3, r5 // icount 83
 sub r1, r1, r3 // icount 84
 andi r3, r6, 15
 andi r0, r0, 0xfe
 stu r6, r0, 8
 andi r6, r4, 12
 seq r7, r3, r2 // icount 89
 slt r4, r0, r1 // icount 90
 seq r4, r0, r1 // icount 91
 sle r7, r1, r0 // icount 92
 sco r3, r4, r2 // icount 93
 sub r4, r2, r1 // icount 94
 or r3, r5, r1 // icount 95
 sco r5, r4, r3 // icount 96
 seq r1, r1, r3 // icount 97
 or r6, r2, r3 // icount 98
 slbi r6, 8
 sco r2, r7, r6 // icount 100
 srai r4, r0, 15
 roli r1, r3, 11
 add r2, r3, r7 // icount 103
 andi r5, r5, 0xfe
 st r6, r5, 8
 seq r1, r6, r1 // icount 106
 sco r6, r6, r7 // icount 107
 ror r2, r3, r3 // icount 108
 sra r4, r3, r1 // icount 109
 sra r5, r3, r7 // icount 110
 lbi r6, 3
 srai r6, r4, 6
 ror r6, r7, r1 // icount 113
 lbi r5, 0
 lbi r2, 0
 nop // to align branch icount 116
 beqz r5, 8
 add r7, r7, r6 // icount 118
 lbi r6, 6
 sle r7, r6, r1 // icount 120
 roli r6, r6, 7
 roli r0, r6, 10
 nop // to align meminst icount 123
 andi r3, r3, 0xfe
 stu r5, r3, 10
 add r4, r5, r3 // icount 126
 slbi r5, 6
 lbi r3, 0
 lbi r2, 0
 nop // to align branch icount 130
 beqz r4, 20
 lbi r6, 12
 slt r0, r4, r5 // icount 133
 sle r1, r6, r2 // icount 134
 ori r4, r31, 2
 or r3, r1, r2 // icount 136
 rol r4, r6, r5 // icount 137
 sra r7, r4, r1 // icount 138
 nop // to align meminst icount 139
 andi r6, r6, 0xfe
 ld r5, r6, 4
 srai r1, r3, 2
 lbi r2, 3
 lbi r5, 4
 rol r3, r6, r2 // icount 145
 ror r5, r2, r4 // icount 146
 nop // to align meminst icount 147
 andi r2, r2, 0xfe
 stu r4, r2, 14
 seq r0, r1, r1 // icount 150
 lbi r1, 14
 and r5, r6, r7 // icount 152
 ror r2, r7, r2 // icount 153
 and r4, r7, r5 // icount 154
 and r7, r0, r6 // icount 155
 lbi r31, 0
 lbi r5, 0
 nop // to align branch icount 158
 beqz r5, 8
 and r3, r7, r1 // icount 160
 srai r5, r0, 7
 add r2, r7, r5 // icount 162
 andi r31, r6, 7
 andi r3, r3, 0xfe
 stu r3, r3, 10
 rol r0, r5, r2 // icount 166
 slt r1, r6, r3 // icount 167
 srai r1, r4, 1
 j 26
 nop // icount 170
 nop // icount 171
 nop // icount 172
 nop // icount 173
 nop // icount 174
 nop // icount 175
 nop // icount 176
 nop // icount 177
 nop // icount 178
 nop // icount 179
 nop // icount 180
 nop // icount 181
 nop // icount 182
 lbi r31, 0
 lbi r31, 0
 bnez r31, 12
 ori r5, r3, 15
 and r0, r0, r6 // icount 187
 subi r31, r1, 11
 seq r0, r1, r5 // icount 189
 rori r6, r5, 6
 and r5, r3, r2 // icount 191
 seq r0, r7, r3 // icount 192
 lbi r2, 4
 andi r1, r1, 2
 nop // to align meminst icount 195
 andi r2, r2, 0xfe
 stu r3, r2, 8
 sll r6, r3, r0 // icount 198
 add r3, r3, r0 // icount 199
 lbi r5, 0
 lbi r2, 0
 nop // to align branch icount 202
 bnez r6, 8
 srai r1, r2, 14
 sle r5, r7, r7 // icount 205
 andi r31, r31, 0xfe
 stu r2, r31, 12
 rol r6, r7, r3 // icount 208
 roli r6, r3, 9
 and r5, r3, r4 // icount 210
 ori r6, r2, 5
 rori r2, r6, 6
 j 4
 nop // icount 214
 nop // icount 215
 lbi r2, 0
 lbi r31, 0
 nop // to align branch icount 218
 beqz r31, 32
 rori r4, r31, 10
 sle r3, r0, r0 // icount 221
 andi r5, r5, 0xfe
 stu r5, r5, 10
 or r7, r0, r6 // icount 224
 nop // to align meminst icount 225
 andi r1, r1, 0xfe
 ld r4, r1, 0
 addi r5, r0, 8
 subi r31, r1, 3
 ori r2, r0, 13
 srai r1, r5, 6
 or r7, r6, r4 // icount 232
 addi r2, r31, 6
 andi r2, r0, 4
 roli r3, r0, 5
 add r3, r2, r1 // icount 236
 lbi r4, 14
 and r2, r3, r7 // icount 238
 slbi r3, 12
 roli r0, r2, 4
 or r4, r3, r2 // icount 241
 seq r1, r5, r7 // icount 242
 slbi r2, 2
 sle r5, r3, r3 // icount 244
 andi r2, r2, 8
 addi r3, r3, 6
 sub r4, r5, r4 // icount 247
 lbi r1, 5
 nop // to align meminst icount 249
 andi r2, r2, 0xfe
 ld r3, r2, 0
 add r5, r5, r0 // icount 252
 roli r5, r6, 0
 andi r0, r5, 8
 sra r0, r6, r0 // icount 255
 sub r6, r3, r3 // icount 256
 j 14
 nop // icount 258
 nop // icount 259
 nop // icount 260
 nop // icount 261
 nop // icount 262
 nop // icount 263
 nop // icount 264
 lbi r3, 0
 lbi r2, 0
 bnez r6, 28
 add r2, r5, r0 // icount 268
 sll r0, r6, r3 // icount 269
 or r5, r6, r4 // icount 270
 addi r4, r4, 11
 slli r4, r1, 5
 sle r7, r1, r3 // icount 273
 andi r3, r3, 0xfe
 ld r5, r3, 8
 roli r31, r4, 1
 sco r0, r3, r4 // icount 277
 ori r2, r6, 8
 sub r4, r6, r0 // icount 279
 sra r5, r3, r3 // icount 280
 lbi r1, 0
 srai r4, r1, 6
 add r0, r6, r3 // icount 283
 and r5, r3, r3 // icount 284
 nop // to align meminst icount 285
 andi r2, r2, 0xfe
 ld r3, r2, 14
 sle r4, r4, r4 // icount 288
 slli r2, r5, 3
 ori r1, r0, 5
 add r7, r6, r0 // icount 291
 ror r6, r3, r0 // icount 292
 lbi r2, 4
 ori r0, r2, 10
 ror r3, r5, r0 // icount 295
 sle r5, r7, r3 // icount 296
 or r4, r1, r4 // icount 297
 seq r1, r2, r3 // icount 298
 lbi r3, 0
 lbi r1, 0
 beqz r6, 24
 ror r4, r1, r3 // icount 302
 add r7, r5, r6 // icount 303
 seq r1, r0, r7 // icount 304
 sub r4, r6, r1 // icount 305
 sub r0, r0, r6 // icount 306
 and r0, r1, r3 // icount 307
 ror r3, r4, r5 // icount 308
 rori r31, r2, 12
 rol r3, r5, r4 // icount 310
 sle r6, r3, r7 // icount 311
 andi r6, r6, 0xfe
 stu r1, r6, 12
 ori r5, r1, 3
 roli r6, r4, 7
 ori r5, r0, 11
 sco r1, r7, r0 // icount 317
 ori r4, r31, 9
 rol r1, r6, r0 // icount 319
 subi r0, r6, 8
 sco r7, r5, r5 // icount 321
 sle r2, r3, r7 // icount 322
 roli r0, r4, 13
 or r1, r2, r7 // icount 324
 rori r0, r0, 10
 slli r5, r6, 6
 lbi r4, 0
 lbi r2, 0
 bnez r2, 28
 lbi r0, 7
 slbi r2, 8
 roli r0, r4, 2
 nop // to align meminst icount 333
 andi r31, r31, 0xfe
 st r1, r31, 12
 rol r7, r6, r0 // icount 336
 or r0, r4, r7 // icount 337
 lbi r6, 4
 subi r3, r1, 9
 andi r2, r1, 7
 or r3, r6, r6 // icount 341
 add r1, r6, r4 // icount 342
 sle r1, r0, r5 // icount 343
 andi r2, r2, 0xfe
 stu r4, r2, 10
 sub r4, r5, r7 // icount 346
 sll r6, r2, r0 // icount 347
 slli r0, r0, 6
 sra r3, r1, r6 // icount 349
 lbi r5, 7
 sll r6, r5, r3 // icount 351
 sco r1, r2, r7 // icount 352
 subi r3, r2, 0
 rori r31, r5, 0
 ori r3, r31, 8
 srai r2, r6, 15
 seq r6, r1, r6 // icount 357
 addi r31, r6, 13
 and r6, r2, r1 // icount 359
 sll r0, r5, r2 // icount 360
 lbi r6, 0
 lbi r3, 0
 bnez r1, 4
 roli r2, r3, 13
 sub r7, r0, r2 // icount 365
 andi r1, r1, 0xfe
 ld r1, r1, 6
 addi r4, r0, 3
 lbi r0, 0
 lbi r6, 0
 beqz r2, 16
 rori r6, r31, 7
 sco r6, r5, r7 // icount 373
 sle r2, r7, r2 // icount 374
 andi r31, r2, 11
 subi r3, r4, 0
 ori r6, r6, 8
 andi r1, r1, 0xfe
 ld r5, r1, 8
 seq r2, r6, r6 // icount 380
 nop // to align meminst icount 381
 andi r1, r1, 0xfe
 ld r4, r1, 6
 andi r5, r2, 11
 seq r5, r0, r0 // icount 385
 seq r5, r0, r1 // icount 386
 sll r5, r3, r3 // icount 387
 andi r0, r0, 0xfe
 ld r31, r0, 14
 seq r6, r1, r0 // icount 390
 add r5, r4, r1 // icount 391
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 394
 beqz r5, 24
 add r7, r7, r5 // icount 396
 sco r1, r1, r3 // icount 397
 lbi r5, 0
 ori r5, r0, 13
 subi r1, r5, 0
 and r2, r7, r3 // icount 401
 andi r0, r0, 0xfe
 ld r1, r0, 14
 sub r6, r7, r7 // icount 404
 add r5, r5, r4 // icount 405
 ror r6, r5, r0 // icount 406
 rori r3, r2, 13
 slli r5, r1, 13
 sra r2, r0, r2 // icount 409
 and r2, r0, r1 // icount 410
 slli r2, r6, 12
 rori r3, r5, 2
 roli r6, r5, 12
 sub r0, r1, r6 // icount 414
 ror r4, r7, r1 // icount 415
 srai r31, r31, 12
 ori r31, r3, 14
 addi r1, r2, 10
 addi r6, r0, 5
 subi r1, r4, 5
 lbi r6, 0
 lbi r3, 0
 bnez r0, 32
 slbi r1, 0
 addi r0, r6, 10
 add r4, r2, r6 // icount 426
 and r4, r5, r5 // icount 427
 andi r5, r5, 0xfe
 st r1, r5, 0
 sra r1, r1, r0 // icount 430
 slbi r4, 3
 and r7, r0, r7 // icount 432
 addi r3, r31, 15
 slt r7, r0, r3 // icount 434
 or r4, r4, r0 // icount 435
 addi r2, r3, 13
 rol r6, r0, r1 // icount 437
 andi r1, r1, 0xfe
 ld r1, r1, 6
 sra r5, r3, r0 // icount 440
 add r2, r1, r6 // icount 441
 ori r3, r1, 12
 slli r6, r5, 2
 andi r4, r4, 10
 or r0, r2, r4 // icount 445
 subi r3, r3, 14
 sll r1, r3, r0 // icount 447
 addi r2, r3, 13
 nop // to align meminst icount 449
 andi r1, r1, 0xfe
 ld r5, r1, 4
 srai r5, r0, 5
 nop // to align meminst icount 453
 andi r2, r2, 0xfe
 ld r31, r2, 8
 slbi r31, 14
 srai r4, r6, 1
 srai r1, r2, 2
 slt r7, r3, r0 // icount 459
 ror r1, r4, r3 // icount 460
 nop // to align meminst icount 461
 andi r31, r31, 0xfe
 st r3, r31, 6
 lbi r3, 0
 lbi r4, 0
 nop // to align branch icount 466
 beqz r1, 24
 srai r4, r2, 14
 sub r1, r2, r5 // icount 469
 subi r3, r4, 5
 slli r1, r5, 1
 sll r7, r0, r1 // icount 472
 nop // to align meminst icount 473
 andi r3, r3, 0xfe
 ld r5, r3, 2
 sra r1, r3, r3 // icount 476
 rori r4, r1, 8
 andi r6, r6, 5
 nop // to align meminst icount 479
 andi r2, r2, 0xfe
 stu r2, r2, 12
 andi r6, r6, 0xfe
 ld r3, r6, 14
 lbi r4, 15
 add r4, r1, r2 // icount 485
 sll r0, r3, r5 // icount 486
 ori r5, r2, 1
 ori r6, r6, 6
 nop // to align meminst icount 489
 andi r4, r4, 0xfe
 st r3, r4, 10
 slt r5, r6, r4 // icount 492
 add r2, r2, r2 // icount 493
 slbi r2, 3
 nop // to align meminst icount 495
 andi r1, r1, 0xfe
 stu r3, r1, 6
 slbi r5, 1
 slt r1, r4, r0 // icount 499
 subi r6, r1, 7
 lbi r4, 0
 lbi r31, 0
 bnez r4, 8
 sle r3, r1, r7 // icount 504
 subi r6, r2, 15
 andi r2, r2, 0xfe
 st r5, r2, 12
 sra r4, r1, r3 // icount 508
 ror r6, r1, r1 // icount 509
 and r0, r2, r1 // icount 510
 sle r2, r7, r0 // icount 511
 sll r1, r7, r7 // icount 512
 j 14
 nop // icount 514
 nop // icount 515
 nop // icount 516
 nop // icount 517
 nop // icount 518
 nop // icount 519
 nop // icount 520
 lbi r6, 0
 lbi r4, 0
 bnez r1, 4
 slli r31, r0, 11
 slli r5, r2, 9
 sll r1, r3, r5 // icount 526
 addi r6, r1, 3
 j 22
 nop // icount 529
 nop // icount 530
 nop // icount 531
 nop // icount 532
 nop // icount 533
 nop // icount 534
 nop // icount 535
 nop // icount 536
 nop // icount 537
 nop // icount 538
 nop // icount 539
 lbi r0, 0
 lbi r2, 0
 nop // to align branch icount 542
 bnez r3, 20
 sra r2, r4, r2 // icount 544
 subi r4, r2, 11
 sle r4, r1, r4 // icount 546
 nop // to align meminst icount 547
 andi r0, r0, 0xfe
 ld r31, r0, 4
 and r6, r5, r6 // icount 550
 and r7, r6, r4 // icount 551
 sll r6, r4, r2 // icount 552
 srai r4, r0, 7
 sll r4, r4, r5 // icount 554
 or r7, r5, r7 // icount 555
 rori r1, r0, 3
 subi r6, r1, 0
 andi r2, r2, 0xfe
 st r1, r2, 6
 sle r0, r2, r7 // icount 560
 slbi r1, 7
 and r6, r2, r4 // icount 562
 add r7, r4, r0 // icount 563
 slli r2, r31, 3
 nop // to align meminst icount 565
 andi r2, r2, 0xfe
 st r1, r2, 8
 or r1, r1, r1 // icount 568
 j 20
 nop // icount 570
 nop // icount 571
 nop // icount 572
 nop // icount 573
 nop // icount 574
 nop // icount 575
 nop // icount 576
 nop // icount 577
 nop // icount 578
 nop // icount 579
 lbi r1, 0
 lbi r2, 0
 nop // to align branch icount 582
 beqz r5, 8
 andi r31, r6, 2
 nop // to align meminst icount 585
 andi r0, r0, 0xfe
 ld r4, r0, 10
 sle r4, r0, r6 // icount 588
 slbi r3, 12
 seq r6, r0, r3 // icount 590
 ror r6, r1, r1 // icount 591
 slbi r2, 3
 ori r2, r2, 13
 j 18
 nop // icount 595
 nop // icount 596
 nop // icount 597
 nop // icount 598
 nop // icount 599
 nop // icount 600
 nop // icount 601
 nop // icount 602
 nop // icount 603
 j 24
 nop // icount 605
 nop // icount 606
 nop // icount 607
 nop // icount 608
 nop // icount 609
 nop // icount 610
 nop // icount 611
 nop // icount 612
 nop // icount 613
 nop // icount 614
 nop // icount 615
 nop // icount 616
 lbi r6, 0
 lbi r6, 0
 bnez r5, 4
 sra r4, r1, r6 // icount 620
 sra r6, r6, r0 // icount 621
 rol r1, r6, r1 // icount 622
 nop // to align meminst icount 623
 andi r6, r6, 0xfe
 stu r5, r6, 12
 j 4
 nop // icount 627
 nop // icount 628
 j 24
 nop // icount 630
 nop // icount 631
 nop // icount 632
 nop // icount 633
 nop // icount 634
 nop // icount 635
 nop // icount 636
 nop // icount 637
 nop // icount 638
 nop // icount 639
 nop // icount 640
 nop // icount 641
 lbi r3, 0
 lbi r31, 0
 nop // to align branch icount 644
 beqz r2, 12
 sra r7, r5, r2 // icount 646
 sll r6, r0, r6 // icount 647
 sle r6, r1, r0 // icount 648
 ror r4, r3, r4 // icount 649
 slt r0, r7, r5 // icount 650
 sle r3, r7, r2 // icount 651
 slt r3, r6, r1 // icount 652
 sll r1, r1, r0 // icount 653
 sll r1, r4, r4 // icount 654
 srai r2, r3, 8
 seq r3, r7, r1 // icount 656
 seq r1, r3, r5 // icount 657
 lbi r3, 0
 lbi r31, 0
 nop // to align branch icount 660
 beqz r31, 16
 slli r3, r3, 12
 lbi r0, 1
 andi r5, r5, 0xfe
 stu r6, r5, 0
 sle r5, r4, r0 // icount 666
 slt r4, r4, r2 // icount 667
 andi r1, r1, 0xfe
 stu r6, r1, 0
 and r7, r4, r7 // icount 670
 slbi r0, 8
 and r5, r4, r4 // icount 672
 rol r1, r4, r3 // icount 673
 andi r3, r3, 0xfe
 stu r4, r3, 8
 addi r3, r6, 4
 sra r6, r7, r1 // icount 677
 roli r1, r3, 3
 rol r2, r7, r5 // icount 679
 andi r4, r4, 0xfe
 st r5, r4, 8
 j 10
 nop // icount 683
 nop // icount 684
 nop // icount 685
 nop // icount 686
 nop // icount 687
 lbi r2, 0
 lbi r4, 0
 nop // to align branch icount 690
 bnez r5, 20
 ror r0, r2, r6 // icount 692
 sll r7, r7, r2 // icount 693
 slt r4, r1, r5 // icount 694
 rori r31, r6, 2
 and r6, r4, r3 // icount 696
 sco r1, r2, r1 // icount 697
 rori r2, r3, 5
 sra r5, r7, r7 // icount 699
 roli r4, r3, 5
 add r4, r0, r3 // icount 701
 sll r5, r1, r6 // icount 702
 ror r5, r3, r1 // icount 703
 rol r1, r3, r1 // icount 704
 ori r0, r1, 1
 subi r1, r5, 8
 subi r0, r5, 2
 addi r31, r5, 0
 sub r1, r5, r4 // icount 709
 sco r6, r1, r7 // icount 710
 srai r5, r6, 12
 j 10
 nop // icount 713
 nop // icount 714
 nop // icount 715
 nop // icount 716
 nop // icount 717
 j 22
 nop // icount 719
 nop // icount 720
 nop // icount 721
 nop // icount 722
 nop // icount 723
 nop // icount 724
 nop // icount 725
 nop // icount 726
 nop // icount 727
 nop // icount 728
 nop // icount 729
 lbi r1, 0
 lbi r5, 0
 nop // to align branch icount 732
 beqz r4, 24
 add r1, r6, r7 // icount 734
 sco r1, r6, r3 // icount 735
 srai r2, r5, 12
 add r1, r6, r3 // icount 737
 slli r0, r0, 14
 sll r3, r2, r4 // icount 739
 or r5, r3, r1 // icount 740
 srai r1, r3, 3
 and r1, r0, r7 // icount 742
 srai r2, r1, 10
 andi r5, r5, 0xfe
 st r1, r5, 2
 ori r6, r6, 0
 rori r1, r0, 14
 srai r2, r1, 2
 ori r5, r5, 5
 andi r5, r5, 0xfe
 stu r31, r5, 4
 slbi r0, 14
 sub r5, r1, r0 // icount 753
 sll r4, r7, r5 // icount 754
 addi r4, r0, 2
 subi r3, r6, 6
 ror r1, r0, r6 // icount 757
 andi r2, r2, 0xfe
 ld r6, r2, 12
 andi r5, r5, 0xfe
 st r3, r5, 14
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 764
 beqz r31, 4
 rori r2, r0, 11
 sle r5, r2, r1 // icount 767
 andi r6, r6, 0xfe
 stu r4, r6, 14
 and r3, r1, r3 // icount 770
 j 26
 nop // icount 772
 nop // icount 773
 nop // icount 774
 nop // icount 775
 nop // icount 776
 nop // icount 777
 nop // icount 778
 nop // icount 779
 nop // icount 780
 nop // icount 781
 nop // icount 782
 nop // icount 783
 nop // icount 784
 j 20
 nop // icount 786
 nop // icount 787
 nop // icount 788
 nop // icount 789
 nop // icount 790
 nop // icount 791
 nop // icount 792
 nop // icount 793
 nop // icount 794
 nop // icount 795
 j 12
 nop // icount 797
 nop // icount 798
 nop // icount 799
 nop // icount 800
 nop // icount 801
 nop // icount 802
 lbi r4, 0
 lbi r2, 0
 beqz r6, 20
 roli r4, r1, 15
 nop // to align meminst icount 807
 andi r0, r0, 0xfe
 st r4, r0, 12
 sco r1, r5, r2 // icount 810
 srai r3, r3, 13
 slli r4, r31, 15
 nop // to align meminst icount 813
 andi r2, r2, 0xfe
 ld r31, r2, 2
 andi r4, r4, 0xfe
 st r1, r4, 10
 andi r31, r31, 0xfe
 stu r0, r31, 2
 roli r2, r0, 15
 subi r5, r2, 5
 addi r1, r1, 1
 nop // to align meminst icount 823
 andi r0, r0, 0xfe
 st r2, r0, 6
 and r5, r0, r0 // icount 826
 addi r4, r1, 0
 ori r1, r0, 12
 sra r3, r4, r2 // icount 829
 andi r5, r5, 0xfe
 stu r5, r5, 10
 ori r3, r31, 4
 nop // to align meminst icount 833
 andi r5, r5, 0xfe
 stu r2, r5, 4
 or r1, r7, r6 // icount 836
 lbi r4, 0
 lbi r2, 0
 bnez r0, 4
 sll r2, r4, r5 // icount 840
 seq r4, r2, r0 // icount 841
 lbi r5, 15
 andi r5, r2, 3
 j 8
 nop // icount 845
 nop // icount 846
 nop // icount 847
 nop // icount 848
 lbi r3, 0
 lbi r4, 0
 beqz r2, 24
 lbi r2, 2
 sub r4, r1, r4 // icount 853
 sle r2, r5, r7 // icount 854
 srai r0, r2, 3
 sll r5, r6, r5 // icount 856
 add r7, r4, r5 // icount 857
 slbi r2, 13
 addi r4, r1, 13
 and r5, r3, r0 // icount 860
 nop // to align meminst icount 861
 andi r1, r1, 0xfe
 ld r0, r1, 0
 lbi r5, 13
 roli r31, r2, 11
 subi r4, r1, 8
 sle r4, r1, r7 // icount 867
 ori r3, r0, 6
 ori r2, r1, 6
 sub r3, r6, r1 // icount 870
 sll r5, r2, r2 // icount 871
 sra r7, r1, r1 // icount 872
 sra r4, r6, r6 // icount 873
 add r4, r1, r4 // icount 874
 sll r0, r6, r5 // icount 875
 add r4, r0, r3 // icount 876
 sll r0, r2, r3 // icount 877
 j 30
 nop // icount 879
 nop // icount 880
 nop // icount 881
 nop // icount 882
 nop // icount 883
 nop // icount 884
 nop // icount 885
 nop // icount 886
 nop // icount 887
 nop // icount 888
 nop // icount 889
 nop // icount 890
 nop // icount 891
 nop // icount 892
 nop // icount 893
 lbi r4, 0
 lbi r1, 0
 nop // to align branch icount 896
 beqz r4, 12
 andi r1, r1, 0xfe
 ld r2, r1, 10
 sle r7, r4, r7 // icount 900
 subi r1, r2, 6
 slt r0, r4, r2 // icount 902
 and r4, r1, r1 // icount 903
 andi r1, r1, 0xfe
 ld r3, r1, 14
 sll r0, r7, r3 // icount 906
 sle r7, r4, r7 // icount 907
 sle r2, r6, r6 // icount 908
 and r6, r0, r0 // icount 909
 andi r6, r6, 0xfe
 stu r4, r6, 14
 slli r3, r3, 2
 j 22
 nop // icount 914
 nop // icount 915
 nop // icount 916
 nop // icount 917
 nop // icount 918
 nop // icount 919
 nop // icount 920
 nop // icount 921
 nop // icount 922
 nop // icount 923
 nop // icount 924
 lbi r0, 0
 lbi r5, 0
 bnez r5, 28
 andi r0, r0, 0xfe
 st r5, r0, 0
 andi r6, r6, 0xfe
 st r4, r6, 12
 seq r7, r5, r3 // icount 932
 slt r3, r6, r3 // icount 933
 add r5, r3, r5 // icount 934
 subi r31, r31, 7
 sco r7, r1, r2 // icount 936
 sra r1, r6, r7 // icount 937
 sle r5, r2, r0 // icount 938
 sll r5, r4, r2 // icount 939
 sle r7, r6, r1 // icount 940
 sco r0, r6, r0 // icount 941
 add r0, r7, r5 // icount 942
 lbi r6, 12
 ori r31, r31, 10
 seq r5, r5, r4 // icount 945
 sub r1, r0, r0 // icount 946
 slli r6, r3, 0
 lbi r2, 3
 rol r1, r4, r5 // icount 949
 slbi r2, 15
 seq r1, r6, r4 // icount 951
 sle r3, r5, r2 // icount 952
 slbi r5, 8
 seq r7, r6, r6 // icount 954
 ori r0, r5, 15
 and r5, r4, r7 // icount 956
 sco r7, r2, r4 // icount 957
 j 24
 nop // icount 959
 nop // icount 960
 nop // icount 961
 nop // icount 962
 nop // icount 963
 nop // icount 964
 nop // icount 965
 nop // icount 966
 nop // icount 967
 nop // icount 968
 nop // icount 969
 nop // icount 970
 j 10
 nop // icount 972
 nop // icount 973
 nop // icount 974
 nop // icount 975
 nop // icount 976
 j 28
 nop // icount 978
 nop // icount 979
 nop // icount 980
 nop // icount 981
 nop // icount 982
 nop // icount 983
 nop // icount 984
 nop // icount 985
 nop // icount 986
 nop // icount 987
 nop // icount 988
 nop // icount 989
 nop // icount 990
 nop // icount 991
 j 28
 nop // icount 993
 nop // icount 994
 nop // icount 995
 nop // icount 996
 nop // icount 997
 nop // icount 998
 nop // icount 999
 nop // icount 1000
 nop // icount 1001
 nop // icount 1002
 nop // icount 1003
 nop // icount 1004
 nop // icount 1005
 nop // icount 1006
 lbi r6, 0
 lbi r6, 0
 beqz r3, 0
 j 22
 nop // icount 1011
 nop // icount 1012
 nop // icount 1013
 nop // icount 1014
 nop // icount 1015
 nop // icount 1016
 nop // icount 1017
 nop // icount 1018
 nop // icount 1019
 nop // icount 1020
 nop // icount 1021
 j 14
 nop // icount 1023
 nop // icount 1024
 nop // icount 1025
 nop // icount 1026
 nop // icount 1027
 nop // icount 1028
 nop // icount 1029
 lbi r31, 0
 lbi r6, 0
 nop // to align branch icount 1032
 bnez r6, 12
 andi r6, r5, 9
 sub r6, r2, r7 // icount 1035
 rori r3, r4, 5
 rori r5, r0, 8
 lbi r1, 4
 sub r7, r4, r5 // icount 1039
 andi r4, r4, 0xfe
 stu r2, r4, 6
 rol r3, r3, r0 // icount 1042
 roli r4, r1, 12
 andi r1, r1, 0xfe
 stu r3, r1, 8
 slli r0, r31, 3
 ori r1, r0, 0
 j 20
 nop // icount 1049
 nop // icount 1050
 nop // icount 1051
 nop // icount 1052
 nop // icount 1053
 nop // icount 1054
 nop // icount 1055
 nop // icount 1056
 nop // icount 1057
 nop // icount 1058
 j 4
 nop // icount 1060
 nop // icount 1061
 lbi r6, 0
 lbi r5, 0
 nop // to align branch icount 1064
 beqz r31, 8
 subi r31, r6, 4
 slli r6, r4, 15
 slli r4, r2, 15
 sle r2, r6, r4 // icount 1069
 sle r0, r6, r1 // icount 1070
 slbi r0, 11
 sub r2, r5, r4 // icount 1072
 subi r6, r31, 10
 lbi r2, 0
 lbi r4, 0
 nop // to align branch icount 1076
 beqz r0, 24
 sub r5, r2, r4 // icount 1078
 subi r1, r2, 2
 sco r1, r0, r3 // icount 1080
 add r6, r0, r6 // icount 1081
 sle r7, r7, r4 // icount 1082
 roli r31, r6, 10
 or r4, r6, r4 // icount 1084
 or r5, r1, r6 // icount 1085
 ori r5, r31, 10
 srai r4, r2, 8
 andi r5, r5, 0xfe
 st r1, r5, 6
 andi r4, r2, 10
 nop // to align meminst icount 1091
 andi r31, r31, 0xfe
 ld r3, r31, 14
 add r3, r2, r5 // icount 1094
 ror r1, r2, r2 // icount 1095
 roli r6, r6, 12
 andi r1, r3, 2
 slbi r4, 10
 slbi r3, 11
 addi r5, r4, 6
 slt r0, r0, r6 // icount 1101
 seq r2, r5, r4 // icount 1102
 slbi r5, 4
 ror r4, r2, r4 // icount 1104
 lbi r3, 0
 lbi r4, 0
 beqz r0, 4
 roli r5, r31, 8
 and r4, r0, r4 // icount 1109
 sra r4, r1, r6 // icount 1110
 sco r7, r7, r7 // icount 1111
 j 6
 nop // icount 1113
 nop // icount 1114
 nop // icount 1115
 lbi r0, 0
 lbi r1, 0
 nop // to align branch icount 1118
 beqz r4, 32
 and r2, r6, r5 // icount 1120
 srai r5, r3, 2
 sll r7, r6, r5 // icount 1122
 add r4, r6, r2 // icount 1123
 sll r0, r4, r0 // icount 1124
 rori r5, r5, 6
 rori r3, r4, 6
 or r4, r2, r2 // icount 1127
 and r7, r4, r3 // icount 1128
 nop // to align meminst icount 1129
 andi r0, r0, 0xfe
 st r0, r0, 8
 rori r4, r0, 2
 or r4, r2, r0 // icount 1133
 andi r4, r4, 0xfe
 stu r1, r4, 12
 or r6, r6, r7 // icount 1136
 slbi r5, 1
 andi r4, r5, 15
 slt r2, r1, r4 // icount 1139
 sub r7, r4, r7 // icount 1140
 slli r2, r2, 12
 slli r4, r31, 6
 addi r5, r4, 5
 lbi r6, 9
 sra r5, r2, r5 // icount 1145
 ori r6, r6, 4
 lbi r4, 8
 slli r31, r3, 0
 lbi r31, 7
 add r4, r2, r4 // icount 1150
 subi r6, r2, 5
 sle r6, r6, r2 // icount 1152
 andi r2, r0, 15
 sll r4, r3, r7 // icount 1154
 j 18
 nop // icount 1156
 nop // icount 1157
 nop // icount 1158
 nop // icount 1159
 nop // icount 1160
 nop // icount 1161
 nop // icount 1162
 nop // icount 1163
 nop // icount 1164
 j 26
 nop // icount 1166
 nop // icount 1167
 nop // icount 1168
 nop // icount 1169
 nop // icount 1170
 nop // icount 1171
 nop // icount 1172
 nop // icount 1173
 nop // icount 1174
 nop // icount 1175
 nop // icount 1176
 nop // icount 1177
 nop // icount 1178
 j 2
 nop // icount 1180
 j 2
 nop // icount 1182
 lbi r2, 0
 lbi r4, 0
 bnez r3, 28
 ori r0, r31, 10
 nop // to align meminst icount 1187
 andi r2, r2, 0xfe
 stu r0, r2, 12
 sco r7, r6, r1 // icount 1190
 slbi r4, 0
 sub r1, r3, r7 // icount 1192
 lbi r31, 10
 add r7, r5, r3 // icount 1194
 slt r7, r7, r0 // icount 1195
 andi r5, r1, 5
 ror r3, r2, r5 // icount 1197
 and r3, r2, r6 // icount 1198
 sll r0, r5, r6 // icount 1199
 roli r3, r4, 9
 subi r3, r0, 3
 slli r0, r2, 3
 ror r0, r2, r1 // icount 1203
 sll r2, r5, r0 // icount 1204
 slli r2, r2, 5
 andi r5, r4, 0
 sll r2, r1, r4 // icount 1207
 rol r2, r3, r7 // icount 1208
 nop // to align meminst icount 1209
 andi r1, r1, 0xfe
 st r3, r1, 4
 slli r3, r31, 0
 ror r1, r7, r5 // icount 1213
 sle r1, r2, r3 // icount 1214
 srai r4, r0, 8
 rol r3, r5, r7 // icount 1216
 andi r31, r2, 4
 j 26
 nop // icount 1219
 nop // icount 1220
 nop // icount 1221
 nop // icount 1222
 nop // icount 1223
 nop // icount 1224
 nop // icount 1225
 nop // icount 1226
 nop // icount 1227
 nop // icount 1228
 nop // icount 1229
 nop // icount 1230
 nop // icount 1231
 j 14
 nop // icount 1233
 nop // icount 1234
 nop // icount 1235
 nop // icount 1236
 nop // icount 1237
 nop // icount 1238
 nop // icount 1239
 j 28
 nop // icount 1241
 nop // icount 1242
 nop // icount 1243
 nop // icount 1244
 nop // icount 1245
 nop // icount 1246
 nop // icount 1247
 nop // icount 1248
 nop // icount 1249
 nop // icount 1250
 nop // icount 1251
 nop // icount 1252
 nop // icount 1253
 nop // icount 1254
 lbi r5, 0
 lbi r0, 0
 bnez r5, 28
 srai r5, r31, 8
 andi r31, r6, 3
 roli r6, r0, 3
 subi r4, r3, 7
 slbi r1, 6
 subi r0, r2, 15
 sub r6, r0, r0 // icount 1264
 srai r1, r3, 1
 andi r5, r5, 0xfe
 stu r31, r5, 0
 or r2, r2, r3 // icount 1268
 seq r1, r5, r1 // icount 1269
 ori r6, r31, 0
 seq r6, r5, r7 // icount 1271
 andi r5, r5, 0xfe
 ld r6, r5, 2
 lbi r4, 3
 rol r5, r6, r5 // icount 1275
 subi r2, r5, 9
 lbi r31, 5
 slli r1, r5, 14
 sll r5, r2, r0 // icount 1279
 slbi r1, 9
 andi r1, r5, 1
 seq r6, r1, r6 // icount 1282
 sub r6, r7, r1 // icount 1283
 subi r4, r31, 0
 slt r6, r3, r5 // icount 1285
 andi r3, r3, 0xfe
 st r0, r3, 10
 sle r3, r7, r2 // icount 1288
 lbi r3, 0
 lbi r6, 0
 bnez r4, 20
 roli r3, r5, 11
 sco r6, r7, r2 // icount 1293
 andi r6, r6, 0xfe
 stu r4, r6, 12
 roli r4, r5, 6
 srai r5, r1, 4
 addi r4, r2, 0
 slbi r6, 7
 sco r0, r3, r1 // icount 1300
 seq r6, r5, r2 // icount 1301
 sle r1, r1, r4 // icount 1302
 addi r6, r6, 14
 sco r2, r3, r1 // icount 1304
 sra r2, r1, r7 // icount 1305
 seq r5, r5, r2 // icount 1306
 rol r4, r5, r7 // icount 1307
 srai r0, r6, 6
 or r4, r2, r7 // icount 1309
 slt r0, r3, r5 // icount 1310
 and r7, r3, r1 // icount 1311
 srai r0, r0, 3
 lbi r3, 0
 lbi r1, 0
 bnez r4, 16
 add r2, r6, r6 // icount 1316
 ror r4, r5, r7 // icount 1317
 addi r1, r0, 6
 nop // to align meminst icount 1319
 andi r6, r6, 0xfe
 ld r31, r6, 12
 addi r5, r4, 7
 addi r31, r0, 0
 andi r31, r31, 0xfe
 stu r2, r31, 12
 andi r6, r6, 0xfe
 st r0, r6, 2
 ori r4, r6, 7
 addi r2, r5, 13
 sll r0, r6, r0 // icount 1330
 seq r3, r6, r1 // icount 1331
 sub r3, r0, r7 // icount 1332
 lbi r1, 7
 slt r1, r0, r6 // icount 1334
 and r1, r0, r1 // icount 1335
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 1338
 bnez r0, 12
 subi r4, r4, 1
 rol r5, r1, r5 // icount 1341
 sll r7, r4, r1 // icount 1342
 ori r3, r31, 2
 ori r31, r4, 11
 addi r6, r4, 7
 andi r4, r4, 0xfe
 stu r31, r4, 14
 slbi r6, 13
 ori r0, r6, 15
 andi r6, r6, 0xfe
 st r4, r6, 6
 ori r31, r0, 10
 or r5, r7, r3 // icount 1353
 j 22
 nop // icount 1355
 nop // icount 1356
 nop // icount 1357
 nop // icount 1358
 nop // icount 1359
 nop // icount 1360
 nop // icount 1361
 nop // icount 1362
 nop // icount 1363
 nop // icount 1364
 nop // icount 1365
 j 12
 nop // icount 1367
 nop // icount 1368
 nop // icount 1369
 nop // icount 1370
 nop // icount 1371
 nop // icount 1372
 j 18
 nop // icount 1374
 nop // icount 1375
 nop // icount 1376
 nop // icount 1377
 nop // icount 1378
 nop // icount 1379
 nop // icount 1380
 nop // icount 1381
 nop // icount 1382
 lbi r4, 0
 lbi r2, 0
 beqz r3, 16
 sco r5, r3, r6 // icount 1386
 sra r2, r2, r1 // icount 1387
 addi r0, r4, 14
 lbi r1, 8
 add r4, r4, r6 // icount 1390
 ori r6, r0, 4
 or r2, r0, r0 // icount 1392
 slli r3, r3, 6
 rori r6, r2, 2
 srai r1, r4, 14
 andi r6, r6, 0xfe
 stu r6, r6, 2
 andi r5, r5, 0xfe
 ld r2, r5, 2
 sco r3, r6, r1 // icount 1400
 add r0, r4, r7 // icount 1401
 andi r0, r0, 0xfe
 st r0, r0, 2
 sll r4, r6, r3 // icount 1404
 lbi r31, 0
 lbi r1, 0
 bnez r4, 20
 seq r6, r0, r1 // icount 1408
 slbi r4, 1
 srai r31, r3, 2
 and r0, r4, r5 // icount 1411
 andi r5, r5, 0xfe
 st r6, r5, 8
 sco r1, r1, r0 // icount 1414
 sll r6, r2, r0 // icount 1415
 rori r5, r6, 13
 sle r2, r0, r3 // icount 1417
 sub r7, r1, r3 // icount 1418
 lbi r3, 10
 lbi r2, 6
 srai r0, r31, 2
 slt r3, r1, r1 // icount 1422
 nop // to align meminst icount 1423
 andi r6, r6, 0xfe
 stu r4, r6, 4
 sub r3, r5, r6 // icount 1426
 roli r2, r2, 1
 ori r1, r6, 15
 slli r31, r1, 13
 slt r6, r7, r3 // icount 1430
 j 8
 nop // icount 1432
 nop // icount 1433
 nop // icount 1434
 nop // icount 1435
 j 12
 nop // icount 1437
 nop // icount 1438
 nop // icount 1439
 nop // icount 1440
 nop // icount 1441
 nop // icount 1442
 j 10
 nop // icount 1444
 nop // icount 1445
 nop // icount 1446
 nop // icount 1447
 nop // icount 1448
 j 12
 nop // icount 1450
 nop // icount 1451
 nop // icount 1452
 nop // icount 1453
 nop // icount 1454
 nop // icount 1455
 lbi r1, 0
 lbi r4, 0
 nop // to align branch icount 1458
 bnez r4, 4
 sub r6, r2, r1 // icount 1460
 roli r1, r2, 1
 or r2, r6, r7 // icount 1462
 sle r3, r0, r4 // icount 1463
 j 12
 nop // icount 1465
 nop // icount 1466
 nop // icount 1467
 nop // icount 1468
 nop // icount 1469
 nop // icount 1470
 lbi r5, 0
 lbi r1, 0
 beqz r5, 8
 lbi r1, 15
 srai r2, r6, 3
 roli r0, r1, 0
 sll r2, r0, r7 // icount 1477
 sco r7, r6, r3 // icount 1478
 add r1, r5, r3 // icount 1479
 seq r4, r3, r6 // icount 1480
 roli r4, r6, 14
 lbi r1, 0
 lbi r4, 0
 nop // to align branch icount 1484
 bnez r6, 20
 sco r0, r0, r0 // icount 1486
 sra r1, r4, r0 // icount 1487
 or r0, r7, r5 // icount 1488
 roli r0, r31, 7
 andi r2, r0, 2
 sra r6, r0, r4 // icount 1491
 sub r3, r1, r5 // icount 1492
 sle r7, r3, r4 // icount 1493
 lbi r0, 10
 nop // to align meminst icount 1495
 andi r4, r4, 0xfe
 ld r31, r4, 12
 andi r4, r4, 0xfe
 ld r0, r4, 2
 subi r31, r4, 9
 sll r3, r3, r1 // icount 1501
 andi r0, r4, 9
 sra r0, r1, r2 // icount 1503
 andi r2, r2, 0xfe
 stu r1, r2, 10
 sle r4, r4, r3 // icount 1506
 nop // to align meminst icount 1507
 andi r0, r0, 0xfe
 ld r3, r0, 14
 sub r0, r4, r2 // icount 1510
 sle r6, r0, r1 // icount 1511
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 1514
 beqz r4, 16
 slli r3, r31, 6
 nop // to align meminst icount 1517
 andi r2, r2, 0xfe
 ld r2, r2, 0
 sll r5, r6, r3 // icount 1520
 slt r2, r4, r0 // icount 1521
 slbi r31, 10
 lbi r5, 7
 andi r31, r31, 0xfe
 st r31, r31, 8
 rori r2, r0, 4
 sle r4, r3, r7 // icount 1527
 addi r31, r5, 8
 nop // to align meminst icount 1529
 andi r0, r0, 0xfe
 stu r3, r0, 14
 sle r0, r2, r3 // icount 1532
 sle r2, r2, r0 // icount 1533
 sub r0, r3, r1 // icount 1534
 nop // to align meminst icount 1535
 andi r2, r2, 0xfe
 stu r1, r2, 10
 add r3, r2, r6 // icount 1538
 lbi r31, 0
 lbi r31, 0
 beqz r31, 8
 andi r31, r31, 0xfe
 st r5, r31, 6
 subi r5, r1, 13
 sub r7, r0, r2 // icount 1545
 addi r31, r2, 6
 seq r4, r1, r5 // icount 1547
 add r6, r6, r4 // icount 1548
 sle r5, r1, r3 // icount 1549
 slbi r6, 14
 j 4
 nop // icount 1552
 nop // icount 1553
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 1556
 bnez r1, 28
 roli r3, r4, 12
 slli r31, r0, 0
 addi r1, r2, 5
 sra r1, r6, r6 // icount 1561
 subi r31, r5, 11
 ror r2, r0, r2 // icount 1563
 rol r5, r4, r4 // icount 1564
 srai r6, r31, 1
 lbi r6, 7
 sub r1, r7, r0 // icount 1567
 sub r6, r5, r5 // icount 1568
 ori r31, r31, 2
 rori r31, r4, 10
 slli r0, r31, 3
 subi r2, r5, 4
 and r2, r7, r4 // icount 1573
 subi r1, r1, 3
 slbi r4, 4
 ror r3, r1, r7 // icount 1576
 slbi r2, 15
 and r6, r7, r0 // icount 1578
 sll r7, r5, r5 // icount 1579
 rol r1, r0, r7 // icount 1580
 subi r5, r4, 13
 rol r5, r0, r7 // icount 1582
 add r0, r1, r6 // icount 1583
 rol r4, r6, r5 // icount 1584
 sll r3, r7, r7 // icount 1585
 lbi r0, 0
 lbi r4, 0
 nop // to align branch icount 1588
 bnez r31, 4
 sra r6, r3, r1 // icount 1590
 addi r2, r31, 9
 rori r6, r0, 12
 lbi r6, 6
 lbi r3, 0
 lbi r3, 0
 nop // to align branch icount 1596
 bnez r0, 20
 and r2, r0, r6 // icount 1598
 slt r2, r1, r0 // icount 1599
 slt r2, r7, r6 // icount 1600
 sco r0, r6, r2 // icount 1601
 seq r5, r4, r4 // icount 1602
 sco r5, r2, r1 // icount 1603
 slbi r3, 11
 sra r7, r7, r6 // icount 1605
 sle r3, r3, r3 // icount 1606
 slt r2, r1, r3 // icount 1607
 sra r2, r7, r5 // icount 1608
 subi r1, r31, 6
 or r7, r2, r6 // icount 1610
 rori r4, r5, 10
 sub r2, r3, r0 // icount 1612
 slt r7, r5, r4 // icount 1613
 slli r4, r6, 6
 slbi r31, 4
 andi r2, r2, 0xfe
 stu r2, r2, 12
 sco r5, r6, r5 // icount 1618
 lbi r3, 0
 lbi r1, 0
 beqz r5, 28
 sle r0, r5, r0 // icount 1622
 lbi r5, 11
 sra r3, r1, r0 // icount 1624
 sra r0, r3, r0 // icount 1625
 slt r7, r6, r2 // icount 1626
 subi r3, r6, 2
 addi r4, r3, 3
 add r4, r1, r4 // icount 1629
 roli r31, r6, 14
 sra r1, r3, r0 // icount 1631
 sra r4, r4, r2 // icount 1632
 nop // to align meminst icount 1633
 andi r31, r31, 0xfe
 stu r0, r31, 14
 rol r6, r1, r4 // icount 1636
 add r0, r1, r0 // icount 1637
 addi r5, r5, 2
 seq r7, r7, r5 // icount 1639
 slli r31, r6, 11
 sra r4, r1, r6 // icount 1641
 ori r1, r6, 7
 and r5, r2, r2 // icount 1643
 slli r4, r1, 5
 and r6, r5, r3 // icount 1645
 rori r1, r31, 7
 seq r7, r4, r2 // icount 1647
 andi r6, r0, 1
 slt r1, r4, r5 // icount 1649
 addi r2, r5, 15
 nop // to align meminst icount 1651
 andi r31, r31, 0xfe
 ld r0, r31, 2
 halt // icount 1654
