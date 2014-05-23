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
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 30
 bnez r1, 28
 add r1, r0, r4 // icount 32
 sub r1, r6, r1 // icount 33
 sll r5, r6, r7 // icount 34
 seq r5, r6, r4 // icount 35
 or r4, r3, r0 // icount 36
 sub r0, r2, r3 // icount 37
 andi r5, r5, 0xfe
 ld r31, r5, 6
 subi r4, r6, 5
 srai r31, r31, 9
 subi r1, r2, 6
 sll r1, r1, r1 // icount 43
 roli r1, r1, 6
 slbi r0, 9
 seq r3, r4, r1 // icount 46
 addi r2, r1, 8
 andi r4, r4, 0xfe
 st r4, r4, 10
 andi r4, r5, 1
 sll r7, r6, r1 // icount 51
 rori r0, r6, 6
 seq r7, r2, r7 // icount 53
 subi r0, r2, 1
 addi r6, r5, 1
 add r7, r7, r2 // icount 56
 lbi r6, 13
 srai r3, r5, 10
 or r1, r5, r4 // icount 59
 andi r5, r1, 7
 rol r0, r2, r6 // icount 61
 lbi r31, 0
 lbi r1, 0
 nop // to align branch icount 64
 beqz r1, 0
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 68
 bnez r31, 24
 lbi r0, 9
 and r2, r3, r6 // icount 71
 sra r6, r6, r1 // icount 72
 ori r6, r2, 1
 sub r6, r5, r4 // icount 74
 or r7, r6, r7 // icount 75
 rori r31, r5, 1
 srai r5, r5, 2
 rori r5, r31, 13
 seq r1, r2, r3 // icount 79
 andi r0, r31, 4
 and r2, r2, r5 // icount 81
 rol r5, r7, r7 // icount 82
 seq r4, r3, r1 // icount 83
 add r2, r0, r4 // icount 84
 nop // to align meminst icount 85
 andi r5, r5, 0xfe
 ld r6, r5, 14
 roli r3, r4, 13
 ori r2, r0, 5
 rori r6, r3, 11
 roli r0, r0, 9
 roli r6, r0, 12
 ror r6, r5, r6 // icount 93
 slbi r1, 5
 roli r5, r6, 8
 j 0
 lbi r3, 0
 lbi r6, 0
 bnez r1, 20
 sra r1, r3, r2 // icount 100
 sra r4, r4, r2 // icount 101
 or r3, r2, r5 // icount 102
 andi r3, r3, 12
 roli r6, r3, 10
 addi r2, r6, 9
 srai r2, r4, 0
 sll r7, r7, r4 // icount 107
 sub r2, r5, r4 // icount 108
 add r6, r4, r0 // icount 109
 rol r1, r7, r7 // icount 110
 sle r3, r4, r4 // icount 111
 rori r5, r4, 8
 add r7, r6, r4 // icount 113
 sle r2, r2, r3 // icount 114
 sle r5, r4, r2 // icount 115
 roli r5, r0, 2
 and r3, r6, r1 // icount 117
 lbi r1, 11
 sll r5, r5, r4 // icount 119
 lbi r1, 0
 lbi r2, 0
 nop // to align branch icount 122
 bnez r0, 0
 j 20
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
 j 8
 nop // icount 136
 nop // icount 137
 nop // icount 138
 nop // icount 139
 j 30
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
 nop // icount 151
 nop // icount 152
 nop // icount 153
 nop // icount 154
 nop // icount 155
 j 12
 nop // icount 157
 nop // icount 158
 nop // icount 159
 nop // icount 160
 nop // icount 161
 nop // icount 162
 j 12
 nop // icount 164
 nop // icount 165
 nop // icount 166
 nop // icount 167
 nop // icount 168
 nop // icount 169
 j 6
 nop // icount 171
 nop // icount 172
 nop // icount 173
 j 2
 nop // icount 175
 lbi r4, 0
 lbi r31, 0
 nop // to align branch icount 178
 bnez r2, 8
 seq r1, r2, r1 // icount 180
 rori r2, r3, 10
 ori r3, r0, 2
 slt r0, r0, r6 // icount 183
 sle r1, r7, r3 // icount 184
 roli r0, r31, 5
 slt r2, r6, r4 // icount 186
 nop // to align meminst icount 187
 andi r31, r31, 0xfe
 st r6, r31, 6
 lbi r4, 0
 lbi r31, 0
 nop // to align branch icount 192
 bnez r31, 28
 rol r1, r4, r5 // icount 194
 rol r6, r0, r3 // icount 195
 slli r3, r4, 9
 sra r4, r3, r3 // icount 197
 roli r1, r31, 9
 nop // to align meminst icount 199
 andi r4, r4, 0xfe
 ld r3, r4, 10
 rol r2, r4, r2 // icount 202
 slbi r3, 15
 seq r3, r1, r1 // icount 204
 sco r4, r1, r2 // icount 205
 sub r4, r3, r5 // icount 206
 srai r31, r5, 11
 and r1, r3, r3 // icount 208
 ror r1, r0, r6 // icount 209
 sle r1, r6, r2 // icount 210
 srai r3, r5, 8
 sra r1, r6, r7 // icount 212
 rol r1, r1, r7 // icount 213
 addi r3, r2, 7
 ori r6, r1, 15
 andi r31, r31, 0xfe
 ld r0, r31, 12
 sub r3, r1, r6 // icount 218
 and r7, r1, r2 // icount 219
 subi r2, r0, 7
 roli r5, r2, 1
 andi r6, r6, 0xfe
 st r5, r6, 8
 sll r0, r4, r7 // icount 224
 or r0, r1, r2 // icount 225
 j 8
 nop // icount 227
 nop // icount 228
 nop // icount 229
 nop // icount 230
 lbi r31, 0
 lbi r4, 0
 beqz r1, 0
 j 4
 nop // icount 235
 nop // icount 236
 j 32
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
 nop // icount 248
 nop // icount 249
 nop // icount 250
 nop // icount 251
 nop // icount 252
 nop // icount 253
 j 4
 nop // icount 255
 nop // icount 256
 j 12
 nop // icount 258
 nop // icount 259
 nop // icount 260
 nop // icount 261
 nop // icount 262
 nop // icount 263
 j 0
 j 20
 nop // icount 266
 nop // icount 267
 nop // icount 268
 nop // icount 269
 nop // icount 270
 nop // icount 271
 nop // icount 272
 nop // icount 273
 nop // icount 274
 nop // icount 275
 j 2
 nop // icount 277
 lbi r6, 0
 lbi r31, 0
 nop // to align branch icount 280
 beqz r0, 28
 srai r0, r4, 4
 or r2, r0, r6 // icount 283
 rol r3, r4, r0 // icount 284
 nop // to align meminst icount 285
 andi r6, r6, 0xfe
 ld r2, r6, 0
 andi r6, r6, 0xfe
 stu r6, r6, 0
 rol r3, r1, r2 // icount 290
 rori r0, r0, 0
 andi r2, r2, 0xfe
 st r31, r2, 0
 andi r1, r1, 0xfe
 stu r6, r1, 0
 ori r2, r6, 5
 lbi r4, 0
 sub r3, r4, r7 // icount 298
 nop // to align meminst icount 299
 andi r0, r0, 0xfe
 ld r1, r0, 0
 andi r0, r0, 0xfe
 st r0, r0, 10
 andi r1, r1, 0xfe
 stu r4, r1, 14
 slbi r3, 9
 seq r6, r1, r6 // icount 307
 subi r4, r6, 3
 lbi r6, 13
 addi r5, r1, 13
 sle r2, r4, r1 // icount 311
 slli r4, r4, 12
 subi r1, r0, 1
 add r4, r4, r7 // icount 314
 ror r3, r4, r0 // icount 315
 slbi r1, 14
 rol r2, r2, r1 // icount 317
 slt r1, r4, r2 // icount 318
 lbi r3, 0
 lbi r31, 0
 beqz r4, 28
 sle r2, r6, r5 // icount 322
 nop // to align meminst icount 323
 andi r3, r3, 0xfe
 stu r31, r3, 4
 ror r4, r0, r4 // icount 326
 sra r6, r4, r6 // icount 327
 srai r0, r6, 10
 nop // to align meminst icount 329
 andi r6, r6, 0xfe
 ld r2, r6, 10
 rol r1, r1, r0 // icount 332
 addi r31, r2, 5
 sco r7, r7, r4 // icount 334
 srai r6, r4, 1
 andi r5, r5, 0xfe
 stu r2, r5, 6
 lbi r5, 10
 sco r0, r0, r4 // icount 339
 rori r2, r5, 13
 add r4, r3, r6 // icount 341
 rol r3, r1, r3 // icount 342
 sco r1, r6, r7 // icount 343
 sra r6, r7, r2 // icount 344
 or r3, r3, r2 // icount 345
 andi r6, r6, 0xfe
 st r0, r6, 14
 or r3, r6, r0 // icount 348
 srai r31, r0, 3
 ror r0, r2, r6 // icount 350
 sub r2, r3, r5 // icount 351
 andi r5, r5, 0xfe
 ld r2, r5, 2
 sle r6, r0, r7 // icount 354
 slt r1, r5, r6 // icount 355
 andi r31, r0, 14
 j 30
 nop // icount 358
 nop // icount 359
 nop // icount 360
 nop // icount 361
 nop // icount 362
 nop // icount 363
 nop // icount 364
 nop // icount 365
 nop // icount 366
 nop // icount 367
 nop // icount 368
 nop // icount 369
 nop // icount 370
 nop // icount 371
 nop // icount 372
 j 10
 nop // icount 374
 nop // icount 375
 nop // icount 376
 nop // icount 377
 nop // icount 378
 j 32
 nop // icount 380
 nop // icount 381
 nop // icount 382
 nop // icount 383
 nop // icount 384
 nop // icount 385
 nop // icount 386
 nop // icount 387
 nop // icount 388
 nop // icount 389
 nop // icount 390
 nop // icount 391
 nop // icount 392
 nop // icount 393
 nop // icount 394
 nop // icount 395
 j 2
 nop // icount 397
 j 0
 lbi r3, 0
 lbi r6, 0
 bnez r31, 20
 sll r6, r4, r4 // icount 402
 roli r6, r2, 14
 or r6, r6, r3 // icount 404
 slbi r1, 0
 lbi r1, 12
 or r4, r0, r5 // icount 407
 addi r3, r4, 6
 slt r5, r6, r3 // icount 409
 lbi r4, 7
 lbi r2, 2
 lbi r31, 7
 ori r6, r2, 0
 roli r2, r2, 0
 add r6, r5, r0 // icount 415
 andi r4, r4, 0xfe
 ld r4, r4, 6
 subi r4, r4, 3
 seq r6, r3, r2 // icount 419
 andi r6, r6, 0xfe
 st r5, r6, 2
 subi r31, r3, 15
 sll r6, r3, r2 // icount 423
 j 20
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
 lbi r3, 0
 lbi r2, 0
 beqz r3, 8
 slt r6, r0, r7 // icount 438
 seq r1, r6, r3 // icount 439
 rori r0, r1, 5
 ror r2, r0, r7 // icount 441
 sle r1, r0, r2 // icount 442
 slt r6, r5, r4 // icount 443
 lbi r3, 13
 nop // to align meminst icount 445
 andi r4, r4, 0xfe
 ld r2, r4, 4
 j 22
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
 nop // icount 459
 j 16
 nop // icount 461
 nop // icount 462
 nop // icount 463
 nop // icount 464
 nop // icount 465
 nop // icount 466
 nop // icount 467
 nop // icount 468
 lbi r3, 0
 lbi r1, 0
 bnez r6, 0
 lbi r3, 0
 lbi r31, 0
 nop // to align branch icount 474
 beqz r31, 20
 ori r0, r2, 8
 nop // to align meminst icount 477
 andi r0, r0, 0xfe
 ld r0, r0, 6
 slbi r1, 6
 sub r4, r0, r1 // icount 481
 slbi r6, 11
 slli r31, r4, 2
 andi r6, r6, 0xfe
 ld r4, r6, 8
 andi r3, r3, 0xfe
 stu r0, r3, 8
 slbi r6, 9
 sco r1, r3, r5 // icount 489
 andi r2, r2, 0xfe
 st r31, r2, 2
 sle r1, r4, r5 // icount 492
 slbi r5, 14
 seq r0, r1, r1 // icount 494
 add r4, r2, r1 // icount 495
 ori r6, r1, 11
 nop // to align meminst icount 497
 andi r2, r2, 0xfe
 st r6, r2, 6
 sub r1, r3, r3 // icount 500
 and r7, r7, r0 // icount 501
 andi r2, r2, 0xfe
 st r1, r2, 12
 j 6
 nop // icount 505
 nop // icount 506
 nop // icount 507
 lbi r4, 0
 lbi r31, 0
 nop // to align branch icount 510
 beqz r1, 12
 andi r0, r6, 9
 subi r0, r4, 13
 slli r0, r3, 13
 sll r5, r0, r0 // icount 515
 andi r4, r4, 0xfe
 ld r5, r4, 2
 ror r7, r0, r5 // icount 518
 nop // to align meminst icount 519
 andi r1, r1, 0xfe
 st r6, r1, 10
 rori r5, r1, 0
 subi r3, r0, 5
 seq r2, r0, r4 // icount 524
 rol r1, r5, r3 // icount 525
 rori r0, r5, 4
 j 28
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
 nop // icount 540
 nop // icount 541
 j 30
 nop // icount 543
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
 nop // icount 555
 nop // icount 556
 nop // icount 557
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 560
 bnez r0, 20
 and r5, r0, r3 // icount 562
 sub r5, r6, r0 // icount 563
 ori r0, r2, 11
 nop // to align meminst icount 565
 andi r31, r31, 0xfe
 stu r1, r31, 6
 sle r2, r2, r4 // icount 568
 srai r0, r0, 11
 or r1, r6, r0 // icount 570
 addi r4, r4, 1
 ror r5, r4, r5 // icount 572
 slbi r1, 11
 rol r2, r2, r4 // icount 574
 nop // to align meminst icount 575
 andi r4, r4, 0xfe
 st r0, r4, 12
 andi r5, r5, 0xfe
 ld r5, r5, 10
 sco r0, r7, r2 // icount 580
 rol r7, r2, r3 // icount 581
 add r3, r2, r3 // icount 582
 seq r7, r1, r4 // icount 583
 srai r0, r5, 12
 sco r3, r7, r6 // icount 585
 andi r31, r31, 0xfe
 st r2, r31, 10
 lbi r3, 0
 lbi r3, 0
 nop // to align branch icount 590
 bnez r4, 28
 seq r1, r3, r4 // icount 592
 slli r31, r6, 14
 sll r6, r7, r3 // icount 594
 ror r5, r0, r3 // icount 595
 andi r5, r5, 0xfe
 st r1, r5, 10
 andi r4, r4, 0xfe
 ld r0, r4, 14
 addi r0, r2, 3
 nop // to align meminst icount 601
 andi r1, r1, 0xfe
 st r5, r1, 6
 ror r6, r7, r4 // icount 604
 or r1, r6, r1 // icount 605
 sll r7, r5, r2 // icount 606
 andi r3, r4, 4
 and r7, r7, r7 // icount 608
 slbi r1, 6
 rol r5, r4, r4 // icount 610
 sll r2, r4, r7 // icount 611
 or r6, r7, r7 // icount 612
 add r7, r3, r6 // icount 613
 andi r31, r3, 12
 subi r31, r31, 1
 andi r1, r1, 0xfe
 ld r4, r1, 4
 slt r7, r2, r2 // icount 618
 add r4, r3, r7 // icount 619
 slli r31, r2, 0
 add r0, r0, r3 // icount 621
 andi r2, r2, 0xfe
 ld r31, r2, 6
 ror r0, r4, r5 // icount 624
 nop // to align meminst icount 625
 andi r1, r1, 0xfe
 ld r2, r1, 4
 lbi r1, 0
 lbi r31, 0
 nop // to align branch icount 630
 beqz r6, 4
 rol r4, r5, r1 // icount 632
 ror r0, r6, r3 // icount 633
 subi r3, r4, 3
 sle r5, r5, r7 // icount 635
 j 2
 nop // icount 637
 lbi r3, 0
 lbi r1, 0
 nop // to align branch icount 640
 bnez r1, 0
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 644
 beqz r1, 28
 ror r3, r1, r1 // icount 646
 nop // to align meminst icount 647
 andi r6, r6, 0xfe
 st r1, r6, 8
 rori r31, r4, 4
 addi r0, r3, 8
 or r7, r2, r6 // icount 652
 subi r6, r3, 13
 roli r2, r0, 15
 and r1, r1, r0 // icount 655
 andi r3, r3, 0xfe
 ld r5, r3, 2
 and r4, r1, r2 // icount 658
 sub r2, r4, r3 // icount 659
 rori r2, r4, 2
 seq r4, r4, r6 // icount 661
 slbi r2, 13
 nop // to align meminst icount 663
 andi r3, r3, 0xfe
 stu r4, r3, 14
 sll r4, r3, r6 // icount 666
 slli r4, r0, 7
 andi r5, r5, 0xfe
 stu r31, r5, 12
 lbi r1, 0
 sub r1, r7, r6 // icount 671
 or r2, r1, r0 // icount 672
 rol r7, r3, r1 // icount 673
 and r1, r6, r7 // icount 674
 sll r2, r1, r7 // icount 675
 addi r2, r1, 6
 addi r2, r2, 5
 ror r6, r6, r6 // icount 678
 srai r5, r2, 12
 lbi r2, 0
 lbi r4, 0
 nop // to align branch icount 682
 bnez r0, 28
 subi r3, r1, 13
 ror r5, r7, r5 // icount 685
 subi r3, r6, 3
 slli r3, r31, 5
 sll r3, r1, r0 // icount 688
 sra r5, r1, r3 // icount 689
 sco r5, r0, r4 // icount 690
 add r3, r4, r5 // icount 691
 and r0, r6, r3 // icount 692
 lbi r3, 3
 slli r6, r2, 8
 sub r3, r7, r3 // icount 695
 lbi r2, 10
 rol r6, r3, r0 // icount 697
 sub r4, r4, r2 // icount 698
 rol r0, r6, r5 // icount 699
 sra r7, r2, r4 // icount 700
 and r5, r4, r7 // icount 701
 rol r7, r1, r6 // icount 702
 slt r1, r1, r1 // icount 703
 andi r4, r4, 0xfe
 stu r6, r4, 4
 andi r4, r4, 0xfe
 stu r0, r4, 0
 roli r4, r31, 1
 sra r3, r0, r1 // icount 709
 sco r1, r1, r0 // icount 710
 sll r3, r3, r0 // icount 711
 slt r5, r5, r0 // icount 712
 slt r6, r1, r4 // icount 713
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 716
 beqz r3, 24
 sll r3, r7, r6 // icount 718
 nop // to align meminst icount 719
 andi r31, r31, 0xfe
 stu r1, r31, 14
 ori r31, r2, 1
 rori r2, r1, 15
 slli r3, r5, 3
 ori r3, r3, 10
 add r0, r3, r1 // icount 726
 addi r0, r4, 10
 sll r3, r4, r0 // icount 728
 lbi r0, 6
 ori r2, r5, 6
 subi r31, r31, 12
 andi r4, r4, 0xfe
 st r5, r4, 12
 addi r2, r1, 6
 seq r0, r1, r1 // icount 735
 slli r0, r3, 15
 or r6, r5, r4 // icount 737
 sra r1, r0, r1 // icount 738
 rori r31, r4, 10
 and r4, r5, r5 // icount 740
 slli r1, r3, 9
 slli r6, r3, 0
 sco r0, r1, r5 // icount 743
 srai r3, r4, 8
 lbi r1, 0
 lbi r31, 0
 bnez r31, 4
 slbi r1, 5
 sco r3, r0, r4 // icount 749
 and r1, r1, r5 // icount 750
 slli r1, r5, 11
 j 16
 nop // icount 753
 nop // icount 754
 nop // icount 755
 nop // icount 756
 nop // icount 757
 nop // icount 758
 nop // icount 759
 nop // icount 760
 lbi r2, 0
 lbi r6, 0
 bnez r5, 4
 or r0, r3, r3 // icount 764
 ror r4, r4, r4 // icount 765
 add r5, r2, r7 // icount 766
 and r2, r2, r7 // icount 767
 j 26
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
 nop // icount 779
 nop // icount 780
 nop // icount 781
 j 2
 nop // icount 783
 j 28
 nop // icount 785
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
 nop // icount 796
 nop // icount 797
 nop // icount 798
 j 26
 nop // icount 800
 nop // icount 801
 nop // icount 802
 nop // icount 803
 nop // icount 804
 nop // icount 805
 nop // icount 806
 nop // icount 807
 nop // icount 808
 nop // icount 809
 nop // icount 810
 nop // icount 811
 nop // icount 812
 j 28
 nop // icount 814
 nop // icount 815
 nop // icount 816
 nop // icount 817
 nop // icount 818
 nop // icount 819
 nop // icount 820
 nop // icount 821
 nop // icount 822
 nop // icount 823
 nop // icount 824
 nop // icount 825
 nop // icount 826
 nop // icount 827
 lbi r3, 0
 lbi r2, 0
 nop // to align branch icount 830
 beqz r31, 0
 j 22
 nop // icount 833
 nop // icount 834
 nop // icount 835
 nop // icount 836
 nop // icount 837
 nop // icount 838
 nop // icount 839
 nop // icount 840
 nop // icount 841
 nop // icount 842
 nop // icount 843
 lbi r4, 0
 lbi r3, 0
 nop // to align branch icount 846
 bnez r0, 4
 or r3, r6, r0 // icount 848
 sra r5, r1, r4 // icount 849
 sco r1, r5, r0 // icount 850
 sll r6, r4, r2 // icount 851
 j 8
 nop // icount 853
 nop // icount 854
 nop // icount 855
 nop // icount 856
 lbi r5, 0
 lbi r3, 0
 beqz r3, 16
 rori r1, r6, 15
 srai r4, r1, 8
 andi r4, r4, 0xfe
 st r5, r4, 2
 sra r0, r1, r3 // icount 864
 slli r4, r4, 3
 addi r1, r4, 13
 lbi r5, 14
 seq r5, r6, r1 // icount 868
 or r4, r0, r5 // icount 869
 and r7, r5, r1 // icount 870
 sub r6, r7, r3 // icount 871
 sub r4, r2, r3 // icount 872
 ror r7, r3, r7 // icount 873
 rol r3, r5, r4 // icount 874
 ori r0, r6, 7
 rori r6, r5, 7
 j 6
 nop // icount 878
 nop // icount 879
 nop // icount 880
 j 20
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
 lbi r3, 0
 lbi r1, 0
 nop // to align branch icount 894
 bnez r6, 12
 sco r3, r4, r1 // icount 896
 sub r3, r4, r5 // icount 897
 lbi r3, 2
 sco r7, r0, r6 // icount 899
 lbi r3, 9
 add r5, r7, r1 // icount 901
 seq r1, r1, r1 // icount 902
 or r2, r2, r4 // icount 903
 sll r1, r6, r3 // icount 904
 add r5, r3, r3 // icount 905
 slli r2, r6, 9
 add r2, r7, r7 // icount 907
 j 16
 nop // icount 909
 nop // icount 910
 nop // icount 911
 nop // icount 912
 nop // icount 913
 nop // icount 914
 nop // icount 915
 nop // icount 916
 j 18
 nop // icount 918
 nop // icount 919
 nop // icount 920
 nop // icount 921
 nop // icount 922
 nop // icount 923
 nop // icount 924
 nop // icount 925
 nop // icount 926
 j 10
 nop // icount 928
 nop // icount 929
 nop // icount 930
 nop // icount 931
 nop // icount 932
 j 18
 nop // icount 934
 nop // icount 935
 nop // icount 936
 nop // icount 937
 nop // icount 938
 nop // icount 939
 nop // icount 940
 nop // icount 941
 nop // icount 942
 j 0
 j 16
 nop // icount 945
 nop // icount 946
 nop // icount 947
 nop // icount 948
 nop // icount 949
 nop // icount 950
 nop // icount 951
 nop // icount 952
 lbi r4, 0
 lbi r31, 0
 bnez r2, 28
 andi r1, r1, 0xfe
 st r5, r1, 10
 seq r2, r3, r5 // icount 958
 slt r4, r0, r4 // icount 959
 andi r3, r31, 1
 nop // to align meminst icount 961
 andi r2, r2, 0xfe
 stu r6, r2, 0
 srai r4, r3, 3
 sco r6, r1, r1 // icount 965
 subi r4, r0, 5
 sll r1, r7, r3 // icount 967
 andi r3, r3, 0xfe
 stu r6, r3, 10
 ori r0, r6, 7
 add r7, r7, r6 // icount 971
 slbi r3, 8
 and r2, r2, r0 // icount 973
 ori r0, r0, 8
 lbi r1, 3
 subi r4, r31, 7
 nop // to align meminst icount 977
 andi r1, r1, 0xfe
 ld r5, r1, 12
 rori r2, r5, 2
 seq r3, r2, r2 // icount 981
 ori r0, r1, 10
 sco r4, r0, r5 // icount 983
 andi r6, r6, 0xfe
 stu r31, r6, 14
 rori r6, r5, 15
 ror r1, r4, r5 // icount 987
 sub r4, r7, r7 // icount 988
 roli r5, r1, 5
 slli r5, r4, 4
 lbi r4, 0
 lbi r3, 0
 bnez r0, 4
 add r5, r6, r5 // icount 994
 roli r0, r4, 11
 rol r7, r0, r6 // icount 996
 or r0, r3, r2 // icount 997
 lbi r1, 0
 lbi r5, 0
 nop // to align branch icount 1000
 beqz r3, 12
 add r0, r3, r7 // icount 1002
 sll r7, r7, r0 // icount 1003
 sco r2, r6, r4 // icount 1004
 slt r1, r1, r1 // icount 1005
 lbi r0, 12
 addi r4, r6, 8
 srai r31, r6, 11
 nop // to align meminst icount 1009
 andi r0, r0, 0xfe
 stu r5, r0, 14
 sle r3, r0, r3 // icount 1012
 sll r6, r2, r4 // icount 1013
 sra r4, r6, r2 // icount 1014
 roli r1, r1, 15
 j 14
 nop // icount 1017
 nop // icount 1018
 nop // icount 1019
 nop // icount 1020
 nop // icount 1021
 nop // icount 1022
 nop // icount 1023
 j 12
 nop // icount 1025
 nop // icount 1026
 nop // icount 1027
 nop // icount 1028
 nop // icount 1029
 nop // icount 1030
 j 32
 nop // icount 1032
 nop // icount 1033
 nop // icount 1034
 nop // icount 1035
 nop // icount 1036
 nop // icount 1037
 nop // icount 1038
 nop // icount 1039
 nop // icount 1040
 nop // icount 1041
 nop // icount 1042
 nop // icount 1043
 nop // icount 1044
 nop // icount 1045
 nop // icount 1046
 nop // icount 1047
 j 22
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
 nop // icount 1059
 lbi r5, 0
 lbi r6, 0
 nop // to align branch icount 1062
 bnez r0, 16
 andi r6, r6, 0xfe
 ld r0, r6, 12
 or r2, r1, r2 // icount 1066
 addi r2, r31, 0
 add r3, r7, r1 // icount 1068
 nop // to align meminst icount 1069
 andi r6, r6, 0xfe
 stu r5, r6, 2
 or r1, r2, r4 // icount 1072
 rori r2, r31, 6
 andi r3, r3, 0xfe
 st r3, r3, 8
 and r3, r1, r7 // icount 1076
 nop // to align meminst icount 1077
 andi r1, r1, 0xfe
 stu r2, r1, 10
 srai r3, r3, 0
 roli r0, r2, 0
 sra r1, r2, r5 // icount 1082
 sll r1, r6, r2 // icount 1083
 and r2, r0, r7 // icount 1084
 ror r0, r4, r6 // icount 1085
 j 14
 nop // icount 1087
 nop // icount 1088
 nop // icount 1089
 nop // icount 1090
 nop // icount 1091
 nop // icount 1092
 nop // icount 1093
 j 6
 nop // icount 1095
 nop // icount 1096
 nop // icount 1097
 lbi r2, 0
 lbi r2, 0
 nop // to align branch icount 1100
 bnez r5, 12
 slli r31, r1, 13
 nop // to align meminst icount 1103
 andi r0, r0, 0xfe
 ld r4, r0, 6
 ror r6, r0, r1 // icount 1106
 seq r4, r1, r3 // icount 1107
 andi r6, r6, 0xfe
 st r0, r6, 10
 rori r5, r2, 7
 addi r5, r2, 13
 sle r5, r6, r7 // icount 1112
 slbi r6, 11
 addi r4, r31, 4
 slbi r1, 15
 rol r7, r0, r6 // icount 1116
 lbi r5, 0
 lbi r1, 0
 beqz r4, 20
 slli r5, r3, 10
 nop // to align meminst icount 1121
 andi r2, r2, 0xfe
 st r3, r2, 14
 add r4, r2, r5 // icount 1124
 nop // to align meminst icount 1125
 andi r0, r0, 0xfe
 ld r2, r0, 6
 rol r2, r6, r0 // icount 1128
 andi r4, r0, 5
 rori r1, r3, 5
 nop // to align meminst icount 1131
 andi r0, r0, 0xfe
 stu r0, r0, 2
 slt r1, r2, r3 // icount 1134
 subi r2, r2, 11
 rori r3, r1, 7
 ror r5, r7, r7 // icount 1137
 rol r1, r7, r1 // icount 1138
 slbi r6, 12
 slli r4, r2, 3
 andi r2, r0, 1
 addi r2, r1, 12
 ori r0, r2, 0
 ori r0, r5, 4
 srai r1, r0, 3
 lbi r2, 0
 lbi r2, 0
 nop // to align branch icount 1148
 beqz r5, 12
 andi r6, r6, 0xfe
 st r0, r6, 6
 slbi r31, 9
 sra r4, r6, r0 // icount 1153
 seq r6, r4, r3 // icount 1154
 sub r2, r0, r4 // icount 1155
 ori r2, r2, 9
 addi r4, r4, 3
 roli r3, r2, 1
 seq r0, r2, r6 // icount 1159
 sra r1, r7, r2 // icount 1160
 ror r1, r4, r7 // icount 1161
 addi r4, r2, 13
 j 26
 nop // icount 1164
 nop // icount 1165
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
 lbi r1, 0
 lbi r0, 0
 bnez r0, 0
 lbi r3, 0
 lbi r3, 0
 nop // to align branch icount 1182
 beqz r5, 32
 subi r2, r31, 5
 sub r1, r3, r4 // icount 1185
 slbi r6, 14
 add r5, r7, r1 // icount 1187
 seq r3, r1, r2 // icount 1188
 subi r2, r3, 13
 andi r1, r1, 0xfe
 st r6, r1, 4
 addi r3, r5, 13
 sra r0, r3, r6 // icount 1193
 sco r1, r1, r4 // icount 1194
 slli r0, r5, 7
 andi r4, r4, 0xfe
 ld r1, r4, 2
 addi r1, r0, 11
 nop // to align meminst icount 1199
 andi r31, r31, 0xfe
 st r3, r31, 10
 or r6, r0, r5 // icount 1202
 sle r6, r5, r5 // icount 1203
 add r1, r2, r1 // icount 1204
 and r0, r6, r1 // icount 1205
 rori r1, r5, 1
 slli r0, r3, 5
 seq r3, r7, r6 // icount 1208
 nop // to align meminst icount 1209
 andi r6, r6, 0xfe
 stu r0, r6, 14
 and r0, r5, r2 // icount 1212
 sll r4, r4, r3 // icount 1213
 rol r7, r5, r5 // icount 1214
 slli r1, r31, 10
 slbi r6, 10
 ori r2, r1, 0
 srai r4, r5, 0
 nop // to align meminst icount 1219
 andi r5, r5, 0xfe
 stu r5, r5, 12
 sll r0, r3, r4 // icount 1222
 ori r5, r0, 2
 j 10
 nop // icount 1225
 nop // icount 1226
 nop // icount 1227
 nop // icount 1228
 nop // icount 1229
 lbi r5, 0
 lbi r1, 0
 nop // to align branch icount 1232
 beqz r3, 0
 lbi r4, 0
 lbi r3, 0
 nop // to align branch icount 1236
 bnez r5, 16
 slli r1, r6, 5
 sll r0, r3, r6 // icount 1239
 lbi r3, 11
 roli r0, r2, 12
 rol r5, r5, r4 // icount 1242
 rori r5, r4, 1
 sra r4, r3, r5 // icount 1244
 or r3, r4, r4 // icount 1245
 and r1, r2, r1 // icount 1246
 addi r2, r6, 11
 slbi r31, 4
 subi r2, r6, 2
 add r7, r5, r0 // icount 1250
 sle r1, r1, r7 // icount 1251
 and r1, r1, r3 // icount 1252
 srai r2, r3, 7
 j 6
 nop // icount 1255
 nop // icount 1256
 nop // icount 1257
 j 0
 lbi r2, 0
 lbi r2, 0
 bnez r1, 24
 slt r6, r3, r2 // icount 1262
 roli r4, r31, 15
 rori r5, r1, 12
 nop // to align meminst icount 1265
 andi r31, r31, 0xfe
 ld r6, r31, 12
 lbi r4, 14
 or r7, r1, r1 // icount 1269
 ror r6, r2, r5 // icount 1270
 sll r1, r6, r2 // icount 1271
 slbi r2, 9
 lbi r2, 15
 rori r5, r5, 6
 subi r5, r2, 5
 sra r3, r2, r5 // icount 1276
 andi r2, r5, 6
 ori r1, r3, 11
 sco r3, r1, r2 // icount 1279
 sub r6, r3, r2 // icount 1280
 ror r5, r7, r1 // icount 1281
 subi r4, r31, 7
 or r3, r7, r5 // icount 1283
 sll r6, r5, r2 // icount 1284
 srai r0, r1, 12
 rol r1, r7, r5 // icount 1286
 ori r0, r5, 11
 lbi r6, 0
 lbi r1, 0
 nop // to align branch icount 1290
 beqz r5, 8
 sll r6, r0, r1 // icount 1292
 seq r6, r1, r2 // icount 1293
 or r1, r3, r1 // icount 1294
 or r4, r3, r0 // icount 1295
 andi r2, r2, 0xfe
 ld r2, r2, 6
 slt r2, r1, r5 // icount 1298
 sle r0, r3, r3 // icount 1299
 sco r4, r7, r6 // icount 1300
 j 12
 nop // icount 1302
 nop // icount 1303
 nop // icount 1304
 nop // icount 1305
 nop // icount 1306
 nop // icount 1307
 lbi r6, 0
 lbi r5, 0
 nop // to align branch icount 1310
 beqz r6, 28
 ror r5, r3, r1 // icount 1312
 sco r3, r2, r5 // icount 1313
 sra r7, r2, r3 // icount 1314
 srai r0, r5, 8
 sll r2, r4, r2 // icount 1316
 sra r5, r4, r3 // icount 1317
 andi r6, r6, 0xfe
 ld r0, r6, 4
 andi r2, r6, 12
 nop // to align meminst icount 1321
 andi r3, r3, 0xfe
 ld r6, r3, 0
 srai r31, r3, 13
 slt r3, r0, r6 // icount 1325
 sle r5, r6, r2 // icount 1326
 lbi r6, 6
 lbi r2, 12
 sll r5, r4, r2 // icount 1329
 andi r3, r3, 0xfe
 ld r1, r3, 4
 add r4, r2, r4 // icount 1332
 sll r6, r0, r1 // icount 1333
 or r6, r0, r5 // icount 1334
 nop // to align meminst icount 1335
 andi r6, r6, 0xfe
 st r0, r6, 2
 ror r0, r4, r3 // icount 1338
 sle r2, r5, r4 // icount 1339
 ror r2, r0, r4 // icount 1340
 sle r1, r1, r6 // icount 1341
 andi r6, r3, 6
 addi r2, r5, 9
 sle r0, r6, r2 // icount 1344
 rol r7, r2, r6 // icount 1345
 lbi r0, 0
 lbi r3, 0
 nop // to align branch icount 1348
 bnez r4, 12
 sub r5, r2, r1 // icount 1350
 ori r4, r1, 8
 roli r31, r5, 7
 and r0, r1, r0 // icount 1353
 seq r5, r4, r3 // icount 1354
 roli r0, r4, 9
 sub r7, r1, r4 // icount 1356
 sub r3, r3, r5 // icount 1357
 sra r0, r7, r7 // icount 1358
 slli r6, r3, 11
 rol r7, r2, r7 // icount 1360
 andi r5, r2, 6
 j 8
 nop // icount 1363
 nop // icount 1364
 nop // icount 1365
 nop // icount 1366
 halt // icount 1367
