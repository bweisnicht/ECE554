 // seed 1
 lbi r0, 10
 slbi r0, 116
 lbi r1, 213
 slbi r1, 86
 lbi r2, 144
 slbi r2, 0
 lbi r3, 48
 slbi r3, 253
 lbi r4, 192
 slbi r4, 93
 lbi r5, 89
 slbi r5, 146
 lbi r6, 33
 slbi r6, 16
 lbi r31, 243
 slbi r31, 39
 j 6
 nop // icount 17
 nop // icount 18
 nop // icount 19
 j 4
 nop // icount 21
 nop // icount 22
 j 6
 nop // icount 24
 nop // icount 25
 nop // icount 26
 lbi r31, 0
 lbi r2, 0
 bnez r31, 20
 sle r7, r5, r1 // icount 30
 sub r6, r7, r0 // icount 31
 sra r2, r3, r4 // icount 32
 sra r6, r5, r6 // icount 33
 sco r7, r5, r1 // icount 34
 roli r3, r4, 4
 andi r5, r4, 9
 ori r2, r0, 11
 andi r4, r4, 0xfe
 st r3, r4, 8
 andi r31, r31, 0xfe
 st r1, r31, 8
 ror r1, r2, r7 // icount 42
 roli r31, r4, 10
 roli r3, r1, 14
 slt r4, r2, r7 // icount 45
 slli r4, r1, 15
 srai r2, r31, 15
 andi r5, r5, 0xfe
 stu r0, r5, 2
 sub r5, r7, r6 // icount 50
 sle r2, r2, r5 // icount 51
 subi r31, r2, 11
 j 14
 nop // icount 54
 nop // icount 55
 nop // icount 56
 nop // icount 57
 nop // icount 58
 nop // icount 59
 nop // icount 60
 lbi r4, 0
 lbi r4, 0
 beqz r31, 24
 addi r3, r1, 7
 ror r5, r6, r3 // icount 65
 sll r5, r3, r2 // icount 66
 seq r0, r4, r2 // icount 67
 rol r2, r7, r4 // icount 68
 subi r4, r1, 8
 andi r6, r3, 5
 slli r2, r5, 12
 seq r4, r2, r0 // icount 72
 addi r31, r2, 13
 slt r4, r2, r4 // icount 74
 ror r1, r3, r7 // icount 75
 roli r2, r2, 12
 srai r1, r5, 7
 and r7, r1, r5 // icount 78
 slbi r6, 8
 slbi r6, 10
 sco r5, r7, r2 // icount 81
 ror r0, r0, r4 // icount 82
 subi r3, r6, 7
 addi r5, r4, 6
 and r0, r0, r6 // icount 85
 ori r2, r6, 5
 sll r1, r4, r4 // icount 87
 j 30
 nop // icount 89
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
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 106
 bnez r31, 28
 addi r4, r31, 11
 roli r4, r3, 2
 addi r5, r0, 9
 sra r0, r5, r3 // icount 111
 seq r0, r1, r2 // icount 112
 sub r7, r5, r1 // icount 113
 sll r6, r3, r6 // icount 114
 lbi r3, 2
 or r4, r2, r1 // icount 116
 ror r4, r0, r7 // icount 117
 srai r1, r2, 4
 rori r2, r2, 9
 addi r6, r1, 11
 nop // to align meminst icount 121
 andi r4, r4, 0xfe
 st r2, r4, 0
 subi r6, r4, 4
 rori r4, r3, 7
 slt r2, r7, r1 // icount 126
 nop // to align meminst icount 127
 andi r0, r0, 0xfe
 stu r2, r0, 0
 slli r0, r5, 15
 roli r5, r6, 15
 rol r5, r7, r7 // icount 132
 nop // to align meminst icount 133
 andi r0, r0, 0xfe
 ld r0, r0, 0
 sra r0, r0, r5 // icount 136
 rol r0, r0, r5 // icount 137
 slli r1, r6, 5
 sub r7, r3, r0 // icount 139
 or r2, r7, r4 // icount 140
 ror r5, r7, r6 // icount 141
 j 20
 nop // icount 143
 nop // icount 144
 nop // icount 145
 nop // icount 146
 nop // icount 147
 nop // icount 148
 nop // icount 149
 nop // icount 150
 nop // icount 151
 nop // icount 152
 j 10
 nop // icount 154
 nop // icount 155
 nop // icount 156
 nop // icount 157
 nop // icount 158
 j 28
 nop // icount 160
 nop // icount 161
 nop // icount 162
 nop // icount 163
 nop // icount 164
 nop // icount 165
 nop // icount 166
 nop // icount 167
 nop // icount 168
 nop // icount 169
 nop // icount 170
 nop // icount 171
 nop // icount 172
 nop // icount 173
 lbi r1, 0
 lbi r0, 0
 nop // to align branch icount 176
 bnez r0, 16
 ror r6, r1, r4 // icount 178
 roli r31, r5, 6
 rol r0, r1, r2 // icount 180
 sle r1, r6, r3 // icount 181
 sll r3, r2, r7 // icount 182
 nop // to align meminst icount 183
 andi r5, r5, 0xfe
 st r3, r5, 14
 roli r3, r6, 9
 ori r0, r1, 10
 slli r3, r4, 12
 addi r6, r31, 6
 add r6, r1, r3 // icount 190
 sub r3, r2, r6 // icount 191
 add r7, r7, r1 // icount 192
 roli r3, r0, 15
 sub r5, r4, r7 // icount 194
 and r4, r6, r6 // icount 195
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 198
 bnez r31, 28
 sra r0, r1, r3 // icount 200
 slt r4, r5, r4 // icount 201
 and r6, r6, r3 // icount 202
 slt r7, r6, r2 // icount 203
 seq r3, r3, r5 // icount 204
 seq r6, r0, r3 // icount 205
 add r3, r2, r3 // icount 206
 ror r3, r1, r5 // icount 207
 andi r3, r3, 0xfe
 ld r1, r3, 10
 ror r1, r6, r5 // icount 210
 sll r6, r2, r5 // icount 211
 slbi r31, 2
 lbi r0, 6
 andi r3, r1, 7
 roli r4, r0, 5
 and r0, r0, r2 // icount 216
 slt r6, r4, r1 // icount 217
 seq r3, r5, r4 // icount 218
 roli r3, r6, 2
 sub r2, r5, r5 // icount 220
 slt r1, r1, r2 // icount 221
 lbi r0, 13
 add r6, r0, r6 // icount 223
 sub r0, r7, r1 // icount 224
 add r1, r6, r5 // icount 225
 ori r4, r5, 9
 sle r1, r4, r6 // icount 227
 andi r5, r3, 8
 j 18
 nop // icount 230
 nop // icount 231
 nop // icount 232
 nop // icount 233
 nop // icount 234
 nop // icount 235
 nop // icount 236
 nop // icount 237
 nop // icount 238
 j 14
 nop // icount 240
 nop // icount 241
 nop // icount 242
 nop // icount 243
 nop // icount 244
 nop // icount 245
 nop // icount 246
 lbi r0, 0
 lbi r5, 0
 beqz r6, 24
 andi r4, r4, 0xfe
 ld r4, r4, 4
 sll r1, r6, r0 // icount 252
 addi r5, r0, 1
 slt r5, r3, r7 // icount 254
 subi r31, r31, 13
 andi r3, r31, 8
 add r4, r4, r5 // icount 257
 add r3, r5, r7 // icount 258
 addi r5, r3, 6
 sub r7, r3, r4 // icount 260
 srai r5, r4, 6
 andi r1, r3, 2
 sco r2, r4, r7 // icount 263
 ror r6, r1, r5 // icount 264
 sra r2, r1, r5 // icount 265
 sub r6, r0, r2 // icount 266
 or r3, r1, r0 // icount 267
 subi r5, r0, 12
 nop // to align meminst icount 269
 andi r6, r6, 0xfe
 ld r6, r6, 10
 add r0, r2, r1 // icount 272
 add r0, r7, r4 // icount 273
 andi r0, r0, 0xfe
 stu r6, r0, 0
 sll r0, r1, r2 // icount 276
 sub r2, r4, r6 // icount 277
 j 30
 nop // icount 279
 nop // icount 280
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
 lbi r1, 0
 lbi r3, 0
 nop // to align branch icount 296
 bnez r1, 32
 andi r2, r6, 9
 roli r4, r31, 6
 and r7, r6, r3 // icount 300
 sub r3, r2, r3 // icount 301
 andi r1, r1, 8
 nop // to align meminst icount 303
 andi r31, r31, 0xfe
 stu r3, r31, 10
 andi r6, r6, 0xfe
 ld r4, r6, 12
 andi r5, r5, 0xfe
 stu r6, r5, 14
 sll r2, r3, r5 // icount 310
 slbi r1, 11
 andi r4, r4, 0xfe
 st r1, r4, 12
 rol r1, r7, r4 // icount 314
 slli r2, r4, 6
 slt r1, r3, r7 // icount 316
 rol r1, r7, r3 // icount 317
 ori r4, r31, 4
 seq r6, r5, r5 // icount 319
 subi r2, r4, 0
 nop // to align meminst icount 321
 andi r5, r5, 0xfe
 st r4, r5, 8
 sub r6, r2, r0 // icount 324
 subi r3, r6, 0
 srai r5, r5, 6
 slbi r31, 7
 addi r31, r0, 4
 lbi r5, 13
 and r3, r4, r0 // icount 330
 slli r1, r31, 11
 ori r6, r0, 7
 roli r2, r1, 13
 add r7, r2, r5 // icount 334
 sub r5, r1, r1 // icount 335
 seq r5, r1, r2 // icount 336
 lbi r5, 0
 lbi r2, 0
 bnez r31, 24
 or r2, r2, r4 // icount 340
 and r1, r7, r4 // icount 341
 andi r6, r6, 0xfe
 stu r0, r6, 14
 addi r0, r5, 10
 addi r0, r31, 12
 srai r6, r3, 14
 nop // to align meminst icount 347
 andi r2, r2, 0xfe
 stu r4, r2, 8
 srai r31, r4, 9
 rol r2, r4, r5 // icount 351
 andi r6, r31, 1
 sco r5, r3, r4 // icount 353
 subi r5, r1, 14
 ror r2, r1, r6 // icount 355
 andi r1, r1, 0xfe
 stu r5, r1, 0
 and r7, r2, r4 // icount 358
 sra r4, r1, r6 // icount 359
 ori r1, r1, 2
 ori r2, r31, 9
 sub r7, r6, r1 // icount 362
 nop // to align meminst icount 363
 andi r6, r6, 0xfe
 st r4, r6, 0
 andi r3, r3, 0xfe
 ld r31, r3, 4
 ror r2, r0, r4 // icount 368
 or r5, r7, r4 // icount 369
 or r5, r0, r2 // icount 370
 j 14
 nop // icount 372
 nop // icount 373
 nop // icount 374
 nop // icount 375
 nop // icount 376
 nop // icount 377
 nop // icount 378
 j 2
 nop // icount 380
 lbi r4, 0
 lbi r0, 0
 beqz r3, 28
 ori r5, r1, 0
 ori r2, r31, 2
 addi r4, r6, 10
 seq r3, r1, r5 // icount 387
 subi r1, r3, 0
 sub r5, r5, r3 // icount 389
 sco r2, r5, r5 // icount 390
 sco r6, r6, r3 // icount 391
 sra r5, r5, r2 // icount 392
 sco r7, r1, r4 // icount 393
 roli r4, r0, 8
 lbi r6, 6
 or r1, r7, r6 // icount 396
 sub r1, r3, r2 // icount 397
 sco r0, r0, r7 // icount 398
 slli r6, r5, 8
 sra r5, r2, r0 // icount 400
 slt r0, r5, r5 // icount 401
 slt r4, r2, r0 // icount 402
 sra r3, r0, r4 // icount 403
 rori r0, r0, 4
 sll r0, r5, r5 // icount 405
 sco r1, r4, r4 // icount 406
 sra r5, r2, r6 // icount 407
 seq r1, r6, r1 // icount 408
 slli r3, r1, 1
 roli r0, r0, 9
 lbi r1, 13
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 414
 bnez r31, 16
 andi r2, r1, 3
 nop // to align meminst icount 417
 andi r5, r5, 0xfe
 stu r31, r5, 4
 roli r3, r2, 6
 sra r4, r0, r6 // icount 421
 sll r2, r2, r3 // icount 422
 roli r2, r5, 3
 rori r2, r0, 7
 ror r4, r1, r0 // icount 425
 seq r2, r2, r2 // icount 426
 addi r2, r0, 10
 slli r1, r4, 14
 rol r1, r4, r0 // icount 429
 roli r31, r2, 10
 roli r6, r31, 11
 slli r0, r2, 1
 rori r4, r1, 11
 j 24
 nop // icount 435
 nop // icount 436
 nop // icount 437
 nop // icount 438
 nop // icount 439
 nop // icount 440
 nop // icount 441
 nop // icount 442
 nop // icount 443
 nop // icount 444
 nop // icount 445
 nop // icount 446
 lbi r31, 0
 lbi r3, 0
 bnez r3, 12
 slbi r5, 4
 ori r6, r4, 9
 sub r5, r6, r5 // icount 452
 add r1, r1, r6 // icount 453
 andi r6, r6, 0xfe
 stu r5, r6, 2
 sco r5, r5, r5 // icount 456
 nop // to align meminst icount 457
 andi r5, r5, 0xfe
 stu r31, r5, 4
 andi r5, r5, 0xfe
 stu r1, r5, 4
 sra r3, r2, r1 // icount 462
 sle r0, r6, r0 // icount 463
 seq r2, r4, r0 // icount 464
 ori r1, r5, 10
 lbi r6, 0
 lbi r1, 0
 nop // to align branch icount 468
 bnez r5, 28
 andi r1, r1, 0xfe
 ld r2, r1, 0
 andi r5, r5, 0xfe
 st r2, r5, 6
 srai r0, r0, 0
 sco r2, r7, r1 // icount 475
 ror r2, r4, r1 // icount 476
 slli r4, r6, 10
 srai r2, r3, 13
 sra r7, r3, r4 // icount 479
 sle r4, r2, r7 // icount 480
 andi r31, r31, 7
 slbi r0, 7
 slt r5, r7, r0 // icount 483
 seq r6, r7, r3 // icount 484
 seq r2, r3, r4 // icount 485
 seq r6, r0, r3 // icount 486
 nop // to align meminst icount 487
 andi r6, r6, 0xfe
 st r4, r6, 6
 rori r4, r31, 1
 and r3, r4, r7 // icount 491
 roli r0, r4, 12
 ori r31, r6, 6
 slli r6, r31, 6
 roli r1, r1, 1
 sll r4, r0, r4 // icount 496
 sle r7, r2, r1 // icount 497
 andi r1, r1, 7
 rol r4, r4, r6 // icount 499
 sco r4, r6, r6 // icount 500
 sll r6, r5, r2 // icount 501
 j 24
 nop // icount 503
 nop // icount 504
 nop // icount 505
 nop // icount 506
 nop // icount 507
 nop // icount 508
 nop // icount 509
 nop // icount 510
 nop // icount 511
 nop // icount 512
 nop // icount 513
 nop // icount 514
 lbi r6, 0
 lbi r2, 0
 beqz r5, 28
 or r2, r4, r4 // icount 518
 subi r5, r31, 15
 roli r5, r4, 13
 rori r3, r31, 14
 slli r6, r31, 3
 or r3, r7, r3 // icount 523
 sll r1, r1, r4 // icount 524
 rori r3, r4, 5
 add r4, r2, r7 // icount 526
 srai r4, r31, 0
 rori r31, r1, 12
 nop // to align meminst icount 529
 andi r6, r6, 0xfe
 stu r3, r6, 4
 ror r1, r0, r6 // icount 532
 addi r6, r3, 10
 sll r0, r2, r0 // icount 534
 add r7, r0, r0 // icount 535
 sco r5, r2, r7 // icount 536
 nop // to align meminst icount 537
 andi r0, r0, 0xfe
 st r2, r0, 12
 slbi r6, 10
 lbi r4, 6
 andi r6, r5, 11
 sll r5, r6, r4 // icount 543
 andi r31, r31, 0xfe
 stu r3, r31, 12
 and r3, r1, r7 // icount 546
 slt r4, r4, r2 // icount 547
 sle r5, r5, r7 // icount 548
 slt r5, r4, r3 // icount 549
 sra r2, r4, r7 // icount 550
 lbi r2, 0
 lbi r31, 0
 beqz r3, 12
 and r1, r1, r6 // icount 554
 sle r2, r4, r1 // icount 555
 add r6, r1, r0 // icount 556
 roli r3, r4, 7
 roli r2, r0, 6
 sra r5, r6, r4 // icount 559
 rol r6, r0, r7 // icount 560
 lbi r6, 0
 andi r5, r5, 0xfe
 stu r2, r5, 6
 sub r1, r5, r1 // icount 564
 or r5, r1, r0 // icount 565
 addi r2, r6, 15
 lbi r0, 0
 lbi r4, 0
 bnez r0, 24
 addi r4, r6, 8
 slli r2, r3, 13
 sco r3, r1, r0 // icount 572
 rori r5, r2, 11
 andi r2, r2, 0xfe
 st r5, r2, 6
 sra r2, r1, r1 // icount 576
 lbi r5, 15
 andi r0, r3, 4
 nop // to align meminst icount 579
 andi r0, r0, 0xfe
 st r3, r0, 14
 rol r1, r0, r3 // icount 582
 ror r5, r1, r7 // icount 583
 addi r31, r3, 3
 slt r3, r1, r2 // icount 585
 addi r4, r1, 5
 sll r7, r4, r4 // icount 587
 slbi r6, 15
 sle r6, r4, r2 // icount 589
 ror r0, r0, r5 // icount 590
 slt r2, r2, r7 // icount 591
 add r1, r0, r7 // icount 592
 ori r1, r3, 14
 lbi r4, 14
 sub r0, r5, r1 // icount 595
 sra r6, r6, r4 // icount 596
 j 16
 nop // icount 598
 nop // icount 599
 nop // icount 600
 nop // icount 601
 nop // icount 602
 nop // icount 603
 nop // icount 604
 nop // icount 605
 j 16
 nop // icount 607
 nop // icount 608
 nop // icount 609
 nop // icount 610
 nop // icount 611
 nop // icount 612
 nop // icount 613
 nop // icount 614
 j 26
 nop // icount 616
 nop // icount 617
 nop // icount 618
 nop // icount 619
 nop // icount 620
 nop // icount 621
 nop // icount 622
 nop // icount 623
 nop // icount 624
 nop // icount 625
 nop // icount 626
 nop // icount 627
 nop // icount 628
 lbi r5, 0
 lbi r2, 0
 beqz r6, 32
 andi r2, r3, 14
 sra r3, r1, r5 // icount 633
 subi r2, r0, 11
 nop // to align meminst icount 635
 andi r4, r4, 0xfe
 stu r0, r4, 8
 slbi r31, 14
 sra r7, r4, r5 // icount 639
 ror r1, r2, r3 // icount 640
 srai r5, r6, 4
 slli r6, r0, 8
 seq r6, r6, r0 // icount 643
 sra r4, r7, r2 // icount 644
 rol r0, r5, r6 // icount 645
 andi r4, r4, 0xfe
 ld r0, r4, 2
 sle r3, r5, r7 // icount 648
 rol r4, r5, r0 // icount 649
 add r4, r2, r1 // icount 650
 nop // to align meminst icount 651
 andi r5, r5, 0xfe
 st r0, r5, 6
 andi r2, r2, 0xfe
 ld r5, r2, 4
 and r2, r6, r7 // icount 656
 srai r1, r6, 7
 or r2, r2, r7 // icount 658
 nop // to align meminst icount 659
 andi r5, r5, 0xfe
 ld r2, r5, 10
 rori r3, r5, 10
 slbi r1, 4
 rori r31, r2, 14
 sra r3, r6, r3 // icount 665
 addi r4, r5, 13
 nop // to align meminst icount 667
 andi r0, r0, 0xfe
 stu r3, r0, 6
 andi r3, r3, 0xfe
 ld r31, r3, 8
 andi r3, r3, 0xfe
 st r0, r3, 10
 or r6, r0, r6 // icount 674
 subi r4, r3, 13
 j 6
 nop // icount 677
 nop // icount 678
 nop // icount 679
 lbi r1, 0
 lbi r4, 0
 nop // to align branch icount 682
 beqz r1, 0
 j 32
 nop // icount 685
 nop // icount 686
 nop // icount 687
 nop // icount 688
 nop // icount 689
 nop // icount 690
 nop // icount 691
 nop // icount 692
 nop // icount 693
 nop // icount 694
 nop // icount 695
 nop // icount 696
 nop // icount 697
 nop // icount 698
 nop // icount 699
 nop // icount 700
 j 4
 nop // icount 702
 nop // icount 703
 j 14
 nop // icount 705
 nop // icount 706
 nop // icount 707
 nop // icount 708
 nop // icount 709
 nop // icount 710
 nop // icount 711
 j 16
 nop // icount 713
 nop // icount 714
 nop // icount 715
 nop // icount 716
 nop // icount 717
 nop // icount 718
 nop // icount 719
 nop // icount 720
 j 18
 nop // icount 722
 nop // icount 723
 nop // icount 724
 nop // icount 725
 nop // icount 726
 nop // icount 727
 nop // icount 728
 nop // icount 729
 nop // icount 730
 lbi r31, 0
 lbi r6, 0
 beqz r31, 20
 lbi r0, 10
 andi r2, r2, 6
 slbi r0, 13
 subi r3, r6, 8
 sll r2, r5, r6 // icount 738
 slli r2, r5, 15
 ror r2, r5, r3 // icount 740
 rori r0, r6, 2
 andi r2, r2, 0xfe
 stu r1, r2, 8
 lbi r2, 12
 sll r1, r0, r4 // icount 745
 sco r4, r0, r1 // icount 746
 ori r3, r0, 8
 andi r5, r5, 0xfe
 stu r2, r5, 2
 and r6, r1, r2 // icount 750
 roli r1, r1, 11
 subi r1, r3, 13
 rori r4, r3, 13
 sll r5, r3, r3 // icount 754
 sco r2, r7, r5 // icount 755
 j 22
 nop // icount 757
 nop // icount 758
 nop // icount 759
 nop // icount 760
 nop // icount 761
 nop // icount 762
 nop // icount 763
 nop // icount 764
 nop // icount 765
 nop // icount 766
 nop // icount 767
 lbi r4, 0
 lbi r6, 0
 nop // to align branch icount 770
 beqz r2, 24
 ror r3, r2, r6 // icount 772
 lbi r1, 0
 sll r1, r2, r6 // icount 774
 sra r7, r2, r3 // icount 775
 sll r5, r0, r5 // icount 776
 ror r2, r1, r6 // icount 777
 sra r0, r5, r0 // icount 778
 andi r5, r2, 14
 slt r7, r3, r5 // icount 780
 sub r0, r4, r1 // icount 781
 andi r2, r2, 0xfe
 ld r31, r2, 12
 add r2, r0, r0 // icount 784
 srai r5, r2, 3
 seq r0, r1, r4 // icount 786
 roli r4, r31, 9
 addi r4, r2, 12
 add r2, r7, r5 // icount 789
 sra r7, r1, r1 // icount 790
 or r4, r1, r6 // icount 791
 rol r1, r1, r2 // icount 792
 add r4, r5, r6 // icount 793
 slt r4, r6, r7 // icount 794
 roli r0, r1, 14
 ori r31, r31, 12
 j 18
 nop // icount 798
 nop // icount 799
 nop // icount 800
 nop // icount 801
 nop // icount 802
 nop // icount 803
 nop // icount 804
 nop // icount 805
 nop // icount 806
 lbi r6, 0
 lbi r6, 0
 beqz r6, 32
 sll r6, r6, r4 // icount 810
 seq r0, r2, r5 // icount 811
 srai r0, r1, 12
 add r4, r4, r5 // icount 813
 srai r1, r31, 12
 and r6, r0, r3 // icount 815
 andi r2, r2, 0xfe
 stu r1, r2, 0
 sco r2, r4, r7 // icount 818
 rori r2, r1, 4
 sle r5, r3, r5 // icount 820
 and r2, r2, r3 // icount 821
 andi r31, r31, 0xfe
 stu r4, r31, 0
 ror r3, r7, r4 // icount 824
 sra r0, r3, r0 // icount 825
 sub r3, r3, r2 // icount 826
 add r3, r2, r0 // icount 827
 slt r2, r2, r6 // icount 828
 lbi r3, 3
 lbi r31, 11
 slt r1, r6, r2 // icount 831
 ror r0, r0, r1 // icount 832
 sra r0, r2, r6 // icount 833
 andi r1, r5, 6
 nop // to align meminst icount 835
 andi r1, r1, 0xfe
 ld r1, r1, 10
 and r1, r6, r4 // icount 838
 sra r1, r1, r7 // icount 839
 sra r0, r1, r7 // icount 840
 or r1, r2, r3 // icount 841
 andi r6, r6, 0xfe
 st r6, r6, 14
 addi r6, r0, 7
 slli r1, r5, 7
 ori r3, r1, 11
 lbi r4, 0
 lbi r3, 0
 beqz r31, 4
 rol r2, r5, r1 // icount 850
 slbi r2, 1
 slt r5, r5, r6 // icount 852
 nop // to align meminst icount 853
 andi r2, r2, 0xfe
 st r3, r2, 0
 j 28
 nop // icount 857
 nop // icount 858
 nop // icount 859
 nop // icount 860
 nop // icount 861
 nop // icount 862
 nop // icount 863
 nop // icount 864
 nop // icount 865
 nop // icount 866
 nop // icount 867
 nop // icount 868
 nop // icount 869
 nop // icount 870
 j 2
 nop // icount 872
 lbi r4, 0
 lbi r2, 0
 beqz r6, 0
 j 10
 nop // icount 877
 nop // icount 878
 nop // icount 879
 nop // icount 880
 nop // icount 881
 lbi r5, 0
 lbi r6, 0
 nop // to align branch icount 884
 beqz r6, 8
 seq r3, r7, r0 // icount 886
 sco r2, r3, r4 // icount 887
 ori r3, r4, 11
 slt r4, r2, r5 // icount 889
 srai r0, r31, 0
 roli r1, r1, 0
 slbi r1, 4
 andi r6, r5, 8
 j 12
 nop // icount 895
 nop // icount 896
 nop // icount 897
 nop // icount 898
 nop // icount 899
 nop // icount 900
 lbi r2, 0
 lbi r0, 0
 beqz r2, 24
 slbi r31, 9
 sle r2, r2, r5 // icount 905
 addi r1, r2, 6
 and r1, r5, r7 // icount 907
 andi r6, r6, 0xfe
 ld r3, r6, 8
 rori r2, r1, 14
 slt r5, r3, r7 // icount 911
 lbi r6, 0
 and r2, r6, r5 // icount 913
 subi r1, r2, 5
 lbi r5, 8
 lbi r2, 8
 slbi r31, 2
 sll r1, r2, r6 // icount 918
 sle r1, r1, r5 // icount 919
 subi r5, r1, 11
 and r3, r4, r6 // icount 921
 sle r3, r2, r4 // icount 922
 slli r1, r4, 7
 ori r2, r31, 3
 andi r6, r4, 2
 ori r5, r5, 8
 nop // to align meminst icount 927
 andi r1, r1, 0xfe
 ld r4, r1, 8
 sub r3, r5, r3 // icount 930
 lbi r3, 0
 lbi r0, 0
 bnez r4, 0
 lbi r6, 0
 lbi r5, 0
 nop // to align branch icount 936
 bnez r5, 28
 rori r2, r3, 14
 slbi r5, 5
 sll r3, r1, r2 // icount 940
 subi r0, r4, 1
 and r2, r5, r0 // icount 942
 seq r7, r7, r4 // icount 943
 sle r0, r0, r7 // icount 944
 sra r6, r5, r6 // icount 945
 and r3, r4, r0 // icount 946
 nop // to align meminst icount 947
 andi r3, r3, 0xfe
 ld r2, r3, 12
 slli r3, r4, 8
 sco r4, r1, r5 // icount 951
 roli r4, r2, 3
 subi r5, r3, 11
 sub r7, r5, r6 // icount 954
 sll r0, r6, r7 // icount 955
 lbi r6, 3
 roli r5, r6, 9
 sle r6, r0, r3 // icount 958
 seq r7, r4, r5 // icount 959
 slt r4, r3, r7 // icount 960
 sco r7, r2, r4 // icount 961
 andi r2, r5, 0
 addi r0, r0, 7
 lbi r5, 6
 nop // to align meminst icount 965
 andi r4, r4, 0xfe
 ld r3, r4, 10
 rol r3, r5, r6 // icount 968
 nop // to align meminst icount 969
 andi r4, r4, 0xfe
 st r1, r4, 14
 lbi r2, 0
 lbi r1, 0
 nop // to align branch icount 974
 bnez r31, 28
 lbi r31, 11
 rori r5, r1, 7
 seq r3, r5, r0 // icount 978
 roli r5, r0, 2
 roli r1, r2, 11
 slli r2, r1, 6
 rol r4, r2, r4 // icount 982
 ror r0, r2, r7 // icount 983
 andi r1, r1, 0xfe
 st r1, r1, 4
 slt r1, r1, r0 // icount 986
 add r3, r6, r7 // icount 987
 subi r31, r31, 15
 ror r5, r4, r0 // icount 989
 roli r4, r2, 6
 subi r3, r31, 8
 sub r4, r6, r7 // icount 992
 ori r0, r2, 3
 ror r7, r1, r5 // icount 994
 sub r5, r4, r1 // icount 995
 or r2, r0, r4 // icount 996
 lbi r5, 13
 addi r5, r2, 14
 add r3, r5, r3 // icount 999
 sra r4, r3, r3 // icount 1000
 srai r6, r0, 5
 sco r2, r4, r1 // icount 1002
 nop // to align meminst icount 1003
 andi r31, r31, 0xfe
 st r3, r31, 12
 sll r5, r2, r2 // icount 1006
 j 2
 nop // icount 1008
 j 18
 nop // icount 1010
 nop // icount 1011
 nop // icount 1012
 nop // icount 1013
 nop // icount 1014
 nop // icount 1015
 nop // icount 1016
 nop // icount 1017
 nop // icount 1018
 lbi r5, 0
 lbi r3, 0
 beqz r0, 16
 seq r5, r4, r1 // icount 1022
 sub r2, r1, r3 // icount 1023
 slt r4, r6, r4 // icount 1024
 srai r5, r1, 0
 andi r4, r4, 0xfe
 st r6, r4, 12
 sll r4, r0, r3 // icount 1028
 subi r31, r6, 9
 addi r31, r6, 14
 subi r31, r31, 6
 sco r0, r5, r6 // icount 1032
 or r4, r2, r3 // icount 1033
 subi r5, r31, 15
 seq r5, r1, r4 // icount 1035
 ror r1, r1, r4 // icount 1036
 sub r1, r4, r3 // icount 1037
 rol r6, r6, r1 // icount 1038
 j 22
 nop // icount 1040
 nop // icount 1041
 nop // icount 1042
 nop // icount 1043
 nop // icount 1044
 nop // icount 1045
 nop // icount 1046
 nop // icount 1047
 nop // icount 1048
 nop // icount 1049
 nop // icount 1050
 j 14
 nop // icount 1052
 nop // icount 1053
 nop // icount 1054
 nop // icount 1055
 nop // icount 1056
 nop // icount 1057
 nop // icount 1058
 j 30
 nop // icount 1060
 nop // icount 1061
 nop // icount 1062
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
 j 8
 nop // icount 1076
 nop // icount 1077
 nop // icount 1078
 nop // icount 1079
 lbi r5, 0
 lbi r31, 0
 nop // to align branch icount 1082
 beqz r3, 8
 andi r5, r5, 0xfe
 st r4, r5, 10
 rori r1, r0, 15
 rol r1, r5, r2 // icount 1087
 slli r4, r5, 3
 lbi r4, 15
 ori r2, r1, 8
 lbi r31, 10
 rori r31, r31, 3
 lbi r2, 0
 lbi r31, 0
 beqz r1, 20
 seq r6, r2, r0 // icount 1096
 add r7, r5, r6 // icount 1097
 sle r6, r3, r5 // icount 1098
 nop // to align meminst icount 1099
 andi r3, r3, 0xfe
 stu r1, r3, 4
 rol r3, r4, r1 // icount 1102
 roli r6, r31, 11
 sle r6, r5, r3 // icount 1104
 sll r5, r5, r5 // icount 1105
 sub r7, r4, r4 // icount 1106
 roli r4, r2, 13
 roli r6, r4, 3
 or r4, r1, r2 // icount 1109
 addi r31, r4, 14
 and r2, r6, r2 // icount 1111
 sra r2, r4, r0 // icount 1112
 nop // to align meminst icount 1113
 andi r31, r31, 0xfe
 ld r6, r31, 6
 or r7, r5, r3 // icount 1116
 sle r0, r0, r5 // icount 1117
 andi r5, r5, 0xfe
 stu r3, r5, 14
 sub r5, r6, r1 // icount 1120
 j 6
 nop // icount 1122
 nop // icount 1123
 nop // icount 1124
 lbi r5, 0
 lbi r4, 0
 bnez r0, 24
 sub r6, r5, r3 // icount 1128
 add r4, r0, r6 // icount 1129
 addi r6, r5, 1
 roli r4, r0, 1
 andi r4, r4, 0xfe
 ld r5, r4, 4
 sll r3, r2, r4 // icount 1134
 lbi r3, 1
 sra r7, r6, r7 // icount 1136
 andi r6, r31, 2
 seq r5, r1, r0 // icount 1138
 nop // to align meminst icount 1139
 andi r3, r3, 0xfe
 st r4, r3, 8
 sco r0, r4, r2 // icount 1142
 srai r3, r2, 11
 seq r7, r6, r6 // icount 1144
 and r0, r3, r0 // icount 1145
 ror r7, r2, r6 // icount 1146
 or r0, r7, r0 // icount 1147
 or r3, r4, r3 // icount 1148
 slli r1, r4, 12
 roli r3, r1, 0
 andi r1, r6, 8
 ror r5, r5, r1 // icount 1152
 srai r6, r4, 4
 lbi r31, 14
 j 14
 nop // icount 1156
 nop // icount 1157
 nop // icount 1158
 nop // icount 1159
 nop // icount 1160
 nop // icount 1161
 nop // icount 1162
 j 2
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
 j 26
 nop // icount 1182
 nop // icount 1183
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
 lbi r5, 0
 lbi r3, 0
 beqz r1, 20
 or r4, r3, r3 // icount 1198
 nop // to align meminst icount 1199
 andi r0, r0, 0xfe
 stu r4, r0, 14
 sra r1, r2, r5 // icount 1202
 ori r1, r4, 9
 rol r6, r7, r7 // icount 1204
 or r1, r1, r2 // icount 1205
 slt r3, r2, r5 // icount 1206
 ori r31, r1, 9
 seq r7, r2, r3 // icount 1208
 sco r6, r6, r2 // icount 1209
 srai r2, r1, 12
 sub r3, r3, r0 // icount 1211
 rol r2, r7, r5 // icount 1212
 ori r4, r3, 5
 ori r5, r31, 5
 ror r1, r3, r1 // icount 1215
 andi r1, r1, 0xfe
 ld r1, r1, 8
 sco r3, r4, r5 // icount 1218
 slbi r6, 15
 sco r0, r2, r1 // icount 1220
 j 18
 nop // icount 1222
 nop // icount 1223
 nop // icount 1224
 nop // icount 1225
 nop // icount 1226
 nop // icount 1227
 nop // icount 1228
 nop // icount 1229
 nop // icount 1230
 lbi r6, 0
 lbi r1, 0
 bnez r31, 24
 slbi r6, 0
 add r1, r6, r0 // icount 1235
 andi r3, r1, 9
 lbi r1, 2
 lbi r0, 5
 sll r1, r2, r7 // icount 1239
 sle r1, r0, r2 // icount 1240
 ori r0, r2, 10
 rori r1, r1, 9
 ror r7, r3, r2 // icount 1243
 ori r31, r4, 8
 nop // to align meminst icount 1245
 andi r2, r2, 0xfe
 ld r31, r2, 14
 andi r6, r1, 5
 seq r3, r5, r5 // icount 1249
 ori r5, r5, 9
 subi r6, r1, 2
 ori r6, r3, 12
 ori r3, r6, 9
 andi r5, r0, 2
 addi r3, r31, 8
 sco r1, r1, r7 // icount 1256
 slbi r2, 9
 slbi r5, 9
 or r4, r2, r6 // icount 1259
 j 12
 nop // icount 1261
 nop // icount 1262
 nop // icount 1263
 nop // icount 1264
 nop // icount 1265
 nop // icount 1266
 j 4
 nop // icount 1268
 nop // icount 1269
 lbi r0, 0
 lbi r0, 0
 nop // to align branch icount 1272
 beqz r6, 28
 slt r2, r5, r4 // icount 1274
 slli r31, r1, 4
 andi r5, r0, 10
 sub r4, r5, r1 // icount 1277
 andi r31, r31, 0xfe
 stu r5, r31, 0
 andi r4, r4, 0xfe
 ld r4, r4, 0
 sle r5, r7, r4 // icount 1282
 sll r1, r0, r6 // icount 1283
 ror r5, r7, r0 // icount 1284
 andi r4, r4, 14
 or r7, r1, r3 // icount 1286
 sub r1, r4, r3 // icount 1287
 or r5, r1, r6 // icount 1288
 slli r31, r4, 11
 subi r6, r2, 10
 add r5, r3, r6 // icount 1291
 seq r5, r5, r5 // icount 1292
 subi r6, r6, 9
 andi r4, r31, 0
 nop // to align meminst icount 1295
 andi r31, r31, 0xfe
 st r4, r31, 0
 andi r3, r3, 0xfe
 stu r31, r3, 6
 ori r3, r1, 5
 seq r0, r4, r6 // icount 1301
 and r1, r3, r1 // icount 1302
 slbi r4, 2
 andi r1, r1, 0xfe
 ld r3, r1, 6
 ori r2, r4, 7
 roli r6, r4, 3
 j 14
 nop // icount 1309
 nop // icount 1310
 nop // icount 1311
 nop // icount 1312
 nop // icount 1313
 nop // icount 1314
 nop // icount 1315
 lbi r5, 0
 lbi r1, 0
 nop // to align branch icount 1318
 bnez r4, 4
 ror r6, r2, r6 // icount 1320
 nop // to align meminst icount 1321
 andi r2, r2, 0xfe
 stu r31, r2, 12
 sco r2, r3, r6 // icount 1324
 ror r6, r5, r4 // icount 1325
 j 0
 j 26
 nop // icount 1328
 nop // icount 1329
 nop // icount 1330
 nop // icount 1331
 nop // icount 1332
 nop // icount 1333
 nop // icount 1334
 nop // icount 1335
 nop // icount 1336
 nop // icount 1337
 nop // icount 1338
 nop // icount 1339
 nop // icount 1340
 lbi r3, 0
 lbi r0, 0
 beqz r6, 12
 or r6, r5, r3 // icount 1344
 sll r7, r4, r0 // icount 1345
 andi r31, r31, 0xfe
 st r6, r31, 14
 addi r31, r31, 15
 add r7, r7, r7 // icount 1349
 andi r3, r3, 0xfe
 st r1, r3, 12
 rol r4, r3, r4 // icount 1352
 sub r6, r3, r1 // icount 1353
 sll r5, r1, r1 // icount 1354
 slli r31, r0, 15
 roli r6, r0, 9
 sub r5, r3, r2 // icount 1357
 j 22
 nop // icount 1359
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
 lbi r31, 0
 lbi r2, 0
 nop // to align branch icount 1372
 bnez r3, 8
 seq r3, r5, r6 // icount 1374
 add r3, r6, r7 // icount 1375
 ror r3, r5, r1 // icount 1376
 nop // to align meminst icount 1377
 andi r0, r0, 0xfe
 st r4, r0, 14
 sco r0, r0, r5 // icount 1380
 or r6, r7, r0 // icount 1381
 rol r1, r3, r1 // icount 1382
 sll r1, r6, r6 // icount 1383
 lbi r3, 0
 lbi r0, 0
 nop // to align branch icount 1386
 beqz r31, 12
 sco r6, r1, r0 // icount 1388
 rori r5, r4, 7
 sub r0, r0, r4 // icount 1390
 roli r0, r1, 11
 rori r5, r4, 8
 and r5, r7, r6 // icount 1393
 slt r7, r5, r5 // icount 1394
 slli r31, r1, 14
 add r1, r7, r2 // icount 1396
 sll r4, r1, r6 // icount 1397
 subi r6, r2, 12
 sll r5, r3, r5 // icount 1399
 lbi r1, 0
 lbi r0, 0
 nop // to align branch icount 1402
 bnez r2, 28
 and r1, r3, r6 // icount 1404
 subi r4, r0, 11
 andi r4, r4, 0xfe
 ld r31, r4, 14
 seq r0, r3, r3 // icount 1408
 nop // to align meminst icount 1409
 andi r0, r0, 0xfe
 ld r5, r0, 4
 andi r0, r0, 0xfe
 ld r2, r0, 10
 slt r1, r3, r0 // icount 1414
 srai r4, r1, 12
 and r3, r7, r2 // icount 1416
 lbi r31, 14
 sll r5, r1, r3 // icount 1418
 slbi r4, 6
 subi r6, r2, 12
 slli r3, r3, 7
 sll r5, r5, r4 // icount 1422
 andi r4, r0, 15
 rol r3, r3, r7 // icount 1424
 rol r6, r6, r5 // icount 1425
 rol r5, r0, r3 // icount 1426
 slbi r4, 3
 subi r0, r31, 10
 nop // to align meminst icount 1429
 andi r5, r5, 0xfe
 st r3, r5, 10
 slli r6, r31, 14
 rol r4, r6, r4 // icount 1433
 slbi r6, 14
 slt r4, r7, r1 // icount 1435
 slt r7, r0, r0 // icount 1436
 or r1, r5, r0 // icount 1437
 j 18
 nop // icount 1439
 nop // icount 1440
 nop // icount 1441
 nop // icount 1442
 nop // icount 1443
 nop // icount 1444
 nop // icount 1445
 nop // icount 1446
 nop // icount 1447
 j 14
 nop // icount 1449
 nop // icount 1450
 nop // icount 1451
 nop // icount 1452
 nop // icount 1453
 nop // icount 1454
 nop // icount 1455
 lbi r1, 0
 lbi r1, 0
 nop // to align branch icount 1458
 beqz r6, 12
 rol r1, r4, r2 // icount 1460
 rori r2, r1, 6
 ror r3, r3, r7 // icount 1462
 or r4, r0, r2 // icount 1463
 add r3, r6, r0 // icount 1464
 ori r2, r0, 0
 ori r5, r1, 14
 sub r0, r6, r6 // icount 1467
 rori r0, r4, 4
 slli r3, r4, 10
 subi r6, r6, 7
 andi r2, r2, 9
 lbi r1, 0
 lbi r2, 0
 nop // to align branch icount 1474
 beqz r31, 12
 lbi r0, 2
 sle r2, r6, r5 // icount 1477
 seq r1, r1, r0 // icount 1478
 addi r5, r4, 4
 or r5, r6, r1 // icount 1480
 sra r2, r2, r1 // icount 1481
 sll r7, r0, r3 // icount 1482
 add r5, r6, r3 // icount 1483
 addi r1, r6, 3
 nop // to align meminst icount 1485
 andi r5, r5, 0xfe
 ld r2, r5, 4
 and r3, r6, r5 // icount 1488
 and r5, r4, r0 // icount 1489
 j 14
 nop // icount 1491
 nop // icount 1492
 nop // icount 1493
 nop // icount 1494
 nop // icount 1495
 nop // icount 1496
 nop // icount 1497
 lbi r3, 0
 lbi r4, 0
 nop // to align branch icount 1500
 bnez r31, 20
 sra r5, r3, r3 // icount 1502
 nop // to align meminst icount 1503
 andi r4, r4, 0xfe
 stu r0, r4, 0
 roli r6, r5, 11
 rol r6, r0, r0 // icount 1507
 subi r3, r0, 14
 sle r0, r6, r7 // icount 1509
 slli r3, r3, 8
 sco r4, r5, r1 // icount 1511
 slbi r3, 0
 andi r5, r1, 7
 andi r6, r6, 0xfe
 stu r6, r6, 2
 rol r0, r2, r6 // icount 1516
 sub r2, r0, r6 // icount 1517
 subi r31, r6, 13
 rol r4, r4, r0 // icount 1519
 sco r7, r1, r0 // icount 1520
 seq r4, r1, r5 // icount 1521
 roli r6, r5, 12
 roli r4, r2, 4
 roli r5, r5, 14
 j 2
 nop // icount 1526
 lbi r6, 0
 lbi r0, 0
 bnez r2, 0
 j 16
 nop // icount 1531
 nop // icount 1532
 nop // icount 1533
 nop // icount 1534
 nop // icount 1535
 nop // icount 1536
 nop // icount 1537
 nop // icount 1538
 j 8
 nop // icount 1540
 nop // icount 1541
 nop // icount 1542
 nop // icount 1543
 j 6
 nop // icount 1545
 nop // icount 1546
 nop // icount 1547
 j 6
 nop // icount 1549
 nop // icount 1550
 nop // icount 1551
 halt // icount 1552
