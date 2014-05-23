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
 lbi r1, 12
 rori r2, r6, 11
 j 0
 lbi r3, 0
 lbi r0, 0
 bnez r1, 28
 slt r1, r1, r2 // icount 22
 and r4, r1, r1 // icount 23
 sra r7, r3, r6 // icount 24
 srai r0, r31, 7
 sll r2, r4, r7 // icount 26
 nop // to align meminst icount 27
 andi r5, r5, 0xfe
 st r0, r5, 0
 seq r1, r1, r3 // icount 30
 subi r0, r6, 8
 seq r0, r3, r4 // icount 32
 ror r0, r0, r5 // icount 33
 or r3, r2, r6 // icount 34
 slli r0, r1, 1
 sco r7, r0, r0 // icount 36
 seq r1, r7, r4 // icount 37
 sra r1, r7, r6 // icount 38
 sll r7, r4, r0 // icount 39
 andi r31, r31, 0xfe
 stu r2, r31, 8
 sra r7, r5, r4 // icount 42
 nop // to align meminst icount 43
 andi r31, r31, 0xfe
 st r2, r31, 14
 sco r2, r5, r2 // icount 46
 sle r7, r5, r0 // icount 47
 srai r0, r4, 2
 slli r1, r2, 2
 andi r31, r31, 0xfe
 stu r4, r31, 8
 andi r5, r5, 0xfe
 stu r4, r5, 0
 sub r7, r2, r2 // icount 54
 ori r6, r2, 10
 sco r7, r0, r2 // icount 56
 lbi r2, 0
 lbi r31, 0
 beqz r5, 16
 andi r3, r3, 0xfe
 ld r4, r3, 0
 andi r5, r1, 5
 slli r2, r2, 14
 subi r2, r2, 5
 slt r6, r6, r2 // icount 65
 sle r2, r7, r6 // icount 66
 sle r3, r5, r0 // icount 67
 seq r1, r2, r6 // icount 68
 slbi r31, 0
 srai r4, r6, 10
 lbi r2, 5
 ror r1, r5, r4 // icount 72
 rori r31, r6, 11
 sco r3, r5, r4 // icount 74
 seq r3, r2, r6 // icount 75
 rol r7, r2, r1 // icount 76
 slbi r31, 12
 addi r6, r5, 12
 lbi r4, 0
 lbi r3, 0
 beqz r2, 24
 srai r3, r31, 1
 srai r5, r5, 2
 andi r2, r2, 0xfe
 stu r2, r2, 6
 subi r4, r1, 0
 seq r0, r4, r2 // icount 87
 andi r0, r3, 9
 nop // to align meminst icount 89
 andi r4, r4, 0xfe
 stu r5, r4, 10
 rori r31, r5, 11
 sub r2, r6, r3 // icount 93
 andi r5, r5, 0xfe
 ld r4, r5, 0
 subi r5, r2, 11
 srai r31, r3, 3
 lbi r4, 15
 seq r6, r2, r6 // icount 99
 rori r31, r3, 9
 slli r31, r3, 4
 subi r4, r6, 9
 sub r1, r4, r3 // icount 103
 andi r3, r3, 0xfe
 ld r5, r3, 12
 andi r6, r1, 15
 rol r5, r6, r2 // icount 107
 slli r31, r6, 4
 andi r2, r3, 4
 or r0, r3, r6 // icount 110
 sub r6, r4, r0 // icount 111
 slli r5, r2, 3
 sra r6, r7, r1 // icount 113
 and r6, r7, r0 // icount 114
 j 12
 nop // icount 116
 nop // icount 117
 nop // icount 118
 nop // icount 119
 nop // icount 120
 nop // icount 121
 j 16
 nop // icount 123
 nop // icount 124
 nop // icount 125
 nop // icount 126
 nop // icount 127
 nop // icount 128
 nop // icount 129
 nop // icount 130
 sle r4, r3, r7 // icount 131
 j 32
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
 nop // icount 144
 nop // icount 145
 nop // icount 146
 nop // icount 147
 nop // icount 148
 lbi r3, 0
 lbi r3, 0
 beqz r0, 24
 rol r1, r5, r0 // icount 152
 rori r3, r1, 6
 subi r2, r31, 4
 ror r2, r2, r5 // icount 155
 sll r3, r5, r3 // icount 156
 seq r6, r4, r0 // icount 157
 srai r3, r0, 7
 ori r0, r3, 14
 roli r4, r1, 10
 nop // to align meminst icount 161
 andi r3, r3, 0xfe
 stu r4, r3, 8
 rori r31, r5, 14
 nop // to align meminst icount 165
 andi r1, r1, 0xfe
 stu r4, r1, 12
 sra r3, r0, r6 // icount 168
 ori r1, r4, 12
 sco r0, r7, r6 // icount 170
 sub r5, r1, r1 // icount 171
 sll r4, r7, r6 // icount 172
 rol r6, r0, r4 // icount 173
 sll r7, r5, r7 // icount 174
 subi r0, r4, 4
 andi r3, r3, 0xfe
 stu r0, r3, 2
 sll r1, r3, r4 // icount 178
 rori r3, r3, 8
 andi r0, r0, 0xfe
 stu r6, r0, 14
 slt r3, r1, r6 // icount 182
 subi r2, r31, 10
 andi r5, r5, 0xfe
 ld r0, r5, 12
 j 32
 nop // icount 187
 nop // icount 188
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
 nop // icount 199
 nop // icount 200
 nop // icount 201
 nop // icount 202
 nop // to align meminst icount 203
 andi r6, r6, 0xfe
 stu r4, r6, 12
 seq r0, r3, r5 // icount 206
 lbi r2, 0
 lbi r5, 0
 bnez r4, 32
 sle r2, r4, r5 // icount 210
 seq r3, r4, r1 // icount 211
 addi r5, r1, 11
 ror r1, r6, r1 // icount 213
 add r2, r6, r5 // icount 214
 subi r2, r6, 6
 slbi r4, 15
 slli r0, r0, 14
 sle r6, r1, r5 // icount 218
 sle r4, r3, r4 // icount 219
 roli r3, r5, 15
 nop // to align meminst icount 221
 andi r4, r4, 0xfe
 stu r5, r4, 0
 rol r3, r2, r3 // icount 224
 addi r4, r3, 3
 ror r6, r6, r0 // icount 226
 sle r4, r1, r6 // icount 227
 andi r5, r5, 0xfe
 ld r0, r5, 8
 and r6, r3, r4 // icount 230
 add r2, r3, r1 // icount 231
 andi r31, r31, 0xfe
 stu r1, r31, 4
 ror r0, r5, r4 // icount 234
 rol r3, r1, r3 // icount 235
 roli r6, r3, 5
 sra r3, r1, r5 // icount 237
 sco r6, r7, r3 // icount 238
 or r7, r3, r3 // icount 239
 rol r4, r3, r3 // icount 240
 ori r0, r4, 8
 andi r5, r5, 0xfe
 stu r0, r5, 0
 and r6, r7, r1 // icount 244
 add r4, r5, r2 // icount 245
 sle r7, r7, r0 // icount 246
 slt r7, r6, r4 // icount 247
 andi r0, r0, 1
 j 32
 nop // icount 250
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
 lbi r1, 3
 nop // to align meminst icount 267
 andi r2, r2, 0xfe
 ld r31, r2, 10
 sco r3, r1, r2 // icount 270
 lbi r2, 0
 lbi r5, 0
 bnez r0, 4
 sub r5, r5, r4 // icount 274
 or r1, r6, r6 // icount 275
 andi r5, r5, 0xfe
 ld r1, r5, 14
 sub r0, r2, r1 // icount 278
 rori r3, r2, 11
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
 lbi r0, 0
 lbi r0, 0
 nop // to align branch icount 296
 bnez r31, 4
 roli r31, r31, 5
 sle r7, r5, r6 // icount 299
 srai r4, r3, 15
 seq r1, r7, r0 // icount 301
 andi r6, r6, 0xfe
 ld r2, r6, 8
 lbi r5, 0
 lbi r31, 0
 nop // to align branch icount 306
 beqz r6, 28
 roli r31, r0, 14
 subi r0, r4, 6
 rori r3, r31, 15
 or r1, r6, r2 // icount 311
 slt r0, r0, r4 // icount 312
 slbi r6, 8
 ror r4, r1, r0 // icount 314
 subi r2, r0, 7
 andi r4, r4, 0xfe
 st r0, r4, 6
 andi r5, r31, 3
 sra r3, r2, r6 // icount 319
 lbi r5, 7
 add r4, r6, r1 // icount 321
 add r5, r2, r0 // icount 322
 slt r2, r1, r2 // icount 323
 sco r6, r5, r1 // icount 324
 sle r6, r7, r2 // icount 325
 roli r4, r6, 0
 and r0, r7, r0 // icount 327
 sub r7, r0, r2 // icount 328
 rori r0, r6, 10
 addi r3, r1, 6
 subi r5, r0, 11
 and r6, r5, r7 // icount 332
 and r6, r3, r5 // icount 333
 sub r0, r7, r5 // icount 334
 and r6, r0, r1 // icount 335
 slt r3, r5, r2 // icount 336
 srai r5, r3, 9
 j 26
 nop // icount 339
 nop // icount 340
 nop // icount 341
 nop // icount 342
 nop // icount 343
 nop // icount 344
 nop // icount 345
 nop // icount 346
 nop // icount 347
 nop // icount 348
 nop // icount 349
 nop // icount 350
 nop // icount 351
 rol r2, r0, r1 // icount 352
 nop // to align meminst icount 353
 andi r0, r0, 0xfe
 st r31, r0, 0
 lbi r6, 0
 lbi r0, 0
 nop // to align branch icount 358
 beqz r5, 28
 add r2, r5, r4 // icount 360
 sub r1, r6, r2 // icount 361
 rori r1, r3, 12
 srai r3, r31, 15
 and r7, r6, r0 // icount 364
 and r3, r5, r1 // icount 365
 seq r6, r7, r2 // icount 366
 or r5, r4, r5 // icount 367
 sco r1, r2, r1 // icount 368
 slbi r0, 9
 andi r3, r3, 0xfe
 ld r2, r3, 2
 sco r7, r6, r3 // icount 372
 nop // to align meminst icount 373
 andi r3, r3, 0xfe
 stu r0, r3, 12
 sll r2, r4, r5 // icount 376
 ror r4, r2, r0 // icount 377
 seq r2, r7, r0 // icount 378
 sll r2, r4, r2 // icount 379
 ror r7, r3, r0 // icount 380
 sub r1, r1, r3 // icount 381
 andi r4, r4, 0xfe
 st r2, r4, 0
 add r3, r2, r3 // icount 384
 srai r6, r4, 3
 sll r0, r1, r2 // icount 386
 slbi r6, 10
 subi r5, r6, 11
 sra r2, r7, r4 // icount 389
 subi r6, r3, 11
 ori r31, r1, 2
 sra r2, r2, r4 // icount 392
 and r2, r7, r1 // icount 393
 lbi r4, 0
 lbi r0, 0
 nop // to align branch icount 396
 bnez r1, 16
 ror r0, r0, r0 // icount 398
 slt r7, r3, r6 // icount 399
 andi r31, r5, 11
 ror r2, r0, r1 // icount 401
 slli r3, r1, 4
 slli r2, r4, 7
 subi r0, r1, 6
 slli r31, r6, 8
 subi r6, r3, 1
 srai r5, r2, 12
 sll r3, r6, r7 // icount 408
 ori r1, r2, 6
 rori r3, r3, 14
 sll r0, r7, r3 // icount 411
 andi r31, r4, 15
 roli r1, r0, 2
 andi r4, r6, 15
 j 8
 nop // icount 416
 nop // icount 417
 nop // icount 418
 nop // icount 419
 seq r7, r7, r6 // icount 420
 and r1, r6, r1 // icount 421
 andi r5, r5, 0xfe
 st r0, r5, 14
 j 28
 nop // icount 425
 nop // icount 426
 nop // icount 427
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
 j 32
 nop // icount 440
 nop // icount 441
 nop // icount 442
 nop // icount 443
 nop // icount 444
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
 j 14
 nop // icount 457
 nop // icount 458
 nop // icount 459
 nop // icount 460
 nop // icount 461
 nop // icount 462
 nop // icount 463
 add r5, r3, r4 // icount 464
 rori r2, r4, 9
 lbi r6, 0
 lbi r3, 0
 nop // to align branch icount 468
 beqz r3, 16
 slt r7, r6, r2 // icount 470
 sco r1, r7, r3 // icount 471
 lbi r1, 10
 sub r6, r6, r4 // icount 473
 ori r0, r3, 4
 sra r0, r5, r4 // icount 475
 and r4, r4, r6 // icount 476
 roli r1, r3, 13
 andi r5, r31, 13
 nop // to align meminst icount 479
 andi r31, r31, 0xfe
 stu r6, r31, 8
 sll r2, r3, r5 // icount 482
 slbi r2, 14
 or r6, r4, r4 // icount 484
 slt r7, r2, r5 // icount 485
 slbi r2, 2
 slbi r6, 0
 j 26
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
 addi r5, r6, 6
 j 26
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
 nop // icount 515
 nop // icount 516
 addi r2, r6, 7
 j 6
 nop // icount 519
 nop // icount 520
 nop // icount 521
 slli r2, r1, 11
 lbi r4, 0
 lbi r31, 0
 beqz r2, 8
 andi r1, r1, 0xfe
 st r31, r1, 10
 sub r3, r7, r3 // icount 528
 sco r3, r0, r5 // icount 529
 ror r5, r6, r3 // icount 530
 ori r4, r3, 9
 sle r3, r6, r3 // icount 532
 sra r3, r3, r6 // icount 533
 slbi r31, 14
 andi r31, r2, 13
 lbi r3, 0
 lbi r3, 0
 nop // to align branch icount 538
 beqz r0, 12
 add r4, r6, r6 // icount 540
 srai r1, r2, 6
 srai r4, r0, 13
 andi r1, r5, 5
 sub r7, r6, r6 // icount 544
 sle r1, r3, r6 // icount 545
 ror r1, r2, r0 // icount 546
 ror r6, r7, r1 // icount 547
 slbi r5, 10
 roli r1, r0, 7
 sra r1, r7, r4 // icount 550
 slli r1, r0, 1
 sle r5, r0, r7 // icount 552
 lbi r0, 0
 lbi r0, 0
 bnez r5, 0
 roli r5, r4, 15
 lbi r5, 0
 lbi r6, 0
 bnez r1, 16
 srai r5, r3, 5
 sle r6, r0, r6 // icount 561
 sco r1, r6, r0 // icount 562
 lbi r3, 12
 rol r7, r3, r5 // icount 564
 sco r4, r6, r5 // icount 565
 slt r2, r2, r4 // icount 566
 ror r4, r0, r1 // icount 567
 andi r5, r5, 0xfe
 ld r1, r5, 14
 rol r1, r4, r6 // icount 570
 add r6, r3, r1 // icount 571
 lbi r6, 3
 rol r3, r1, r1 // icount 573
 andi r31, r31, 0xfe
 ld r2, r31, 2
 sra r1, r1, r1 // icount 576
 sra r5, r6, r1 // icount 577
 slbi r6, 7
 nop // to align meminst icount 579
 andi r5, r5, 0xfe
 stu r1, r5, 8
 slli r3, r4, 6
 sub r4, r6, r0 // icount 583
 andi r6, r6, 0xfe
 ld r4, r6, 2
 subi r4, r4, 7
 sub r7, r5, r2 // icount 587
 lbi r6, 0
 lbi r1, 0
 nop // to align branch icount 590
 bnez r2, 4
 andi r6, r6, 0xfe
 ld r31, r6, 0
 subi r2, r1, 13
 sra r1, r7, r4 // icount 595
 sco r0, r1, r6 // icount 596
 lbi r1, 0
 lbi r1, 0
 bnez r5, 28
 sll r5, r7, r5 // icount 600
 srai r6, r31, 4
 slt r2, r3, r6 // icount 602
 nop // to align meminst icount 603
 andi r31, r31, 0xfe
 stu r0, r31, 4
 roli r5, r2, 9
 sub r4, r2, r0 // icount 607
 andi r2, r2, 0xfe
 st r3, r2, 2
 sle r5, r4, r6 // icount 610
 andi r3, r31, 0
 andi r31, r31, 0xfe
 ld r4, r31, 4
 seq r6, r6, r1 // icount 614
 lbi r6, 2
 subi r5, r31, 9
 ror r7, r2, r5 // icount 617
 rol r6, r2, r4 // icount 618
 slbi r6, 4
 slli r2, r5, 5
 ori r1, r5, 12
 slli r5, r6, 5
 nop // to align meminst icount 623
 andi r6, r6, 0xfe
 st r31, r6, 10
 lbi r6, 6
 addi r2, r31, 12
 sll r6, r5, r7 // icount 628
 ror r6, r3, r6 // icount 629
 sra r5, r7, r5 // icount 630
 seq r4, r0, r1 // icount 631
 or r2, r2, r1 // icount 632
 sra r3, r2, r7 // icount 633
 andi r1, r0, 12
 j 28
 nop // icount 636
 nop // icount 637
 nop // icount 638
 nop // icount 639
 nop // icount 640
 nop // icount 641
 nop // icount 642
 nop // icount 643
 nop // icount 644
 nop // icount 645
 nop // icount 646
 nop // icount 647
 nop // icount 648
 nop // icount 649
 lbi r0, 0
 lbi r31, 0
 nop // to align branch icount 652
 bnez r2, 28
 srai r5, r6, 4
 srai r6, r6, 10
 or r3, r1, r3 // icount 656
 sra r1, r7, r1 // icount 657
 slli r2, r0, 2
 sub r7, r3, r6 // icount 659
 slt r1, r1, r4 // icount 660
 or r6, r3, r1 // icount 661
 lbi r2, 9
 addi r4, r1, 4
 rol r0, r2, r6 // icount 664
 nop // to align meminst icount 665
 andi r1, r1, 0xfe
 st r3, r1, 14
 andi r2, r2, 0xfe
 stu r1, r2, 2
 seq r7, r0, r5 // icount 670
 nop // to align meminst icount 671
 andi r1, r1, 0xfe
 st r3, r1, 8
 add r1, r2, r4 // icount 674
 add r5, r0, r6 // icount 675
 roli r5, r6, 7
 and r0, r3, r4 // icount 677
 andi r0, r0, 0xfe
 st r0, r0, 2
 slt r3, r6, r2 // icount 680
 srai r6, r6, 14
 sra r6, r5, r5 // icount 682
 roli r3, r5, 0
 ori r3, r1, 13
 sll r7, r5, r2 // icount 685
 sll r1, r2, r3 // icount 686
 and r6, r5, r4 // icount 687
 sle r6, r5, r6 // icount 688
 lbi r31, 0
 lbi r6, 0
 beqz r1, 32
 or r5, r7, r3 // icount 692
 slbi r2, 15
 or r0, r0, r1 // icount 694
 nop // to align meminst icount 695
 andi r1, r1, 0xfe
 stu r2, r1, 10
 slbi r2, 1
 or r4, r6, r1 // icount 699
 sra r7, r4, r0 // icount 700
 slli r31, r31, 1
 andi r4, r4, 0xfe
 st r2, r4, 8
 seq r7, r2, r1 // icount 704
 add r1, r0, r6 // icount 705
 roli r1, r5, 13
 rol r6, r2, r3 // icount 707
 seq r4, r5, r3 // icount 708
 sra r3, r6, r3 // icount 709
 slbi r3, 12
 nop // to align meminst icount 711
 andi r0, r0, 0xfe
 stu r0, r0, 6
 subi r3, r2, 1
 sll r2, r7, r0 // icount 715
 addi r0, r2, 14
 sco r5, r7, r5 // icount 717
 lbi r31, 11
 sub r4, r2, r2 // icount 719
 add r6, r5, r1 // icount 720
 andi r3, r2, 14
 andi r2, r5, 3
 srai r1, r5, 0
 add r6, r2, r7 // icount 724
 andi r1, r2, 7
 andi r1, r0, 14
 and r1, r0, r5 // icount 727
 add r5, r6, r1 // icount 728
 j 24
 nop // icount 730
 nop // icount 731
 nop // icount 732
 nop // icount 733
 nop // icount 734
 nop // icount 735
 nop // icount 736
 nop // icount 737
 nop // icount 738
 nop // icount 739
 nop // icount 740
 nop // icount 741
 sub r3, r4, r6 // icount 742
 j 24
 nop // icount 744
 nop // icount 745
 nop // icount 746
 nop // icount 747
 nop // icount 748
 nop // icount 749
 nop // icount 750
 nop // icount 751
 nop // icount 752
 nop // icount 753
 nop // icount 754
 nop // icount 755
 addi r1, r4, 10
 slt r4, r7, r0 // icount 757
 lbi r2, 0
 lbi r6, 0
 nop // to align branch icount 760
 bnez r5, 12
 sco r5, r0, r1 // icount 762
 seq r6, r6, r2 // icount 763
 subi r4, r1, 9
 ror r5, r3, r0 // icount 765
 andi r4, r4, 0xfe
 ld r3, r4, 8
 sub r0, r5, r1 // icount 768
 slli r3, r31, 3
 and r4, r6, r1 // icount 770
 slli r6, r0, 11
 lbi r6, 11
 rol r2, r1, r7 // icount 773
 slli r3, r3, 15
 j 16
 nop // icount 776
 nop // icount 777
 nop // icount 778
 nop // icount 779
 nop // icount 780
 nop // icount 781
 nop // icount 782
 nop // icount 783
 lbi r5, 0
 lbi r2, 0
 nop // to align branch icount 786
 bnez r1, 32
 andi r0, r2, 3
 nop // to align meminst icount 789
 andi r4, r4, 0xfe
 stu r0, r4, 14
 roli r0, r1, 8
 slli r31, r6, 15
 andi r4, r4, 0xfe
 ld r2, r4, 10
 and r2, r6, r5 // icount 796
 lbi r3, 4
 sco r1, r3, r5 // icount 798
 lbi r1, 11
 rori r2, r6, 5
 srai r4, r0, 1
 andi r5, r5, 0xfe
 stu r5, r5, 2
 srai r1, r0, 4
 slli r31, r0, 10
 slli r0, r3, 14
 andi r5, r3, 2
 srai r4, r1, 13
 and r4, r5, r7 // icount 809
 seq r4, r2, r7 // icount 810
 seq r4, r6, r4 // icount 811
 ror r2, r7, r4 // icount 812
 slbi r0, 5
 andi r1, r1, 0xfe
 st r0, r1, 6
 sle r3, r5, r2 // icount 816
 or r0, r1, r2 // icount 817
 lbi r3, 13
 rol r6, r7, r7 // icount 819
 sra r2, r5, r4 // icount 820
 sub r6, r2, r3 // icount 821
 andi r4, r4, 0xfe
 ld r4, r4, 6
 sra r4, r6, r7 // icount 824
 slli r1, r31, 15
 sub r2, r7, r5 // icount 826
 lbi r6, 0
 lbi r4, 0
 bnez r0, 12
 slbi r6, 7
 slbi r4, 1
 sco r4, r6, r7 // icount 832
 rori r5, r31, 5
 slt r2, r6, r6 // icount 834
 sub r3, r4, r0 // icount 835
 rori r1, r1, 6
 add r5, r1, r6 // icount 837
 and r3, r3, r7 // icount 838
 sra r5, r0, r6 // icount 839
 sco r4, r1, r0 // icount 840
 slbi r6, 11
 j 30
 nop // icount 843
 nop // icount 844
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
 nop // icount 857
 slt r3, r1, r2 // icount 858
 j 10
 nop // icount 860
 nop // icount 861
 nop // icount 862
 nop // icount 863
 nop // icount 864
 lbi r6, 8
 j 28
 nop // icount 867
 nop // icount 868
 nop // icount 869
 nop // icount 870
 nop // icount 871
 nop // icount 872
 nop // icount 873
 nop // icount 874
 nop // icount 875
 nop // icount 876
 nop // icount 877
 nop // icount 878
 nop // icount 879
 nop // icount 880
 srai r4, r6, 12
 andi r0, r0, 0xfe
 st r2, r0, 12
 ror r1, r2, r0 // icount 884
 halt // icount 885
