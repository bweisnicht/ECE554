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
 add r4, r2, r3 // icount 16
 j 24
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
 nop // icount 29
 lbi r5, 0
 lbi r0, 0
 nop // to align branch icount 32
 beqz r1, 4
 roli r0, r31, 5
 ror r6, r5, r2 // icount 35
 andi r1, r1, 0xfe
 stu r4, r1, 6
 andi r0, r6, 0
 lbi r4, 0
 lbi r1, 0
 beqz r2, 20
 andi r2, r2, 0xfe
 ld r0, r2, 0
 seq r4, r1, r6 // icount 44
 addi r1, r1, 4
 lbi r3, 6
 lbi r1, 4
 sco r5, r6, r1 // icount 48
 sub r0, r7, r0 // icount 49
 andi r0, r0, 0xfe
 stu r6, r0, 2
 add r0, r5, r4 // icount 52
 sub r6, r7, r0 // icount 53
 subi r4, r6, 11
 andi r2, r2, 2
 andi r3, r3, 0xfe
 st r31, r3, 0
 rol r7, r5, r7 // icount 58
 ori r0, r3, 4
 and r3, r0, r2 // icount 60
 addi r2, r2, 9
 andi r1, r1, 0xfe
 stu r4, r1, 6
 srai r31, r5, 2
 add r3, r5, r2 // icount 65
 lbi r4, 0
 lbi r3, 0
 nop // to align branch icount 68
 bnez r1, 16
 andi r3, r3, 0xfe
 st r6, r3, 10
 sra r6, r7, r5 // icount 72
 nop // to align meminst icount 73
 andi r3, r3, 0xfe
 stu r5, r3, 4
 seq r4, r7, r4 // icount 76
 slbi r5, 8
 ori r3, r3, 4
 rol r3, r3, r6 // icount 79
 subi r3, r4, 3
 sco r2, r1, r1 // icount 81
 sle r6, r0, r2 // icount 82
 slt r3, r1, r7 // icount 83
 subi r2, r4, 12
 subi r5, r2, 4
 add r5, r2, r7 // icount 86
 ori r6, r6, 7
 slt r0, r0, r3 // icount 88
 j 8
 nop // icount 90
 nop // icount 91
 nop // icount 92
 nop // icount 93
 lbi r4, 0
 lbi r0, 0
 nop // to align branch icount 96
 beqz r3, 12
 sra r2, r1, r6 // icount 98
 nop // to align meminst icount 99
 andi r2, r2, 0xfe
 ld r31, r2, 10
 or r0, r7, r6 // icount 102
 add r2, r5, r2 // icount 103
 srai r3, r1, 12
 nop // to align meminst icount 105
 andi r0, r0, 0xfe
 stu r2, r0, 10
 roli r2, r1, 15
 roli r3, r1, 13
 add r4, r3, r3 // icount 110
 sco r3, r0, r1 // icount 111
 or r2, r2, r2 // icount 112
 and r2, r2, r5 // icount 113
 lbi r4, 0
 lbi r5, 0
 nop // to align branch icount 116
 beqz r2, 28
 and r0, r6, r7 // icount 118
 or r1, r0, r6 // icount 119
 sra r7, r4, r0 // icount 120
 rori r2, r0, 11
 subi r1, r2, 6
 or r4, r3, r1 // icount 123
 add r5, r1, r1 // icount 124
 slt r7, r7, r2 // icount 125
 andi r31, r31, 0xfe
 ld r2, r31, 10
 roli r5, r1, 13
 srai r5, r6, 9
 sub r5, r2, r6 // icount 130
 subi r4, r5, 3
 andi r3, r3, 0xfe
 stu r0, r3, 8
 and r7, r4, r0 // icount 134
 sle r1, r7, r7 // icount 135
 sub r2, r5, r4 // icount 136
 and r1, r7, r0 // icount 137
 add r5, r0, r5 // icount 138
 or r7, r6, r2 // icount 139
 addi r0, r4, 6
 and r5, r6, r5 // icount 141
 andi r5, r5, 0xfe
 st r2, r5, 0
 subi r6, r3, 3
 seq r1, r5, r7 // icount 145
 slli r4, r2, 7
 add r7, r0, r4 // icount 147
 sle r6, r6, r2 // icount 148
 lbi r0, 0
 lbi r3, 0
 bnez r0, 12
 sco r0, r6, r3 // icount 152
 ror r4, r2, r5 // icount 153
 andi r3, r3, 0xfe
 stu r2, r3, 0
 andi r4, r4, 0xfe
 ld r0, r4, 10
 sub r0, r2, r3 // icount 158
 sra r0, r3, r3 // icount 159
 ori r5, r31, 1
 ror r7, r1, r7 // icount 161
 andi r5, r1, 3
 sll r4, r7, r7 // icount 163
 ror r3, r2, r5 // icount 164
 rol r5, r5, r4 // icount 165
 lbi r6, 0
 lbi r2, 0
 nop // to align branch icount 168
 beqz r4, 20
 sub r5, r5, r3 // icount 170
 add r5, r3, r5 // icount 171
 ror r7, r1, r2 // icount 172
 slt r5, r6, r6 // icount 173
 andi r1, r1, 0xfe
 st r6, r1, 0
 slbi r0, 7
 ori r2, r0, 1
 seq r1, r7, r3 // icount 178
 seq r2, r5, r3 // icount 179
 sle r4, r7, r2 // icount 180
 srai r5, r0, 13
 andi r5, r5, 9
 slli r1, r2, 0
 slt r7, r0, r3 // icount 184
 and r0, r5, r0 // icount 185
 slt r2, r5, r5 // icount 186
 ror r2, r2, r6 // icount 187
 slli r3, r1, 10
 nop // to align meminst icount 189
 andi r5, r5, 0xfe
 st r0, r5, 0
 addi r31, r5, 14
 j 30
 nop // icount 194
 nop // icount 195
 nop // icount 196
 nop // icount 197
 nop // icount 198
 nop // icount 199
 nop // icount 200
 nop // icount 201
 nop // icount 202
 nop // icount 203
 nop // icount 204
 nop // icount 205
 nop // icount 206
 nop // icount 207
 nop // icount 208
 or r3, r5, r0 // icount 209
 j 30
 nop // icount 211
 nop // icount 212
 nop // icount 213
 nop // icount 214
 nop // icount 215
 nop // icount 216
 nop // icount 217
 nop // icount 218
 nop // icount 219
 nop // icount 220
 nop // icount 221
 nop // icount 222
 nop // icount 223
 nop // icount 224
 nop // icount 225
 slli r1, r5, 7
 lbi r6, 0
 lbi r5, 0
 beqz r31, 12
 sub r0, r5, r4 // icount 230
 slli r5, r0, 8
 subi r31, r5, 0
 sco r2, r1, r7 // icount 233
 sub r3, r7, r6 // icount 234
 subi r5, r1, 11
 andi r3, r3, 0xfe
 stu r6, r3, 2
 or r5, r1, r0 // icount 238
 roli r1, r6, 0
 ori r1, r6, 6
 seq r0, r6, r2 // icount 241
 sle r3, r4, r7 // icount 242
 j 12
 nop // icount 244
 nop // icount 245
 nop // icount 246
 nop // icount 247
 nop // icount 248
 nop // icount 249
 j 32
 nop // icount 251
 nop // icount 252
 nop // icount 253
 nop // icount 254
 nop // icount 255
 nop // icount 256
 nop // icount 257
 nop // icount 258
 nop // icount 259
 nop // icount 260
 nop // icount 261
 nop // icount 262
 nop // icount 263
 nop // icount 264
 nop // icount 265
 nop // icount 266
 and r6, r1, r7 // icount 267
 seq r0, r0, r3 // icount 268
 j 8
 nop // icount 270
 nop // icount 271
 nop // icount 272
 nop // icount 273
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 276
 beqz r31, 8
 andi r5, r4, 8
 addi r3, r31, 4
 subi r5, r4, 11
 nop // to align meminst icount 281
 andi r1, r1, 0xfe
 ld r6, r1, 8
 andi r1, r1, 0xfe
 st r5, r1, 12
 srai r1, r2, 8
 add r5, r3, r6 // icount 287
 srai r5, r5, 7
 sra r2, r1, r4 // icount 289
 j 22
 nop // icount 291
 nop // icount 292
 nop // icount 293
 nop // icount 294
 nop // icount 295
 nop // icount 296
 nop // icount 297
 nop // icount 298
 nop // icount 299
 nop // icount 300
 nop // icount 301
 lbi r3, 0
 lbi r0, 0
 nop // to align branch icount 304
 bnez r3, 4
 andi r2, r2, 0xfe
 ld r0, r2, 0
 sco r3, r3, r7 // icount 308
 or r5, r7, r6 // icount 309
 roli r6, r2, 8
 j 2
 nop // icount 312
 addi r4, r31, 2
 slli r0, r1, 4
 lbi r1, 0
 lbi r2, 0
 bnez r1, 0
 lbi r5, 0
 lbi r1, 0
 nop // to align branch icount 320
 bnez r0, 4
 seq r5, r2, r0 // icount 322
 add r7, r7, r7 // icount 323
 slt r5, r7, r4 // icount 324
 rol r6, r0, r3 // icount 325
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 328
 beqz r0, 12
 roli r5, r6, 2
 roli r4, r31, 7
 addi r0, r4, 15
 subi r2, r4, 12
 subi r3, r1, 11
 nop // to align meminst icount 335
 andi r4, r4, 0xfe
 ld r5, r4, 0
 andi r6, r6, 0xfe
 stu r0, r6, 2
 add r3, r7, r6 // icount 340
 sle r6, r2, r0 // icount 341
 addi r3, r5, 11
 ori r4, r31, 4
 sra r0, r6, r0 // icount 344
 and r6, r1, r1 // icount 345
 lbi r2, 0
 lbi r1, 0
 nop // to align branch icount 348
 beqz r6, 4
 sub r4, r3, r7 // icount 350
 rori r4, r1, 14
 add r1, r3, r3 // icount 352
 rori r1, r3, 2
 roli r4, r4, 15
 or r1, r7, r3 // icount 355
 lbi r31, 0
 lbi r3, 0
 nop // to align branch icount 358
 beqz r2, 8
 sub r1, r6, r0 // icount 360
 andi r0, r6, 9
 andi r3, r3, 0xfe
 st r5, r3, 6
 sll r4, r2, r0 // icount 364
 and r0, r6, r7 // icount 365
 lbi r5, 12
 seq r7, r5, r0 // icount 367
 addi r6, r3, 0
 rori r3, r0, 7
 j 0
 j 26
 nop // icount 372
 nop // icount 373
 nop // icount 374
 nop // icount 375
 nop // icount 376
 nop // icount 377
 nop // icount 378
 nop // icount 379
 nop // icount 380
 nop // icount 381
 nop // icount 382
 nop // icount 383
 nop // icount 384
 j 16
 nop // icount 386
 nop // icount 387
 nop // icount 388
 nop // icount 389
 nop // icount 390
 nop // icount 391
 nop // icount 392
 nop // icount 393
 ror r3, r5, r0 // icount 394
 lbi r4, 0
 lbi r2, 0
 beqz r0, 20
 sub r6, r6, r6 // icount 398
 seq r0, r6, r3 // icount 399
 sra r3, r7, r5 // icount 400
 srai r6, r1, 2
 slbi r1, 2
 rol r4, r4, r6 // icount 403
 add r4, r1, r6 // icount 404
 slli r3, r3, 5
 andi r3, r3, 0xfe
 ld r6, r3, 4
 seq r6, r4, r1 // icount 408
 addi r0, r6, 6
 slbi r6, 3
 sub r6, r6, r2 // icount 411
 sco r1, r1, r1 // icount 412
 rori r4, r31, 3
 sll r1, r1, r4 // icount 414
 andi r4, r0, 14
 andi r2, r2, 0xfe
 ld r5, r2, 12
 andi r2, r2, 0xfe
 st r1, r2, 2
 roli r3, r4, 1
 slbi r1, 10
 or r5, r3, r3 // icount 422
 j 0
 lbi r31, 0
 lbi r5, 0
 nop // to align branch icount 426
 beqz r4, 16
 add r6, r3, r5 // icount 428
 lbi r6, 12
 roli r5, r5, 8
 sll r3, r6, r1 // icount 431
 and r0, r5, r6 // icount 432
 roli r6, r0, 3
 roli r31, r3, 7
 srai r3, r31, 12
 and r3, r0, r0 // icount 436
 and r7, r2, r1 // icount 437
 roli r1, r2, 0
 slt r6, r0, r1 // icount 439
 sra r2, r2, r5 // icount 440
 or r6, r4, r1 // icount 441
 andi r2, r2, 0xfe
 stu r0, r2, 0
 andi r0, r0, 0xfe
 ld r2, r0, 2
 rori r2, r0, 8
 j 18
 nop // icount 448
 nop // icount 449
 nop // icount 450
 nop // icount 451
 nop // icount 452
 nop // icount 453
 nop // icount 454
 nop // icount 455
 nop // icount 456
 slli r1, r6, 14
 andi r0, r0, 0xfe
 stu r2, r0, 8
 lbi r0, 0
 lbi r6, 0
 nop // to align branch icount 462
 beqz r1, 4
 andi r31, r0, 1
 lbi r6, 2
 ori r1, r3, 6
 sle r2, r7, r3 // icount 467
 lbi r0, 0
 lbi r4, 0
 nop // to align branch icount 470
 beqz r0, 8
 add r5, r7, r0 // icount 472
 rol r1, r3, r3 // icount 473
 andi r1, r1, 0xfe
 stu r5, r1, 14
 slli r4, r1, 7
 slbi r31, 9
 slbi r3, 6
 ori r5, r1, 7
 srai r3, r31, 11
 subi r4, r31, 13
 lbi r5, 0
 lbi r2, 0
 nop // to align branch icount 484
 beqz r31, 20
 andi r5, r5, 14
 slbi r31, 0
 ror r5, r5, r5 // icount 488
 sll r5, r1, r7 // icount 489
 seq r4, r4, r0 // icount 490
 srai r1, r6, 6
 addi r1, r6, 0
 subi r6, r5, 15
 sll r2, r5, r4 // icount 494
 subi r2, r5, 1
 ror r7, r7, r2 // icount 496
 or r0, r4, r4 // icount 497
 subi r5, r1, 2
 slbi r3, 0
 ror r0, r2, r2 // icount 500
 slt r5, r5, r3 // icount 501
 andi r6, r6, 0xfe
 stu r31, r6, 4
 addi r4, r0, 0
 nop // to align meminst icount 505
 andi r31, r31, 0xfe
 st r2, r31, 6
 sub r6, r3, r3 // icount 508
 j 18
 nop // icount 510
 nop // icount 511
 nop // icount 512
 nop // icount 513
 nop // icount 514
 nop // icount 515
 nop // icount 516
 nop // icount 517
 nop // icount 518
 sco r0, r6, r0 // icount 519
 sra r2, r6, r5 // icount 520
 lbi r1, 0
 lbi r1, 0
 bnez r31, 16
 sub r3, r4, r4 // icount 524
 ori r5, r1, 3
 rol r6, r6, r3 // icount 526
 nop // to align meminst icount 527
 andi r31, r31, 0xfe
 st r1, r31, 6
 subi r6, r3, 12
 ror r5, r5, r5 // icount 531
 rol r6, r1, r2 // icount 532
 sle r1, r7, r0 // icount 533
 ror r0, r1, r7 // icount 534
 and r7, r2, r3 // icount 535
 andi r2, r5, 15
 addi r0, r3, 2
 and r3, r7, r7 // icount 538
 sll r6, r6, r5 // icount 539
 andi r6, r6, 0xfe
 st r2, r6, 6
 sco r3, r3, r4 // icount 542
 lbi r0, 0
 lbi r0, 0
 bnez r31, 0
 lbi r1, 0
 lbi r1, 0
 nop // to align branch icount 548
 beqz r5, 28
 rori r0, r1, 3
 add r6, r2, r4 // icount 551
 srai r2, r4, 1
 nop // to align meminst icount 553
 andi r0, r0, 0xfe
 st r1, r0, 2
 roli r0, r3, 15
 subi r4, r0, 12
 subi r2, r2, 15
 seq r2, r7, r1 // icount 559
 rol r2, r3, r2 // icount 560
 slt r6, r7, r0 // icount 561
 seq r0, r7, r6 // icount 562
 slt r2, r1, r2 // icount 563
 sra r2, r1, r1 // icount 564
 ror r6, r3, r2 // icount 565
 slbi r1, 15
 srai r1, r31, 12
 sll r2, r7, r3 // icount 568
 ori r1, r2, 4
 andi r5, r5, 0xfe
 stu r6, r5, 0
 sle r2, r7, r3 // icount 572
 nop // to align meminst icount 573
 andi r0, r0, 0xfe
 ld r6, r0, 2
 add r6, r2, r1 // icount 576
 and r3, r3, r3 // icount 577
 andi r1, r6, 11
 roli r1, r0, 3
 slbi r4, 8
 sco r1, r0, r3 // icount 581
 slli r5, r31, 7
 subi r1, r4, 15
 j 22
 nop // icount 585
 nop // icount 586
 nop // icount 587
 nop // icount 588
 nop // icount 589
 nop // icount 590
 nop // icount 591
 nop // icount 592
 nop // icount 593
 nop // icount 594
 nop // icount 595
 lbi r6, 12
 lbi r5, 0
 lbi r3, 0
 beqz r5, 12
 sle r3, r1, r2 // icount 600
 addi r0, r31, 1
 slt r4, r2, r7 // icount 602
 slli r1, r1, 4
 rol r3, r6, r7 // icount 604
 andi r0, r4, 15
 sra r5, r3, r1 // icount 606
 ror r2, r6, r7 // icount 607
 subi r1, r5, 0
 andi r4, r1, 7
 slt r5, r2, r2 // icount 610
 subi r5, r3, 7
 andi r6, r6, 0xfe
 st r0, r6, 12
 andi r2, r0, 3
 j 4
 nop // icount 616
 nop // icount 617
 j 6
 nop // icount 619
 nop // icount 620
 nop // icount 621
 andi r31, r31, 0xfe
 st r6, r31, 6
 sra r7, r2, r2 // icount 624
 nop // to align meminst icount 625
 andi r3, r3, 0xfe
 stu r6, r3, 6
 or r4, r7, r7 // icount 628
 j 28
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
 nop // icount 642
 nop // icount 643
 sra r1, r0, r5 // icount 644
 and r6, r2, r7 // icount 645
 slbi r0, 15
 lbi r4, 0
 lbi r2, 0
 bnez r5, 12
 and r1, r0, r5 // icount 650
 addi r5, r1, 14
 andi r2, r31, 13
 nop // to align meminst icount 653
 andi r5, r5, 0xfe
 stu r0, r5, 0
 lbi r5, 9
 slt r6, r7, r3 // icount 657
 seq r3, r0, r0 // icount 658
 sll r4, r4, r3 // icount 659
 andi r31, r31, 0xfe
 ld r0, r31, 12
 add r4, r3, r2 // icount 662
 add r1, r4, r7 // icount 663
 lbi r31, 10
 j 6
 nop // icount 666
 nop // icount 667
 nop // icount 668
 lbi r6, 0
 lbi r6, 0
 bnez r2, 24
 ori r6, r1, 15
 sra r2, r1, r0 // icount 673
 andi r5, r5, 0xfe
 ld r4, r5, 2
 sco r1, r1, r0 // icount 676
 rol r1, r2, r1 // icount 677
 ror r0, r2, r6 // icount 678
 add r4, r0, r2 // icount 679
 slbi r6, 11
 sra r6, r0, r5 // icount 681
 andi r2, r2, 0xfe
 st r2, r2, 4
 and r2, r1, r2 // icount 684
 slli r31, r0, 13
 andi r3, r3, 0xfe
 stu r1, r3, 14
 slbi r0, 6
 slbi r2, 12
 andi r4, r31, 15
 roli r3, r4, 0
 seq r7, r6, r1 // icount 692
 sle r6, r5, r4 // icount 693
 andi r4, r4, 0xfe
 stu r0, r4, 2
 slli r4, r6, 6
 sle r6, r2, r2 // icount 697
 or r5, r1, r2 // icount 698
 nop // to align meminst icount 699
 andi r2, r2, 0xfe
 ld r1, r2, 14
 lbi r1, 0
 lbi r6, 0
 nop // to align branch icount 704
 beqz r0, 4
 slbi r31, 7
 subi r0, r5, 13
 sle r4, r3, r6 // icount 708
 ori r2, r2, 12
 sle r7, r6, r3 // icount 710
 slbi r0, 5
 andi r31, r31, 0xfe
 st r3, r31, 14
 or r0, r1, r0 // icount 714
 lbi r0, 0
 lbi r3, 0
 beqz r31, 28
 slbi r1, 4
 srai r1, r4, 3
 srai r4, r3, 9
 slt r7, r3, r1 // icount 721
 slbi r3, 1
 add r0, r3, r1 // icount 723
 andi r0, r0, 0xfe
 st r5, r0, 8
 ori r0, r31, 7
 nop // to align meminst icount 727
 andi r6, r6, 0xfe
 ld r3, r6, 0
 addi r2, r0, 4
 ori r0, r6, 3
 rol r7, r3, r3 // icount 732
 slbi r5, 15
 slli r2, r4, 8
 sub r4, r7, r7 // icount 735
 roli r0, r4, 14
 nop // to align meminst icount 737
 andi r31, r31, 0xfe
 stu r4, r31, 12
 andi r2, r2, 0xfe
 st r5, r2, 4
 andi r5, r5, 0xfe
 st r31, r5, 0
 seq r1, r1, r4 // icount 744
 ori r3, r1, 8
 sll r1, r6, r3 // icount 746
 nop // to align meminst icount 747
 andi r31, r31, 0xfe
 ld r4, r31, 4
 lbi r6, 15
 seq r0, r5, r5 // icount 751
 andi r1, r1, 0xfe
 stu r3, r1, 12
 sra r1, r2, r0 // icount 754
 addi r6, r0, 14
 j 2
 nop // icount 757
 andi r1, r6, 11
 and r5, r3, r7 // icount 759
 sub r6, r2, r1 // icount 760
 or r6, r1, r7 // icount 761
 j 32
 nop // icount 763
 nop // icount 764
 nop // icount 765
 nop // icount 766
 nop // icount 767
 nop // icount 768
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
 slli r5, r2, 3
 andi r2, r2, 0xfe
 st r6, r2, 2
 j 4
 nop // icount 783
 nop // icount 784
 sle r2, r4, r5 // icount 785
 j 10
 nop // icount 787
 nop // icount 788
 nop // icount 789
 nop // icount 790
 nop // icount 791
 sll r6, r4, r4 // icount 792
 lbi r31, 12
 j 18
 nop // icount 795
 nop // icount 796
 nop // icount 797
 nop // icount 798
 nop // icount 799
 nop // icount 800
 nop // icount 801
 nop // icount 802
 nop // icount 803
 j 8
 nop // icount 805
 nop // icount 806
 nop // icount 807
 nop // icount 808
 j 14
 nop // icount 810
 nop // icount 811
 nop // icount 812
 nop // icount 813
 nop // icount 814
 nop // icount 815
 nop // icount 816
 halt // icount 817
