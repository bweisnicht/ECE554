 // seed 2
 lbi r0, 233
 slbi r0, 40
 lbi r1, 146
 slbi r1, 205
 lbi r2, 141
 slbi r2, 55
 lbi r3, 174
 slbi r3, 156
 lbi r4, 160
 slbi r4, 252
 lbi r5, 65
 slbi r5, 202
 lbi r6, 136
 slbi r6, 222
 lbi r31, 129
 slbi r31, 135
 lbi r31, 0
 lbi r1, 0
 nop // to align branch icount 18
 bnez r6, 8
 slt r7, r2, r5 // icount 20
 ror r0, r4, r3 // icount 21
 sle r1, r1, r6 // icount 22
 or r1, r1, r2 // icount 23
 sra r3, r0, r5 // icount 24
 slbi r4, 14
 sll r4, r2, r3 // icount 26
 andi r4, r31, 10
 lbi r2, 0
 lbi r5, 0
 nop // to align branch icount 30
 beqz r1, 16
 sco r0, r0, r6 // icount 32
 slli r3, r5, 8
 or r5, r4, r0 // icount 34
 rol r6, r1, r2 // icount 35
 slt r0, r3, r1 // icount 36
 or r0, r7, r0 // icount 37
 addi r31, r5, 9
 sll r6, r4, r7 // icount 39
 sll r0, r3, r4 // icount 40
 nop // to align meminst icount 41
 andi r6, r6, 0xfe
 stu r31, r6, 4
 ori r5, r5, 9
 nop // to align meminst icount 45
 andi r5, r5, 0xfe
 stu r31, r5, 4
 addi r5, r31, 5
 add r0, r7, r5 // icount 49
 rori r4, r4, 1
 sra r1, r3, r2 // icount 51
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 54
 bnez r4, 16
 andi r5, r5, 0xfe
 stu r4, r5, 0
 sub r7, r2, r2 // icount 58
 ori r6, r2, 10
 sco r7, r0, r2 // icount 60
 ori r31, r2, 10
 srai r3, r5, 9
 sra r5, r2, r1 // icount 63
 sco r2, r3, r2 // icount 64
 slbi r2, 5
 rol r2, r6, r6 // icount 66
 subi r31, r31, 12
 and r0, r6, r5 // icount 68
 rol r6, r5, r2 // icount 69
 seq r7, r7, r3 // icount 70
 sra r4, r4, r6 // icount 71
 andi r31, r31, 0xfe
 st r2, r31, 4
 lbi r4, 0
 lbi r5, 0
 nop // to align branch icount 76
 beqz r4, 4
 rori r31, r6, 11
 sco r3, r5, r4 // icount 79
 seq r3, r2, r6 // icount 80
 rol r7, r2, r1 // icount 81
 lbi r1, 0
 lbi r31, 0
 nop // to align branch icount 84
 bnez r6, 12
 seq r4, r6, r6 // icount 86
 ror r6, r3, r2 // icount 87
 srai r3, r31, 1
 srai r5, r5, 2
 andi r2, r2, 0xfe
 stu r2, r2, 6
 subi r4, r1, 0
 seq r0, r4, r2 // icount 93
 andi r0, r3, 9
 nop // to align meminst icount 95
 andi r4, r4, 0xfe
 stu r5, r4, 10
 rori r31, r5, 11
 sub r2, r6, r3 // icount 99
 andi r5, r5, 0xfe
 ld r4, r5, 0
 j 4
 nop // icount 103
 nop // icount 104
 lbi r5, 0
 lbi r31, 0
 bnez r4, 16
 ori r31, r31, 1
 slbi r5, 4
 andi r5, r5, 0xfe
 stu r3, r5, 6
 srai r3, r6, 6
 andi r0, r31, 13
 srai r1, r0, 9
 sub r3, r7, r5 // icount 115
 andi r6, r6, 0xfe
 stu r2, r6, 2
 slbi r2, 13
 seq r6, r7, r3 // icount 119
 andi r2, r4, 7
 and r3, r2, r1 // icount 121
 addi r1, r1, 8
 slt r2, r2, r3 // icount 123
 ori r4, r0, 15
 sle r7, r0, r2 // icount 125
 lbi r6, 0
 lbi r3, 0
 nop // to align branch icount 128
 bnez r6, 16
 sle r4, r3, r7 // icount 130
 slbi r1, 6
 add r3, r6, r1 // icount 132
 addi r4, r1, 8
 sll r0, r3, r5 // icount 134
 andi r0, r2, 8
 seq r3, r2, r1 // icount 136
 slli r1, r3, 11
 subi r6, r6, 8
 sll r1, r3, r5 // icount 139
 add r2, r7, r6 // icount 140
 sra r6, r5, r7 // icount 141
 ror r3, r4, r6 // icount 142
 lbi r5, 12
 ror r4, r6, r3 // icount 144
 slt r1, r3, r4 // icount 145
 j 6
 nop // icount 147
 nop // icount 148
 nop // icount 149
 j 2
 nop // icount 151
 j 28
 nop // icount 153
 nop // icount 154
 nop // icount 155
 nop // icount 156
 nop // icount 157
 nop // icount 158
 nop // icount 159
 nop // icount 160
 nop // icount 161
 nop // icount 162
 nop // icount 163
 nop // icount 164
 nop // icount 165
 nop // icount 166
 j 4
 nop // icount 168
 nop // icount 169
 lbi r1, 0
 lbi r1, 0
 nop // to align branch icount 172
 beqz r5, 16
 sco r1, r6, r4 // icount 174
 add r0, r4, r6 // icount 175
 seq r7, r7, r7 // icount 176
 sra r5, r0, r2 // icount 177
 slli r1, r0, 5
 sll r7, r4, r1 // icount 179
 rori r4, r3, 11
 addi r31, r6, 3
 andi r3, r6, 7
 sle r3, r2, r5 // icount 183
 andi r0, r0, 0xfe
 ld r6, r0, 12
 rori r6, r6, 9
 ori r3, r5, 10
 ror r5, r4, r2 // icount 188
 slbi r31, 8
 andi r5, r0, 9
 lbi r31, 0
 lbi r0, 0
 beqz r1, 20
 subi r6, r4, 2
 or r5, r0, r6 // icount 195
 sco r2, r0, r6 // icount 196
 sco r4, r7, r6 // icount 197
 srai r0, r3, 1
 ori r1, r31, 11
 andi r3, r6, 9
 nop // to align meminst icount 201
 andi r2, r2, 0xfe
 ld r5, r2, 6
 lbi r4, 11
 and r3, r3, r2 // icount 205
 slt r4, r0, r3 // icount 206
 rol r0, r4, r6 // icount 207
 addi r1, r6, 12
 nop // to align meminst icount 209
 andi r5, r5, 0xfe
 st r5, r5, 0
 slli r3, r2, 9
 subi r3, r0, 3
 sra r1, r6, r7 // icount 214
 add r4, r4, r5 // icount 215
 or r3, r3, r1 // icount 216
 seq r6, r2, r3 // icount 217
 lbi r5, 0
 lbi r1, 0
 nop // to align branch icount 220
 beqz r5, 12
 sco r6, r7, r3 // icount 222
 or r7, r3, r3 // icount 223
 rol r4, r3, r3 // icount 224
 ori r0, r4, 8
 andi r5, r5, 0xfe
 stu r0, r5, 0
 and r6, r7, r1 // icount 228
 add r4, r5, r2 // icount 229
 sle r7, r7, r0 // icount 230
 slt r7, r6, r4 // icount 231
 and r0, r0, r0 // icount 232
 slbi r31, 14
 or r2, r2, r5 // icount 234
 j 24
 nop // icount 236
 nop // icount 237
 nop // icount 238
 nop // icount 239
 nop // icount 240
 nop // icount 241
 nop // icount 242
 nop // icount 243
 nop // icount 244
 nop // icount 245
 nop // icount 246
 nop // icount 247
 lbi r1, 0
 lbi r2, 0
 nop // to align branch icount 250
 bnez r3, 16
 roli r0, r5, 1
 sub r5, r5, r4 // icount 253
 or r1, r6, r6 // icount 254
 nop // to align meminst icount 255
 andi r5, r5, 0xfe
 ld r1, r5, 14
 sub r0, r2, r1 // icount 258
 sll r5, r2, r3 // icount 259
 andi r4, r4, 0xfe
 stu r6, r4, 0
 sle r2, r1, r4 // icount 262
 slbi r0, 13
 andi r31, r31, 0xfe
 stu r31, r31, 8
 sra r5, r7, r0 // icount 266
 addi r3, r1, 12
 andi r5, r4, 6
 lbi r6, 9
 sub r7, r7, r7 // icount 270
 ror r4, r0, r3 // icount 271
 lbi r3, 0
 lbi r31, 0
 nop // to align branch icount 274
 bnez r3, 8
 roli r3, r1, 12
 sra r7, r0, r4 // icount 277
 andi r4, r4, 0xfe
 stu r2, r4, 8
 add r1, r4, r5 // icount 280
 and r5, r3, r7 // icount 281
 addi r6, r3, 4
 nop // to align meminst icount 283
 andi r1, r1, 0xfe
 ld r0, r1, 8
 sle r6, r3, r6 // icount 286
 lbi r3, 0
 lbi r2, 0
 bnez r0, 28
 ror r2, r1, r0 // icount 290
 seq r1, r1, r6 // icount 291
 and r5, r2, r7 // icount 292
 slt r7, r0, r7 // icount 293
 sle r6, r6, r2 // icount 294
 addi r2, r3, 15
 add r0, r2, r0 // icount 296
 sco r6, r6, r4 // icount 297
 sra r1, r6, r0 // icount 298
 sll r0, r5, r1 // icount 299
 andi r2, r2, 0xfe
 ld r2, r2, 10
 lbi r2, 6
 lbi r1, 15
 subi r2, r0, 0
 slt r5, r2, r6 // icount 305
 sll r3, r2, r4 // icount 306
 nop // to align meminst icount 307
 andi r6, r6, 0xfe
 st r6, r6, 0
 add r2, r1, r2 // icount 310
 subi r0, r31, 10
 slt r7, r0, r5 // icount 312
 add r2, r5, r4 // icount 313
 sub r1, r6, r2 // icount 314
 rori r1, r3, 12
 srai r3, r31, 15
 and r7, r6, r0 // icount 317
 and r3, r5, r1 // icount 318
 seq r6, r7, r2 // icount 319
 or r5, r4, r5 // icount 320
 lbi r2, 0
 lbi r1, 0
 bnez r1, 20
 subi r4, r0, 13
 slli r1, r2, 7
 andi r3, r3, 0xfe
 stu r31, r3, 14
 rori r6, r0, 6
 ror r1, r5, r2 // icount 329
 roli r4, r0, 0
 lbi r2, 4
 ror r2, r2, r2 // icount 332
 rori r31, r0, 3
 or r5, r3, r1 // icount 334
 srai r0, r2, 4
 and r5, r3, r3 // icount 336
 srai r1, r6, 5
 or r7, r2, r0 // icount 338
 srai r5, r6, 12
 slt r0, r5, r5 // icount 340
 slbi r2, 14
 rol r6, r6, r5 // icount 342
 sub r0, r7, r1 // icount 343
 roli r2, r4, 3
 lbi r1, 0
 lbi r2, 0
 bnez r4, 28
 subi r3, r1, 4
 subi r0, r0, 6
 rori r31, r6, 13
 sra r1, r7, r5 // icount 351
 addi r2, r1, 12
 sub r7, r3, r2 // icount 353
 ror r5, r2, r3 // icount 354
 or r7, r0, r3 // icount 355
 sle r5, r7, r4 // icount 356
 rol r4, r6, r0 // icount 357
 andi r6, r5, 3
 sle r6, r7, r3 // icount 359
 and r6, r1, r3 // icount 360
 sll r1, r3, r7 // icount 361
 sco r5, r3, r0 // icount 362
 ror r6, r7, r7 // icount 363
 add r3, r1, r1 // icount 364
 slt r7, r4, r7 // icount 365
 add r6, r5, r7 // icount 366
 subi r6, r2, 3
 and r0, r5, r5 // icount 368
 lbi r6, 15
 slli r0, r0, 7
 nop // to align meminst icount 371
 andi r3, r3, 0xfe
 ld r3, r3, 8
 ror r6, r4, r3 // icount 374
 sll r6, r4, r1 // icount 375
 roli r1, r31, 15
 slli r6, r1, 14
 lbi r5, 0
 lbi r1, 0
 nop // to align branch icount 380
 beqz r0, 24
 lbi r1, 7
 and r5, r0, r5 // icount 383
 subi r2, r0, 9
 srai r2, r4, 6
 sle r7, r6, r2 // icount 386
 lbi r6, 14
 srai r3, r0, 6
 andi r31, r31, 13
 sle r4, r0, r1 // icount 390
 nop // to align meminst icount 391
 andi r3, r3, 0xfe
 stu r6, r3, 4
 slbi r31, 2
 or r6, r4, r7 // icount 395
 addi r6, r31, 5
 sle r6, r5, r3 // icount 397
 slli r6, r0, 5
 sle r3, r1, r3 // icount 399
 and r3, r5, r5 // icount 400
 slbi r1, 10
 andi r5, r31, 1
 sco r3, r3, r3 // icount 403
 addi r3, r5, 2
 nop // to align meminst icount 405
 andi r3, r3, 0xfe
 stu r5, r3, 8
 sll r2, r4, r4 // icount 408
 nop // to align meminst icount 409
 andi r3, r3, 0xfe
 ld r3, r3, 2
 j 12
 nop // icount 413
 nop // icount 414
 nop // icount 415
 nop // icount 416
 nop // icount 417
 nop // icount 418
 j 14
 nop // icount 420
 nop // icount 421
 nop // icount 422
 nop // icount 423
 nop // icount 424
 nop // icount 425
 nop // icount 426
 j 32
 nop // icount 428
 nop // icount 429
 nop // icount 430
 nop // icount 431
 nop // icount 432
 nop // icount 433
 nop // icount 434
 nop // icount 435
 nop // icount 436
 nop // icount 437
 nop // icount 438
 nop // icount 439
 nop // icount 440
 nop // icount 441
 nop // icount 442
 nop // icount 443
 j 28
 nop // icount 445
 nop // icount 446
 nop // icount 447
 nop // icount 448
 nop // icount 449
 nop // icount 450
 nop // icount 451
 nop // icount 452
 nop // icount 453
 nop // icount 454
 nop // icount 455
 nop // icount 456
 nop // icount 457
 nop // icount 458
 j 8
 nop // icount 460
 nop // icount 461
 nop // icount 462
 nop // icount 463
 lbi r31, 0
 lbi r6, 0
 nop // to align branch icount 466
 beqz r4, 8
 rol r3, r0, r2 // icount 468
 slt r5, r6, r4 // icount 469
 roli r3, r1, 9
 subi r6, r4, 11
 seq r2, r1, r2 // icount 472
 slt r0, r6, r7 // icount 473
 rori r1, r6, 1
 andi r1, r0, 1
 j 30
 nop // icount 477
 nop // icount 478
 nop // icount 479
 nop // icount 480
 nop // icount 481
 nop // icount 482
 nop // icount 483
 nop // icount 484
 nop // icount 485
 nop // icount 486
 nop // icount 487
 nop // icount 488
 nop // icount 489
 nop // icount 490
 nop // icount 491
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 494
 bnez r5, 24
 srai r0, r2, 2
 or r4, r5, r7 // icount 497
 ror r1, r3, r0 // icount 498
 sub r7, r7, r0 // icount 499
 andi r5, r5, 0xfe
 ld r0, r5, 0
 addi r2, r2, 9
 slbi r6, 10
 ori r6, r4, 9
 seq r7, r2, r0 // icount 505
 sle r7, r6, r2 // icount 506
 addi r5, r1, 13
 roli r3, r6, 5
 sra r7, r7, r3 // icount 509
 andi r4, r4, 0xfe
 st r0, r4, 12
 ror r4, r2, r2 // icount 512
 or r6, r4, r4 // icount 513
 ori r1, r31, 5
 nop // to align meminst icount 515
 andi r1, r1, 0xfe
 stu r3, r1, 0
 or r6, r6, r4 // icount 518
 nop // to align meminst icount 519
 andi r1, r1, 0xfe
 ld r3, r1, 6
 or r5, r3, r5 // icount 522
 roli r1, r1, 9
 or r5, r1, r3 // icount 524
 subi r3, r5, 15
 j 26
 nop // icount 527
 nop // icount 528
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
 lbi r6, 0
 lbi r5, 0
 nop // to align branch icount 542
 beqz r1, 16
 rol r3, r4, r3 // icount 544
 sub r4, r6, r0 // icount 545
 seq r1, r6, r4 // icount 546
 sub r3, r4, r4 // icount 547
 sub r7, r5, r2 // icount 548
 lbi r1, 5
 seq r7, r5, r6 // icount 550
 seq r2, r1, r1 // icount 551
 slli r31, r5, 8
 rol r6, r7, r1 // icount 553
 ror r1, r7, r1 // icount 554
 lbi r3, 14
 andi r31, r31, 0xfe
 ld r4, r31, 14
 andi r6, r2, 7
 roli r6, r5, 14
 and r2, r4, r2 // icount 560
 j 18
 nop // icount 562
 nop // icount 563
 nop // icount 564
 nop // icount 565
 nop // icount 566
 nop // icount 567
 nop // icount 568
 nop // icount 569
 nop // icount 570
 lbi r2, 0
 lbi r0, 0
 beqz r4, 28
 roli r1, r3, 3
 rori r5, r6, 12
 sco r5, r3, r0 // icount 576
 lbi r2, 0
 andi r1, r1, 0xfe
 ld r6, r1, 14
 ori r1, r6, 10
 sco r3, r5, r4 // icount 581
 roli r31, r5, 5
 and r7, r4, r6 // icount 583
 rori r2, r6, 10
 sra r7, r2, r2 // icount 585
 seq r4, r1, r6 // icount 586
 slt r4, r5, r2 // icount 587
 andi r31, r31, 0xfe
 stu r5, r31, 12
 roli r3, r6, 8
 sle r1, r2, r6 // icount 591
 sra r1, r7, r6 // icount 592
 slli r6, r6, 4
 lbi r5, 4
 subi r4, r1, 5
 rol r3, r1, r2 // icount 596
 andi r3, r31, 4
 add r7, r1, r6 // icount 598
 nop // to align meminst icount 599
 andi r5, r5, 0xfe
 st r0, r5, 14
 sle r6, r4, r4 // icount 602
 andi r4, r5, 13
 andi r2, r2, 0xfe
 st r1, r2, 2
 sll r7, r2, r4 // icount 606
 lbi r6, 0
 lbi r3, 0
 beqz r0, 12
 sll r6, r0, r3 // icount 610
 ori r1, r6, 8
 add r1, r1, r3 // icount 612
 srai r31, r31, 5
 srai r1, r0, 8
 rol r6, r2, r2 // icount 615
 slt r3, r5, r1 // icount 616
 nop // to align meminst icount 617
 andi r6, r6, 0xfe
 st r2, r6, 2
 sll r5, r5, r0 // icount 620
 lbi r1, 7
 subi r2, r0, 8
 or r6, r0, r0 // icount 623
 j 20
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
 lbi r5, 0
 lbi r3, 0
 bnez r1, 8
 ror r5, r0, r5 // icount 638
 add r6, r1, r2 // icount 639
 andi r6, r3, 9
 nop // to align meminst icount 641
 andi r31, r31, 0xfe
 stu r2, r31, 8
 andi r6, r6, 0xfe
 st r5, r6, 4
 rori r5, r0, 3
 rol r3, r6, r3 // icount 647
 roli r3, r31, 7
 lbi r1, 0
 lbi r3, 0
 beqz r2, 20
 andi r0, r0, 0xfe
 stu r31, r0, 10
 andi r4, r4, 0xfe
 stu r0, r4, 14
 ori r2, r31, 3
 slli r31, r5, 15
 and r1, r7, r3 // icount 658
 or r6, r0, r7 // icount 659
 and r7, r5, r5 // icount 660
 rol r1, r0, r3 // icount 661
 subi r1, r4, 10
 subi r6, r31, 7
 lbi r5, 10
 roli r2, r4, 10
 or r0, r7, r0 // icount 666
 sle r2, r1, r5 // icount 667
 andi r2, r6, 5
 sll r5, r6, r3 // icount 669
 rori r0, r4, 10
 slli r31, r3, 14
 sll r6, r6, r5 // icount 672
 add r0, r3, r6 // icount 673
 lbi r0, 0
 lbi r1, 0
 nop // to align branch icount 676
 beqz r3, 28
 and r2, r7, r0 // icount 678
 sco r7, r0, r7 // icount 679
 andi r4, r4, 0xfe
 st r6, r4, 14
 andi r1, r1, 0xfe
 ld r0, r1, 4
 ror r5, r0, r0 // icount 684
 slt r2, r5, r2 // icount 685
 sle r5, r7, r1 // icount 686
 or r5, r6, r4 // icount 687
 add r2, r1, r0 // icount 688
 nop // to align meminst icount 689
 andi r4, r4, 0xfe
 stu r2, r4, 4
 sll r0, r6, r1 // icount 692
 sle r0, r0, r2 // icount 693
 ori r0, r3, 12
 sra r0, r7, r5 // icount 695
 ror r6, r6, r3 // icount 696
 roli r4, r0, 2
 addi r31, r6, 0
 nop // to align meminst icount 699
 andi r4, r4, 0xfe
 st r2, r4, 12
 roli r31, r1, 1
 seq r6, r3, r5 // icount 703
 slt r1, r5, r0 // icount 704
 srai r4, r2, 7
 seq r4, r5, r5 // icount 706
 ror r5, r1, r0 // icount 707
 add r7, r7, r3 // icount 708
 or r6, r2, r2 // icount 709
 ror r0, r7, r3 // icount 710
 nop // to align meminst icount 711
 andi r6, r6, 0xfe
 ld r31, r6, 10
 j 24
 nop // icount 715
 nop // icount 716
 nop // icount 717
 nop // icount 718
 nop // icount 719
 nop // icount 720
 nop // icount 721
 nop // icount 722
 nop // icount 723
 nop // icount 724
 nop // icount 725
 nop // icount 726
 lbi r1, 0
 lbi r31, 0
 beqz r2, 32
 rol r6, r3, r7 // icount 730
 seq r2, r4, r5 // icount 731
 sco r2, r5, r1 // icount 732
 or r4, r7, r6 // icount 733
 sco r1, r6, r2 // icount 734
 ror r6, r7, r3 // icount 735
 slbi r6, 8
 seq r6, r3, r2 // icount 737
 roli r6, r6, 15
 and r3, r1, r7 // icount 739
 subi r6, r31, 15
 seq r6, r5, r3 // icount 741
 rol r0, r5, r4 // icount 742
 subi r6, r5, 11
 ori r4, r31, 1
 and r0, r4, r3 // icount 745
 andi r31, r31, 0xfe
 st r3, r31, 6
 sle r3, r5, r1 // icount 748
 subi r4, r6, 3
 lbi r2, 11
 rori r5, r2, 5
 srai r5, r2, 12
 srai r4, r3, 15
 andi r31, r4, 2
 and r1, r5, r5 // icount 755
 sll r5, r3, r7 // icount 756
 sll r1, r1, r1 // icount 757
 sub r0, r5, r7 // icount 758
 sle r7, r3, r3 // icount 759
 andi r0, r0, 0xfe
 stu r5, r0, 10
 roli r0, r3, 5
 slt r4, r5, r5 // icount 763
 j 14
 nop // icount 765
 nop // icount 766
 nop // icount 767
 nop // icount 768
 nop // icount 769
 nop // icount 770
 nop // icount 771
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 774
 bnez r4, 20
 sco r0, r1, r7 // icount 776
 sco r5, r5, r2 // icount 777
 andi r4, r4, 0xfe
 stu r0, r4, 6
 slbi r6, 7
 slbi r4, 1
 sco r4, r6, r7 // icount 782
 rori r5, r31, 5
 slt r2, r6, r6 // icount 784
 sub r3, r4, r0 // icount 785
 rori r1, r1, 6
 add r5, r1, r6 // icount 787
 and r3, r3, r7 // icount 788
 sra r5, r0, r6 // icount 789
 sco r4, r1, r0 // icount 790
 slbi r6, 11
 slbi r6, 3
 rol r2, r6, r2 // icount 793
 andi r4, r6, 13
 slli r6, r4, 8
 andi r0, r5, 4
 j 8
 nop // icount 798
 nop // icount 799
 nop // icount 800
 nop // icount 801
 j 10
 nop // icount 803
 nop // icount 804
 nop // icount 805
 nop // icount 806
 nop // icount 807
 lbi r4, 0
 lbi r1, 0
 nop // to align branch icount 810
 beqz r0, 20
 srai r6, r4, 1
 or r3, r6, r6 // icount 813
 ror r5, r0, r0 // icount 814
 seq r7, r1, r3 // icount 815
 and r4, r3, r0 // icount 816
 subi r1, r2, 4
 seq r0, r1, r0 // icount 818
 sub r7, r2, r6 // icount 819
 lbi r0, 13
 add r7, r4, r2 // icount 821
 andi r1, r1, 0xfe
 ld r31, r1, 10
 roli r4, r31, 10
 sle r2, r1, r3 // icount 825
 sub r5, r3, r7 // icount 826
 sle r1, r1, r1 // icount 827
 slli r4, r6, 5
 rol r1, r3, r2 // icount 829
 addi r2, r6, 9
 sub r1, r3, r0 // icount 831
 slt r7, r1, r0 // icount 832
 j 2
 nop // icount 834
 lbi r6, 0
 lbi r1, 0
 beqz r3, 12
 rol r2, r1, r0 // icount 838
 seq r0, r3, r7 // icount 839
 sll r5, r7, r6 // icount 840
 ori r6, r4, 7
 lbi r1, 11
 rol r1, r6, r5 // icount 843
 sle r0, r1, r4 // icount 844
 sle r3, r3, r2 // icount 845
 andi r6, r6, 0xfe
 ld r0, r6, 2
 andi r2, r1, 5
 sll r7, r7, r3 // icount 849
 sll r4, r3, r6 // icount 850
 lbi r3, 0
 lbi r5, 0
 bnez r2, 16
 roli r4, r4, 6
 ori r5, r4, 4
 sra r6, r5, r3 // icount 856
 ror r2, r2, r4 // icount 857
 slli r31, r1, 13
 and r1, r7, r2 // icount 859
 andi r0, r3, 10
 rol r7, r6, r7 // icount 861
 seq r0, r1, r2 // icount 862
 add r0, r7, r0 // icount 863
 rori r1, r6, 0
 roli r1, r2, 5
 add r4, r2, r2 // icount 866
 rori r4, r3, 13
 roli r3, r0, 14
 rol r1, r4, r0 // icount 869
 lbi r31, 0
 lbi r0, 0
 nop // to align branch icount 872
 bnez r0, 28
 slli r3, r0, 9
 sll r6, r0, r2 // icount 875
 andi r5, r2, 2
 sub r7, r5, r7 // icount 877
 ori r2, r3, 2
 andi r2, r0, 3
 sco r5, r2, r3 // icount 880
 andi r6, r1, 3
 subi r0, r0, 5
 nop // to align meminst icount 883
 andi r6, r6, 0xfe
 st r4, r6, 14
 roli r2, r2, 14
 andi r5, r3, 4
 addi r3, r31, 11
 slbi r0, 0
 slbi r6, 3
 nop // to align meminst icount 891
 andi r6, r6, 0xfe
 st r31, r6, 0
 and r4, r7, r3 // icount 894
 addi r31, r6, 10
 sra r5, r5, r2 // icount 896
 sle r7, r3, r3 // icount 897
 andi r2, r2, 0xfe
 stu r31, r2, 10
 roli r3, r6, 6
 sll r5, r6, r3 // icount 901
 srai r6, r3, 3
 slli r4, r0, 6
 slli r31, r6, 8
 srai r6, r2, 14
 ror r1, r0, r1 // icount 906
 j 12
 nop // icount 908
 nop // icount 909
 nop // icount 910
 nop // icount 911
 nop // icount 912
 nop // icount 913
 j 2
 nop // icount 915
 j 20
 nop // icount 917
 nop // icount 918
 nop // icount 919
 nop // icount 920
 nop // icount 921
 nop // icount 922
 nop // icount 923
 nop // icount 924
 nop // icount 925
 nop // icount 926
 j 32
 nop // icount 928
 nop // icount 929
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
 nop // icount 941
 nop // icount 942
 nop // icount 943
 lbi r4, 0
 lbi r4, 0
 nop // to align branch icount 946
 bnez r6, 4
 ror r5, r7, r0 // icount 948
 rol r2, r4, r0 // icount 949
 slbi r2, 13
 or r3, r3, r4 // icount 951
 j 8
 nop // icount 953
 nop // icount 954
 nop // icount 955
 nop // icount 956
 j 18
 nop // icount 958
 nop // icount 959
 nop // icount 960
 nop // icount 961
 nop // icount 962
 nop // icount 963
 nop // icount 964
 nop // icount 965
 nop // icount 966
 lbi r4, 0
 lbi r5, 0
 beqz r3, 4
 add r3, r0, r2 // icount 970
 rori r3, r2, 4
 andi r6, r6, 0xfe
 st r4, r6, 0
 seq r2, r4, r6 // icount 974
 lbi r0, 0
 lbi r1, 0
 beqz r31, 32
 roli r3, r0, 10
 rol r6, r1, r2 // icount 979
 slt r7, r3, r3 // icount 980
 srai r3, r2, 15
 slbi r2, 5
 slli r3, r1, 8
 ror r5, r0, r6 // icount 984
 sco r5, r4, r0 // icount 985
 andi r6, r6, 0xfe
 st r4, r6, 8
 ori r0, r0, 6
 slli r4, r6, 1
 subi r6, r1, 4
 sub r1, r5, r3 // icount 991
 addi r3, r2, 6
 sra r5, r0, r5 // icount 993
 andi r31, r2, 5
 lbi r4, 15
 roli r2, r31, 13
 ror r2, r3, r4 // icount 997
 slbi r4, 14
 nop // to align meminst icount 999
 andi r1, r1, 0xfe
 st r6, r1, 4
 addi r4, r0, 15
 rol r4, r7, r2 // icount 1003
 andi r5, r5, 0xfe
 stu r2, r5, 10
 add r4, r6, r4 // icount 1006
 slli r0, r0, 11
 andi r6, r6, 0xfe
 stu r31, r6, 10
 addi r2, r31, 3
 addi r6, r31, 3
 rol r6, r6, r6 // icount 1012
 sra r7, r6, r4 // icount 1013
 addi r5, r2, 9
 lbi r4, 0
 lbi r2, 0
 beqz r3, 28
 ori r3, r5, 9
 addi r3, r6, 7
 ori r1, r5, 7
 andi r31, r0, 0
 and r1, r7, r3 // icount 1022
 sub r1, r4, r5 // icount 1023
 ror r4, r2, r6 // icount 1024
 addi r2, r3, 14
 sle r6, r1, r1 // icount 1026
 sle r5, r5, r1 // icount 1027
 sub r7, r1, r3 // icount 1028
 addi r2, r6, 11
 lbi r31, 9
 subi r31, r5, 0
 srai r4, r3, 9
 lbi r1, 2
 lbi r1, 12
 roli r6, r4, 14
 andi r0, r0, 0xfe
 ld r5, r0, 4
 or r7, r0, r2 // icount 1038
 or r1, r0, r5 // icount 1039
 ori r1, r5, 10
 addi r0, r5, 13
 slli r4, r1, 11
 andi r4, r6, 13
 ror r7, r6, r6 // icount 1044
 slli r1, r4, 10
 andi r0, r0, 0xfe
 ld r2, r0, 8
 lbi r6, 0
 lbi r0, 0
 nop // to align branch icount 1050
 bnez r5, 0
 j 6
 nop // icount 1053
 nop // icount 1054
 nop // icount 1055
 j 16
 nop // icount 1057
 nop // icount 1058
 nop // icount 1059
 nop // icount 1060
 nop // icount 1061
 nop // icount 1062
 nop // icount 1063
 nop // icount 1064
 lbi r5, 0
 lbi r0, 0
 bnez r4, 28
 subi r2, r31, 10
 and r4, r3, r4 // icount 1069
 slli r5, r0, 10
 subi r4, r1, 6
 lbi r5, 15
 subi r4, r31, 14
 sub r5, r2, r5 // icount 1074
 rori r5, r5, 6
 slt r4, r2, r2 // icount 1076
 nop // to align meminst icount 1077
 andi r6, r6, 0xfe
 ld r31, r6, 0
 subi r5, r6, 5
 slli r2, r6, 13
 rol r1, r0, r6 // icount 1082
 addi r6, r6, 12
 sco r7, r4, r3 // icount 1084
 nop // to align meminst icount 1085
 andi r3, r3, 0xfe
 stu r0, r3, 6
 sco r7, r3, r6 // icount 1088
 addi r0, r0, 4
 ror r3, r6, r2 // icount 1090
 slbi r1, 7
 sco r5, r4, r1 // icount 1092
 slli r6, r4, 5
 sll r3, r1, r3 // icount 1094
 ror r4, r0, r6 // icount 1095
 ror r5, r1, r6 // icount 1096
 srai r0, r6, 13
 ori r1, r5, 3
 slli r31, r5, 8
 lbi r3, 0
 lbi r6, 0
 nop // to align branch icount 1102
 beqz r31, 24
 seq r1, r7, r7 // icount 1104
 nop // to align meminst icount 1105
 andi r0, r0, 0xfe
 st r2, r0, 14
 andi r0, r0, 0xfe
 stu r1, r0, 2
 add r3, r3, r4 // icount 1110
 or r3, r4, r1 // icount 1111
 or r1, r3, r1 // icount 1112
 slbi r31, 2
 roli r2, r2, 1
 lbi r0, 8
 andi r3, r3, 0xfe
 ld r1, r3, 6
 ror r5, r1, r7 // icount 1118
 sll r6, r5, r0 // icount 1119
 ori r0, r5, 15
 lbi r1, 12
 add r5, r3, r4 // icount 1122
 seq r7, r3, r2 // icount 1123
 roli r6, r4, 12
 add r3, r0, r1 // icount 1125
 srai r31, r4, 2
 ror r1, r3, r1 // icount 1127
 ror r1, r4, r6 // icount 1128
 rol r2, r3, r1 // icount 1129
 rori r4, r5, 7
 nop // to align meminst icount 1131
 andi r0, r0, 0xfe
 ld r2, r0, 4
 j 14
 nop // icount 1135
 nop // icount 1136
 nop // icount 1137
 nop // icount 1138
 nop // icount 1139
 nop // icount 1140
 nop // icount 1141
 j 6
 nop // icount 1143
 nop // icount 1144
 nop // icount 1145
 lbi r31, 0
 lbi r0, 0
 nop // to align branch icount 1148
 bnez r4, 20
 andi r2, r2, 0xfe
 ld r3, r2, 14
 or r7, r6, r6 // icount 1152
 rori r2, r31, 3
 slli r6, r0, 6
 nop // to align meminst icount 1155
 andi r6, r6, 0xfe
 st r31, r6, 14
 slt r6, r1, r3 // icount 1158
 seq r6, r7, r7 // icount 1159
 andi r0, r0, 0xfe
 stu r2, r0, 8
 andi r1, r1, 0xfe
 ld r4, r1, 4
 ori r1, r31, 8
 lbi r2, 10
 ori r0, r3, 7
 subi r0, r0, 6
 andi r2, r2, 0xfe
 stu r0, r2, 0
 andi r0, r4, 14
 nop // to align meminst icount 1171
 andi r0, r0, 0xfe
 ld r6, r0, 12
 andi r31, r31, 0xfe
 stu r6, r31, 14
 lbi r2, 12
 slli r0, r3, 6
 andi r31, r31, 0xfe
 ld r3, r31, 2
 j 28
 nop // icount 1181
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
 j 10
 nop // icount 1196
 nop // icount 1197
 nop // icount 1198
 nop // icount 1199
 nop // icount 1200
 j 26
 nop // icount 1202
 nop // icount 1203
 nop // icount 1204
 nop // icount 1205
 nop // icount 1206
 nop // icount 1207
 nop // icount 1208
 nop // icount 1209
 nop // icount 1210
 nop // icount 1211
 nop // icount 1212
 nop // icount 1213
 nop // icount 1214
 j 10
 nop // icount 1216
 nop // icount 1217
 nop // icount 1218
 nop // icount 1219
 nop // icount 1220
 j 30
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
 nop // icount 1232
 nop // icount 1233
 nop // icount 1234
 nop // icount 1235
 nop // icount 1236
 j 30
 nop // icount 1238
 nop // icount 1239
 nop // icount 1240
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
 lbi r4, 0
 lbi r1, 0
 bnez r4, 12
 sll r2, r0, r2 // icount 1256
 sll r6, r7, r1 // icount 1257
 subi r31, r4, 1
 sub r5, r6, r0 // icount 1259
 slt r2, r2, r3 // icount 1260
 addi r2, r31, 2
 or r3, r3, r0 // icount 1262
 sco r5, r1, r1 // icount 1263
 ror r2, r4, r6 // icount 1264
 slbi r3, 12
 srai r4, r4, 4
 add r2, r6, r1 // icount 1267
 j 30
 nop // icount 1269
 nop // icount 1270
 nop // icount 1271
 nop // icount 1272
 nop // icount 1273
 nop // icount 1274
 nop // icount 1275
 nop // icount 1276
 nop // icount 1277
 nop // icount 1278
 nop // icount 1279
 nop // icount 1280
 nop // icount 1281
 nop // icount 1282
 nop // icount 1283
 j 12
 nop // icount 1285
 nop // icount 1286
 nop // icount 1287
 nop // icount 1288
 nop // icount 1289
 nop // icount 1290
 j 14
 nop // icount 1292
 nop // icount 1293
 nop // icount 1294
 nop // icount 1295
 nop // icount 1296
 nop // icount 1297
 nop // icount 1298
 lbi r2, 0
 lbi r0, 0
 beqz r2, 24
 ror r1, r1, r1 // icount 1302
 rori r2, r6, 5
 roli r2, r0, 13
 nop // to align meminst icount 1305
 andi r2, r2, 0xfe
 st r4, r2, 2
 andi r2, r2, 0xfe
 ld r2, r2, 12
 addi r5, r31, 1
 lbi r5, 11
 srai r5, r2, 12
 ori r2, r3, 8
 subi r6, r5, 13
 nop // to align meminst icount 1315
 andi r6, r6, 0xfe
 stu r3, r6, 12
 andi r2, r31, 15
 ori r1, r31, 12
 rol r6, r6, r6 // icount 1320
 slbi r31, 7
 ror r0, r2, r6 // icount 1322
 andi r4, r3, 4
 slli r3, r31, 5
 rori r31, r5, 2
 slli r31, r5, 0
 seq r7, r2, r7 // icount 1327
 andi r6, r2, 10
 nop // to align meminst icount 1329
 andi r2, r2, 0xfe
 st r0, r2, 6
 andi r2, r2, 9
 lbi r1, 0
 lbi r0, 0
 bnez r2, 16
 sra r7, r1, r5 // icount 1336
 slli r0, r5, 2
 rol r0, r0, r6 // icount 1338
 nop // to align meminst icount 1339
 andi r5, r5, 0xfe
 st r0, r5, 4
 roli r2, r0, 3
 slt r4, r5, r1 // icount 1343
 lbi r31, 6
 rori r3, r0, 15
 subi r1, r0, 2
 rol r7, r1, r1 // icount 1347
 seq r2, r0, r4 // icount 1348
 andi r5, r31, 15
 sub r2, r6, r5 // icount 1350
 slli r5, r31, 1
 andi r31, r31, 8
 slli r31, r2, 8
 j 10
 nop // icount 1355
 nop // icount 1356
 nop // icount 1357
 nop // icount 1358
 nop // icount 1359
 lbi r4, 0
 lbi r6, 0
 nop // to align branch icount 1362
 bnez r4, 20
 slt r1, r4, r7 // icount 1364
 srai r31, r6, 2
 sco r6, r3, r1 // icount 1366
 seq r2, r3, r0 // icount 1367
 seq r6, r2, r0 // icount 1368
 srai r6, r1, 10
 addi r2, r1, 12
 andi r4, r31, 12
 slt r4, r4, r4 // icount 1372
 ror r2, r1, r1 // icount 1373
 slt r0, r2, r6 // icount 1374
 lbi r3, 7
 slli r0, r1, 6
 sco r6, r4, r6 // icount 1377
 andi r4, r4, 0xfe
 stu r4, r4, 0
 slt r3, r4, r4 // icount 1380
 roli r1, r4, 7
 slbi r2, 8
 slli r6, r2, 12
 add r7, r4, r5 // icount 1384
 lbi r6, 0
 lbi r6, 0
 beqz r3, 24
 or r5, r2, r5 // icount 1388
 sll r2, r7, r6 // icount 1389
 andi r2, r2, 10
 roli r1, r31, 3
 slt r3, r2, r4 // icount 1392
 and r7, r2, r0 // icount 1393
 and r2, r1, r3 // icount 1394
 sll r7, r1, r4 // icount 1395
 andi r0, r0, 0xfe
 stu r5, r0, 4
 sle r6, r2, r2 // icount 1398
 seq r1, r3, r7 // icount 1399
 sle r0, r7, r5 // icount 1400
 rol r0, r4, r6 // icount 1401
 sle r7, r1, r1 // icount 1402
 sll r6, r2, r3 // icount 1403
 ori r1, r1, 11
 sll r6, r2, r3 // icount 1405
 andi r4, r2, 1
 ror r5, r4, r6 // icount 1407
 ror r6, r7, r5 // icount 1408
 rol r7, r4, r3 // icount 1409
 sub r7, r6, r3 // icount 1410
 slbi r5, 2
 srai r5, r6, 4
 lbi r0, 0
 lbi r4, 0
 beqz r4, 32
 subi r3, r1, 0
 lbi r4, 8
 lbi r3, 11
 lbi r31, 0
 sll r5, r7, r2 // icount 1420
 addi r3, r5, 6
 and r2, r3, r1 // icount 1422
 add r2, r4, r7 // icount 1423
 add r1, r1, r3 // icount 1424
 subi r6, r0, 0
 sra r0, r1, r5 // icount 1426
 rol r4, r4, r4 // icount 1427
 andi r2, r3, 3
 sub r6, r1, r6 // icount 1429
 subi r5, r6, 5
 srai r1, r6, 7
 ori r1, r3, 13
 ror r7, r4, r6 // icount 1433
 seq r7, r4, r1 // icount 1434
 nop // to align meminst icount 1435
 andi r3, r3, 0xfe
 stu r0, r3, 4
 lbi r1, 9
 sle r2, r4, r3 // icount 1439
 sco r5, r7, r7 // icount 1440
 lbi r4, 14
 lbi r0, 8
 seq r5, r5, r1 // icount 1443
 rori r5, r31, 4
 rol r5, r1, r2 // icount 1445
 andi r31, r0, 14
 and r0, r1, r3 // icount 1447
 slt r6, r1, r3 // icount 1448
 addi r4, r6, 5
 j 6
 nop // icount 1451
 nop // icount 1452
 nop // icount 1453
 j 26
 nop // icount 1455
 nop // icount 1456
 nop // icount 1457
 nop // icount 1458
 nop // icount 1459
 nop // icount 1460
 nop // icount 1461
 nop // icount 1462
 nop // icount 1463
 nop // icount 1464
 nop // icount 1465
 nop // icount 1466
 nop // icount 1467
 lbi r0, 0
 lbi r4, 0
 nop // to align branch icount 1470
 bnez r6, 20
 seq r5, r1, r5 // icount 1472
 andi r0, r2, 5
 sll r6, r7, r6 // icount 1474
 ror r6, r3, r3 // icount 1475
 andi r5, r5, 0xfe
 ld r4, r5, 10
 addi r1, r1, 14
 rol r6, r4, r6 // icount 1479
 addi r6, r6, 3
 slbi r1, 8
 srai r6, r3, 14
 rori r5, r3, 9
 rori r2, r3, 6
 or r2, r7, r5 // icount 1485
 or r6, r4, r3 // icount 1486
 and r7, r0, r4 // icount 1487
 rori r4, r2, 6
 add r3, r4, r5 // icount 1489
 seq r0, r4, r4 // icount 1490
 srai r31, r2, 15
 lbi r2, 10
 lbi r6, 0
 lbi r6, 0
 bnez r1, 28
 sra r0, r3, r3 // icount 1496
 addi r3, r3, 14
 seq r0, r4, r3 // icount 1498
 slbi r31, 3
 add r2, r7, r3 // icount 1500
 and r0, r5, r7 // icount 1501
 or r7, r0, r1 // icount 1502
 slli r31, r4, 10
 seq r1, r6, r6 // icount 1504
 andi r0, r2, 10
 andi r31, r31, 0xfe
 stu r5, r31, 2
 rori r5, r1, 10
 slli r31, r0, 15
 rol r1, r3, r2 // icount 1510
 nop // to align meminst icount 1511
 andi r31, r31, 0xfe
 stu r0, r31, 8
 and r4, r4, r0 // icount 1514
 sub r4, r6, r4 // icount 1515
 sra r7, r0, r0 // icount 1516
 slli r4, r2, 13
 lbi r31, 15
 seq r3, r3, r0 // icount 1519
 andi r5, r5, 0xfe
 stu r1, r5, 0
 roli r3, r31, 9
 rori r0, r6, 15
 roli r31, r6, 5
 sll r1, r7, r1 // icount 1525
 subi r3, r4, 8
 rori r6, r0, 5
 lbi r5, 0
 lbi r1, 0
 nop // to align branch icount 1530
 bnez r6, 32
 ror r2, r1, r7 // icount 1532
 andi r31, r4, 13
 ori r4, r0, 13
 addi r6, r4, 11
 and r3, r4, r0 // icount 1536
 andi r3, r4, 12
 andi r4, r4, 0xfe
 ld r1, r4, 0
 andi r6, r6, 0xfe
 ld r5, r6, 12
 andi r6, r6, 0xfe
 st r5, r6, 6
 andi r0, r0, 0xfe
 st r3, r0, 8
 or r1, r1, r5 // icount 1546
 addi r5, r3, 3
 subi r31, r5, 7
 andi r2, r4, 11
 and r0, r0, r1 // icount 1550
 and r7, r3, r3 // icount 1551
 slli r4, r4, 8
 ori r6, r3, 8
 or r6, r7, r1 // icount 1554
 nop // to align meminst icount 1555
 andi r31, r31, 0xfe
 stu r31, r31, 0
 andi r0, r0, 0xfe
 stu r1, r0, 12
 slli r6, r2, 4
 slbi r1, 13
 rol r6, r2, r0 // icount 1562
 sra r3, r3, r1 // icount 1563
 sll r7, r4, r2 // icount 1564
 add r5, r1, r3 // icount 1565
 sra r0, r3, r0 // icount 1566
 or r7, r7, r4 // icount 1567
 slli r6, r6, 15
 ori r6, r4, 9
 srai r1, r31, 0
 lbi r1, 0
 lbi r2, 0
 beqz r1, 8
 rol r0, r6, r5 // icount 1574
 seq r2, r6, r2 // icount 1575
 andi r6, r6, 0xfe
 st r2, r6, 2
 roli r0, r31, 9
 addi r6, r4, 15
 or r5, r3, r6 // icount 1580
 sll r2, r4, r2 // icount 1581
 addi r31, r3, 1
 lbi r5, 0
 lbi r4, 0
 bnez r5, 28
 and r5, r1, r1 // icount 1586
 rol r2, r6, r1 // icount 1587
 slli r2, r31, 1
 seq r0, r0, r3 // icount 1589
 rori r0, r5, 0
 sll r6, r4, r0 // icount 1591
 slbi r3, 4
 sco r7, r2, r6 // icount 1593
 and r7, r3, r7 // icount 1594
 roli r1, r3, 10
 addi r2, r31, 11
 sle r5, r7, r7 // icount 1597
 seq r5, r3, r5 // icount 1598
 andi r1, r31, 6
 slbi r0, 4
 nop // to align meminst icount 1601
 andi r4, r4, 0xfe
 stu r6, r4, 8
 ori r4, r2, 14
 or r6, r5, r1 // icount 1605
 sco r2, r3, r0 // icount 1606
 seq r6, r5, r3 // icount 1607
 ror r7, r1, r0 // icount 1608
 slli r31, r4, 7
 addi r3, r4, 9
 or r1, r3, r4 // icount 1611
 ror r1, r1, r7 // icount 1612
 or r0, r0, r0 // icount 1613
 sll r1, r5, r2 // icount 1614
 nop // to align meminst icount 1615
 andi r5, r5, 0xfe
 stu r31, r5, 6
 j 16
 nop // icount 1619
 nop // icount 1620
 nop // icount 1621
 nop // icount 1622
 nop // icount 1623
 nop // icount 1624
 nop // icount 1625
 nop // icount 1626
 j 32
 nop // icount 1628
 nop // icount 1629
 nop // icount 1630
 nop // icount 1631
 nop // icount 1632
 nop // icount 1633
 nop // icount 1634
 nop // icount 1635
 nop // icount 1636
 nop // icount 1637
 nop // icount 1638
 nop // icount 1639
 nop // icount 1640
 nop // icount 1641
 nop // icount 1642
 nop // icount 1643
 lbi r0, 0
 lbi r31, 0
 nop // to align branch icount 1646
 beqz r2, 32
 roli r31, r2, 9
 add r2, r0, r6 // icount 1649
 rol r0, r7, r7 // icount 1650
 rori r0, r0, 13
 andi r0, r0, 0xfe
 st r2, r0, 2
 rol r4, r7, r0 // icount 1654
 seq r4, r0, r4 // icount 1655
 and r2, r5, r5 // icount 1656
 sra r7, r1, r1 // icount 1657
 add r0, r7, r7 // icount 1658
 slli r4, r5, 8
 andi r5, r5, 0xfe
 stu r31, r5, 8
 sub r1, r1, r7 // icount 1662
 sco r4, r4, r5 // icount 1663
 andi r6, r2, 6
 nop // to align meminst icount 1665
 andi r6, r6, 0xfe
 ld r31, r6, 10
 slt r5, r7, r1 // icount 1668
 nop // to align meminst icount 1669
 andi r31, r31, 0xfe
 ld r5, r31, 8
 sub r6, r0, r7 // icount 1672
 or r3, r5, r1 // icount 1673
 slt r7, r7, r5 // icount 1674
 nop // to align meminst icount 1675
 andi r4, r4, 0xfe
 ld r5, r4, 12
 slbi r31, 10
 ori r6, r0, 15
 or r0, r0, r4 // icount 1680
 sle r2, r4, r6 // icount 1681
 sco r2, r5, r4 // icount 1682
 ror r0, r2, r3 // icount 1683
 slbi r0, 13
 addi r3, r31, 10
 addi r6, r2, 0
 addi r4, r2, 6
 lbi r6, 0
 lbi r5, 0
 nop // to align branch icount 1690
 beqz r6, 20
 andi r3, r4, 7
 subi r3, r2, 0
 rol r0, r7, r7 // icount 1694
 sub r1, r7, r7 // icount 1695
 ror r7, r2, r5 // icount 1696
 nop // to align meminst icount 1697
 andi r2, r2, 0xfe
 stu r3, r2, 0
 slbi r3, 3
 sub r3, r6, r4 // icount 1701
 andi r4, r4, 0xfe
 stu r31, r4, 12
 or r0, r6, r2 // icount 1704
 addi r6, r2, 0
 sco r7, r0, r1 // icount 1706
 sco r7, r1, r6 // icount 1707
 sub r7, r4, r2 // icount 1708
 sub r6, r0, r0 // icount 1709
 sra r7, r4, r3 // icount 1710
 ror r3, r1, r7 // icount 1711
 sub r6, r0, r5 // icount 1712
 add r2, r3, r7 // icount 1713
 srai r4, r3, 7
 lbi r31, 0
 lbi r3, 0
 bnez r5, 20
 andi r6, r6, 0xfe
 st r1, r6, 10
 sco r4, r0, r7 // icount 1720
 rori r31, r1, 14
 slli r3, r0, 9
 seq r7, r0, r2 // icount 1723
 sco r0, r3, r0 // icount 1724
 nop // to align meminst icount 1725
 andi r4, r4, 0xfe
 ld r0, r4, 2
 sra r7, r6, r5 // icount 1728
 seq r5, r2, r4 // icount 1729
 sle r0, r1, r0 // icount 1730
 slt r7, r5, r0 // icount 1731
 and r3, r3, r6 // icount 1732
 or r5, r0, r7 // icount 1733
 sub r0, r3, r5 // icount 1734
 sle r3, r2, r0 // icount 1735
 slbi r2, 9
 ori r5, r2, 3
 ori r2, r4, 0
 or r1, r7, r4 // icount 1739
 andi r3, r3, 0xfe
 st r1, r3, 8
 j 26
 nop // icount 1743
 nop // icount 1744
 nop // icount 1745
 nop // icount 1746
 nop // icount 1747
 nop // icount 1748
 nop // icount 1749
 nop // icount 1750
 nop // icount 1751
 nop // icount 1752
 nop // icount 1753
 nop // icount 1754
 nop // icount 1755
 j 2
 nop // icount 1757
 j 14
 nop // icount 1759
 nop // icount 1760
 nop // icount 1761
 nop // icount 1762
 nop // icount 1763
 nop // icount 1764
 nop // icount 1765
 j 18
 nop // icount 1767
 nop // icount 1768
 nop // icount 1769
 nop // icount 1770
 nop // icount 1771
 nop // icount 1772
 nop // icount 1773
 nop // icount 1774
 nop // icount 1775
 halt // icount 1776
