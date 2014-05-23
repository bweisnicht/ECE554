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
 lbi r0, 0
 lbi r4, 0
 beqz r3, 4
 sll r5, r7, r7 // icount 22
 addi r3, r4, 10
 seq r0, r3, r4 // icount 24
 sub r7, r2, r7 // icount 25
 j 16
 nop // icount 27
 nop // icount 28
 nop // icount 29
 nop // icount 30
 nop // icount 31
 nop // icount 32
 nop // icount 33
 nop // icount 34
 j 30
 nop // icount 36
 nop // icount 37
 nop // icount 38
 nop // icount 39
 nop // icount 40
 nop // icount 41
 nop // icount 42
 nop // icount 43
 nop // icount 44
 nop // icount 45
 nop // icount 46
 nop // icount 47
 nop // icount 48
 nop // icount 49
 nop // icount 50
 lbi r3, 0
 lbi r2, 0
 beqz r4, 32
 or r0, r4, r2 // icount 54
 slt r1, r5, r6 // icount 55
 add r7, r1, r7 // icount 56
 sub r3, r5, r0 // icount 57
 and r1, r0, r3 // icount 58
 or r3, r3, r4 // icount 59
 slli r2, r0, 7
 lbi r3, 8
 and r6, r3, r1 // icount 62
 seq r3, r6, r7 // icount 63
 slt r1, r1, r3 // icount 64
 subi r6, r5, 4
 rol r4, r2, r4 // icount 66
 roli r0, r4, 15
 sll r7, r0, r4 // icount 68
 and r7, r2, r6 // icount 69
 and r2, r3, r1 // icount 70
 nop // to align meminst icount 71
 andi r3, r3, 0xfe
 st r2, r3, 10
 andi r3, r3, 0xfe
 stu r4, r3, 10
 sco r3, r1, r1 // icount 76
 and r1, r3, r7 // icount 77
 sle r2, r5, r6 // icount 78
 srai r31, r31, 2
 addi r0, r5, 8
 add r1, r1, r1 // icount 81
 ror r1, r2, r0 // icount 82
 or r3, r7, r0 // icount 83
 lbi r31, 15
 roli r2, r6, 6
 sll r3, r7, r2 // icount 86
 rol r0, r4, r0 // icount 87
 lbi r2, 4
 j 30
 nop // icount 90
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
 nop // icount 104
 lbi r3, 0
 lbi r0, 0
 beqz r5, 4
 subi r3, r3, 9
 seq r7, r6, r6 // icount 109
 roli r31, r1, 8
 roli r1, r0, 10
 j 24
 nop // icount 113
 nop // icount 114
 nop // icount 115
 nop // icount 116
 nop // icount 117
 nop // icount 118
 nop // icount 119
 nop // icount 120
 nop // icount 121
 nop // icount 122
 nop // icount 123
 nop // icount 124
 j 8
 nop // icount 126
 nop // icount 127
 nop // icount 128
 nop // icount 129
 j 26
 nop // icount 131
 nop // icount 132
 nop // icount 133
 nop // icount 134
 nop // icount 135
 nop // icount 136
 nop // icount 137
 nop // icount 138
 nop // icount 139
 nop // icount 140
 nop // icount 141
 nop // icount 142
 nop // icount 143
 lbi r3, 0
 lbi r2, 0
 nop // to align branch icount 146
 bnez r1, 16
 sco r7, r1, r7 // icount 148
 rori r6, r31, 15
 add r0, r2, r7 // icount 150
 sco r7, r6, r3 // icount 151
 rol r4, r4, r4 // icount 152
 slbi r31, 0
 add r7, r5, r6 // icount 154
 add r5, r4, r6 // icount 155
 ori r3, r6, 2
 ror r1, r6, r7 // icount 157
 and r3, r6, r7 // icount 158
 slbi r6, 14
 sle r0, r2, r7 // icount 160
 slbi r5, 10
 or r3, r3, r5 // icount 162
 nop // to align meminst icount 163
 andi r4, r4, 0xfe
 stu r1, r4, 2
 lbi r6, 0
 lbi r0, 0
 nop // to align branch icount 168
 beqz r6, 16
 andi r31, r31, 0xfe
 stu r6, r31, 14
 slbi r5, 10
 sll r2, r5, r1 // icount 173
 andi r5, r0, 2
 ror r4, r7, r6 // icount 175
 andi r2, r2, 0xfe
 stu r1, r2, 2
 subi r3, r5, 8
 srai r2, r5, 10
 sll r1, r0, r0 // icount 180
 addi r5, r3, 15
 ori r3, r4, 2
 srai r31, r1, 5
 sub r6, r6, r3 // icount 184
 sll r6, r1, r5 // icount 185
 slbi r5, 15
 subi r0, r0, 7
 j 20
 nop // icount 189
 nop // icount 190
 nop // icount 191
 nop // icount 192
 nop // icount 193
 nop // icount 194
 nop // icount 195
 nop // icount 196
 nop // icount 197
 nop // icount 198
 j 22
 nop // icount 200
 nop // icount 201
 nop // icount 202
 nop // icount 203
 nop // icount 204
 nop // icount 205
 nop // icount 206
 nop // icount 207
 nop // icount 208
 nop // icount 209
 nop // icount 210
 j 16
 nop // icount 212
 nop // icount 213
 nop // icount 214
 nop // icount 215
 nop // icount 216
 nop // icount 217
 nop // icount 218
 nop // icount 219
 j 2
 nop // icount 221
 lbi r31, 0
 lbi r2, 0
 nop // to align branch icount 224
 bnez r4, 28
 seq r1, r3, r4 // icount 226
 nop // to align meminst icount 227
 andi r0, r0, 0xfe
 st r31, r0, 8
 seq r5, r6, r1 // icount 230
 slbi r4, 4
 sra r3, r5, r1 // icount 232
 sub r3, r2, r4 // icount 233
 and r6, r1, r2 // icount 234
 nop // to align meminst icount 235
 andi r31, r31, 0xfe
 ld r3, r31, 14
 andi r0, r0, 0xfe
 ld r31, r0, 12
 and r1, r2, r1 // icount 240
 add r7, r6, r3 // icount 241
 roli r5, r3, 6
 sle r0, r1, r0 // icount 243
 lbi r6, 14
 slt r6, r1, r6 // icount 245
 srai r3, r3, 12
 slbi r2, 3
 rori r1, r5, 12
 sra r3, r0, r2 // icount 249
 sco r0, r5, r5 // icount 250
 srai r4, r4, 0
 add r2, r5, r0 // icount 252
 addi r5, r5, 1
 andi r0, r0, 0xfe
 stu r6, r0, 10
 roli r6, r5, 9
 sra r2, r5, r7 // icount 257
 andi r4, r2, 15
 sll r1, r3, r7 // icount 259
 lbi r3, 0
 lbi r31, 0
 nop // to align branch icount 262
 beqz r3, 4
 sll r5, r4, r4 // icount 264
 or r4, r2, r0 // icount 265
 ori r0, r4, 14
 ror r5, r6, r1 // icount 267
 j 22
 nop // icount 269
 nop // icount 270
 nop // icount 271
 nop // icount 272
 nop // icount 273
 nop // icount 274
 nop // icount 275
 nop // icount 276
 nop // icount 277
 nop // icount 278
 nop // icount 279
 j 26
 nop // icount 281
 nop // icount 282
 nop // icount 283
 nop // icount 284
 nop // icount 285
 nop // icount 286
 nop // icount 287
 nop // icount 288
 nop // icount 289
 nop // icount 290
 nop // icount 291
 nop // icount 292
 nop // icount 293
 j 0
 lbi r5, 0
 lbi r5, 0
 bnez r31, 4
 and r2, r4, r5 // icount 298
 rol r4, r6, r4 // icount 299
 add r0, r5, r2 // icount 300
 add r5, r7, r3 // icount 301
 lbi r5, 0
 lbi r6, 0
 nop // to align branch icount 304
 bnez r6, 20
 and r7, r4, r4 // icount 306
 nop // to align meminst icount 307
 andi r1, r1, 0xfe
 st r5, r1, 4
 andi r5, r5, 0xfe
 st r31, r5, 4
 slt r2, r4, r3 // icount 312
 seq r2, r3, r5 // icount 313
 sub r0, r2, r5 // icount 314
 or r5, r6, r0 // icount 315
 add r5, r2, r6 // icount 316
 seq r1, r0, r6 // icount 317
 roli r0, r6, 15
 and r2, r0, r5 // icount 319
 srai r3, r31, 6
 nop // to align meminst icount 321
 andi r31, r31, 0xfe
 st r3, r31, 0
 add r3, r6, r3 // icount 324
 sub r6, r0, r5 // icount 325
 andi r2, r31, 1
 slt r4, r2, r6 // icount 327
 andi r2, r2, 0xfe
 stu r0, r2, 6
 lbi r5, 0
 add r4, r4, r5 // icount 331
 j 28
 nop // icount 333
 nop // icount 334
 nop // icount 335
 nop // icount 336
 nop // icount 337
 nop // icount 338
 nop // icount 339
 nop // icount 340
 nop // icount 341
 nop // icount 342
 nop // icount 343
 nop // icount 344
 nop // icount 345
 nop // icount 346
 lbi r6, 0
 lbi r1, 0
 bnez r6, 8
 andi r2, r2, 0xfe
 st r0, r2, 6
 add r0, r7, r2 // icount 352
 add r7, r5, r4 // icount 353
 sll r3, r0, r6 // icount 354
 rori r6, r2, 11
 seq r5, r5, r1 // icount 356
 rori r3, r6, 10
 ori r31, r4, 15
 j 16
 nop // icount 360
 nop // icount 361
 nop // icount 362
 nop // icount 363
 nop // icount 364
 nop // icount 365
 nop // icount 366
 nop // icount 367
 lbi r1, 0
 lbi r2, 0
 nop // to align branch icount 370
 bnez r0, 28
 srai r31, r3, 5
 slt r5, r3, r7 // icount 373
 and r2, r7, r5 // icount 374
 sub r7, r7, r7 // icount 375
 or r7, r3, r7 // icount 376
 roli r0, r1, 6
 addi r1, r0, 11
 seq r0, r0, r2 // icount 379
 subi r2, r31, 3
 ori r3, r3, 2
 sco r6, r1, r6 // icount 382
 subi r2, r2, 14
 ori r6, r1, 6
 rol r7, r4, r2 // icount 385
 rori r0, r4, 3
 addi r2, r1, 13
 or r6, r7, r7 // icount 388
 subi r6, r4, 1
 slbi r6, 13
 seq r3, r1, r0 // icount 391
 andi r3, r3, 0xfe
 stu r2, r3, 6
 andi r2, r2, 0xfe
 st r3, r2, 6
 and r2, r6, r4 // icount 396
 sll r1, r2, r0 // icount 397
 srai r6, r3, 2
 slbi r0, 10
 slbi r31, 3
 sub r0, r2, r4 // icount 401
 lbi r4, 0
 lbi r5, 0
 nop // to align branch icount 404
 bnez r4, 4
 addi r6, r3, 10
 rori r5, r4, 14
 sle r2, r5, r1 // icount 408
 ror r5, r4, r3 // icount 409
 lbi r4, 0
 lbi r31, 0
 nop // to align branch icount 412
 bnez r31, 32
 ror r1, r6, r3 // icount 414
 subi r0, r3, 3
 lbi r3, 14
 andi r31, r6, 3
 add r4, r1, r0 // icount 418
 sra r4, r7, r2 // icount 419
 roli r31, r5, 9
 andi r6, r6, 15
 sub r1, r4, r1 // icount 422
 nop // to align meminst icount 423
 andi r1, r1, 0xfe
 ld r4, r1, 6
 lbi r2, 5
 slli r6, r3, 11
 sll r4, r7, r6 // icount 428
 rol r7, r3, r0 // icount 429
 andi r3, r3, 0xfe
 stu r3, r3, 8
 andi r6, r6, 1
 srai r6, r31, 14
 andi r1, r1, 0xfe
 stu r1, r1, 14
 andi r1, r1, 0xfe
 stu r0, r1, 0
 rori r4, r2, 7
 ror r3, r0, r0 // icount 439
 andi r2, r3, 2
 subi r6, r5, 10
 andi r6, r6, 0xfe
 st r2, r6, 6
 sll r3, r7, r6 // icount 444
 sub r6, r0, r5 // icount 445
 andi r31, r6, 10
 nop // to align meminst icount 447
 andi r3, r3, 0xfe
 ld r0, r3, 12
 and r4, r3, r1 // icount 450
 nop // to align meminst icount 451
 andi r0, r0, 0xfe
 stu r2, r0, 0
 sco r7, r1, r2 // icount 454
 sco r2, r3, r2 // icount 455
 j 26
 nop // icount 457
 nop // icount 458
 nop // icount 459
 nop // icount 460
 nop // icount 461
 nop // icount 462
 nop // icount 463
 nop // icount 464
 nop // icount 465
 nop // icount 466
 nop // icount 467
 nop // icount 468
 nop // icount 469
 lbi r0, 0
 lbi r2, 0
 nop // to align branch icount 472
 beqz r31, 8
 ori r31, r3, 3
 nop // to align meminst icount 475
 andi r3, r3, 0xfe
 st r3, r3, 10
 add r7, r7, r6 // icount 478
 nop // to align meminst icount 479
 andi r6, r6, 0xfe
 ld r0, r6, 8
 slbi r3, 14
 sco r2, r4, r2 // icount 483
 ori r6, r5, 11
 sll r6, r7, r2 // icount 485
 j 32
 nop // icount 487
 nop // icount 488
 nop // icount 489
 nop // icount 490
 nop // icount 491
 nop // icount 492
 nop // icount 493
 nop // icount 494
 nop // icount 495
 nop // icount 496
 nop // icount 497
 nop // icount 498
 nop // icount 499
 nop // icount 500
 nop // icount 501
 nop // icount 502
 lbi r3, 0
 lbi r0, 0
 beqz r6, 8
 add r7, r7, r1 // icount 506
 or r1, r4, r6 // icount 507
 andi r31, r31, 0xfe
 st r6, r31, 10
 slt r3, r2, r3 // icount 510
 slt r2, r2, r1 // icount 511
 slli r5, r6, 9
 subi r2, r0, 10
 rol r2, r2, r5 // icount 514
 lbi r0, 0
 lbi r3, 0
 bnez r2, 4
 slli r2, r3, 12
 slt r3, r7, r7 // icount 519
 lbi r2, 0
 nop // to align meminst icount 521
 andi r5, r5, 0xfe
 ld r1, r5, 14
 lbi r4, 0
 lbi r1, 0
 nop // to align branch icount 526
 bnez r1, 28
 and r5, r3, r1 // icount 528
 nop // to align meminst icount 529
 andi r31, r31, 0xfe
 stu r4, r31, 4
 sco r2, r5, r0 // icount 532
 sra r7, r6, r2 // icount 533
 andi r5, r5, 0xfe
 stu r6, r5, 0
 andi r31, r31, 0xfe
 st r1, r31, 8
 srai r0, r0, 9
 slbi r1, 0
 roli r3, r1, 11
 sle r6, r1, r5 // icount 541
 lbi r4, 6
 slbi r4, 11
 slt r1, r5, r5 // icount 544
 sra r6, r3, r2 // icount 545
 add r3, r3, r4 // icount 546
 nop // to align meminst icount 547
 andi r6, r6, 0xfe
 ld r6, r6, 2
 and r5, r0, r6 // icount 550
 nop // to align meminst icount 551
 andi r1, r1, 0xfe
 st r3, r1, 12
 slt r2, r6, r3 // icount 554
 subi r6, r1, 9
 sra r3, r6, r2 // icount 556
 lbi r4, 3
 slli r0, r3, 9
 roli r4, r31, 1
 ror r4, r0, r1 // icount 560
 srai r1, r3, 14
 or r0, r1, r0 // icount 562
 nop // to align meminst icount 563
 andi r5, r5, 0xfe
 stu r5, r5, 0
 j 2
 nop // icount 567
 lbi r1, 0
 lbi r31, 0
 nop // to align branch icount 570
 bnez r0, 8
 srai r6, r5, 6
 seq r5, r0, r5 // icount 573
 slbi r4, 15
 add r4, r6, r0 // icount 575
 slli r2, r0, 4
 sra r7, r7, r3 // icount 577
 add r7, r5, r2 // icount 578
 add r1, r0, r5 // icount 579
 j 10
 nop // icount 581
 nop // icount 582
 nop // icount 583
 nop // icount 584
 nop // icount 585
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 588
 beqz r5, 4
 seq r5, r2, r5 // icount 590
 addi r4, r5, 15
 sub r2, r6, r0 // icount 592
 roli r4, r5, 1
 lbi r1, 0
 lbi r31, 0
 nop // to align branch icount 596
 bnez r3, 24
 roli r4, r5, 10
 nop // to align meminst icount 599
 andi r1, r1, 0xfe
 ld r1, r1, 12
 subi r5, r5, 15
 seq r0, r5, r2 // icount 603
 or r1, r1, r0 // icount 604
 slbi r6, 10
 sco r7, r5, r2 // icount 606
 roli r3, r6, 3
 ori r1, r1, 14
 slli r4, r5, 3
 sra r6, r4, r0 // icount 610
 rol r5, r0, r0 // icount 611
 srai r3, r6, 8
 slt r4, r0, r0 // icount 613
 sll r2, r5, r6 // icount 614
 ori r1, r5, 12
 addi r1, r4, 12
 lbi r2, 6
 ror r3, r7, r3 // icount 618
 slbi r0, 10
 sll r5, r6, r3 // icount 620
 sra r5, r5, r1 // icount 621
 ror r2, r1, r0 // icount 622
 ror r3, r3, r7 // icount 623
 j 22
 nop // icount 625
 nop // icount 626
 nop // icount 627
 nop // icount 628
 nop // icount 629
 nop // icount 630
 nop // icount 631
 nop // icount 632
 nop // icount 633
 nop // icount 634
 nop // icount 635
 lbi r4, 0
 lbi r0, 0
 nop // to align branch icount 638
 beqz r5, 16
 or r2, r5, r0 // icount 640
 subi r31, r31, 8
 srai r4, r5, 7
 roli r1, r1, 11
 add r0, r2, r4 // icount 644
 sra r3, r3, r1 // icount 645
 lbi r2, 4
 andi r5, r2, 7
 ror r1, r1, r2 // icount 648
 sub r7, r6, r0 // icount 649
 rol r4, r2, r3 // icount 650
 andi r1, r2, 4
 lbi r6, 15
 subi r1, r3, 6
 add r3, r1, r1 // icount 654
 add r6, r3, r4 // icount 655
 j 24
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
 j 28
 nop // icount 670
 nop // icount 671
 nop // icount 672
 nop // icount 673
 nop // icount 674
 nop // icount 675
 nop // icount 676
 nop // icount 677
 nop // icount 678
 nop // icount 679
 nop // icount 680
 nop // icount 681
 nop // icount 682
 nop // icount 683
 lbi r0, 0
 lbi r3, 0
 nop // to align branch icount 686
 beqz r6, 4
 and r1, r6, r1 // icount 688
 ror r5, r4, r6 // icount 689
 sub r0, r4, r6 // icount 690
 sle r6, r4, r5 // icount 691
 j 6
 nop // icount 693
 nop // icount 694
 nop // icount 695
 lbi r3, 0
 lbi r6, 0
 nop // to align branch icount 698
 bnez r6, 12
 andi r5, r5, 0xfe
 stu r1, r5, 10
 andi r6, r6, 14
 sle r4, r1, r1 // icount 703
 andi r3, r3, 0xfe
 stu r31, r3, 4
 or r7, r2, r2 // icount 706
 slli r5, r31, 3
 andi r3, r6, 14
 ori r2, r2, 13
 ror r3, r7, r6 // icount 710
 sle r0, r4, r3 // icount 711
 slli r2, r3, 9
 rori r6, r1, 3
 j 18
 nop // icount 715
 nop // icount 716
 nop // icount 717
 nop // icount 718
 nop // icount 719
 nop // icount 720
 nop // icount 721
 nop // icount 722
 nop // icount 723
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
 lbi r1, 0
 lbi r4, 0
 nop // to align branch icount 736
 beqz r31, 8
 sco r2, r7, r2 // icount 738
 rol r5, r3, r3 // icount 739
 andi r3, r3, 0xfe
 ld r2, r3, 8
 sco r3, r5, r7 // icount 742
 sub r5, r1, r0 // icount 743
 andi r31, r31, 0xfe
 ld r2, r31, 0
 ror r5, r5, r3 // icount 746
 sco r4, r1, r0 // icount 747
 j 14
 nop // icount 749
 nop // icount 750
 nop // icount 751
 nop // icount 752
 nop // icount 753
 nop // icount 754
 nop // icount 755
 j 16
 nop // icount 757
 nop // icount 758
 nop // icount 759
 nop // icount 760
 nop // icount 761
 nop // icount 762
 nop // icount 763
 nop // icount 764
 lbi r31, 0
 lbi r1, 0
 beqz r5, 8
 sco r0, r4, r6 // icount 768
 seq r1, r5, r4 // icount 769
 andi r3, r3, 0xfe
 st r3, r3, 10
 sco r4, r4, r6 // icount 772
 sco r1, r2, r6 // icount 773
 andi r6, r4, 0
 slt r6, r3, r3 // icount 775
 sra r6, r1, r0 // icount 776
 j 6
 nop // icount 778
 nop // icount 779
 nop // icount 780
 j 18
 nop // icount 782
 nop // icount 783
 nop // icount 784
 nop // icount 785
 nop // icount 786
 nop // icount 787
 nop // icount 788
 nop // icount 789
 nop // icount 790
 j 10
 nop // icount 792
 nop // icount 793
 nop // icount 794
 nop // icount 795
 nop // icount 796
 j 20
 nop // icount 798
 nop // icount 799
 nop // icount 800
 nop // icount 801
 nop // icount 802
 nop // icount 803
 nop // icount 804
 nop // icount 805
 nop // icount 806
 nop // icount 807
 j 18
 nop // icount 809
 nop // icount 810
 nop // icount 811
 nop // icount 812
 nop // icount 813
 nop // icount 814
 nop // icount 815
 nop // icount 816
 nop // icount 817
 lbi r31, 0
 lbi r6, 0
 nop // to align branch icount 820
 beqz r3, 4
 slli r2, r0, 11
 rol r4, r0, r1 // icount 823
 ror r6, r7, r2 // icount 824
 slli r3, r6, 3
 lbi r1, 0
 lbi r2, 0
 nop // to align branch icount 828
 beqz r6, 12
 add r0, r4, r3 // icount 830
 or r4, r3, r3 // icount 831
 slli r31, r31, 3
 sle r4, r6, r0 // icount 833
 rol r0, r3, r4 // icount 834
 ori r4, r0, 1
 slli r6, r6, 1
 addi r2, r3, 5
 andi r4, r4, 0xfe
 ld r5, r4, 14
 andi r4, r4, 0xfe
 ld r3, r4, 2
 subi r4, r2, 14
 slbi r3, 13
 j 24
 nop // icount 845
 nop // icount 846
 nop // icount 847
 nop // icount 848
 nop // icount 849
 nop // icount 850
 nop // icount 851
 nop // icount 852
 nop // icount 853
 nop // icount 854
 nop // icount 855
 nop // icount 856
 lbi r1, 0
 lbi r3, 0
 bnez r6, 16
 or r1, r3, r2 // icount 860
 sco r1, r3, r6 // icount 861
 ori r2, r31, 11
 srai r3, r2, 13
 subi r6, r3, 2
 nop // to align meminst icount 865
 andi r0, r0, 0xfe
 st r31, r0, 0
 ror r6, r4, r7 // icount 868
 srai r0, r31, 7
 lbi r5, 4
 or r3, r5, r4 // icount 871
 sub r7, r6, r2 // icount 872
 sub r0, r6, r2 // icount 873
 add r0, r0, r2 // icount 874
 sco r3, r2, r4 // icount 875
 slli r0, r1, 10
 subi r1, r0, 15
 j 8
 nop // icount 879
 nop // icount 880
 nop // icount 881
 nop // icount 882
 j 24
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
 nop // icount 894
 nop // icount 895
 lbi r0, 0
 lbi r2, 0
 nop // to align branch icount 898
 bnez r1, 28
 ror r4, r4, r0 // icount 900
 and r1, r3, r0 // icount 901
 ror r1, r3, r1 // icount 902
 add r0, r1, r6 // icount 903
 andi r31, r31, 0xfe
 ld r6, r31, 2
 slbi r2, 0
 slt r2, r5, r6 // icount 907
 or r7, r5, r6 // icount 908
 subi r0, r4, 14
 add r0, r4, r7 // icount 910
 seq r2, r4, r3 // icount 911
 andi r1, r1, 0
 and r3, r4, r2 // icount 913
 andi r4, r4, 0xfe
 ld r4, r4, 8
 slli r0, r6, 12
 and r0, r1, r7 // icount 917
 rol r2, r2, r6 // icount 918
 nop // to align meminst icount 919
 andi r3, r3, 0xfe
 st r4, r3, 4
 slt r3, r2, r4 // icount 922
 slt r1, r2, r5 // icount 923
 andi r1, r1, 0xfe
 stu r5, r1, 6
 slt r6, r2, r7 // icount 926
 or r1, r4, r6 // icount 927
 ror r0, r4, r0 // icount 928
 lbi r31, 0
 and r5, r5, r4 // icount 930
 sub r7, r1, r5 // icount 931
 addi r3, r5, 11
 j 6
 nop // icount 934
 nop // icount 935
 nop // icount 936
 j 16
 nop // icount 938
 nop // icount 939
 nop // icount 940
 nop // icount 941
 nop // icount 942
 nop // icount 943
 nop // icount 944
 nop // icount 945
 j 20
 nop // icount 947
 nop // icount 948
 nop // icount 949
 nop // icount 950
 nop // icount 951
 nop // icount 952
 nop // icount 953
 nop // icount 954
 nop // icount 955
 nop // icount 956
 lbi r5, 0
 lbi r0, 0
 bnez r0, 8
 slt r0, r3, r0 // icount 960
 or r7, r0, r5 // icount 961
 andi r1, r1, 0xfe
 stu r31, r1, 10
 ror r3, r6, r1 // icount 964
 nop // to align meminst icount 965
 andi r0, r0, 0xfe
 st r6, r0, 2
 andi r3, r3, 0xfe
 stu r5, r3, 6
 rori r6, r1, 5
 seq r2, r6, r5 // icount 971
 lbi r0, 0
 lbi r4, 0
 nop // to align branch icount 974
 beqz r0, 20
 seq r6, r3, r7 // icount 976
 seq r4, r2, r0 // icount 977
 seq r3, r6, r7 // icount 978
 slbi r6, 14
 sub r5, r4, r6 // icount 980
 sll r2, r0, r2 // icount 981
 slli r3, r0, 1
 lbi r31, 15
 slt r7, r7, r0 // icount 984
 andi r6, r4, 13
 subi r5, r2, 0
 sra r2, r0, r6 // icount 987
 or r6, r1, r1 // icount 988
 rori r0, r6, 3
 andi r5, r5, 0xfe
 st r0, r5, 0
 ror r3, r1, r0 // icount 992
 nop // to align meminst icount 993
 andi r0, r0, 0xfe
 st r5, r0, 6
 andi r0, r0, 0xfe
 ld r4, r0, 6
 andi r4, r4, 0xfe
 st r2, r4, 6
 roli r5, r2, 10
 j 30
 nop // icount 1002
 nop // icount 1003
 nop // icount 1004
 nop // icount 1005
 nop // icount 1006
 nop // icount 1007
 nop // icount 1008
 nop // icount 1009
 nop // icount 1010
 nop // icount 1011
 nop // icount 1012
 nop // icount 1013
 nop // icount 1014
 nop // icount 1015
 nop // icount 1016
 lbi r0, 0
 lbi r1, 0
 beqz r5, 20
 slt r5, r7, r6 // icount 1020
 nop // to align meminst icount 1021
 andi r5, r5, 0xfe
 st r5, r5, 6
 andi r5, r5, 0xfe
 stu r3, r5, 2
 lbi r31, 10
 sle r3, r5, r7 // icount 1027
 andi r2, r2, 0xfe
 st r6, r2, 2
 seq r2, r4, r2 // icount 1030
 slbi r6, 1
 sco r6, r6, r0 // icount 1032
 sra r1, r7, r3 // icount 1033
 rori r3, r6, 14
 sra r4, r6, r3 // icount 1035
 or r7, r6, r3 // icount 1036
 add r4, r0, r5 // icount 1037
 sub r1, r2, r3 // icount 1038
 rori r3, r1, 8
 ror r7, r6, r7 // icount 1040
 add r0, r5, r2 // icount 1041
 sra r2, r4, r6 // icount 1042
 nop // to align meminst icount 1043
 andi r2, r2, 0xfe
 st r5, r2, 6
 lbi r3, 0
 lbi r1, 0
 nop // to align branch icount 1048
 beqz r1, 12
 ror r5, r2, r5 // icount 1050
 add r1, r5, r0 // icount 1051
 slli r2, r3, 10
 nop // to align meminst icount 1053
 andi r2, r2, 0xfe
 ld r1, r2, 8
 seq r4, r1, r6 // icount 1056
 slli r5, r3, 13
 rol r0, r1, r3 // icount 1058
 nop // to align meminst icount 1059
 andi r3, r3, 0xfe
 stu r1, r3, 4
 rol r1, r5, r3 // icount 1062
 seq r6, r6, r1 // icount 1063
 rori r4, r1, 2
 sle r2, r5, r3 // icount 1065
 j 0
 j 2
 nop // icount 1068
 j 4
 nop // icount 1070
 nop // icount 1071
 lbi r31, 0
 lbi r3, 0
 nop // to align branch icount 1074
 beqz r4, 4
 subi r5, r31, 2
 slli r0, r3, 15
 rol r4, r5, r6 // icount 1078
 srai r0, r0, 0
 lbi r31, 0
 lbi r3, 0
 nop // to align branch icount 1082
 bnez r31, 12
 ori r0, r31, 12
 sll r5, r0, r6 // icount 1085
 andi r5, r6, 8
 ori r3, r1, 10
 andi r1, r1, 0xfe
 ld r6, r1, 8
 seq r0, r6, r3 // icount 1090
 slt r7, r7, r5 // icount 1091
 slbi r1, 9
 sll r0, r6, r1 // icount 1093
 rori r6, r4, 9
 srai r4, r4, 1
 addi r1, r6, 14
 j 30
 nop // icount 1098
 nop // icount 1099
 nop // icount 1100
 nop // icount 1101
 nop // icount 1102
 nop // icount 1103
 nop // icount 1104
 nop // icount 1105
 nop // icount 1106
 nop // icount 1107
 nop // icount 1108
 nop // icount 1109
 nop // icount 1110
 nop // icount 1111
 nop // icount 1112
 lbi r5, 0
 lbi r0, 0
 bnez r6, 12
 sll r1, r3, r4 // icount 1116
 sle r0, r2, r3 // icount 1117
 ori r6, r5, 6
 nop // to align meminst icount 1119
 andi r5, r5, 0xfe
 st r0, r5, 12
 andi r3, r1, 2
 slt r4, r1, r3 // icount 1123
 addi r0, r2, 0
 and r6, r4, r3 // icount 1125
 lbi r2, 13
 slbi r5, 6
 roli r2, r0, 1
 ori r31, r5, 6
 j 28
 nop // icount 1131
 nop // icount 1132
 nop // icount 1133
 nop // icount 1134
 nop // icount 1135
 nop // icount 1136
 nop // icount 1137
 nop // icount 1138
 nop // icount 1139
 nop // icount 1140
 nop // icount 1141
 nop // icount 1142
 nop // icount 1143
 nop // icount 1144
 j 18
 nop // icount 1146
 nop // icount 1147
 nop // icount 1148
 nop // icount 1149
 nop // icount 1150
 nop // icount 1151
 nop // icount 1152
 nop // icount 1153
 nop // icount 1154
 j 24
 nop // icount 1156
 nop // icount 1157
 nop // icount 1158
 nop // icount 1159
 nop // icount 1160
 nop // icount 1161
 nop // icount 1162
 nop // icount 1163
 nop // icount 1164
 nop // icount 1165
 nop // icount 1166
 nop // icount 1167
 j 28
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
 nop // icount 1179
 nop // icount 1180
 nop // icount 1181
 nop // icount 1182
 j 26
 nop // icount 1184
 nop // icount 1185
 nop // icount 1186
 nop // icount 1187
 nop // icount 1188
 nop // icount 1189
 nop // icount 1190
 nop // icount 1191
 nop // icount 1192
 nop // icount 1193
 nop // icount 1194
 nop // icount 1195
 nop // icount 1196
 lbi r0, 0
 lbi r3, 0
 bnez r1, 28
 sub r4, r3, r4 // icount 1200
 nop // to align meminst icount 1201
 andi r31, r31, 0xfe
 ld r2, r31, 12
 and r1, r3, r7 // icount 1204
 srai r31, r3, 14
 ori r5, r4, 7
 nop // to align meminst icount 1207
 andi r3, r3, 0xfe
 st r0, r3, 10
 and r0, r4, r7 // icount 1210
 sle r7, r2, r7 // icount 1211
 rol r3, r3, r3 // icount 1212
 roli r3, r5, 0
 ror r6, r5, r2 // icount 1214
 lbi r5, 4
 and r0, r4, r0 // icount 1216
 sle r0, r7, r4 // icount 1217
 and r2, r5, r6 // icount 1218
 sle r4, r3, r2 // icount 1219
 sll r5, r0, r3 // icount 1220
 rol r6, r4, r3 // icount 1221
 lbi r1, 4
 sub r0, r4, r7 // icount 1223
 srai r6, r3, 15
 sra r4, r4, r7 // icount 1225
 sub r2, r3, r3 // icount 1226
 ror r2, r7, r2 // icount 1227
 and r6, r7, r1 // icount 1228
 rol r5, r3, r5 // icount 1229
 lbi r0, 3
 sle r6, r4, r2 // icount 1231
 lbi r0, 0
 lbi r4, 0
 nop // to align branch icount 1234
 beqz r0, 16
 sll r4, r0, r7 // icount 1236
 lbi r6, 14
 andi r3, r3, 0xfe
 stu r6, r3, 4
 rol r6, r7, r1 // icount 1240
 and r2, r7, r3 // icount 1241
 andi r0, r0, 0xfe
 stu r5, r0, 2
 sll r6, r3, r6 // icount 1244
 sra r4, r0, r5 // icount 1245
 srai r5, r2, 3
 subi r31, r1, 13
 or r5, r1, r7 // icount 1248
 subi r31, r1, 7
 slt r1, r4, r0 // icount 1250
 sco r0, r3, r7 // icount 1251
 slli r31, r2, 7
 rol r2, r5, r3 // icount 1253
 lbi r4, 0
 lbi r1, 0
 nop // to align branch icount 1256
 bnez r4, 4
 slbi r3, 11
 nop // to align meminst icount 1259
 andi r1, r1, 0xfe
 ld r2, r1, 12
 andi r3, r3, 0xfe
 st r5, r3, 8
 or r6, r4, r6 // icount 1264
 j 24
 nop // icount 1266
 nop // icount 1267
 nop // icount 1268
 nop // icount 1269
 nop // icount 1270
 nop // icount 1271
 nop // icount 1272
 nop // icount 1273
 nop // icount 1274
 nop // icount 1275
 nop // icount 1276
 nop // icount 1277
 j 8
 nop // icount 1279
 nop // icount 1280
 nop // icount 1281
 nop // icount 1282
 j 30
 nop // icount 1284
 nop // icount 1285
 nop // icount 1286
 nop // icount 1287
 nop // icount 1288
 nop // icount 1289
 nop // icount 1290
 nop // icount 1291
 nop // icount 1292
 nop // icount 1293
 nop // icount 1294
 nop // icount 1295
 nop // icount 1296
 nop // icount 1297
 nop // icount 1298
 lbi r6, 0
 lbi r4, 0
 bnez r3, 8
 sco r1, r6, r3 // icount 1302
 slbi r5, 5
 rori r1, r5, 4
 andi r1, r0, 1
 add r1, r1, r1 // icount 1306
 slbi r1, 11
 sco r2, r6, r5 // icount 1308
 nop // to align meminst icount 1309
 andi r4, r4, 0xfe
 stu r31, r4, 0
 j 30
 nop // icount 1313
 nop // icount 1314
 nop // icount 1315
 nop // icount 1316
 nop // icount 1317
 nop // icount 1318
 nop // icount 1319
 nop // icount 1320
 nop // icount 1321
 nop // icount 1322
 nop // icount 1323
 nop // icount 1324
 nop // icount 1325
 nop // icount 1326
 nop // icount 1327
 lbi r1, 0
 lbi r1, 0
 nop // to align branch icount 1330
 beqz r4, 4
 andi r4, r3, 9
 nop // to align meminst icount 1333
 andi r0, r0, 0xfe
 ld r2, r0, 6
 slt r5, r2, r1 // icount 1336
 sub r3, r4, r4 // icount 1337
 j 6
 nop // icount 1339
 nop // icount 1340
 nop // icount 1341
 j 20
 nop // icount 1343
 nop // icount 1344
 nop // icount 1345
 nop // icount 1346
 nop // icount 1347
 nop // icount 1348
 nop // icount 1349
 nop // icount 1350
 nop // icount 1351
 nop // icount 1352
 lbi r1, 0
 lbi r3, 0
 beqz r1, 28
 srai r31, r5, 7
 sub r0, r6, r2 // icount 1357
 srai r4, r0, 2
 ori r1, r2, 4
 sco r3, r2, r6 // icount 1360
 and r7, r5, r2 // icount 1361
 sco r2, r0, r6 // icount 1362
 roli r4, r6, 14
 slbi r6, 9
 rol r4, r7, r7 // icount 1365
 sll r6, r2, r3 // icount 1366
 ror r5, r5, r1 // icount 1367
 andi r6, r6, 0xfe
 stu r3, r6, 10
 and r2, r1, r7 // icount 1370
 slt r1, r6, r6 // icount 1371
 add r6, r4, r3 // icount 1372
 lbi r31, 9
 sll r6, r7, r0 // icount 1374
 or r2, r5, r6 // icount 1375
 sle r1, r7, r6 // icount 1376
 sle r6, r2, r7 // icount 1377
 or r1, r3, r3 // icount 1378
 sco r6, r3, r2 // icount 1379
 andi r6, r6, 0xfe
 ld r2, r6, 6
 and r5, r3, r1 // icount 1382
 or r3, r1, r3 // icount 1383
 add r4, r3, r7 // icount 1384
 add r7, r0, r7 // icount 1385
 j 30
 nop // icount 1387
 nop // icount 1388
 nop // icount 1389
 nop // icount 1390
 nop // icount 1391
 nop // icount 1392
 nop // icount 1393
 nop // icount 1394
 nop // icount 1395
 nop // icount 1396
 nop // icount 1397
 nop // icount 1398
 nop // icount 1399
 nop // icount 1400
 nop // icount 1401
 j 28
 nop // icount 1403
 nop // icount 1404
 nop // icount 1405
 nop // icount 1406
 nop // icount 1407
 nop // icount 1408
 nop // icount 1409
 nop // icount 1410
 nop // icount 1411
 nop // icount 1412
 nop // icount 1413
 nop // icount 1414
 nop // icount 1415
 nop // icount 1416
 lbi r2, 0
 lbi r0, 0
 beqz r31, 4
 rol r3, r6, r2 // icount 1420
 addi r2, r6, 1
 sle r4, r7, r5 // icount 1422
 sco r1, r3, r5 // icount 1423
 halt // icount 1424
