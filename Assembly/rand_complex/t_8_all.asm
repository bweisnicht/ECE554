 // seed 8
 lbi r0, 35
 slbi r0, 98
 lbi r1, 1
 slbi r1, 152
 lbi r2, 123
 slbi r2, 131
 lbi r3, 167
 slbi r3, 87
 lbi r4, 226
 slbi r4, 182
 lbi r5, 175
 slbi r5, 28
 lbi r6, 238
 slbi r6, 177
 lbi r31, 216
 slbi r31, 202
 j 22
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
 srai r31, r6, 3
 j 16
 nop // icount 30
 nop // icount 31
 nop // icount 32
 nop // icount 33
 nop // icount 34
 nop // icount 35
 nop // icount 36
 nop // icount 37
 add r2, r4, r1 // icount 38
 slt r2, r1, r1 // icount 39
 andi r31, r31, 0xfe
 ld r5, r31, 0
 lbi r4, 0
 lbi r5, 0
 nop // to align branch icount 44
 bnez r0, 8
 sub r0, r4, r2 // icount 46
 sll r5, r0, r4 // icount 47
 lbi r5, 1
 srai r4, r2, 9
 slbi r4, 2
 or r3, r3, r1 // icount 51
 or r3, r1, r6 // icount 52
 or r7, r3, r5 // icount 53
 lbi r4, 0
 lbi r3, 0
 nop // to align branch icount 56
 beqz r5, 16
 sll r1, r5, r0 // icount 58
 ror r4, r5, r5 // icount 59
 andi r5, r5, 0xfe
 st r2, r5, 10
 subi r3, r3, 12
 sco r6, r6, r3 // icount 63
 sll r2, r3, r5 // icount 64
 lbi r0, 4
 sub r5, r7, r0 // icount 66
 subi r0, r3, 14
 sco r1, r5, r7 // icount 68
 nop // to align meminst icount 69
 andi r5, r5, 0xfe
 stu r4, r5, 10
 sra r5, r3, r1 // icount 72
 ori r2, r6, 3
 rori r2, r0, 4
 subi r2, r1, 15
 or r7, r0, r2 // icount 76
 lbi r31, 0
 lbi r6, 0
 bnez r31, 28
 add r2, r4, r2 // icount 80
 sle r5, r2, r3 // icount 81
 andi r5, r6, 2
 slt r0, r0, r2 // icount 83
 rori r1, r6, 3
 slbi r31, 7
 slbi r6, 9
 nop // to align meminst icount 87
 andi r1, r1, 0xfe
 st r6, r1, 8
 andi r6, r6, 0xfe
 ld r2, r6, 10
 sll r2, r1, r5 // icount 92
 addi r0, r2, 5
 seq r3, r2, r3 // icount 94
 lbi r0, 11
 or r0, r4, r0 // icount 96
 ror r5, r2, r4 // icount 97
 andi r31, r31, 0xfe
 stu r5, r31, 4
 rori r31, r6, 2
 and r3, r2, r6 // icount 101
 sle r3, r5, r7 // icount 102
 sub r2, r4, r7 // icount 103
 sle r4, r6, r3 // icount 104
 nop // to align meminst icount 105
 andi r6, r6, 0xfe
 stu r5, r6, 14
 or r2, r2, r5 // icount 108
 nop // to align meminst icount 109
 andi r4, r4, 0xfe
 st r31, r4, 0
 sra r1, r3, r6 // icount 112
 addi r3, r4, 4
 sub r2, r4, r4 // icount 114
 subi r2, r1, 11
 lbi r3, 7
 j 28
 nop // icount 118
 nop // icount 119
 nop // icount 120
 nop // icount 121
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
 slli r5, r6, 15
 slt r6, r2, r4 // icount 133
 lbi r2, 0
 lbi r0, 0
 nop // to align branch icount 136
 bnez r2, 12
 srai r0, r31, 1
 srai r0, r2, 0
 addi r0, r6, 6
 slbi r3, 13
 srai r31, r3, 8
 nop // to align meminst icount 143
 andi r4, r4, 0xfe
 ld r3, r4, 0
 rori r0, r31, 13
 rol r6, r2, r3 // icount 147
 andi r5, r5, 4
 sra r2, r1, r2 // icount 149
 subi r6, r3, 14
 or r3, r5, r0 // icount 151
 lbi r5, 0
 lbi r2, 0
 nop // to align branch icount 154
 bnez r4, 8
 add r4, r0, r7 // icount 156
 andi r31, r31, 11
 seq r1, r3, r4 // icount 158
 subi r31, r2, 9
 andi r0, r1, 11
 sub r3, r1, r5 // icount 161
 and r1, r5, r4 // icount 162
 sll r6, r1, r2 // icount 163
 sle r7, r0, r0 // icount 164
 j 12
 nop // icount 166
 nop // icount 167
 nop // icount 168
 nop // icount 169
 nop // icount 170
 nop // icount 171
 sra r0, r3, r7 // icount 172
 ori r6, r6, 9
 andi r5, r5, 0xfe
 st r31, r5, 12
 ori r4, r4, 15
 j 28
 nop // icount 178
 nop // icount 179
 nop // icount 180
 nop // icount 181
 nop // icount 182
 nop // icount 183
 nop // icount 184
 nop // icount 185
 nop // icount 186
 nop // icount 187
 nop // icount 188
 nop // icount 189
 nop // icount 190
 nop // icount 191
 rol r1, r4, r5 // icount 192
 rol r6, r0, r3 // icount 193
 lbi r4, 0
 lbi r3, 0
 nop // to align branch icount 196
 beqz r4, 12
 rori r4, r3, 14
 sco r6, r1, r4 // icount 199
 srai r5, r3, 0
 ror r7, r2, r2 // icount 201
 slli r31, r3, 1
 ori r3, r1, 1
 ori r4, r2, 2
 rol r7, r5, r4 // icount 205
 andi r31, r31, 0xfe
 ld r5, r31, 6
 rol r0, r3, r1 // icount 208
 addi r1, r6, 4
 andi r2, r2, 0xfe
 stu r1, r2, 10
 lbi r3, 0
 lbi r4, 0
 nop // to align branch icount 214
 bnez r3, 20
 slbi r1, 6
 sco r0, r1, r6 // icount 217
 rol r1, r3, r5 // icount 218
 slt r5, r7, r7 // icount 219
 subi r2, r6, 1
 slt r2, r3, r0 // icount 221
 and r0, r7, r4 // icount 222
 rol r2, r3, r5 // icount 223
 seq r5, r0, r7 // icount 224
 nop // to align meminst icount 225
 andi r4, r4, 0xfe
 st r3, r4, 6
 lbi r2, 3
 and r2, r0, r6 // icount 229
 rol r1, r7, r4 // icount 230
 sco r7, r0, r7 // icount 231
 subi r3, r4, 12
 slt r0, r4, r7 // icount 233
 sub r0, r6, r7 // icount 234
 nop // to align meminst icount 235
 andi r4, r4, 0xfe
 st r4, r4, 0
 and r6, r1, r0 // icount 238
 sub r0, r3, r4 // icount 239
 slbi r6, 4
 sco r6, r6, r6 // icount 241
 sll r2, r3, r1 // icount 242
 lbi r0, 1
 seq r7, r5, r2 // icount 244
 slt r6, r6, r1 // icount 245
 sra r2, r1, r6 // icount 246
 lbi r5, 8
 and r7, r1, r4 // icount 248
 nop // to align meminst icount 249
 andi r5, r5, 0xfe
 stu r0, r5, 2
 seq r0, r4, r0 // icount 252
 lbi r6, 0
 lbi r1, 0
 bnez r4, 32
 slbi r3, 9
 seq r6, r1, r6 // icount 257
 subi r4, r6, 3
 lbi r6, 13
 addi r5, r1, 13
 sle r2, r4, r1 // icount 261
 slli r4, r4, 12
 subi r1, r0, 1
 add r4, r4, r7 // icount 264
 ror r3, r4, r0 // icount 265
 slbi r1, 14
 rol r2, r2, r1 // icount 267
 slt r1, r4, r2 // icount 268
 sll r4, r3, r7 // icount 269
 ori r6, r6, 10
 ror r7, r6, r3 // icount 271
 sll r4, r4, r0 // icount 272
 andi r4, r5, 12
 srai r6, r4, 1
 nop // to align meminst icount 275
 andi r5, r5, 0xfe
 stu r6, r5, 4
 andi r1, r3, 1
 slt r7, r0, r2 // icount 279
 add r4, r7, r7 // icount 280
 nop // to align meminst icount 281
 andi r4, r4, 0xfe
 stu r4, r4, 12
 sco r2, r6, r5 // icount 284
 seq r5, r7, r5 // icount 285
 andi r0, r31, 8
 slt r2, r3, r5 // icount 287
 roli r3, r0, 12
 roli r1, r3, 7
 sub r7, r7, r6 // icount 290
 sll r2, r5, r7 // icount 291
 j 8
 nop // icount 293
 nop // icount 294
 nop // icount 295
 nop // icount 296
 sll r6, r2, r3 // icount 297
 lbi r0, 0
 lbi r31, 0
 nop // to align branch icount 300
 bnez r1, 8
 addi r6, r3, 9
 sle r4, r1, r0 // icount 303
 slt r1, r0, r2 // icount 304
 seq r5, r2, r4 // icount 305
 andi r2, r1, 13
 sle r6, r6, r2 // icount 307
 andi r1, r1, 0xfe
 stu r31, r1, 4
 sle r7, r7, r7 // icount 310
 lbi r4, 0
 lbi r31, 0
 beqz r6, 0
 j 0
 rori r6, r3, 15
 lbi r3, 0
 lbi r4, 0
 nop // to align branch icount 318
 beqz r4, 24
 roli r6, r2, 14
 or r6, r6, r3 // icount 321
 slbi r1, 0
 lbi r1, 12
 or r4, r0, r5 // icount 324
 addi r3, r4, 6
 slt r5, r6, r3 // icount 326
 lbi r4, 7
 lbi r2, 2
 lbi r31, 7
 ori r6, r2, 0
 roli r2, r2, 0
 add r6, r5, r0 // icount 332
 nop // to align meminst icount 333
 andi r4, r4, 0xfe
 ld r4, r4, 6
 subi r4, r4, 3
 seq r6, r3, r2 // icount 337
 andi r6, r6, 0xfe
 st r5, r6, 2
 subi r31, r3, 15
 sll r6, r3, r2 // icount 341
 andi r2, r2, 0xfe
 st r0, r2, 6
 sll r6, r2, r3 // icount 344
 sco r5, r6, r2 // icount 345
 rori r6, r1, 8
 add r4, r2, r1 // icount 347
 sco r6, r2, r2 // icount 348
 and r6, r1, r0 // icount 349
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 352
 bnez r6, 16
 sle r4, r7, r5 // icount 354
 and r5, r7, r5 // icount 355
 add r1, r6, r3 // icount 356
 addi r1, r3, 7
 lbi r31, 3
 add r5, r4, r5 // icount 359
 add r7, r3, r4 // icount 360
 ori r3, r3, 2
 or r7, r4, r7 // icount 362
 nop // to align meminst icount 363
 andi r5, r5, 0xfe
 stu r31, r5, 6
 lbi r4, 12
 srai r6, r4, 13
 add r7, r4, r4 // icount 368
 nop // to align meminst icount 369
 andi r4, r4, 0xfe
 stu r2, r4, 14
 sra r5, r1, r5 // icount 372
 sco r6, r1, r3 // icount 373
 lbi r1, 0
 lbi r5, 0
 nop // to align branch icount 376
 bnez r31, 4
 lbi r5, 2
 add r2, r1, r0 // icount 379
 sra r1, r5, r1 // icount 380
 nop // to align meminst icount 381
 andi r4, r4, 0xfe
 ld r5, r4, 4
 j 12
 nop // icount 385
 nop // icount 386
 nop // icount 387
 nop // icount 388
 nop // icount 389
 nop // icount 390
 sub r1, r3, r3 // icount 391
 andi r0, r31, 15
 j 22
 nop // icount 394
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
 andi r6, r6, 2
 slli r31, r4, 2
 nop // to align meminst icount 407
 andi r2, r2, 0xfe
 stu r6, r2, 0
 lbi r0, 0
 lbi r4, 0
 nop // to align branch icount 412
 bnez r0, 28
 slli r0, r3, 13
 sll r5, r0, r0 // icount 415
 andi r4, r4, 0xfe
 ld r5, r4, 2
 ror r7, r0, r5 // icount 418
 nop // to align meminst icount 419
 andi r1, r1, 0xfe
 st r6, r1, 10
 rori r5, r1, 0
 subi r3, r0, 5
 seq r2, r0, r4 // icount 424
 rol r1, r5, r3 // icount 425
 rori r0, r5, 4
 lbi r31, 2
 andi r5, r5, 0xfe
 st r0, r5, 8
 and r5, r0, r3 // icount 430
 sub r5, r6, r0 // icount 431
 ori r0, r2, 11
 nop // to align meminst icount 433
 andi r31, r31, 0xfe
 stu r1, r31, 6
 sle r2, r2, r4 // icount 436
 srai r0, r0, 11
 or r1, r6, r0 // icount 438
 addi r4, r4, 1
 ror r5, r4, r5 // icount 440
 slbi r1, 11
 rol r2, r2, r4 // icount 442
 nop // to align meminst icount 443
 andi r4, r4, 0xfe
 st r0, r4, 12
 andi r5, r5, 0xfe
 ld r5, r5, 10
 sco r0, r7, r2 // icount 448
 rol r7, r2, r3 // icount 449
 add r3, r2, r3 // icount 450
 seq r7, r1, r4 // icount 451
 lbi r5, 0
 lbi r0, 0
 nop // to align branch icount 454
 bnez r6, 4
 lbi r3, 13
 lbi r5, 5
 slli r4, r3, 13
 seq r1, r3, r4 // icount 459
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 462
 beqz r31, 4
 sco r0, r3, r6 // icount 464
 addi r5, r3, 13
 andi r1, r1, 0xfe
 st r5, r1, 12
 srai r31, r0, 13
 and r5, r0, r1 // icount 469
 lbi r5, 0
 lbi r3, 0
 nop // to align branch icount 472
 beqz r2, 16
 srai r3, r6, 3
 ori r0, r1, 7
 roli r31, r31, 3
 rori r0, r2, 4
 lbi r4, 15
 or r3, r3, r1 // icount 479
 srai r1, r5, 6
 slbi r0, 3
 lbi r3, 0
 sle r2, r7, r7 // icount 483
 sco r0, r6, r5 // icount 484
 slbi r4, 11
 ror r6, r2, r1 // icount 486
 and r0, r7, r0 // icount 487
 sco r3, r4, r4 // icount 488
 sle r0, r0, r1 // icount 489
 sll r5, r0, r5 // icount 490
 lbi r2, 8
 lbi r0, 0
 lbi r5, 0
 nop // to align branch icount 494
 bnez r5, 4
 and r1, r3, r3 // icount 496
 lbi r1, 6
 subi r0, r4, 9
 roli r31, r0, 1
 lbi r1, 0
 lbi r1, 0
 nop // to align branch icount 502
 beqz r6, 20
 andi r6, r6, 0xfe
 ld r0, r6, 6
 slli r1, r1, 0
 sub r1, r5, r5 // icount 507
 rori r1, r4, 3
 sco r1, r5, r6 // icount 509
 lbi r4, 15
 seq r0, r0, r3 // icount 511
 ori r2, r1, 13
 lbi r3, 12
 slbi r0, 4
 subi r1, r2, 0
 sle r5, r6, r3 // icount 516
 sub r2, r2, r1 // icount 517
 andi r4, r1, 6
 sle r2, r3, r4 // icount 519
 or r6, r5, r4 // icount 520
 rori r6, r31, 4
 andi r6, r6, 0xfe
 stu r3, r6, 8
 rori r3, r3, 13
 nop // to align meminst icount 525
 andi r3, r3, 0xfe
 stu r0, r3, 8
 slbi r5, 14
 j 20
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
 j 22
 nop // icount 541
 nop // icount 542
 nop // icount 543
 nop // icount 544
 nop // icount 545
 nop // icount 546
 nop // icount 547
 nop // icount 548
 nop // icount 549
 nop // icount 550
 nop // icount 551
 add r7, r0, r0 // icount 552
 j 6
 nop // icount 554
 nop // icount 555
 nop // icount 556
 or r2, r1, r0 // icount 557
 rol r7, r3, r1 // icount 558
 andi r31, r6, 2
 slli r31, r1, 5
 j 2
 nop // icount 562
 and r0, r3, r6 // icount 563
 roli r0, r2, 9
 j 28
 nop // icount 566
 nop // icount 567
 nop // icount 568
 nop // icount 569
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
 j 20
 nop // icount 581
 nop // icount 582
 nop // icount 583
 nop // icount 584
 nop // icount 585
 nop // icount 586
 nop // icount 587
 nop // icount 588
 nop // icount 589
 nop // icount 590
 lbi r5, 0
 lbi r6, 0
 beqz r3, 24
 sra r5, r0, r7 // icount 594
 or r1, r3, r6 // icount 595
 slbi r5, 15
 slt r5, r3, r1 // icount 597
 sle r1, r3, r2 // icount 598
 or r1, r0, r3 // icount 599
 ori r5, r3, 1
 subi r5, r4, 2
 sra r3, r5, r3 // icount 602
 slt r7, r3, r0 // icount 603
 subi r1, r3, 12
 and r3, r6, r4 // icount 605
 sco r4, r3, r3 // icount 606
 andi r5, r2, 7
 sll r0, r0, r6 // icount 608
 ror r0, r2, r4 // icount 609
 sle r1, r5, r0 // icount 610
 andi r31, r4, 4
 ror r3, r7, r5 // icount 612
 or r2, r6, r7 // icount 613
 ori r1, r1, 10
 srai r2, r6, 10
 srai r0, r0, 10
 sco r1, r4, r0 // icount 617
 lbi r1, 0
 lbi r3, 0
 nop // to align branch icount 620
 beqz r0, 32
 add r3, r1, r0 // icount 622
 sub r6, r3, r1 // icount 623
 subi r1, r5, 12
 ror r3, r6, r1 // icount 625
 lbi r5, 6
 sco r7, r6, r3 // icount 627
 slbi r31, 10
 and r7, r7, r0 // icount 629
 or r5, r2, r7 // icount 630
 seq r6, r3, r1 // icount 631
 sll r3, r3, r5 // icount 632
 sll r5, r1, r0 // icount 633
 ror r0, r0, r5 // icount 634
 ror r4, r0, r3 // icount 635
 ori r3, r0, 15
 seq r5, r2, r3 // icount 637
 sco r6, r7, r6 // icount 638
 srai r6, r5, 10
 or r2, r2, r3 // icount 640
 ori r0, r1, 15
 sll r1, r0, r7 // icount 642
 seq r2, r4, r6 // icount 643
 subi r1, r1, 11
 srai r5, r31, 6
 seq r4, r5, r4 // icount 646
 rol r6, r1, r4 // icount 647
 sll r0, r6, r0 // icount 648
 ori r0, r5, 15
 srai r4, r3, 6
 ori r31, r31, 2
 slbi r1, 5
 sco r3, r0, r4 // icount 653
 and r1, r1, r5 // icount 654
 lbi r5, 0
 lbi r1, 0
 beqz r5, 28
 slli r2, r5, 12
 subi r1, r1, 6
 add r4, r2, r4 // icount 660
 rori r0, r3, 5
 andi r3, r3, 0xfe
 st r2, r3, 4
 roli r6, r4, 12
 sco r6, r7, r5 // icount 665
 lbi r2, 7
 sco r5, r0, r4 // icount 667
 sco r0, r4, r3 // icount 668
 sub r0, r1, r6 // icount 669
 and r4, r4, r1 // icount 670
 ori r5, r31, 0
 add r2, r3, r4 // icount 672
 lbi r2, 0
 slli r3, r3, 12
 lbi r31, 15
 ori r4, r4, 14
 rori r1, r5, 0
 andi r0, r3, 15
 ror r6, r4, r1 // icount 679
 ror r4, r1, r6 // icount 680
 nop // to align meminst icount 681
 andi r5, r5, 0xfe
 ld r31, r5, 0
 andi r1, r1, 0xfe
 stu r5, r1, 0
 add r2, r5, r4 // icount 686
 sra r2, r1, r7 // icount 687
 sco r2, r3, r6 // icount 688
 rol r3, r3, r4 // icount 689
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 692
 beqz r3, 12
 rori r6, r3, 3
 addi r5, r3, 7
 lbi r6, 3
 nop // to align meminst icount 697
 andi r2, r2, 0xfe
 st r31, r2, 6
 slt r7, r2, r3 // icount 700
 ori r2, r3, 1
 andi r3, r3, 0xfe
 st r4, r3, 14
 slli r0, r1, 14
 slt r7, r7, r4 // icount 705
 rol r0, r4, r1 // icount 706
 ori r1, r5, 11
 or r1, r1, r0 // icount 708
 srai r1, r2, 7
 j 12
 nop // icount 711
 nop // icount 712
 nop // icount 713
 nop // icount 714
 nop // icount 715
 nop // icount 716
 or r3, r0, r3 // icount 717
 lbi r3, 0
 lbi r6, 0
 nop // to align branch icount 720
 bnez r2, 20
 add r2, r7, r7 // icount 722
 rori r4, r6, 8
 sco r0, r4, r5 // icount 724
 rori r31, r1, 8
 roli r31, r31, 10
 sra r5, r5, r0 // icount 727
 seq r6, r2, r3 // icount 728
 sra r2, r4, r5 // icount 729
 rori r5, r0, 13
 slt r4, r0, r4 // icount 731
 ror r7, r1, r0 // icount 732
 or r0, r6, r6 // icount 733
 ror r3, r2, r1 // icount 734
 rori r4, r1, 12
 sle r1, r5, r5 // icount 736
 subi r2, r3, 0
 lbi r31, 15
 rol r2, r4, r1 // icount 739
 sub r1, r2, r6 // icount 740
 add r6, r4, r6 // icount 741
 or r1, r1, r7 // icount 742
 j 18
 nop // icount 744
 nop // icount 745
 nop // icount 746
 nop // icount 747
 nop // icount 748
 nop // icount 749
 nop // icount 750
 nop // icount 751
 nop // icount 752
 lbi r1, 11
 j 20
 nop // icount 755
 nop // icount 756
 nop // icount 757
 nop // icount 758
 nop // icount 759
 nop // icount 760
 nop // icount 761
 nop // icount 762
 nop // icount 763
 nop // icount 764
 lbi r2, 0
 lbi r1, 0
 bnez r2, 24
 and r1, r3, r6 // icount 768
 add r7, r5, r2 // icount 769
 seq r6, r4, r6 // icount 770
 slbi r4, 8
 andi r31, r31, 0xfe
 stu r0, r31, 8
 andi r1, r1, 0xfe
 st r3, r1, 0
 slbi r6, 5
 sra r3, r2, r4 // icount 777
 andi r2, r2, 0xfe
 ld r1, r2, 14
 slli r0, r0, 6
 sle r5, r5, r5 // icount 781
 ror r1, r0, r5 // icount 782
 add r0, r6, r7 // icount 783
 sll r0, r2, r0 // icount 784
 or r3, r5, r3 // icount 785
 add r0, r3, r7 // icount 786
 sll r7, r7, r0 // icount 787
 sco r2, r6, r4 // icount 788
 slt r1, r1, r1 // icount 789
 lbi r0, 12
 addi r4, r6, 8
 srai r31, r6, 11
 nop // to align meminst icount 793
 andi r0, r0, 0xfe
 stu r5, r0, 14
 sle r3, r0, r3 // icount 796
 slli r4, r2, 12
 andi r6, r6, 0xfe
 st r2, r6, 8
 j 12
 nop // icount 801
 nop // icount 802
 nop // icount 803
 nop // icount 804
 nop // icount 805
 nop // icount 806
 or r3, r7, r4 // icount 807
 j 12
 nop // icount 809
 nop // icount 810
 nop // icount 811
 nop // icount 812
 nop // icount 813
 nop // icount 814
 lbi r31, 0
 lbi r5, 0
 bnez r0, 24
 andi r0, r0, 0xfe
 stu r3, r0, 10
 andi r0, r0, 0xfe
 stu r6, r0, 0
 sub r6, r2, r2 // icount 822
 sle r2, r2, r0 // icount 823
 sco r7, r1, r3 // icount 824
 nop // to align meminst icount 825
 andi r5, r5, 0xfe
 stu r1, r5, 2
 and r4, r4, r1 // icount 828
 slbi r3, 15
 slli r4, r3, 7
 sub r7, r7, r3 // icount 831
 ori r5, r2, 11
 slli r0, r3, 14
 rol r0, r0, r0 // icount 834
 roli r1, r5, 1
 slt r0, r2, r1 // icount 836
 sub r1, r7, r2 // icount 837
 srai r0, r6, 10
 slt r7, r1, r2 // icount 839
 and r5, r5, r2 // icount 840
 or r4, r7, r6 // icount 841
 subi r3, r4, 5
 subi r6, r1, 0
 ori r4, r3, 11
 nop // to align meminst icount 845
 andi r0, r0, 0xfe
 stu r5, r0, 14
 halt // icount 848
