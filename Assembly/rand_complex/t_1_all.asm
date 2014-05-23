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
 lbi r6, 0
 lbi r1, 0
 nop // to align branch icount 18
 beqz r4, 8
 ror r7, r7, r2 // icount 20
 slli r5, r31, 3
 addi r31, r0, 1
 andi r3, r5, 8
 sll r6, r5, r5 // icount 24
 roli r5, r31, 2
 andi r3, r3, 0xfe
 ld r4, r3, 6
 sco r5, r2, r4 // icount 28
 lbi r1, 0
 lbi r0, 0
 bnez r2, 24
 andi r4, r4, 0xfe
 st r3, r4, 8
 andi r31, r31, 0xfe
 st r1, r31, 8
 ror r1, r2, r7 // icount 36
 roli r31, r4, 10
 roli r3, r1, 14
 slt r4, r2, r7 // icount 39
 slli r4, r1, 15
 srai r2, r31, 15
 andi r5, r5, 0xfe
 stu r0, r5, 2
 sub r5, r7, r6 // icount 44
 sle r2, r2, r5 // icount 45
 subi r31, r2, 11
 slli r3, r2, 9
 slbi r6, 0
 sll r4, r3, r0 // icount 49
 slli r1, r5, 6
 and r5, r5, r2 // icount 51
 roli r1, r0, 5
 srai r5, r2, 1
 sra r2, r4, r4 // icount 54
 slt r3, r2, r6 // icount 55
 andi r2, r6, 11
 sub r0, r4, r7 // icount 57
 sco r6, r6, r3 // icount 58
 rori r1, r4, 8
 lbi r6, 5
 roli r5, r6, 9
 lbi r3, 0
 lbi r0, 0
 nop // to align branch icount 64
 beqz r2, 4
 slbi r31, 7
 srai r31, r4, 6
 andi r2, r2, 0xfe
 st r31, r2, 14
 seq r0, r0, r4 // icount 70
 lbi r6, 0
 lbi r0, 0
 beqz r6, 16
 sra r5, r0, r4 // icount 74
 rol r6, r2, r0 // icount 75
 sco r2, r1, r6 // icount 76
 rol r4, r3, r4 // icount 77
 sco r4, r7, r2 // icount 78
 slbi r31, 8
 sco r7, r4, r5 // icount 80
 sll r7, r4, r1 // icount 81
 add r2, r5, r4 // icount 82
 nop // to align meminst icount 83
 andi r3, r3, 0xfe
 ld r0, r3, 6
 ori r0, r2, 6
 seq r0, r1, r7 // icount 87
 sll r5, r6, r6 // icount 88
 andi r1, r3, 6
 rol r1, r1, r4 // icount 90
 addi r4, r31, 10
 lbi r1, 0
 lbi r2, 0
 nop // to align branch icount 94
 beqz r5, 16
 and r0, r4, r7 // icount 96
 sle r5, r5, r5 // icount 97
 andi r6, r0, 2
 nop // to align meminst icount 99
 andi r2, r2, 0xfe
 stu r5, r2, 8
 ror r6, r3, r2 // icount 102
 subi r5, r2, 13
 and r3, r0, r6 // icount 104
 subi r5, r31, 5
 andi r31, r31, 0xfe
 ld r2, r31, 6
 lbi r6, 11
 sub r5, r0, r3 // icount 109
 seq r3, r0, r1 // icount 110
 sra r3, r0, r6 // icount 111
 andi r0, r2, 2
 add r1, r7, r1 // icount 113
 andi r2, r2, 0xfe
 st r2, r2, 8
 j 24
 nop // icount 117
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
 lbi r5, 0
 lbi r6, 0
 bnez r2, 20
 addi r1, r5, 0
 sll r1, r0, r4 // icount 133
 andi r31, r31, 0xfe
 ld r2, r31, 10
 slli r3, r0, 2
 sub r6, r3, r6 // icount 137
 or r2, r2, r3 // icount 138
 slli r5, r5, 11
 sco r6, r4, r2 // icount 140
 ror r1, r5, r1 // icount 141
 sra r4, r5, r3 // icount 142
 slt r7, r4, r0 // icount 143
 slli r0, r0, 3
 sle r2, r1, r1 // icount 145
 slli r0, r2, 15
 sco r0, r4, r2 // icount 147
 sco r4, r3, r0 // icount 148
 nop // to align meminst icount 149
 andi r0, r0, 0xfe
 st r2, r0, 12
 srai r4, r0, 13
 lbi r2, 9
 rol r6, r0, r1 // icount 154
 lbi r4, 0
 lbi r2, 0
 bnez r2, 24
 slt r6, r1, r6 // icount 158
 sco r3, r0, r5 // icount 159
 slli r5, r1, 0
 slt r2, r0, r0 // icount 161
 rol r1, r0, r4 // icount 162
 slli r5, r6, 7
 seq r6, r3, r4 // icount 164
 ori r3, r0, 5
 lbi r31, 2
 ori r31, r4, 11
 sll r1, r7, r1 // icount 168
 sll r0, r5, r2 // icount 169
 roli r2, r1, 1
 add r4, r2, r6 // icount 171
 slt r5, r1, r5 // icount 172
 slli r2, r6, 13
 or r5, r1, r1 // icount 174
 andi r6, r0, 3
 sub r0, r5, r6 // icount 176
 sle r0, r3, r0 // icount 177
 lbi r0, 15
 add r6, r0, r0 // icount 179
 ori r1, r5, 10
 srai r31, r1, 8
 j 6
 nop // icount 183
 nop // icount 184
 nop // icount 185
 lbi r3, 0
 lbi r5, 0
 nop // to align branch icount 188
 beqz r4, 24
 andi r3, r3, 0xfe
 ld r0, r3, 6
 seq r7, r6, r5 // icount 192
 rori r2, r4, 1
 slt r4, r0, r1 // icount 194
 add r0, r5, r0 // icount 195
 slli r5, r31, 10
 sle r5, r7, r6 // icount 197
 sco r0, r3, r4 // icount 198
 ror r2, r5, r4 // icount 199
 seq r7, r7, r3 // icount 200
 rol r2, r5, r3 // icount 201
 sll r7, r4, r7 // icount 202
 rori r3, r5, 12
 sll r3, r1, r1 // icount 204
 srai r2, r31, 7
 ori r6, r5, 0
 ori r2, r5, 0
 sub r3, r2, r6 // icount 208
 or r5, r0, r3 // icount 209
 sub r7, r5, r6 // icount 210
 nop // to align meminst icount 211
 andi r6, r6, 0xfe
 stu r5, r6, 6
 and r3, r1, r0 // icount 214
 sco r7, r4, r0 // icount 215
 addi r0, r6, 1
 subi r0, r2, 5
 ror r6, r6, r2 // icount 218
 j 14
 nop // icount 220
 nop // icount 221
 nop // icount 222
 nop // icount 223
 nop // icount 224
 nop // icount 225
 nop // icount 226
 lbi r3, 0
 lbi r1, 0
 beqz r31, 28
 slt r6, r2, r4 // icount 230
 sco r3, r4, r3 // icount 231
 slt r2, r3, r7 // icount 232
 rol r6, r3, r3 // icount 233
 or r4, r1, r4 // icount 234
 lbi r5, 12
 lbi r6, 13
 nop // to align meminst icount 237
 andi r6, r6, 0xfe
 st r31, r6, 0
 rol r7, r5, r2 // icount 240
 srai r5, r1, 11
 srai r6, r1, 6
 sco r5, r4, r1 // icount 243
 ror r1, r2, r3 // icount 244
 rori r1, r31, 3
 sco r6, r3, r1 // icount 246
 sco r0, r4, r2 // icount 247
 andi r5, r5, 0xfe
 ld r6, r5, 12
 ror r6, r2, r0 // icount 250
 nop // to align meminst icount 251
 andi r4, r4, 0xfe
 st r4, r4, 0
 and r4, r0, r6 // icount 254
 slt r6, r3, r0 // icount 255
 andi r5, r5, 0xfe
 st r3, r5, 8
 andi r31, r31, 0xfe
 ld r3, r31, 8
 add r6, r7, r2 // icount 260
 slbi r6, 1
 ror r6, r0, r3 // icount 262
 sco r7, r1, r5 // icount 263
 add r4, r6, r3 // icount 264
 ori r6, r2, 6
 rol r0, r5, r7 // icount 266
 or r3, r1, r5 // icount 267
 lbi r2, 0
 lbi r5, 0
 nop // to align branch icount 270
 beqz r0, 28
 andi r6, r31, 6
 rol r2, r4, r2 // icount 273
 sco r6, r4, r1 // icount 274
 nop // to align meminst icount 275
 andi r0, r0, 0xfe
 ld r31, r0, 14
 sra r7, r0, r5 // icount 278
 sco r5, r0, r6 // icount 279
 slli r31, r6, 15
 andi r4, r4, 15
 rori r4, r31, 6
 ror r4, r5, r2 // icount 283
 sle r1, r6, r0 // icount 284
 slli r5, r4, 9
 or r1, r5, r7 // icount 286
 andi r2, r6, 10
 ori r0, r5, 0
 and r1, r4, r7 // icount 289
 subi r4, r6, 15
 or r6, r1, r1 // icount 291
 sle r1, r2, r4 // icount 292
 slt r6, r1, r7 // icount 293
 lbi r0, 9
 slli r2, r31, 7
 addi r2, r4, 7
 sco r3, r4, r5 // icount 297
 sub r7, r2, r5 // icount 298
 sra r2, r0, r0 // icount 299
 addi r31, r3, 14
 or r5, r5, r0 // icount 301
 sle r7, r2, r1 // icount 302
 slt r2, r4, r5 // icount 303
 lbi r5, 0
 lbi r3, 0
 nop // to align branch icount 306
 beqz r31, 4
 or r0, r0, r0 // icount 308
 rori r3, r5, 14
 andi r2, r2, 0xfe
 st r1, r2, 14
 rori r3, r6, 10
 lbi r5, 0
 lbi r1, 0
 beqz r31, 4
 lbi r2, 1
 srai r31, r31, 12
 slli r1, r1, 15
 andi r0, r3, 6
 ori r31, r0, 0
 j 4
 nop // icount 322
 nop // icount 323
 j 14
 nop // icount 325
 nop // icount 326
 nop // icount 327
 nop // icount 328
 nop // icount 329
 nop // icount 330
 nop // icount 331
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 334
 bnez r4, 12
 seq r5, r3, r6 // icount 336
 addi r6, r2, 4
 ror r0, r3, r4 // icount 338
 slli r3, r31, 1
 and r5, r3, r3 // icount 340
 addi r31, r3, 8
 subi r5, r0, 4
 nop // to align meminst icount 343
 andi r2, r2, 0xfe
 ld r5, r2, 12
 sub r1, r4, r3 // icount 346
 sub r0, r7, r2 // icount 347
 sra r1, r6, r6 // icount 348
 sle r4, r2, r5 // icount 349
 lbi r4, 4
 rol r6, r1, r6 // icount 351
 lbi r2, 0
 lbi r5, 0
 nop // to align branch icount 354
 bnez r2, 12
 sll r0, r3, r4 // icount 356
 srai r3, r1, 4
 rol r5, r7, r2 // icount 358
 or r0, r5, r4 // icount 359
 sll r1, r2, r4 // icount 360
 ror r2, r3, r5 // icount 361
 and r0, r7, r0 // icount 362
 sra r4, r7, r3 // icount 363
 sle r4, r3, r3 // icount 364
 sub r2, r4, r2 // icount 365
 andi r5, r5, 0xfe
 st r2, r5, 14
 andi r6, r6, 0xfe
 ld r3, r6, 4
 sub r1, r4, r4 // icount 370
 lbi r6, 0
 lbi r5, 0
 bnez r2, 28
 slli r2, r3, 14
 ori r2, r5, 12
 ror r0, r6, r4 // icount 376
 sle r1, r5, r5 // icount 377
 sub r7, r6, r1 // icount 378
 lbi r1, 3
 andi r5, r5, 0xfe
 ld r5, r5, 8
 andi r31, r31, 0xfe
 ld r2, r31, 14
 andi r1, r1, 0xfe
 st r2, r1, 2
 andi r3, r1, 2
 nop // to align meminst icount 387
 andi r0, r0, 0xfe
 stu r0, r0, 4
 andi r0, r0, 0xfe
 st r2, r0, 12
 seq r0, r1, r5 // icount 392
 nop // to align meminst icount 393
 andi r1, r1, 0xfe
 stu r5, r1, 14
 andi r1, r1, 0xfe
 ld r2, r1, 0
 andi r5, r5, 0xfe
 st r2, r5, 6
 srai r0, r0, 0
 sco r2, r7, r1 // icount 401
 ror r2, r4, r1 // icount 402
 slli r4, r6, 10
 srai r2, r3, 13
 sra r7, r3, r4 // icount 405
 sle r4, r2, r7 // icount 406
 andi r31, r31, 7
 slbi r0, 7
 slt r5, r7, r0 // icount 409
 seq r6, r7, r3 // icount 410
 seq r2, r3, r4 // icount 411
 andi r0, r0, 0xfe
 ld r3, r0, 12
 lbi r6, 0
 lbi r4, 0
 nop // to align branch icount 416
 bnez r3, 20
 slbi r0, 7
 ror r7, r7, r3 // icount 419
 sra r6, r0, r6 // icount 420
 sle r4, r7, r3 // icount 421
 sco r4, r6, r3 // icount 422
 sub r1, r1, r0 // icount 423
 sub r0, r4, r4 // icount 424
 roli r31, r1, 15
 or r1, r1, r3 // icount 426
 sra r3, r6, r4 // icount 427
 andi r6, r6, 0xfe
 stu r4, r6, 0
 sra r5, r2, r6 // icount 430
 slli r6, r2, 5
 lbi r1, 9
 andi r0, r4, 15
 slbi r2, 8
 lbi r4, 15
 sle r7, r4, r3 // icount 436
 andi r1, r0, 14
 rol r1, r3, r3 // icount 438
 lbi r5, 0
 lbi r4, 0
 beqz r4, 12
 or r7, r0, r2 // icount 442
 rori r31, r4, 8
 seq r7, r4, r1 // icount 444
 srai r6, r6, 7
 add r6, r4, r0 // icount 446
 slt r6, r0, r3 // icount 447
 rori r2, r3, 1
 sub r0, r0, r0 // icount 449
 addi r2, r31, 14
 slbi r0, 4
 slbi r0, 13
 lbi r4, 9
 lbi r5, 12
 lbi r3, 0
 lbi r6, 0
 beqz r4, 24
 andi r31, r31, 0xfe
 stu r3, r31, 12
 and r3, r1, r7 // icount 460
 slt r4, r4, r2 // icount 461
 sle r5, r5, r7 // icount 462
 slt r5, r4, r3 // icount 463
 sra r2, r4, r7 // icount 464
 rol r3, r2, r7 // icount 465
 sub r6, r2, r1 // icount 466
 rol r1, r6, r4 // icount 467
 rol r0, r0, r1 // icount 468
 lbi r4, 6
 sle r2, r2, r0 // icount 470
 sll r4, r4, r6 // icount 471
 ori r0, r3, 15
 slbi r3, 13
 slt r2, r6, r5 // icount 474
 and r1, r0, r5 // icount 475
 sll r0, r1, r1 // icount 476
 rori r6, r0, 5
 slli r0, r5, 8
 slt r6, r6, r0 // icount 479
 rori r3, r6, 6
 sle r1, r2, r7 // icount 481
 rol r2, r5, r3 // icount 482
 lbi r4, 0
 lbi r5, 0
 bnez r2, 20
 and r1, r4, r1 // icount 486
 sle r5, r7, r3 // icount 487
 lbi r3, 1
 sle r3, r5, r0 // icount 489
 slli r0, r2, 6
 and r7, r4, r1 // icount 491
 srai r3, r0, 15
 sll r2, r6, r1 // icount 493
 sco r4, r0, r1 // icount 494
 add r4, r3, r4 // icount 495
 andi r31, r31, 0xfe
 ld r2, r31, 12
 rori r4, r31, 5
 slli r0, r4, 10
 add r7, r6, r2 // icount 500
 or r7, r0, r0 // icount 501
 slt r1, r1, r3 // icount 502
 lbi r3, 9
 ori r5, r0, 2
 add r4, r5, r6 // icount 505
 slbi r6, 7
 j 26
 nop // icount 508
 nop // icount 509
 nop // icount 510
 nop // icount 511
 nop // icount 512
 nop // icount 513
 nop // icount 514
 nop // icount 515
 nop // icount 516
 nop // icount 517
 nop // icount 518
 nop // icount 519
 nop // icount 520
 or r6, r5, r2 // icount 521
 j 26
 nop // icount 523
 nop // icount 524
 nop // icount 525
 nop // icount 526
 nop // icount 527
 nop // icount 528
 nop // icount 529
 nop // icount 530
 nop // icount 531
 nop // icount 532
 nop // icount 533
 nop // icount 534
 nop // icount 535
 slli r31, r2, 6
 lbi r5, 0
 lbi r3, 0
 beqz r5, 4
 and r6, r5, r5 // icount 540
 subi r4, r4, 15
 sle r4, r7, r0 // icount 542
 nop // to align meminst icount 543
 andi r31, r31, 0xfe
 st r2, r31, 8
 rori r6, r1, 9
 j 22
 nop // icount 548
 nop // icount 549
 nop // icount 550
 nop // icount 551
 nop // icount 552
 nop // icount 553
 nop // icount 554
 nop // icount 555
 nop // icount 556
 nop // icount 557
 nop // icount 558
 srai r0, r3, 13
 lbi r5, 0
 lbi r6, 0
 nop // to align branch icount 562
 beqz r0, 24
 sra r4, r7, r2 // icount 564
 rol r0, r5, r6 // icount 565
 andi r4, r4, 0xfe
 ld r0, r4, 2
 sle r3, r5, r7 // icount 568
 rol r4, r5, r0 // icount 569
 add r4, r2, r1 // icount 570
 nop // to align meminst icount 571
 andi r5, r5, 0xfe
 st r0, r5, 6
 andi r2, r2, 0xfe
 ld r5, r2, 4
 and r2, r6, r7 // icount 576
 srai r1, r6, 7
 or r2, r2, r7 // icount 578
 nop // to align meminst icount 579
 andi r5, r5, 0xfe
 ld r2, r5, 10
 rori r3, r5, 10
 slbi r1, 4
 rori r31, r2, 14
 sra r3, r6, r3 // icount 585
 addi r4, r5, 13
 nop // to align meminst icount 587
 andi r0, r0, 0xfe
 stu r3, r0, 6
 andi r3, r3, 0xfe
 ld r31, r3, 8
 andi r3, r3, 0xfe
 st r0, r3, 10
 or r6, r0, r6 // icount 594
 subi r4, r3, 13
 ori r3, r2, 3
 ori r4, r0, 15
 j 4
 nop // icount 599
 nop // icount 600
 j 14
 nop // icount 602
 nop // icount 603
 nop // icount 604
 nop // icount 605
 nop // icount 606
 nop // icount 607
 nop // icount 608
 lbi r5, 0
 lbi r4, 0
 beqz r3, 12
 andi r31, r31, 0xfe
 ld r4, r31, 10
 andi r0, r0, 0xfe
 st r5, r0, 8
 rol r7, r2, r3 // icount 616
 nop // to align meminst icount 617
 andi r0, r0, 0xfe
 stu r6, r0, 8
 sle r3, r3, r4 // icount 620
 sra r5, r6, r2 // icount 621
 seq r1, r2, r7 // icount 622
 nop // to align meminst icount 623
 andi r3, r3, 0xfe
 st r2, r3, 8
 lbi r1, 10
 roli r4, r1, 11
 andi r6, r2, 6
 add r3, r4, r1 // icount 629
 j 4
 nop // icount 631
 nop // icount 632
 ror r0, r4, r1 // icount 633
 rori r6, r5, 10
 andi r2, r2, 3
 lbi r3, 3
 seq r3, r7, r1 // icount 637
 sle r3, r4, r3 // icount 638
 lbi r0, 0
 lbi r3, 0
 bnez r3, 12
 subi r31, r31, 11
 sle r2, r5, r1 // icount 643
 andi r2, r2, 0xfe
 stu r5, r2, 0
 andi r3, r6, 13
 slli r0, r1, 3
 and r3, r6, r1 // icount 648
 roli r31, r3, 5
 add r2, r5, r5 // icount 650
 ori r2, r6, 3
 andi r0, r0, 0xfe
 st r0, r0, 12
 rol r1, r5, r7 // icount 654
 rori r31, r5, 2
 sra r6, r1, r0 // icount 656
 lbi r31, 0
 lbi r6, 0
 beqz r0, 0
 sub r4, r2, r7 // icount 660
 nop // to align meminst icount 661
 andi r1, r1, 0xfe
 st r0, r1, 10
 ror r2, r0, r6 // icount 664
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
 lbi r0, 0
 lbi r2, 0
 bnez r4, 24
 add r2, r7, r5 // icount 678
 sra r7, r1, r1 // icount 679
 or r4, r1, r6 // icount 680
 rol r1, r1, r2 // icount 681
 add r4, r5, r6 // icount 682
 slt r4, r6, r7 // icount 683
 roli r0, r1, 14
 ori r31, r31, 12
 srai r2, r2, 12
 nop // to align meminst icount 687
 andi r31, r31, 0xfe
 stu r0, r31, 6
 rori r2, r6, 11
 sra r4, r0, r7 // icount 691
 add r0, r6, r0 // icount 692
 nop // to align meminst icount 693
 andi r4, r4, 0xfe
 st r6, r4, 8
 ori r0, r6, 4
 sll r6, r6, r7 // icount 697
 or r7, r0, r3 // icount 698
 lbi r4, 7
 and r7, r2, r3 // icount 700
 sra r2, r5, r1 // icount 701
 sll r6, r2, r4 // icount 702
 srai r2, r0, 8
 rori r0, r3, 9
 sub r0, r0, r0 // icount 705
 andi r1, r3, 0
 addi r0, r3, 12
 andi r2, r2, 0xfe
 stu r4, r2, 14
 sll r6, r1, r4 // icount 710
 lbi r5, 0
 lbi r2, 0
 bnez r6, 24
 sub r0, r2, r4 // icount 714
 add r2, r3, r5 // icount 715
 addi r1, r6, 11
 rol r1, r6, r6 // icount 717
 sra r6, r1, r2 // icount 718
 ori r4, r2, 3
 ori r4, r2, 3
 addi r1, r2, 5
 sub r6, r6, r5 // icount 722
 lbi r0, 1
 rori r3, r6, 10
 sll r1, r7, r1 // icount 725
 seq r4, r3, r0 // icount 726
 sco r2, r0, r0 // icount 727
 ori r4, r2, 14
 andi r3, r0, 12
 andi r5, r5, 0xfe
 stu r5, r5, 8
 sll r7, r0, r6 // icount 732
 subi r3, r1, 8
 slt r2, r0, r5 // icount 734
 sub r6, r5, r6 // icount 735
 or r0, r5, r7 // icount 736
 add r4, r7, r3 // icount 737
 slt r3, r1, r4 // icount 738
 lbi r6, 0
 lbi r2, 0
 beqz r5, 16
 srai r0, r31, 0
 roli r1, r1, 0
 slbi r1, 4
 andi r6, r5, 8
 roli r1, r1, 4
 and r7, r6, r7 // icount 747
 lbi r1, 13
 sra r0, r2, r4 // icount 749
 or r2, r3, r3 // icount 750
 lbi r6, 11
 slli r31, r4, 7
 and r6, r7, r1 // icount 753
 sco r7, r5, r4 // icount 754
 slt r2, r0, r3 // icount 755
 andi r2, r2, 0xfe
 ld r6, r2, 0
 or r7, r2, r6 // icount 758
 j 22
 nop // icount 760
 nop // icount 761
 nop // icount 762
 nop // icount 763
 nop // icount 764
 nop // icount 765
 nop // icount 766
 nop // icount 767
 nop // icount 768
 nop // icount 769
 nop // icount 770
 lbi r6, 0
 lbi r0, 0
 bnez r2, 16
 slbi r31, 2
 sll r1, r2, r6 // icount 775
 sle r1, r1, r5 // icount 776
 subi r5, r1, 11
 and r3, r4, r6 // icount 778
 sle r3, r2, r4 // icount 779
 slli r1, r4, 7
 ori r2, r31, 3
 andi r6, r4, 2
 ori r5, r5, 8
 andi r1, r1, 0xfe
 ld r4, r1, 8
 sub r3, r5, r3 // icount 786
 sle r4, r3, r0 // icount 787
 and r5, r6, r6 // icount 788
 lbi r4, 7
 sle r7, r4, r7 // icount 790
 lbi r2, 0
 lbi r3, 0
 beqz r1, 8
 sco r0, r1, r4 // icount 794
 sub r0, r2, r5 // icount 795
 sub r4, r5, r7 // icount 796
 addi r0, r31, 14
 or r6, r5, r5 // icount 798
 andi r4, r2, 0
 sco r2, r5, r3 // icount 800
 slbi r4, 7
 lbi r31, 0
 lbi r1, 0
 nop // to align branch icount 804
 beqz r5, 20
 roli r4, r2, 3
 subi r5, r3, 11
 sub r7, r5, r6 // icount 808
 sll r0, r6, r7 // icount 809
 lbi r6, 3
 roli r5, r6, 9
 sle r6, r0, r3 // icount 812
 seq r7, r4, r5 // icount 813
 slt r4, r3, r7 // icount 814
 sco r7, r2, r4 // icount 815
 andi r2, r5, 0
 addi r0, r0, 7
 lbi r5, 6
 nop // to align meminst icount 819
 andi r4, r4, 0xfe
 ld r3, r4, 10
 rol r3, r5, r6 // icount 822
 nop // to align meminst icount 823
 andi r4, r4, 0xfe
 st r1, r4, 14
 sco r7, r2, r1 // icount 826
 slbi r5, 15
 andi r3, r3, 0xfe
 ld r1, r3, 10
 and r0, r5, r5 // icount 830
 slbi r0, 11
 seq r1, r2, r2 // icount 832
 lbi r3, 0
 lbi r1, 0
 bnez r2, 12
 rol r4, r2, r4 // icount 836
 ror r0, r2, r7 // icount 837
 andi r1, r1, 0xfe
 st r1, r1, 4
 slt r1, r1, r0 // icount 840
 add r3, r6, r7 // icount 841
 subi r31, r31, 15
 ror r5, r4, r0 // icount 843
 roli r4, r2, 6
 subi r3, r31, 8
 sub r4, r6, r7 // icount 846
 ori r0, r2, 3
 ror r7, r1, r5 // icount 848
 ori r1, r4, 10
 andi r4, r0, 5
 lbi r5, 0
 lbi r5, 0
 bnez r6, 24
 rol r2, r5, r7 // icount 854
 seq r1, r3, r3 // icount 855
 slli r4, r3, 10
 subi r2, r6, 0
 rori r2, r1, 12
 lbi r6, 0
 and r4, r2, r5 // icount 860
 sle r3, r4, r2 // icount 861
 slli r3, r0, 3
 srai r5, r1, 5
 sub r2, r3, r2 // icount 864
 nop // to align meminst icount 865
 andi r4, r4, 0xfe
 stu r4, r4, 14
 ori r0, r5, 11
 srai r6, r6, 5
 add r6, r3, r4 // icount 870
 sle r4, r7, r4 // icount 871
 slt r6, r7, r7 // icount 872
 sco r0, r7, r3 // icount 873
 andi r6, r6, 0xfe
 ld r0, r6, 0
 rol r4, r3, r4 // icount 876
 sco r2, r5, r7 // icount 877
 andi r5, r4, 1
 ori r1, r4, 0
 sra r2, r3, r1 // icount 880
 lbi r6, 13
 lbi r3, 0
 lbi r5, 0
 nop // to align branch icount 884
 bnez r31, 20
 add r7, r0, r5 // icount 886
 and r5, r5, r5 // icount 887
 andi r6, r6, 0xfe
 st r3, r6, 0
 sco r5, r0, r3 // icount 890
 or r5, r4, r3 // icount 891
 ori r31, r31, 5
 slbi r1, 2
 ror r0, r4, r7 // icount 894
 nop // to align meminst icount 895
 andi r4, r4, 0xfe
 st r3, r4, 14
 ori r1, r2, 5
 subi r1, r4, 11
 add r0, r6, r3 // icount 900
 nop // to align meminst icount 901
 andi r31, r31, 0xfe
 stu r3, r31, 12
 sra r6, r6, r7 // icount 904
 sub r2, r2, r1 // icount 905
 ori r5, r3, 5
 nop // to align meminst icount 907
 andi r5, r5, 0xfe
 stu r1, r5, 12
 rori r0, r6, 6
 nop // to align meminst icount 911
 andi r5, r5, 0xfe
 st r1, r5, 0
 srai r31, r31, 5
 srai r6, r6, 6
 lbi r1, 0
 lbi r1, 0
 nop // to align branch icount 918
 bnez r1, 8
 ror r4, r7, r0 // icount 920
 lbi r2, 12
 and r4, r0, r5 // icount 922
 rol r7, r7, r5 // icount 923
 rori r1, r3, 11
 sco r0, r3, r7 // icount 925
 subi r6, r4, 10
 sco r6, r3, r0 // icount 927
 sra r0, r5, r1 // icount 928
 j 22
 nop // icount 930
 nop // icount 931
 nop // icount 932
 nop // icount 933
 nop // icount 934
 nop // icount 935
 nop // icount 936
 nop // icount 937
 nop // icount 938
 nop // icount 939
 nop // icount 940
 lbi r5, 0
 lbi r1, 0
 beqz r0, 24
 slt r0, r3, r0 // icount 944
 srai r0, r31, 11
 subi r2, r5, 0
 subi r5, r4, 9
 roli r3, r0, 5
 slli r31, r31, 1
 sub r6, r3, r5 // icount 950
 slbi r2, 15
 subi r5, r2, 2
 seq r3, r5, r5 // icount 953
 srai r31, r3, 8
 sub r2, r7, r4 // icount 955
 seq r6, r1, r5 // icount 956
 slbi r2, 6
 sub r2, r1, r4 // icount 958
 lbi r1, 14
 sub r4, r3, r1 // icount 960
 sll r4, r5, r3 // icount 961
 slt r1, r4, r2 // icount 962
 add r6, r6, r2 // icount 963
 ror r5, r0, r4 // icount 964
 seq r4, r5, r4 // icount 965
 roli r31, r4, 5
 slbi r3, 12
 sra r0, r6, r4 // icount 968
 lbi r1, 0
 lbi r2, 0
 bnez r5, 16
 sra r3, r0, r1 // icount 972
 ror r0, r4, r6 // icount 973
 slbi r4, 5
 subi r1, r6, 9
 sra r7, r3, r2 // icount 976
 nop // to align meminst icount 977
 andi r3, r3, 0xfe
 stu r1, r3, 2
 sub r2, r3, r6 // icount 980
 slli r1, r5, 3
 srai r5, r3, 4
 sco r6, r1, r7 // icount 983
 slt r1, r7, r4 // icount 984
 slt r3, r1, r0 // icount 985
 sll r7, r0, r3 // icount 986
 roli r1, r4, 6
 roli r1, r5, 14
 roli r4, r0, 6
 or r1, r4, r5 // icount 990
 sra r4, r3, r7 // icount 991
 lbi r5, 0
 lbi r31, 0
 nop // to align branch icount 994
 beqz r3, 24
 ori r2, r31, 2
 sco r6, r4, r0 // icount 997
 ori r5, r31, 15
 nop // to align meminst icount 999
 andi r6, r6, 0xfe
 st r0, r6, 4
 slt r4, r0, r1 // icount 1002
 or r4, r3, r4 // icount 1003
 slbi r1, 11
 nop // to align meminst icount 1005
 andi r0, r0, 0xfe
 ld r2, r0, 2
 and r1, r7, r1 // icount 1008
 subi r1, r2, 8
 and r5, r0, r5 // icount 1010
 subi r4, r1, 5
 rori r31, r2, 8
 sra r7, r7, r4 // icount 1013
 roli r31, r31, 14
 or r1, r6, r2 // icount 1015
 andi r5, r5, 0xfe
 st r3, r5, 8
 seq r4, r5, r4 // icount 1018
 or r4, r6, r1 // icount 1019
 sll r4, r6, r6 // icount 1020
 slt r4, r3, r4 // icount 1021
 add r7, r5, r1 // icount 1022
 sco r1, r3, r4 // icount 1023
 ori r1, r31, 13
 j 30
 nop // icount 1026
 nop // icount 1027
 nop // icount 1028
 nop // icount 1029
 nop // icount 1030
 nop // icount 1031
 nop // icount 1032
 nop // icount 1033
 nop // icount 1034
 nop // icount 1035
 nop // icount 1036
 nop // icount 1037
 nop // icount 1038
 nop // icount 1039
 nop // icount 1040
 srai r31, r5, 2
 lbi r3, 0
 lbi r1, 0
 nop // to align branch icount 1044
 bnez r2, 24
 andi r3, r3, 0xfe
 stu r6, r3, 0
 sub r6, r0, r0 // icount 1048
 roli r5, r6, 9
 sle r7, r3, r1 // icount 1050
 sco r5, r1, r0 // icount 1051
 andi r5, r1, 2
 nop // to align meminst icount 1053
 andi r6, r6, 0xfe
 ld r31, r6, 10
 sle r4, r5, r4 // icount 1056
 sll r4, r7, r7 // icount 1057
 andi r0, r3, 12
 rol r0, r4, r7 // icount 1059
 andi r1, r1, 0xfe
 stu r4, r1, 8
 roli r1, r1, 6
 rori r4, r0, 7
 add r6, r1, r1 // icount 1064
 srai r4, r3, 15
 andi r0, r0, 0xfe
 st r2, r0, 12
 addi r3, r0, 12
 andi r5, r5, 10
 andi r0, r0, 0xfe
 st r6, r0, 12
 andi r2, r2, 0xfe
 st r31, r2, 8
 slt r4, r5, r7 // icount 1074
 sra r7, r6, r3 // icount 1075
 sra r3, r1, r1 // icount 1076
 rori r4, r5, 12
 add r1, r2, r3 // icount 1078
 halt // icount 1079
