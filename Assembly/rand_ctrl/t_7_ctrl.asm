 // seed 7
 lbi r0, 68
 slbi r0, 174
 lbi r1, 67
 slbi r1, 33
 lbi r2, 126
 slbi r2, 76
 lbi r3, 40
 slbi r3, 184
 lbi r4, 2
 slbi r4, 23
 lbi r5, 200
 slbi r5, 228
 lbi r6, 136
 slbi r6, 227
 lbi r31, 74
 slbi r31, 106
 lbi r2, 0
 lbi r3, 0
 nop // to align branch icount 18
 beqz r4, 28
 andi r0, r0, 0xfe
 st r5, r0, 0
 sub r7, r5, r2 // icount 22
 and r5, r2, r4 // icount 23
 slt r1, r4, r6 // icount 24
 rori r2, r5, 12
 add r4, r4, r1 // icount 26
 and r5, r5, r6 // icount 27
 sub r5, r0, r0 // icount 28
 slt r0, r4, r7 // icount 29
 or r7, r2, r5 // icount 30
 slli r5, r3, 14
 or r7, r2, r0 // icount 32
 ori r2, r5, 2
 addi r4, r0, 13
 slt r0, r1, r2 // icount 35
 srai r1, r0, 1
 subi r5, r6, 1
 andi r5, r5, 0xfe
 st r4, r5, 2
 and r5, r1, r5 // icount 40
 sco r2, r0, r3 // icount 41
 lbi r5, 3
 add r2, r2, r3 // icount 43
 and r0, r3, r6 // icount 44
 and r6, r4, r6 // icount 45
 ror r4, r3, r6 // icount 46
 lbi r1, 1
 andi r4, r3, 12
 slli r3, r1, 10
 j 14
 nop // icount 51
 nop // icount 52
 nop // icount 53
 nop // icount 54
 nop // icount 55
 nop // icount 56
 nop // icount 57
 j 20
 nop // icount 59
 nop // icount 60
 nop // icount 61
 nop // icount 62
 nop // icount 63
 nop // icount 64
 nop // icount 65
 nop // icount 66
 nop // icount 67
 nop // icount 68
 lbi r31, 0
 lbi r5, 0
 bnez r6, 20
 roli r2, r5, 0
 slbi r4, 8
 subi r4, r5, 9
 sll r3, r3, r2 // icount 75
 sll r7, r6, r3 // icount 76
 sra r1, r3, r1 // icount 77
 ori r2, r1, 2
 addi r6, r2, 7
 subi r3, r31, 9
 ror r6, r2, r6 // icount 81
 and r1, r5, r2 // icount 82
 rol r7, r7, r5 // icount 83
 slt r3, r6, r3 // icount 84
 addi r0, r3, 15
 ror r0, r2, r4 // icount 86
 rol r1, r2, r5 // icount 87
 roli r5, r31, 5
 nop // to align meminst icount 89
 andi r0, r0, 0xfe
 st r1, r0, 14
 addi r0, r0, 11
 rol r1, r7, r4 // icount 93
 lbi r5, 0
 lbi r6, 0
 nop // to align branch icount 96
 bnez r0, 12
 andi r2, r2, 0xfe
 ld r1, r2, 4
 andi r2, r2, 0xfe
 st r1, r2, 6
 ori r3, r0, 7
 subi r0, r31, 2
 add r2, r1, r2 // icount 104
 rol r5, r2, r2 // icount 105
 ror r5, r3, r4 // icount 106
 sle r6, r1, r2 // icount 107
 subi r1, r3, 0
 ori r5, r2, 9
 sco r0, r7, r4 // icount 110
 seq r2, r4, r0 // icount 111
 lbi r0, 0
 lbi r1, 0
 nop // to align branch icount 114
 beqz r3, 4
 addi r1, r0, 3
 andi r31, r6, 5
 rori r31, r5, 4
 nop // to align meminst icount 119
 andi r2, r2, 0xfe
 st r1, r2, 10
 j 26
 nop // icount 123
 nop // icount 124
 nop // icount 125
 nop // icount 126
 nop // icount 127
 nop // icount 128
 nop // icount 129
 nop // icount 130
 nop // icount 131
 nop // icount 132
 nop // icount 133
 nop // icount 134
 nop // icount 135
 j 28
 nop // icount 137
 nop // icount 138
 nop // icount 139
 nop // icount 140
 nop // icount 141
 nop // icount 142
 nop // icount 143
 nop // icount 144
 nop // icount 145
 nop // icount 146
 nop // icount 147
 nop // icount 148
 nop // icount 149
 nop // icount 150
 j 20
 nop // icount 152
 nop // icount 153
 nop // icount 154
 nop // icount 155
 nop // icount 156
 nop // icount 157
 nop // icount 158
 nop // icount 159
 nop // icount 160
 nop // icount 161
 lbi r2, 0
 lbi r6, 0
 nop // to align branch icount 164
 beqz r5, 16
 seq r4, r4, r1 // icount 166
 rori r4, r0, 7
 ror r1, r0, r7 // icount 168
 slbi r1, 1
 sra r1, r4, r2 // icount 170
 sle r0, r0, r1 // icount 171
 add r1, r5, r5 // icount 172
 slt r4, r2, r7 // icount 173
 ror r2, r0, r3 // icount 174
 sle r4, r5, r5 // icount 175
 andi r2, r2, 0xfe
 ld r0, r2, 12
 rol r1, r6, r1 // icount 178
 nop // to align meminst icount 179
 andi r31, r31, 0xfe
 ld r1, r31, 12
 and r3, r4, r3 // icount 182
 sub r2, r4, r7 // icount 183
 lbi r6, 9
 j 2
 nop // icount 186
 lbi r3, 0
 lbi r1, 0
 beqz r31, 24
 add r2, r2, r4 // icount 190
 srai r6, r5, 7
 add r4, r6, r5 // icount 192
 seq r2, r0, r0 // icount 193
 sub r3, r0, r5 // icount 194
 add r7, r7, r1 // icount 195
 subi r4, r1, 3
 lbi r2, 2
 ori r3, r2, 14
 nop // to align meminst icount 199
 andi r2, r2, 0xfe
 st r4, r2, 4
 rori r2, r0, 11
 nop // to align meminst icount 203
 andi r4, r4, 0xfe
 ld r2, r4, 12
 sra r1, r4, r3 // icount 206
 slli r2, r5, 1
 seq r4, r5, r0 // icount 208
 rol r6, r7, r1 // icount 209
 lbi r6, 10
 sle r7, r0, r5 // icount 211
 add r1, r3, r7 // icount 212
 rol r5, r0, r2 // icount 213
 rori r1, r1, 11
 rori r0, r2, 14
 roli r4, r4, 9
 sra r2, r6, r7 // icount 217
 j 22
 nop // icount 219
 nop // icount 220
 nop // icount 221
 nop // icount 222
 nop // icount 223
 nop // icount 224
 nop // icount 225
 nop // icount 226
 nop // icount 227
 nop // icount 228
 nop // icount 229
 j 18
 nop // icount 231
 nop // icount 232
 nop // icount 233
 nop // icount 234
 nop // icount 235
 nop // icount 236
 nop // icount 237
 nop // icount 238
 nop // icount 239
 lbi r1, 0
 lbi r0, 0
 nop // to align branch icount 242
 beqz r1, 24
 sll r2, r7, r3 // icount 244
 addi r0, r0, 12
 andi r2, r2, 0xfe
 st r0, r2, 8
 slt r3, r2, r4 // icount 248
 sll r5, r5, r5 // icount 249
 addi r5, r0, 0
 lbi r6, 14
 or r3, r5, r0 // icount 252
 lbi r3, 11
 sll r6, r5, r0 // icount 254
 slbi r1, 1
 srai r5, r0, 7
 seq r1, r4, r4 // icount 257
 lbi r0, 14
 sco r1, r2, r1 // icount 259
 andi r3, r3, 0xfe
 ld r5, r3, 0
 seq r6, r5, r6 // icount 262
 slt r1, r1, r2 // icount 263
 sub r2, r5, r5 // icount 264
 subi r6, r0, 2
 subi r3, r3, 11
 roli r1, r0, 13
 slbi r31, 6
 slbi r2, 3
 j 28
 nop // icount 271
 nop // icount 272
 nop // icount 273
 nop // icount 274
 nop // icount 275
 nop // icount 276
 nop // icount 277
 nop // icount 278
 nop // icount 279
 nop // icount 280
 nop // icount 281
 nop // icount 282
 nop // icount 283
 nop // icount 284
 lbi r0, 0
 lbi r3, 0
 bnez r0, 28
 sra r7, r3, r6 // icount 288
 andi r2, r5, 9
 rori r0, r6, 14
 and r4, r4, r1 // icount 291
 andi r5, r5, 0xfe
 ld r5, r5, 2
 srai r5, r5, 3
 nop // to align meminst icount 295
 andi r5, r5, 0xfe
 stu r4, r5, 4
 ror r3, r1, r0 // icount 298
 nop // to align meminst icount 299
 andi r4, r4, 0xfe
 ld r4, r4, 10
 slli r5, r1, 3
 roli r5, r6, 11
 rori r3, r0, 1
 nop // to align meminst icount 305
 andi r2, r2, 0xfe
 ld r0, r2, 0
 sco r3, r3, r7 // icount 308
 or r5, r7, r6 // icount 309
 roli r6, r2, 8
 subi r0, r2, 15
 subi r3, r3, 2
 and r1, r4, r5 // icount 313
 or r6, r0, r4 // icount 314
 ori r0, r0, 0
 roli r5, r0, 7
 sle r3, r7, r7 // icount 317
 lbi r5, 7
 add r5, r3, r6 // icount 319
 seq r2, r5, r0 // icount 320
 roli r5, r6, 2
 roli r4, r31, 7
 j 2
 nop // icount 324
 j 4
 nop // icount 326
 nop // icount 327
 j 20
 nop // icount 329
 nop // icount 330
 nop // icount 331
 nop // icount 332
 nop // icount 333
 nop // icount 334
 nop // icount 335
 nop // icount 336
 nop // icount 337
 nop // icount 338
 lbi r2, 0
 lbi r6, 0
 bnez r31, 4
 rol r5, r5, r5 // icount 342
 nop // to align meminst icount 343
 andi r0, r0, 0xfe
 ld r6, r0, 12
 subi r0, r1, 0
 nop // to align meminst icount 347
 andi r3, r3, 0xfe
 stu r2, r3, 12
 lbi r6, 0
 lbi r4, 0
 nop // to align branch icount 352
 beqz r0, 20
 seq r7, r6, r1 // icount 354
 andi r5, r3, 12
 sub r1, r0, r2 // icount 356
 slt r2, r5, r3 // icount 357
 sle r1, r0, r0 // icount 358
 sco r3, r4, r5 // icount 359
 ror r0, r7, r0 // icount 360
 sll r4, r1, r6 // icount 361
 sub r3, r1, r2 // icount 362
 srai r1, r31, 3
 slli r4, r1, 3
 slli r1, r2, 3
 slt r7, r0, r1 // icount 366
 sle r7, r0, r4 // icount 367
 slli r3, r5, 3
 and r1, r0, r4 // icount 369
 sle r6, r7, r0 // icount 370
 roli r6, r5, 7
 andi r0, r0, 0xfe
 ld r31, r0, 12
 rol r3, r6, r0 // icount 374
 j 4
 nop // icount 376
 nop // icount 377
 lbi r6, 0
 lbi r0, 0
 nop // to align branch icount 380
 beqz r31, 24
 rori r4, r0, 11
 rol r4, r5, r0 // icount 383
 add r1, r5, r3 // icount 384
 nop // to align meminst icount 385
 andi r6, r6, 0xfe
 stu r3, r6, 10
 slli r3, r0, 9
 nop // to align meminst icount 389
 andi r3, r3, 0xfe
 ld r4, r3, 8
 slt r7, r1, r7 // icount 392
 subi r0, r1, 5
 andi r4, r4, 0xfe
 stu r1, r4, 0
 sle r3, r4, r5 // icount 396
 sll r5, r2, r5 // icount 397
 slt r5, r2, r1 // icount 398
 subi r31, r6, 0
 subi r5, r3, 15
 slt r0, r1, r2 // icount 401
 roli r1, r6, 15
 or r3, r1, r4 // icount 403
 srai r3, r1, 6
 sra r2, r1, r4 // icount 405
 sra r5, r7, r4 // icount 406
 seq r5, r6, r6 // icount 407
 or r2, r1, r6 // icount 408
 slli r2, r0, 15
 ori r1, r5, 3
 lbi r5, 0
 lbi r6, 0
 beqz r0, 20
 sco r3, r5, r4 // icount 414
 add r6, r3, r5 // icount 415
 lbi r6, 12
 roli r5, r5, 8
 sll r3, r6, r1 // icount 418
 and r0, r5, r6 // icount 419
 roli r6, r0, 3
 roli r31, r3, 7
 srai r3, r31, 12
 and r3, r0, r0 // icount 423
 and r7, r2, r1 // icount 424
 roli r1, r2, 0
 slt r6, r0, r1 // icount 426
 sra r2, r2, r5 // icount 427
 or r6, r4, r1 // icount 428
 nop // to align meminst icount 429
 andi r2, r2, 0xfe
 stu r0, r2, 0
 andi r0, r0, 0xfe
 ld r2, r0, 2
 sll r4, r0, r2 // icount 434
 srai r3, r3, 13
 sle r0, r2, r6 // icount 436
 lbi r4, 0
 lbi r2, 0
 bnez r0, 24
 sub r0, r7, r2 // icount 440
 subi r6, r31, 5
 ori r1, r4, 6
 rol r7, r0, r7 // icount 443
 rol r0, r5, r0 // icount 444
 addi r3, r1, 0
 subi r3, r5, 5
 sll r6, r1, r5 // icount 447
 seq r3, r7, r6 // icount 448
 ror r7, r3, r6 // icount 449
 sle r7, r4, r4 // icount 450
 slli r31, r3, 2
 sra r4, r3, r7 // icount 452
 slli r2, r5, 1
 rori r5, r6, 4
 andi r5, r31, 15
 seq r4, r5, r7 // icount 456
 nop // to align meminst icount 457
 andi r31, r31, 0xfe
 stu r0, r31, 0
 andi r5, r5, 0xfe
 ld r5, r5, 4
 or r3, r7, r5 // icount 462
 rori r4, r0, 9
 andi r1, r1, 0xfe
 ld r3, r1, 8
 sle r6, r1, r0 // icount 466
 sra r1, r6, r7 // icount 467
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 470
 bnez r4, 4
 roli r1, r0, 8
 roli r3, r31, 3
 andi r0, r0, 0xfe
 st r6, r0, 0
 sra r7, r1, r5 // icount 476
 j 16
 nop // icount 478
 nop // icount 479
 nop // icount 480
 nop // icount 481
 nop // icount 482
 nop // icount 483
 nop // icount 484
 nop // icount 485
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 488
 beqz r2, 4
 slt r5, r5, r3 // icount 490
 nop // to align meminst icount 491
 andi r6, r6, 0xfe
 stu r31, r6, 4
 addi r4, r0, 0
 nop // to align meminst icount 495
 andi r31, r31, 0xfe
 st r2, r31, 6
 lbi r3, 0
 lbi r3, 0
 nop // to align branch icount 500
 beqz r6, 28
 addi r6, r31, 1
 add r5, r4, r6 // icount 503
 sra r1, r4, r1 // icount 504
 slli r1, r3, 9
 slli r1, r6, 2
 ori r2, r1, 12
 slt r7, r7, r5 // icount 508
 sll r3, r6, r0 // icount 509
 andi r2, r2, 0xfe
 stu r4, r2, 10
 andi r0, r0, 0xfe
 ld r3, r0, 2
 sle r7, r1, r7 // icount 514
 or r1, r2, r4 // icount 515
 addi r2, r0, 4
 sco r5, r5, r2 // icount 517
 sco r3, r5, r0 // icount 518
 sub r7, r1, r2 // icount 519
 slli r3, r3, 12
 nop // to align meminst icount 521
 andi r31, r31, 0xfe
 stu r5, r31, 12
 rol r3, r2, r7 // icount 524
 slli r6, r5, 1
 sco r0, r0, r4 // icount 526
 or r4, r5, r7 // icount 527
 sub r2, r0, r1 // icount 528
 rol r7, r4, r6 // icount 529
 srai r0, r2, 11
 addi r1, r1, 8
 sll r7, r0, r7 // icount 532
 add r6, r4, r6 // icount 533
 lbi r2, 0
 lbi r31, 0
 nop // to align branch icount 536
 beqz r3, 24
 ori r3, r2, 5
 rol r6, r2, r3 // icount 539
 addi r2, r6, 11
 nop // to align meminst icount 541
 andi r0, r0, 0xfe
 stu r1, r0, 12
 rol r5, r2, r2 // icount 544
 or r4, r2, r3 // icount 545
 and r7, r6, r5 // icount 546
 or r4, r7, r6 // icount 547
 andi r1, r6, 7
 rori r4, r2, 3
 or r6, r2, r4 // icount 550
 nop // to align meminst icount 551
 andi r0, r0, 0xfe
 stu r0, r0, 12
 slli r4, r2, 12
 slt r0, r1, r1 // icount 555
 or r2, r6, r2 // icount 556
 rol r2, r3, r5 // icount 557
 ori r5, r5, 5
 sub r7, r1, r7 // icount 559
 rori r1, r4, 15
 sll r3, r1, r7 // icount 561
 andi r3, r3, 0xfe
 st r2, r3, 0
 ori r31, r31, 10
 sle r6, r5, r6 // icount 565
 addi r3, r5, 10
 lbi r31, 0
 lbi r1, 0
 beqz r2, 16
 addi r0, r31, 1
 slt r4, r2, r7 // icount 571
 slli r1, r1, 4
 rol r3, r6, r7 // icount 573
 andi r0, r4, 15
 sra r5, r3, r1 // icount 575
 ror r2, r6, r7 // icount 576
 subi r1, r5, 0
 andi r4, r1, 7
 slt r5, r2, r2 // icount 579
 subi r5, r3, 7
 sra r6, r6, r0 // icount 581
 and r1, r0, r2 // icount 582
 subi r1, r31, 7
 slbi r3, 0
 andi r31, r2, 5
 j 14
 nop // icount 587
 nop // icount 588
 nop // icount 589
 nop // icount 590
 nop // icount 591
 nop // icount 592
 nop // icount 593
 j 14
 nop // icount 595
 nop // icount 596
 nop // icount 597
 nop // icount 598
 nop // icount 599
 nop // icount 600
 nop // icount 601
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 604
 beqz r4, 32
 subi r0, r5, 10
 add r7, r2, r2 // icount 607
 slli r2, r31, 1
 srai r4, r5, 5
 roli r2, r2, 1
 ori r0, r5, 2
 lbi r1, 15
 sle r5, r5, r6 // icount 613
 add r1, r5, r6 // icount 614
 srai r6, r2, 14
 slt r0, r1, r5 // icount 616
 rol r4, r0, r3 // icount 617
 ror r7, r4, r5 // icount 618
 slt r3, r2, r0 // icount 619
 ror r4, r2, r0 // icount 620
 ori r31, r5, 3
 andi r6, r6, 0xfe
 st r1, r6, 8
 andi r6, r6, 0xfe
 stu r2, r6, 10
 ori r6, r1, 15
 sra r2, r1, r0 // icount 627
 andi r5, r5, 0xfe
 ld r4, r5, 2
 sco r1, r1, r0 // icount 630
 rol r1, r2, r1 // icount 631
 ror r0, r2, r6 // icount 632
 add r4, r0, r2 // icount 633
 slbi r6, 11
 sra r6, r0, r5 // icount 635
 andi r2, r2, 0xfe
 st r2, r2, 4
 and r2, r1, r2 // icount 638
 slli r31, r0, 13
 andi r3, r3, 0xfe
 stu r1, r3, 14
 slbi r0, 6
 j 30
 nop // icount 644
 nop // icount 645
 nop // icount 646
 nop // icount 647
 nop // icount 648
 nop // icount 649
 nop // icount 650
 nop // icount 651
 nop // icount 652
 nop // icount 653
 nop // icount 654
 nop // icount 655
 nop // icount 656
 nop // icount 657
 nop // icount 658
 j 10
 nop // icount 660
 nop // icount 661
 nop // icount 662
 nop // icount 663
 nop // icount 664
 j 18
 nop // icount 666
 nop // icount 667
 nop // icount 668
 nop // icount 669
 nop // icount 670
 nop // icount 671
 nop // icount 672
 nop // icount 673
 nop // icount 674
 lbi r4, 0
 lbi r31, 0
 bnez r4, 12
 rori r2, r0, 10
 ori r2, r31, 14
 srai r31, r6, 12
 subi r5, r1, 6
 srai r2, r3, 13
 and r1, r6, r2 // icount 683
 rol r5, r5, r6 // icount 684
 or r2, r7, r4 // icount 685
 slt r7, r0, r0 // icount 686
 lbi r3, 12
 sra r3, r0, r6 // icount 688
 rori r4, r6, 10
 lbi r2, 0
 lbi r6, 0
 nop // to align branch icount 692
 beqz r1, 28
 slli r3, r31, 14
 sub r4, r2, r2 // icount 695
 slli r1, r31, 3
 add r1, r0, r4 // icount 697
 sll r7, r7, r6 // icount 698
 srai r2, r1, 14
 rori r1, r1, 8
 slli r4, r4, 4
 slli r31, r1, 9
 rori r0, r3, 3
 rol r4, r1, r0 // icount 704
 subi r4, r5, 13
 sle r4, r0, r3 // icount 706
 lbi r0, 14
 sub r4, r2, r2 // icount 708
 slt r1, r0, r1 // icount 709
 sll r6, r3, r7 // icount 710
 ori r31, r5, 10
 ror r2, r2, r4 // icount 712
 sco r6, r7, r4 // icount 713
 sra r7, r0, r7 // icount 714
 lbi r6, 15
 andi r2, r5, 10
 nop // to align meminst icount 717
 andi r31, r31, 0xfe
 ld r0, r31, 0
 ori r1, r4, 9
 or r1, r3, r4 // icount 721
 slt r4, r3, r1 // icount 722
 slbi r2, 9
 j 18
 nop // icount 725
 nop // icount 726
 nop // icount 727
 nop // icount 728
 nop // icount 729
 nop // icount 730
 nop // icount 731
 nop // icount 732
 nop // icount 733
 j 32
 nop // icount 735
 nop // icount 736
 nop // icount 737
 nop // icount 738
 nop // icount 739
 nop // icount 740
 nop // icount 741
 nop // icount 742
 nop // icount 743
 nop // icount 744
 nop // icount 745
 nop // icount 746
 nop // icount 747
 nop // icount 748
 nop // icount 749
 nop // icount 750
 lbi r5, 0
 lbi r5, 0
 bnez r0, 28
 ori r6, r3, 7
 roli r1, r0, 11
 add r6, r6, r7 // icount 756
 rol r1, r2, r6 // icount 757
 addi r3, r2, 15
 ori r2, r1, 2
 ori r1, r1, 15
 slbi r2, 6
 seq r5, r1, r2 // icount 762
 sle r0, r1, r7 // icount 763
 sle r2, r4, r5 // icount 764
 roli r3, r0, 8
 andi r2, r2, 0xfe
 stu r31, r2, 2
 andi r6, r6, 0xfe
 stu r4, r6, 12
 sco r4, r3, r0 // icount 770
 seq r3, r5, r1 // icount 771
 rori r31, r2, 1
 nop // to align meminst icount 773
 andi r3, r3, 0xfe
 st r0, r3, 12
 sle r7, r6, r0 // icount 776
 srai r6, r6, 13
 roli r4, r1, 12
 sco r3, r0, r0 // icount 779
 andi r4, r4, 0xfe
 stu r4, r4, 12
 srai r31, r5, 9
 lbi r3, 4
 roli r4, r0, 3
 sub r2, r2, r4 // icount 785
 or r0, r4, r7 // icount 786
 j 24
 nop // icount 788
 nop // icount 789
 nop // icount 790
 nop // icount 791
 nop // icount 792
 nop // icount 793
 nop // icount 794
 nop // icount 795
 nop // icount 796
 nop // icount 797
 nop // icount 798
 nop // icount 799
 lbi r6, 0
 lbi r0, 0
 nop // to align branch icount 802
 bnez r2, 0
 j 6
 nop // icount 805
 nop // icount 806
 nop // icount 807
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 810
 beqz r6, 12
 lbi r1, 9
 roli r1, r31, 10
 srai r1, r2, 8
 slbi r6, 5
 sra r2, r6, r7 // icount 816
 lbi r5, 0
 andi r5, r0, 11
 sra r5, r1, r6 // icount 819
 slt r4, r1, r0 // icount 820
 nop // to align meminst icount 821
 andi r0, r0, 0xfe
 ld r0, r0, 14
 rol r3, r5, r3 // icount 824
 slli r3, r0, 10
 j 4
 nop // icount 827
 nop // icount 828
 lbi r6, 0
 lbi r3, 0
 beqz r2, 16
 subi r6, r3, 0
 sra r4, r4, r7 // icount 833
 slt r7, r6, r5 // icount 834
 sll r0, r1, r4 // icount 835
 slli r0, r4, 5
 nop // to align meminst icount 837
 andi r5, r5, 0xfe
 stu r3, r5, 0
 subi r0, r2, 6
 seq r2, r2, r6 // icount 841
 seq r0, r7, r7 // icount 842
 slbi r2, 8
 rol r1, r2, r2 // icount 844
 add r5, r4, r7 // icount 845
 sle r5, r6, r7 // icount 846
 nop // to align meminst icount 847
 andi r2, r2, 0xfe
 stu r1, r2, 10
 rori r2, r1, 9
 sle r1, r3, r4 // icount 851
 lbi r1, 0
 lbi r31, 0
 nop // to align branch icount 854
 beqz r0, 28
 andi r31, r6, 8
 sub r5, r5, r4 // icount 857
 add r5, r1, r7 // icount 858
 andi r2, r3, 6
 addi r1, r2, 10
 add r1, r2, r4 // icount 861
 subi r4, r3, 13
 rol r3, r5, r6 // icount 863
 lbi r5, 11
 sco r3, r7, r6 // icount 865
 ori r2, r5, 15
 sub r0, r5, r0 // icount 867
 seq r6, r4, r6 // icount 868
 nop // to align meminst icount 869
 andi r6, r6, 0xfe
 st r5, r6, 4
 rol r1, r5, r3 // icount 872
 rori r1, r3, 1
 slli r2, r0, 10
 and r3, r7, r3 // icount 875
 add r3, r3, r7 // icount 876
 sra r5, r2, r3 // icount 877
 andi r2, r2, 0xfe
 ld r3, r2, 12
 and r4, r5, r4 // icount 880
 nop // to align meminst icount 881
 andi r3, r3, 0xfe
 stu r6, r3, 2
 sra r3, r3, r4 // icount 884
 roli r5, r5, 6
 sra r1, r6, r4 // icount 886
 sll r0, r7, r6 // icount 887
 slbi r6, 0
 j 24
 nop // icount 890
 nop // icount 891
 nop // icount 892
 nop // icount 893
 nop // icount 894
 nop // icount 895
 nop // icount 896
 nop // icount 897
 nop // icount 898
 nop // icount 899
 nop // icount 900
 nop // icount 901
 lbi r3, 0
 lbi r0, 0
 nop // to align branch icount 904
 bnez r31, 8
 add r5, r3, r5 // icount 906
 subi r31, r4, 5
 addi r6, r5, 4
 add r5, r2, r7 // icount 909
 sub r1, r4, r0 // icount 910
 or r2, r5, r1 // icount 911
 and r2, r1, r0 // icount 912
 lbi r3, 11
 lbi r2, 0
 lbi r3, 0
 nop // to align branch icount 916
 bnez r31, 32
 or r0, r2, r6 // icount 918
 slbi r1, 6
 add r6, r1, r3 // icount 920
 add r7, r0, r4 // icount 921
 sub r1, r2, r0 // icount 922
 slbi r0, 10
 addi r31, r6, 12
 sco r3, r7, r6 // icount 925
 ori r3, r31, 2
 seq r5, r7, r2 // icount 927
 add r5, r2, r5 // icount 928
 ori r3, r2, 6
 or r6, r7, r6 // icount 930
 roli r0, r3, 11
 andi r3, r3, 0xfe
 ld r3, r3, 6
 srai r4, r3, 15
 addi r31, r5, 13
 and r0, r4, r7 // icount 936
 lbi r2, 5
 rol r6, r7, r4 // icount 938
 sco r7, r5, r4 // icount 939
 ori r31, r4, 2
 seq r2, r0, r4 // icount 941
 rori r31, r1, 10
 nop // to align meminst icount 943
 andi r0, r0, 0xfe
 stu r31, r0, 4
 andi r2, r2, 0xfe
 ld r4, r2, 6
 and r5, r1, r5 // icount 948
 ror r6, r0, r2 // icount 949
 sle r1, r4, r0 // icount 950
 ror r3, r1, r0 // icount 951
 sll r1, r5, r2 // icount 952
 lbi r31, 3
 j 2
 nop // icount 955
 j 30
 nop // icount 957
 nop // icount 958
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
 nop // icount 971
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 974
 beqz r4, 8
 slt r5, r5, r6 // icount 976
 or r5, r3, r4 // icount 977
 sub r1, r0, r4 // icount 978
 srai r2, r2, 5
 ori r4, r2, 11
 ror r1, r1, r3 // icount 981
 sra r0, r4, r3 // icount 982
 srai r3, r0, 5
 j 18
 nop // icount 985
 nop // icount 986
 nop // icount 987
 nop // icount 988
 nop // icount 989
 nop // icount 990
 nop // icount 991
 nop // icount 992
 nop // icount 993
 j 4
 nop // icount 995
 nop // icount 996
 lbi r4, 0
 lbi r2, 0
 bnez r4, 16
 andi r5, r5, 0xfe
 stu r6, r5, 14
 slbi r0, 5
 seq r1, r6, r3 // icount 1003
 seq r4, r2, r0 // icount 1004
 slli r6, r0, 9
 seq r3, r3, r3 // icount 1006
 addi r4, r5, 15
 sub r1, r2, r2 // icount 1008
 roli r31, r31, 9
 andi r0, r0, 0xfe
 ld r4, r0, 6
 seq r0, r1, r5 // icount 1012
 add r6, r6, r4 // icount 1013
 sll r1, r4, r0 // icount 1014
 sco r5, r7, r4 // icount 1015
 add r4, r0, r6 // icount 1016
 sub r1, r4, r6 // icount 1017
 lbi r0, 0
 lbi r3, 0
 nop // to align branch icount 1020
 beqz r0, 16
 sco r6, r5, r1 // icount 1022
 slbi r4, 14
 sra r3, r4, r4 // icount 1024
 and r2, r4, r0 // icount 1025
 lbi r2, 3
 add r5, r3, r4 // icount 1027
 addi r2, r6, 9
 nop // to align meminst icount 1029
 andi r0, r0, 0xfe
 stu r1, r0, 14
 srai r6, r6, 2
 ori r0, r6, 12
 roli r1, r31, 1
 slbi r6, 14
 slli r3, r3, 0
 lbi r6, 13
 seq r6, r4, r5 // icount 1038
 nop // to align meminst icount 1039
 andi r6, r6, 0xfe
 st r3, r6, 10
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 1044
 beqz r3, 12
 addi r1, r31, 1
 add r3, r1, r4 // icount 1047
 and r6, r1, r3 // icount 1048
 addi r31, r3, 1
 andi r4, r4, 0xfe
 ld r31, r4, 14
 andi r1, r1, 0xfe
 ld r2, r1, 10
 slbi r31, 10
 sra r3, r5, r2 // icount 1055
 rol r6, r5, r1 // icount 1056
 nop // to align meminst icount 1057
 andi r4, r4, 0xfe
 stu r5, r4, 14
 sle r2, r6, r0 // icount 1060
 slli r31, r3, 8
 j 24
 nop // icount 1063
 nop // icount 1064
 nop // icount 1065
 nop // icount 1066
 nop // icount 1067
 nop // icount 1068
 nop // icount 1069
 nop // icount 1070
 nop // icount 1071
 nop // icount 1072
 nop // icount 1073
 nop // icount 1074
 lbi r0, 0
 lbi r4, 0
 bnez r0, 24
 roli r4, r3, 6
 addi r3, r2, 11
 seq r4, r1, r0 // icount 1080
 sub r4, r1, r3 // icount 1081
 lbi r6, 6
 and r0, r1, r7 // icount 1083
 andi r6, r6, 0xfe
 ld r1, r6, 4
 slt r0, r5, r6 // icount 1086
 addi r1, r3, 10
 sub r0, r6, r1 // icount 1088
 slbi r31, 13
 ori r4, r0, 6
 nop // to align meminst icount 1091
 andi r6, r6, 0xfe
 ld r5, r6, 4
 ori r2, r31, 11
 sra r4, r4, r1 // icount 1095
 andi r1, r1, 0xfe
 ld r4, r1, 0
 rol r2, r4, r5 // icount 1098
 sub r7, r2, r3 // icount 1099
 rori r1, r31, 6
 rori r4, r0, 4
 srai r4, r1, 2
 ror r4, r1, r6 // icount 1103
 sll r7, r2, r3 // icount 1104
 srai r5, r2, 5
 lbi r4, 0
 lbi r4, 0
 nop // to align branch icount 1108
 bnez r2, 8
 slt r7, r1, r5 // icount 1110
 ori r6, r3, 7
 sll r5, r4, r0 // icount 1112
 subi r1, r2, 1
 sub r7, r6, r1 // icount 1114
 rol r3, r5, r4 // icount 1115
 sra r4, r1, r4 // icount 1116
 add r1, r2, r2 // icount 1117
 lbi r0, 0
 lbi r2, 0
 nop // to align branch icount 1120
 beqz r4, 24
 srai r0, r1, 13
 subi r4, r4, 11
 sub r6, r6, r6 // icount 1124
 rol r4, r6, r6 // icount 1125
 andi r3, r3, 0xfe
 st r6, r3, 2
 sll r3, r4, r5 // icount 1128
 ori r4, r4, 9
 sll r7, r1, r5 // icount 1130
 slli r31, r5, 4
 ror r4, r6, r0 // icount 1132
 sub r1, r4, r3 // icount 1133
 slli r0, r2, 5
 rori r3, r0, 14
 srai r5, r2, 10
 sle r7, r1, r5 // icount 1137
 ror r0, r2, r2 // icount 1138
 add r4, r1, r4 // icount 1139
 andi r3, r3, 0xfe
 stu r0, r3, 14
 add r0, r3, r4 // icount 1142
 slbi r0, 0
 and r0, r1, r4 // icount 1144
 subi r2, r31, 4
 addi r1, r2, 13
 nop // to align meminst icount 1147
 andi r5, r5, 0xfe
 st r0, r5, 2
 j 22
 nop // icount 1151
 nop // icount 1152
 nop // icount 1153
 nop // icount 1154
 nop // icount 1155
 nop // icount 1156
 nop // icount 1157
 nop // icount 1158
 nop // icount 1159
 nop // icount 1160
 nop // icount 1161
 lbi r3, 0
 lbi r0, 0
 nop // to align branch icount 1164
 beqz r6, 4
 subi r6, r4, 7
 rori r4, r2, 2
 slbi r6, 5
 nop // to align meminst icount 1169
 andi r3, r3, 0xfe
 ld r5, r3, 12
 j 6
 nop // icount 1173
 nop // icount 1174
 nop // icount 1175
 lbi r5, 0
 lbi r0, 0
 nop // to align branch icount 1178
 beqz r5, 32
 addi r6, r6, 15
 nop // to align meminst icount 1181
 andi r2, r2, 0xfe
 stu r2, r2, 8
 seq r2, r5, r3 // icount 1184
 add r1, r4, r6 // icount 1185
 slbi r0, 3
 nop // to align meminst icount 1187
 andi r31, r31, 0xfe
 ld r0, r31, 12
 rori r2, r6, 3
 roli r4, r1, 6
 ror r1, r5, r2 // icount 1192
 addi r5, r3, 14
 ror r5, r4, r5 // icount 1194
 or r6, r6, r6 // icount 1195
 seq r0, r7, r7 // icount 1196
 seq r7, r4, r3 // icount 1197
 ori r3, r0, 15
 sll r5, r3, r1 // icount 1199
 lbi r2, 4
 srai r0, r2, 2
 andi r0, r0, 0xfe
 ld r31, r0, 10
 or r3, r6, r2 // icount 1204
 and r3, r4, r2 // icount 1205
 roli r5, r4, 10
 slli r4, r0, 3
 roli r3, r4, 0
 seq r4, r3, r3 // icount 1209
 slli r0, r1, 4
 lbi r3, 10
 subi r5, r2, 12
 nop // to align meminst icount 1213
 andi r31, r31, 0xfe
 st r0, r31, 14
 ori r4, r6, 13
 nop // to align meminst icount 1217
 andi r31, r31, 0xfe
 stu r6, r31, 8
 andi r4, r1, 8
 j 6
 nop // icount 1222
 nop // icount 1223
 nop // icount 1224
 lbi r6, 0
 lbi r2, 0
 beqz r3, 4
 sra r4, r2, r0 // icount 1228
 slli r3, r1, 12
 sll r2, r0, r0 // icount 1230
 ori r0, r1, 4
 lbi r31, 0
 lbi r5, 0
 nop // to align branch icount 1234
 bnez r31, 32
 subi r31, r2, 0
 sub r1, r0, r1 // icount 1237
 add r0, r3, r2 // icount 1238
 nop // to align meminst icount 1239
 andi r1, r1, 0xfe
 st r2, r1, 10
 sll r1, r7, r6 // icount 1242
 nop // to align meminst icount 1243
 andi r6, r6, 0xfe
 stu r0, r6, 10
 sra r2, r3, r7 // icount 1246
 sra r6, r1, r0 // icount 1247
 andi r2, r2, 0xfe
 stu r0, r2, 14
 sra r4, r6, r1 // icount 1250
 rol r7, r3, r5 // icount 1251
 add r6, r7, r6 // icount 1252
 nop // to align meminst icount 1253
 andi r5, r5, 0xfe
 st r2, r5, 4
 slt r1, r0, r6 // icount 1256
 rori r1, r4, 15
 sco r1, r6, r2 // icount 1258
 lbi r6, 1
 sll r6, r4, r4 // icount 1260
 rori r0, r2, 7
 rori r31, r1, 14
 sub r2, r7, r5 // icount 1263
 roli r4, r1, 11
 sub r7, r5, r5 // icount 1265
 roli r5, r4, 11
 or r4, r3, r5 // icount 1267
 slt r1, r3, r7 // icount 1268
 add r6, r2, r0 // icount 1269
 sub r2, r1, r3 // icount 1270
 sle r5, r0, r7 // icount 1271
 sra r6, r2, r2 // icount 1272
 slt r2, r6, r7 // icount 1273
 andi r31, r31, 0xfe
 ld r1, r31, 12
 lbi r1, 0
 lbi r5, 0
 nop // to align branch icount 1278
 bnez r31, 24
 andi r2, r2, 0xfe
 stu r4, r2, 2
 slli r6, r6, 11
 and r5, r1, r6 // icount 1283
 ori r2, r2, 10
 nop // to align meminst icount 1285
 andi r2, r2, 0xfe
 stu r31, r2, 2
 rori r3, r31, 11
 slbi r4, 4
 lbi r1, 15
 andi r6, r3, 15
 slbi r4, 4
 ori r5, r4, 9
 sll r0, r0, r0 // icount 1294
 or r4, r6, r1 // icount 1295
 rol r4, r1, r1 // icount 1296
 slbi r3, 9
 sll r3, r0, r1 // icount 1298
 slt r7, r4, r0 // icount 1299
 sll r6, r1, r1 // icount 1300
 and r1, r0, r4 // icount 1301
 roli r4, r5, 2
 seq r3, r7, r1 // icount 1303
 srai r5, r1, 7
 or r5, r6, r7 // icount 1305
 rol r2, r5, r3 // icount 1306
 lbi r6, 0
 lbi r31, 0
 bnez r1, 0
 j 2
 nop // icount 1311
 lbi r1, 0
 lbi r3, 0
 nop // to align branch icount 1314
 bnez r5, 16
 subi r3, r0, 10
 sle r5, r1, r5 // icount 1317
 srai r31, r6, 9
 sll r0, r2, r4 // icount 1319
 ror r4, r7, r6 // icount 1320
 srai r3, r3, 4
 sle r3, r3, r0 // icount 1322
 addi r6, r5, 15
 seq r6, r6, r0 // icount 1324
 rol r0, r7, r4 // icount 1325
 slli r31, r31, 11
 roli r3, r4, 8
 slt r6, r7, r3 // icount 1328
 roli r6, r1, 3
 slt r0, r4, r7 // icount 1330
 addi r6, r0, 4
 j 24
 nop // icount 1333
 nop // icount 1334
 nop // icount 1335
 nop // icount 1336
 nop // icount 1337
 nop // icount 1338
 nop // icount 1339
 nop // icount 1340
 nop // icount 1341
 nop // icount 1342
 nop // icount 1343
 nop // icount 1344
 j 26
 nop // icount 1346
 nop // icount 1347
 nop // icount 1348
 nop // icount 1349
 nop // icount 1350
 nop // icount 1351
 nop // icount 1352
 nop // icount 1353
 nop // icount 1354
 nop // icount 1355
 nop // icount 1356
 nop // icount 1357
 nop // icount 1358
 j 28
 nop // icount 1360
 nop // icount 1361
 nop // icount 1362
 nop // icount 1363
 nop // icount 1364
 nop // icount 1365
 nop // icount 1366
 nop // icount 1367
 nop // icount 1368
 nop // icount 1369
 nop // icount 1370
 nop // icount 1371
 nop // icount 1372
 nop // icount 1373
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 1376
 bnez r31, 20
 andi r0, r0, 0xfe
 ld r6, r0, 10
 ror r6, r5, r7 // icount 1380
 rol r1, r1, r6 // icount 1381
 seq r7, r4, r1 // icount 1382
 addi r5, r6, 3
 and r3, r3, r3 // icount 1384
 slt r1, r4, r2 // icount 1385
 subi r31, r1, 13
 and r3, r6, r5 // icount 1387
 ori r0, r2, 11
 ror r7, r7, r4 // icount 1389
 ror r7, r6, r0 // icount 1390
 ror r2, r3, r2 // icount 1391
 rol r3, r3, r4 // icount 1392
 roli r2, r6, 8
 roli r0, r31, 2
 add r3, r1, r0 // icount 1395
 seq r6, r1, r2 // icount 1396
 slli r1, r0, 10
 andi r0, r0, 0xfe
 stu r31, r0, 2
 j 18
 nop // icount 1401
 nop // icount 1402
 nop // icount 1403
 nop // icount 1404
 nop // icount 1405
 nop // icount 1406
 nop // icount 1407
 nop // icount 1408
 nop // icount 1409
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 1412
 beqz r4, 0
 lbi r1, 0
 lbi r3, 0
 nop // to align branch icount 1416
 beqz r0, 16
 and r2, r3, r4 // icount 1418
 sra r3, r4, r0 // icount 1419
 slli r5, r2, 14
 add r0, r6, r2 // icount 1421
 sra r0, r3, r4 // icount 1422
 sle r2, r3, r1 // icount 1423
 sco r4, r7, r4 // icount 1424
 ror r4, r3, r6 // icount 1425
 slt r0, r4, r4 // icount 1426
 rol r4, r7, r2 // icount 1427
 sub r0, r7, r1 // icount 1428
 nop // to align meminst icount 1429
 andi r0, r0, 0xfe
 st r6, r0, 0
 seq r2, r6, r2 // icount 1432
 ror r5, r6, r0 // icount 1433
 subi r4, r4, 8
 subi r0, r1, 3
 lbi r2, 0
 lbi r2, 0
 nop // to align branch icount 1438
 bnez r3, 16
 seq r2, r6, r3 // icount 1440
 and r1, r0, r5 // icount 1441
 srai r4, r5, 2
 or r1, r0, r2 // icount 1443
 sll r1, r3, r5 // icount 1444
 seq r7, r5, r0 // icount 1445
 andi r2, r2, 0xfe
 stu r6, r2, 14
 ror r4, r5, r2 // icount 1448
 ror r7, r3, r7 // icount 1449
 andi r2, r2, 0xfe
 stu r5, r2, 14
 slbi r0, 14
 sle r5, r2, r4 // icount 1453
 slbi r1, 12
 addi r4, r3, 13
 slt r6, r1, r2 // icount 1456
 slt r4, r1, r7 // icount 1457
 j 20
 nop // icount 1459
 nop // icount 1460
 nop // icount 1461
 nop // icount 1462
 nop // icount 1463
 nop // icount 1464
 nop // icount 1465
 nop // icount 1466
 nop // icount 1467
 nop // icount 1468
 lbi r6, 0
 lbi r6, 0
 beqz r4, 4
 sco r4, r0, r2 // icount 1472
 nop // to align meminst icount 1473
 andi r0, r0, 0xfe
 st r1, r0, 6
 andi r4, r4, 0xfe
 stu r1, r4, 12
 andi r5, r5, 0xfe
 ld r5, r5, 8
 j 18
 nop // icount 1481
 nop // icount 1482
 nop // icount 1483
 nop // icount 1484
 nop // icount 1485
 nop // icount 1486
 nop // icount 1487
 nop // icount 1488
 nop // icount 1489
 lbi r1, 0
 lbi r6, 0
 nop // to align branch icount 1492
 beqz r31, 4
 sll r1, r0, r2 // icount 1494
 sub r4, r0, r4 // icount 1495
 ror r3, r1, r2 // icount 1496
 rori r1, r2, 10
 lbi r31, 0
 lbi r2, 0
 nop // to align branch icount 1500
 bnez r6, 16
 rol r5, r5, r5 // icount 1502
 rori r4, r6, 9
 sll r1, r1, r1 // icount 1504
 add r6, r5, r3 // icount 1505
 lbi r6, 4
 slli r1, r6, 2
 sub r7, r0, r4 // icount 1508
 rori r5, r6, 5
 roli r31, r2, 11
 seq r3, r4, r6 // icount 1511
 sra r0, r2, r5 // icount 1512
 sle r6, r2, r1 // icount 1513
 andi r2, r2, 0xfe
 stu r1, r2, 10
 rol r3, r1, r0 // icount 1516
 slt r4, r2, r4 // icount 1517
 slt r1, r1, r2 // icount 1518
 lbi r1, 0
 lbi r31, 0
 beqz r3, 28
 ori r3, r1, 11
 nop // to align meminst icount 1523
 andi r3, r3, 0xfe
 ld r4, r3, 10
 srai r1, r5, 9
 ror r4, r7, r6 // icount 1527
 slt r6, r5, r7 // icount 1528
 sub r2, r4, r5 // icount 1529
 slbi r4, 10
 roli r5, r3, 2
 sub r5, r1, r0 // icount 1532
 slbi r31, 5
 roli r3, r0, 13
 slt r6, r3, r4 // icount 1535
 and r4, r0, r6 // icount 1536
 sub r6, r4, r4 // icount 1537
 slli r3, r2, 1
 nop // to align meminst icount 1539
 andi r31, r31, 0xfe
 stu r2, r31, 14
 rori r1, r1, 14
 sco r0, r3, r2 // icount 1543
 slli r5, r5, 14
 andi r31, r4, 9
 sll r5, r5, r4 // icount 1546
 sll r1, r5, r3 // icount 1547
 or r5, r2, r7 // icount 1548
 slt r0, r6, r7 // icount 1549
 rol r5, r1, r1 // icount 1550
 subi r2, r3, 10
 rori r4, r1, 5
 lbi r31, 5
 j 12
 nop // icount 1555
 nop // icount 1556
 nop // icount 1557
 nop // icount 1558
 nop // icount 1559
 nop // icount 1560
 j 28
 nop // icount 1562
 nop // icount 1563
 nop // icount 1564
 nop // icount 1565
 nop // icount 1566
 nop // icount 1567
 nop // icount 1568
 nop // icount 1569
 nop // icount 1570
 nop // icount 1571
 nop // icount 1572
 nop // icount 1573
 nop // icount 1574
 nop // icount 1575
 j 20
 nop // icount 1577
 nop // icount 1578
 nop // icount 1579
 nop // icount 1580
 nop // icount 1581
 nop // icount 1582
 nop // icount 1583
 nop // icount 1584
 nop // icount 1585
 nop // icount 1586
 lbi r2, 0
 lbi r5, 0
 beqz r0, 16
 sco r5, r2, r5 // icount 1590
 roli r5, r1, 3
 slli r31, r4, 10
 and r2, r0, r1 // icount 1593
 addi r5, r3, 11
 sle r2, r0, r0 // icount 1595
 add r3, r3, r3 // icount 1596
 subi r5, r3, 0
 slli r1, r6, 15
 roli r1, r3, 15
 sll r1, r5, r3 // icount 1600
 slbi r31, 5
 seq r2, r5, r0 // icount 1602
 nop // to align meminst icount 1603
 andi r2, r2, 0xfe
 stu r4, r2, 14
 and r5, r0, r5 // icount 1606
 or r5, r0, r0 // icount 1607
 lbi r5, 0
 lbi r0, 0
 nop // to align branch icount 1610
 bnez r2, 12
 roli r6, r6, 10
 lbi r0, 4
 lbi r2, 4
 ror r5, r6, r2 // icount 1615
 sle r5, r4, r2 // icount 1616
 lbi r0, 11
 subi r6, r0, 0
 rori r0, r0, 15
 sra r4, r1, r1 // icount 1620
 addi r4, r31, 12
 lbi r3, 2
 srai r1, r5, 1
 lbi r2, 0
 lbi r3, 0
 nop // to align branch icount 1626
 beqz r6, 8
 srai r6, r5, 4
 sco r3, r4, r3 // icount 1629
 sra r2, r5, r6 // icount 1630
 srai r6, r3, 0
 slbi r5, 12
 add r7, r2, r3 // icount 1633
 sco r6, r6, r2 // icount 1634
 ori r2, r6, 10
 lbi r6, 0
 lbi r2, 0
 nop // to align branch icount 1638
 beqz r5, 8
 andi r3, r4, 8
 srai r3, r6, 11
 subi r4, r1, 6
 sle r1, r4, r0 // icount 1643
 andi r2, r2, 0xfe
 stu r5, r2, 6
 sll r4, r3, r2 // icount 1646
 sco r1, r5, r7 // icount 1647
 seq r2, r3, r5 // icount 1648
 j 12
 nop // icount 1650
 nop // icount 1651
 nop // icount 1652
 nop // icount 1653
 nop // icount 1654
 nop // icount 1655
 j 6
 nop // icount 1657
 nop // icount 1658
 nop // icount 1659
 j 18
 nop // icount 1661
 nop // icount 1662
 nop // icount 1663
 nop // icount 1664
 nop // icount 1665
 nop // icount 1666
 nop // icount 1667
 nop // icount 1668
 nop // icount 1669
 halt // icount 1670
