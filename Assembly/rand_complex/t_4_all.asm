 // seed 4
 lbi r0, 167
 slbi r0, 145
 lbi r1, 12
 slbi r1, 187
 lbi r2, 135
 slbi r2, 166
 lbi r3, 172
 slbi r3, 218
 lbi r4, 97
 slbi r4, 58
 lbi r5, 17
 slbi r5, 59
 lbi r6, 85
 slbi r6, 121
 lbi r31, 158
 slbi r31, 72
 j 4
 nop // icount 17
 nop // icount 18
 and r3, r0, r4 // icount 19
 add r7, r3, r7 // icount 20
 lbi r0, 0
 lbi r4, 0
 bnez r3, 20
 seq r0, r3, r4 // icount 24
 sub r7, r2, r7 // icount 25
 rori r31, r6, 2
 sll r7, r2, r4 // icount 27
 or r0, r4, r2 // icount 28
 slt r1, r5, r6 // icount 29
 add r7, r1, r7 // icount 30
 sub r3, r5, r0 // icount 31
 and r1, r0, r3 // icount 32
 or r3, r3, r4 // icount 33
 slli r2, r0, 7
 lbi r3, 8
 and r6, r3, r1 // icount 36
 seq r3, r6, r7 // icount 37
 slt r1, r1, r3 // icount 38
 subi r6, r5, 4
 rol r4, r2, r4 // icount 40
 roli r0, r4, 15
 sll r7, r0, r4 // icount 42
 and r7, r2, r6 // icount 43
 and r2, r3, r1 // icount 44
 lbi r3, 0
 lbi r2, 0
 bnez r5, 32
 slli r5, r4, 3
 ori r3, r1, 5
 sll r2, r7, r1 // icount 50
 nop // to align meminst icount 51
 andi r6, r6, 0xfe
 st r2, r6, 10
 lbi r1, 12
 seq r0, r0, r4 // icount 55
 or r2, r1, r1 // icount 56
 andi r1, r0, 5
 sco r7, r0, r3 // icount 58
 nop // to align meminst icount 59
 andi r31, r31, 0xfe
 stu r31, r31, 12
 sle r3, r2, r3 // icount 62
 sle r1, r2, r3 // icount 63
 sra r4, r0, r0 // icount 64
 rori r2, r2, 14
 addi r3, r0, 0
 addi r0, r4, 7
 sra r6, r2, r5 // icount 68
 slbi r2, 2
 rori r2, r31, 1
 seq r4, r6, r6 // icount 71
 sco r6, r6, r0 // icount 72
 and r1, r1, r3 // icount 73
 subi r31, r31, 12
 slbi r31, 4
 and r3, r7, r0 // icount 76
 nop // to align meminst icount 77
 andi r3, r3, 0xfe
 stu r31, r3, 4
 ror r4, r4, r4 // icount 80
 slli r0, r31, 0
 seq r2, r6, r7 // icount 82
 ror r4, r6, r5 // icount 83
 slt r3, r3, r1 // icount 84
 nop // to align meminst icount 85
 andi r31, r31, 0xfe
 ld r1, r31, 6
 andi r31, r31, 0xfe
 stu r3, r31, 12
 j 26
 nop // icount 91
 nop // icount 92
 nop // icount 93
 nop // icount 94
 nop // icount 95
 nop // icount 96
 nop // icount 97
 nop // icount 98
 nop // icount 99
 nop // icount 100
 nop // icount 101
 nop // icount 102
 nop // icount 103
 j 30
 nop // icount 105
 nop // icount 106
 nop // icount 107
 nop // icount 108
 nop // icount 109
 nop // icount 110
 nop // icount 111
 nop // icount 112
 nop // icount 113
 nop // icount 114
 nop // icount 115
 nop // icount 116
 nop // icount 117
 nop // icount 118
 nop // icount 119
 lbi r31, 1
 j 32
 nop // icount 122
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
 nop // icount 136
 nop // icount 137
 andi r5, r5, 0xfe
 st r0, r5, 2
 andi r3, r3, 0xfe
 ld r6, r3, 12
 lbi r1, 0
 lbi r1, 0
 nop // to align branch icount 144
 beqz r2, 28
 slt r6, r4, r6 // icount 146
 nop // to align meminst icount 147
 andi r31, r31, 0xfe
 stu r31, r31, 14
 seq r3, r5, r0 // icount 150
 ori r31, r2, 3
 sra r4, r1, r0 // icount 152
 lbi r4, 12
 or r0, r1, r7 // icount 154
 slli r4, r4, 9
 roli r3, r5, 7
 add r0, r1, r7 // icount 157
 seq r1, r7, r5 // icount 158
 rori r5, r1, 8
 sco r0, r2, r2 // icount 160
 slli r2, r6, 6
 sra r7, r6, r4 // icount 162
 seq r0, r7, r4 // icount 163
 sub r5, r3, r4 // icount 164
 nop // to align meminst icount 165
 andi r6, r6, 0xfe
 st r3, r6, 12
 or r2, r5, r7 // icount 168
 nop // to align meminst icount 169
 andi r2, r2, 0xfe
 stu r5, r2, 6
 subi r5, r4, 0
 nop // to align meminst icount 173
 andi r3, r3, 0xfe
 st r5, r3, 12
 sra r5, r5, r7 // icount 176
 andi r4, r3, 11
 sll r2, r1, r0 // icount 178
 slli r2, r0, 3
 slt r7, r4, r5 // icount 180
 sle r0, r4, r5 // icount 181
 j 24
 nop // icount 183
 nop // icount 184
 nop // icount 185
 nop // icount 186
 nop // icount 187
 nop // icount 188
 nop // icount 189
 nop // icount 190
 nop // icount 191
 nop // icount 192
 nop // icount 193
 nop // icount 194
 and r1, r2, r1 // icount 195
 addi r3, r6, 15
 lbi r3, 0
 lbi r5, 0
 beqz r3, 8
 ori r0, r0, 14
 nop // to align meminst icount 201
 andi r6, r6, 0xfe
 ld r31, r6, 6
 ori r6, r6, 13
 slli r6, r3, 12
 slbi r1, 10
 nop // to align meminst icount 207
 andi r1, r1, 0xfe
 ld r6, r1, 6
 addi r3, r2, 5
 nop // to align meminst icount 211
 andi r5, r5, 0xfe
 ld r0, r5, 12
 lbi r4, 0
 lbi r0, 0
 nop // to align branch icount 216
 bnez r1, 0
 lbi r2, 0
 lbi r5, 0
 nop // to align branch icount 220
 beqz r0, 24
 addi r6, r31, 1
 nop // to align meminst icount 223
 andi r5, r5, 0xfe
 ld r2, r5, 10
 srai r5, r0, 10
 roli r1, r6, 4
 slbi r3, 6
 subi r3, r3, 7
 slli r0, r0, 7
 rori r3, r5, 2
 sub r1, r4, r6 // icount 232
 subi r3, r31, 8
 andi r6, r5, 11
 nop // to align meminst icount 235
 andi r31, r31, 0xfe
 stu r0, r31, 4
 andi r5, r5, 0xfe
 ld r31, r5, 0
 and r2, r4, r5 // icount 240
 rol r4, r6, r4 // icount 241
 add r0, r5, r2 // icount 242
 add r5, r7, r3 // icount 243
 sra r6, r5, r6 // icount 244
 rori r4, r2, 9
 andi r5, r5, 0xfe
 ld r1, r5, 10
 sra r7, r5, r5 // icount 248
 add r3, r6, r4 // icount 249
 and r5, r5, r3 // icount 250
 sll r5, r1, r2 // icount 251
 sll r0, r1, r6 // icount 252
 lbi r0, 0
 lbi r2, 0
 beqz r6, 24
 seq r1, r0, r6 // icount 256
 roli r0, r6, 15
 and r2, r0, r5 // icount 258
 srai r3, r31, 6
 andi r31, r31, 0xfe
 st r3, r31, 0
 add r3, r6, r3 // icount 262
 sub r6, r0, r5 // icount 263
 andi r2, r31, 1
 slt r4, r2, r6 // icount 265
 andi r2, r2, 0xfe
 stu r0, r2, 6
 lbi r5, 0
 add r4, r4, r5 // icount 269
 andi r3, r3, 0xfe
 stu r5, r3, 12
 slt r4, r2, r7 // icount 272
 add r0, r3, r0 // icount 273
 roli r1, r0, 0
 srai r2, r31, 7
 sle r4, r3, r6 // icount 276
 sle r5, r5, r2 // icount 277
 subi r31, r5, 7
 rori r5, r5, 2
 lbi r5, 8
 sle r0, r1, r2 // icount 281
 slbi r3, 15
 slli r3, r6, 15
 lbi r2, 0
 lbi r31, 0
 nop // to align branch icount 286
 beqz r5, 8
 sub r7, r7, r7 // icount 288
 or r7, r3, r7 // icount 289
 roli r0, r1, 6
 addi r1, r0, 11
 seq r0, r0, r2 // icount 292
 subi r2, r31, 3
 ori r3, r3, 2
 sco r6, r1, r6 // icount 295
 j 4
 nop // icount 297
 nop // icount 298
 andi r31, r31, 3
 sle r2, r3, r0 // icount 300
 lbi r31, 0
 lbi r5, 0
 beqz r3, 16
 or r1, r6, r0 // icount 304
 sle r7, r3, r1 // icount 305
 lbi r1, 9
 subi r31, r31, 14
 lbi r5, 3
 rol r3, r6, r6 // icount 309
 sll r2, r7, r4 // icount 310
 sll r6, r3, r2 // icount 311
 roli r3, r0, 4
 or r3, r7, r4 // icount 313
 subi r31, r31, 1
 sra r7, r7, r7 // icount 315
 ori r1, r1, 5
 subi r31, r3, 9
 rori r6, r0, 0
 slt r3, r5, r5 // icount 319
 lbi r31, 0
 lbi r0, 0
 nop // to align branch icount 322
 bnez r6, 24
 rol r4, r0, r4 // icount 324
 sra r4, r0, r7 // icount 325
 slbi r3, 8
 rori r4, r1, 2
 add r7, r1, r5 // icount 328
 rol r1, r7, r7 // icount 329
 lbi r2, 0
 add r5, r4, r1 // icount 331
 roli r6, r4, 6
 slbi r6, 4
 andi r31, r31, 0xfe
 ld r0, r31, 2
 ori r4, r1, 12
 ror r7, r3, r4 // icount 337
 andi r6, r2, 6
 slt r3, r5, r1 // icount 339
 lbi r0, 6
 add r6, r7, r7 // icount 341
 sll r2, r4, r6 // icount 342
 lbi r6, 8
 andi r31, r31, 0xfe
 stu r6, r31, 12
 or r6, r7, r4 // icount 346
 add r3, r0, r4 // icount 347
 ror r4, r3, r0 // icount 348
 sub r2, r3, r4 // icount 349
 andi r6, r1, 1
 lbi r5, 0
 lbi r4, 0
 bnez r5, 28
 sll r7, r0, r3 // icount 354
 slli r0, r3, 1
 lbi r2, 12
 nop // to align meminst icount 357
 andi r6, r6, 0xfe
 st r5, r6, 6
 slt r3, r0, r2 // icount 360
 ror r0, r4, r6 // icount 361
 add r1, r1, r7 // icount 362
 sco r3, r2, r7 // icount 363
 and r2, r4, r6 // icount 364
 sub r1, r2, r7 // icount 365
 ori r31, r3, 3
 nop // to align meminst icount 367
 andi r3, r3, 0xfe
 st r3, r3, 10
 add r7, r7, r6 // icount 370
 nop // to align meminst icount 371
 andi r6, r6, 0xfe
 ld r0, r6, 8
 slbi r3, 14
 sco r2, r4, r2 // icount 375
 ori r6, r5, 11
 sll r6, r7, r2 // icount 377
 slbi r3, 6
 slt r0, r1, r2 // icount 379
 subi r0, r31, 3
 nop // to align meminst icount 381
 andi r1, r1, 0xfe
 ld r31, r1, 10
 andi r5, r5, 0xfe
 ld r3, r5, 12
 rol r6, r3, r0 // icount 386
 or r3, r2, r6 // icount 387
 andi r4, r4, 0xfe
 ld r31, r4, 0
 and r3, r5, r0 // icount 390
 seq r7, r2, r3 // icount 391
 sll r6, r2, r0 // icount 392
 slli r6, r2, 3
 j 32
 nop // icount 395
 nop // icount 396
 nop // icount 397
 nop // icount 398
 nop // icount 399
 nop // icount 400
 nop // icount 401
 nop // icount 402
 nop // icount 403
 nop // icount 404
 nop // icount 405
 nop // icount 406
 nop // icount 407
 nop // icount 408
 nop // icount 409
 nop // icount 410
 j 12
 nop // icount 412
 nop // icount 413
 nop // icount 414
 nop // icount 415
 nop // icount 416
 nop // icount 417
 j 30
 nop // icount 419
 nop // icount 420
 nop // icount 421
 nop // icount 422
 nop // icount 423
 nop // icount 424
 nop // icount 425
 nop // icount 426
 nop // icount 427
 nop // icount 428
 nop // icount 429
 nop // icount 430
 nop // icount 431
 nop // icount 432
 nop // icount 433
 j 12
 nop // icount 435
 nop // icount 436
 nop // icount 437
 nop // icount 438
 nop // icount 439
 nop // icount 440
 sle r1, r5, r5 // icount 441
 j 4
 nop // icount 443
 nop // icount 444
 lbi r1, 0
 lbi r1, 0
 bnez r6, 8
 sll r4, r1, r5 // icount 448
 slbi r2, 2
 andi r0, r0, 0xfe
 st r2, r0, 0
 lbi r31, 15
 nop // to align meminst icount 453
 andi r6, r6, 0xfe
 st r0, r6, 10
 lbi r4, 13
 subi r4, r0, 15
 andi r0, r1, 10
 andi r5, r3, 3
 j 6
 nop // icount 461
 nop // icount 462
 nop // icount 463
 lbi r31, 0
 lbi r6, 0
 nop // to align branch icount 466
 bnez r1, 20
 seq r4, r7, r1 // icount 468
 andi r5, r6, 11
 and r2, r5, r3 // icount 470
 subi r3, r0, 8
 sra r6, r5, r6 // icount 472
 or r6, r2, r0 // icount 473
 srai r1, r4, 6
 slli r6, r6, 6
 sco r6, r0, r1 // icount 476
 subi r6, r5, 5
 sra r4, r7, r1 // icount 478
 sle r0, r3, r3 // icount 479
 slbi r31, 9
 add r1, r4, r0 // icount 481
 andi r4, r4, 0xfe
 st r3, r4, 2
 addi r1, r1, 0
 sra r5, r6, r5 // icount 485
 sra r7, r0, r3 // icount 486
 sle r5, r0, r1 // icount 487
 andi r6, r6, 0xfe
 st r3, r6, 0
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 492
 beqz r31, 32
 ror r0, r7, r1 // icount 494
 subi r4, r4, 6
 and r4, r2, r2 // icount 496
 slli r1, r31, 0
 roli r0, r31, 0
 seq r2, r1, r6 // icount 499
 sll r5, r6, r7 // icount 500
 sub r5, r5, r2 // icount 501
 andi r0, r0, 0xfe
 stu r5, r0, 8
 rori r6, r1, 0
 ror r4, r2, r5 // icount 505
 add r7, r6, r1 // icount 506
 slt r5, r6, r2 // icount 507
 andi r6, r6, 0xfe
 st r5, r6, 2
 slt r5, r4, r0 // icount 510
 slbi r5, 10
 add r1, r0, r1 // icount 512
 or r0, r6, r7 // icount 513
 andi r1, r1, 0xfe
 st r31, r1, 10
 sco r6, r6, r3 // icount 516
 or r1, r4, r1 // icount 517
 sle r5, r5, r3 // icount 518
 ori r5, r3, 9
 slt r0, r0, r3 // icount 520
 seq r6, r7, r4 // icount 521
 ror r0, r2, r6 // icount 522
 ror r5, r3, r3 // icount 523
 andi r1, r5, 10
 slt r4, r4, r0 // icount 525
 slt r5, r7, r6 // icount 526
 rol r7, r0, r4 // icount 527
 sll r5, r5, r7 // icount 528
 seq r6, r0, r3 // icount 529
 andi r2, r2, 0xfe
 ld r5, r2, 10
 sra r1, r1, r4 // icount 532
 and r3, r2, r4 // icount 533
 j 16
 nop // icount 535
 nop // icount 536
 nop // icount 537
 nop // icount 538
 nop // icount 539
 nop // icount 540
 nop // icount 541
 nop // icount 542
 j 22
 nop // icount 544
 nop // icount 545
 nop // icount 546
 nop // icount 547
 nop // icount 548
 nop // icount 549
 nop // icount 550
 nop // icount 551
 nop // icount 552
 nop // icount 553
 nop // icount 554
 slli r0, r4, 10
 slli r5, r1, 1
 srai r31, r0, 14
 lbi r4, 0
 lbi r5, 0
 nop // to align branch icount 560
 bnez r4, 16
 roli r1, r1, 11
 add r0, r2, r4 // icount 563
 sra r3, r3, r1 // icount 564
 lbi r2, 4
 andi r5, r2, 7
 ror r1, r1, r2 // icount 567
 sub r7, r6, r0 // icount 568
 rol r4, r2, r3 // icount 569
 andi r1, r2, 4
 lbi r6, 15
 subi r1, r3, 6
 add r3, r1, r1 // icount 573
 add r6, r3, r4 // icount 574
 nop // to align meminst icount 575
 andi r6, r6, 0xfe
 ld r31, r6, 2
 sub r1, r3, r6 // icount 578
 and r1, r6, r1 // icount 579
 ror r5, r4, r6 // icount 580
 subi r6, r4, 1
 lbi r5, 12
 j 6
 nop // icount 584
 nop // icount 585
 nop // icount 586
 ror r6, r3, r6 // icount 587
 andi r6, r6, 0xfe
 st r5, r6, 2
 lbi r1, 0
 lbi r6, 0
 nop // to align branch icount 592
 bnez r6, 28
 sle r4, r1, r1 // icount 594
 nop // to align meminst icount 595
 andi r3, r3, 0xfe
 stu r31, r3, 4
 or r7, r2, r2 // icount 598
 slli r5, r31, 3
 andi r3, r6, 14
 ori r2, r2, 13
 ror r3, r7, r6 // icount 602
 sle r0, r4, r3 // icount 603
 slli r2, r3, 9
 rori r6, r1, 3
 srai r4, r4, 7
 sub r2, r4, r7 // icount 607
 sco r2, r7, r2 // icount 608
 rol r5, r3, r3 // icount 609
 andi r3, r3, 0xfe
 ld r2, r3, 8
 sco r3, r5, r7 // icount 612
 sub r5, r1, r0 // icount 613
 andi r31, r31, 0xfe
 ld r2, r31, 0
 ror r5, r5, r3 // icount 616
 sco r4, r1, r0 // icount 617
 slli r3, r4, 6
 sle r1, r1, r5 // icount 619
 sco r0, r4, r6 // icount 620
 seq r1, r5, r4 // icount 621
 andi r3, r3, 0xfe
 st r3, r3, 10
 sco r4, r4, r6 // icount 624
 sco r1, r2, r6 // icount 625
 andi r6, r4, 0
 nop // to align meminst icount 627
 andi r3, r3, 0xfe
 stu r3, r3, 12
 andi r1, r1, 0xfe
 st r0, r1, 12
 lbi r5, 0
 lbi r4, 0
 nop // to align branch icount 634
 beqz r5, 12
 srai r4, r4, 2
 sco r0, r6, r3 // icount 637
 slli r2, r0, 11
 rol r4, r0, r1 // icount 639
 ror r6, r7, r2 // icount 640
 slli r3, r6, 3
 sll r6, r1, r2 // icount 642
 and r3, r0, r4 // icount 643
 sll r3, r1, r3 // icount 644
 nop // to align meminst icount 645
 andi r3, r3, 0xfe
 st r31, r3, 14
 sub r0, r6, r6 // icount 648
 roli r3, r2, 8
 slt r4, r1, r0 // icount 650
 sra r6, r3, r6 // icount 651
 sra r2, r0, r3 // icount 652
 nop // to align meminst icount 653
 andi r5, r5, 0xfe
 st r4, r5, 10
 j 30
 nop // icount 657
 nop // icount 658
 nop // icount 659
 nop // icount 660
 nop // icount 661
 nop // icount 662
 nop // icount 663
 nop // icount 664
 nop // icount 665
 nop // icount 666
 nop // icount 667
 nop // icount 668
 nop // icount 669
 nop // icount 670
 nop // icount 671
 lbi r3, 0
 lbi r1, 0
 nop // to align branch icount 674
 bnez r6, 4
 ror r7, r7, r7 // icount 676
 sll r5, r6, r4 // icount 677
 ror r6, r1, r3 // icount 678
 or r2, r1, r3 // icount 679
 and r6, r7, r3 // icount 680
 sra r2, r1, r7 // icount 681
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 684
 bnez r3, 28
 subi r6, r3, 2
 nop // to align meminst icount 687
 andi r0, r0, 0xfe
 st r31, r0, 0
 ror r6, r4, r7 // icount 690
 srai r0, r31, 7
 lbi r5, 4
 or r3, r5, r4 // icount 693
 sub r7, r6, r2 // icount 694
 sub r0, r6, r2 // icount 695
 add r0, r0, r2 // icount 696
 sco r3, r2, r4 // icount 697
 slli r0, r1, 10
 subi r1, r0, 15
 andi r5, r4, 3
 addi r1, r2, 14
 ror r4, r4, r0 // icount 702
 and r1, r3, r0 // icount 703
 ror r1, r3, r1 // icount 704
 add r0, r1, r6 // icount 705
 andi r31, r31, 0xfe
 ld r6, r31, 2
 slbi r2, 0
 slt r2, r5, r6 // icount 709
 or r7, r5, r6 // icount 710
 subi r0, r4, 14
 add r0, r4, r7 // icount 712
 seq r2, r4, r3 // icount 713
 andi r1, r1, 0
 and r3, r4, r2 // icount 715
 andi r4, r4, 0xfe
 ld r4, r4, 8
 lbi r6, 0
 lbi r0, 0
 nop // to align branch icount 720
 beqz r6, 8
 sub r0, r7, r0 // icount 722
 rol r4, r6, r2 // icount 723
 slli r2, r4, 6
 roli r3, r4, 2
 roli r1, r5, 15
 ori r3, r5, 3
 andi r6, r31, 7
 ror r1, r6, r1 // icount 729
 lbi r0, 0
 lbi r0, 0
 nop // to align branch icount 732
 bnez r6, 28
 sco r2, r0, r2 // icount 734
 srai r2, r5, 2
 seq r0, r7, r5 // icount 736
 rori r31, r5, 2
 rori r5, r4, 7
 nop // to align meminst icount 739
 andi r0, r0, 0xfe
 st r0, r0, 2
 slt r0, r3, r0 // icount 742
 or r7, r0, r5 // icount 743
 andi r1, r1, 0xfe
 stu r31, r1, 10
 ror r3, r6, r1 // icount 746
 nop // to align meminst icount 747
 andi r0, r0, 0xfe
 st r6, r0, 2
 andi r3, r3, 0xfe
 stu r5, r3, 6
 rori r6, r1, 5
 seq r2, r6, r5 // icount 753
 add r0, r0, r4 // icount 754
 slli r3, r5, 15
 andi r2, r5, 0
 roli r6, r5, 14
 sco r6, r7, r0 // icount 758
 roli r4, r0, 13
 addi r0, r3, 5
 slt r3, r3, r0 // icount 761
 ror r7, r6, r3 // icount 762
 ori r31, r6, 1
 slbi r4, 12
 slbi r2, 11
 add r6, r4, r0 // icount 766
 sll r1, r1, r1 // icount 767
 j 20
 nop // icount 769
 nop // icount 770
 nop // icount 771
 nop // icount 772
 nop // icount 773
 nop // icount 774
 nop // icount 775
 nop // icount 776
 nop // icount 777
 nop // icount 778
 lbi r0, 0
 lbi r1, 0
 bnez r5, 20
 addi r1, r0, 8
 add r5, r3, r4 // icount 783
 sra r5, r3, r4 // icount 784
 sra r5, r3, r7 // icount 785
 roli r31, r3, 5
 sra r7, r5, r4 // icount 787
 or r5, r0, r1 // icount 788
 subi r31, r6, 13
 slbi r5, 10
 sco r3, r6, r5 // icount 791
 seq r7, r7, r0 // icount 792
 addi r5, r31, 14
 seq r6, r5, r2 // icount 794
 and r2, r5, r4 // icount 795
 sra r6, r7, r1 // icount 796
 sub r0, r7, r6 // icount 797
 slli r31, r5, 6
 sco r3, r3, r6 // icount 799
 andi r6, r4, 6
 roli r6, r1, 7
 j 12
 nop // icount 803
 nop // icount 804
 nop // icount 805
 nop // icount 806
 nop // icount 807
 nop // icount 808
 sub r3, r5, r4 // icount 809
 rol r7, r3, r1 // icount 810
 subi r4, r3, 2
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 814
 bnez r1, 0
 lbi r0, 0
 lbi r1, 0
 nop // to align branch icount 818
 beqz r5, 16
 roli r5, r31, 5
 slli r2, r1, 6
 or r4, r2, r2 // icount 822
 seq r0, r5, r3 // icount 823
 addi r4, r1, 6
 and r5, r5, r5 // icount 825
 or r5, r4, r3 // icount 826
 sle r3, r4, r6 // icount 827
 seq r2, r6, r1 // icount 828
 rol r6, r0, r4 // icount 829
 or r2, r2, r0 // icount 830
 slli r3, r1, 11
 andi r5, r6, 7
 sra r7, r1, r2 // icount 833
 rori r6, r2, 0
 subi r0, r4, 2
 sle r0, r3, r4 // icount 836
 j 2
 nop // icount 838
 j 22
 nop // icount 840
 nop // icount 841
 nop // icount 842
 nop // icount 843
 nop // icount 844
 nop // icount 845
 nop // icount 846
 nop // icount 847
 nop // icount 848
 nop // icount 849
 nop // icount 850
 sco r0, r3, r3 // icount 851
 j 8
 nop // icount 853
 nop // icount 854
 nop // icount 855
 nop // icount 856
 nop // to align meminst icount 857
 andi r6, r6, 0xfe
 st r4, r6, 8
 lbi r0, 0
 lbi r0, 0
 nop // to align branch icount 862
 beqz r1, 16
 slli r2, r31, 10
 sle r1, r0, r6 // icount 865
 add r4, r6, r5 // icount 866
 slt r4, r5, r4 // icount 867
 or r4, r3, r5 // icount 868
 subi r4, r6, 1
 lbi r0, 0
 slbi r31, 12
 andi r4, r1, 2
 slt r5, r1, r0 // icount 873
 andi r6, r6, 0xfe
 st r4, r6, 14
 srai r0, r4, 10
 sle r5, r1, r7 // icount 877
 slli r5, r31, 0
 roli r3, r1, 6
 ori r31, r3, 4
 subi r1, r31, 11
 j 12
 nop // icount 883
 nop // icount 884
 nop // icount 885
 nop // icount 886
 nop // icount 887
 nop // icount 888
 j 20
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
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 902
 beqz r2, 8
 or r1, r1, r6 // icount 904
 ror r2, r4, r0 // icount 905
 add r4, r1, r2 // icount 906
 slt r0, r5, r7 // icount 907
 sle r0, r7, r7 // icount 908
 slli r2, r31, 0
 sub r5, r5, r1 // icount 910
 roli r6, r31, 10
 lbi r5, 0
 lbi r31, 0
 nop // to align branch icount 914
 bnez r6, 28
 slli r0, r31, 6
 sle r3, r0, r1 // icount 917
 srai r5, r4, 14
 slt r3, r1, r2 // icount 919
 ori r4, r5, 6
 slbi r1, 9
 rori r5, r4, 6
 sra r4, r1, r2 // icount 923
 addi r6, r3, 5
 slbi r2, 7
 rol r5, r5, r2 // icount 926
 add r5, r0, r4 // icount 927
 slt r6, r6, r7 // icount 928
 andi r2, r2, 8
 sub r7, r3, r6 // icount 930
 addi r2, r2, 10
 roli r6, r0, 6
 ror r0, r2, r3 // icount 933
 sra r4, r0, r2 // icount 934
 slt r1, r5, r7 // icount 935
 and r4, r0, r1 // icount 936
 addi r4, r5, 7
 slbi r5, 9
 rori r0, r3, 7
 and r7, r0, r4 // icount 940
 and r7, r3, r2 // icount 941
 sle r3, r2, r2 // icount 942
 nop // to align meminst icount 943
 andi r5, r5, 0xfe
 ld r31, r5, 8
 or r4, r0, r7 // icount 946
 nop // to align meminst icount 947
 andi r1, r1, 0xfe
 stu r1, r1, 0
 lbi r4, 0
 lbi r0, 0
 nop // to align branch icount 952
 beqz r3, 4
 andi r6, r6, 0xfe
 st r6, r6, 4
 lbi r6, 6
 andi r2, r1, 14
 slt r7, r1, r2 // icount 958
 andi r6, r5, 1
 lbi r3, 0
 lbi r3, 0
 nop // to align branch icount 962
 beqz r3, 24
 subi r0, r5, 11
 nop // to align meminst icount 965
 andi r4, r4, 0xfe
 st r2, r4, 10
 seq r7, r0, r1 // icount 968
 roli r1, r1, 14
 andi r1, r1, 0xfe
 ld r1, r1, 14
 sll r0, r6, r4 // icount 972
 add r7, r7, r3 // icount 973
 sra r7, r3, r2 // icount 974
 rol r3, r3, r5 // icount 975
 sll r1, r4, r4 // icount 976
 subi r31, r6, 13
 seq r1, r5, r5 // icount 978
 sle r3, r5, r5 // icount 979
 srai r1, r0, 8
 lbi r6, 12
 seq r4, r7, r3 // icount 982
 srai r1, r3, 5
 lbi r1, 9
 ori r2, r5, 14
 andi r1, r1, 0xfe
 st r2, r1, 12
 sub r3, r1, r0 // icount 988
 or r7, r1, r1 // icount 989
 slli r5, r1, 0
 nop // to align meminst icount 991
 andi r5, r5, 0xfe
 stu r2, r5, 12
 halt // icount 994
