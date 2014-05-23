 // seed 3
 lbi r0, 200
 slbi r0, 221
 lbi r1, 79
 slbi r1, 68
 lbi r2, 138
 slbi r2, 111
 lbi r3, 45
 slbi r3, 59
 lbi r4, 128
 slbi r4, 155
 lbi r5, 41
 slbi r5, 3
 lbi r6, 238
 slbi r6, 172
 lbi r31, 16
 slbi r31, 232
 lbi r31, 0
 lbi r2, 0
 nop // to align branch icount 18
 beqz r31, 12
 slbi r0, 15
 sra r6, r1, r1 // icount 21
 slt r2, r1, r6 // icount 22
 subi r1, r5, 11
 slt r0, r2, r4 // icount 24
 srai r4, r4, 10
 or r4, r1, r2 // icount 26
 nop // to align meminst icount 27
 andi r4, r4, 0xfe
 st r5, r4, 10
 sra r1, r2, r2 // icount 30
 ror r1, r1, r4 // icount 31
 rori r4, r1, 12
 sub r2, r6, r6 // icount 33
 lbi r3, 0
 lbi r6, 0
 nop // to align branch icount 36
 beqz r5, 0
 j 8
 nop // icount 39
 nop // icount 40
 nop // icount 41
 nop // icount 42
 j 30
 nop // icount 44
 nop // icount 45
 nop // icount 46
 nop // icount 47
 nop // icount 48
 nop // icount 49
 nop // icount 50
 nop // icount 51
 nop // icount 52
 nop // icount 53
 nop // icount 54
 nop // icount 55
 nop // icount 56
 nop // icount 57
 nop // icount 58
 lbi r5, 0
 lbi r5, 0
 bnez r2, 20
 andi r1, r1, 0xfe
 st r3, r1, 4
 roli r4, r1, 9
 subi r1, r2, 14
 rori r0, r4, 14
 sra r6, r7, r4 // icount 67
 slli r0, r0, 15
 nop // to align meminst icount 69
 andi r5, r5, 0xfe
 ld r0, r5, 0
 sub r0, r0, r4 // icount 72
 rori r31, r4, 11
 slt r6, r0, r2 // icount 74
 lbi r4, 5
 addi r0, r4, 11
 sll r4, r0, r7 // icount 77
 roli r1, r31, 6
 slli r3, r3, 3
 slt r0, r4, r2 // icount 80
 slbi r3, 11
 ori r1, r3, 9
 sub r1, r3, r5 // icount 83
 sle r2, r5, r4 // icount 84
 lbi r31, 0
 lbi r6, 0
 beqz r0, 28
 andi r5, r5, 0xfe
 ld r4, r5, 6
 srai r4, r1, 11
 sub r1, r7, r5 // icount 91
 andi r3, r3, 0xfe
 ld r0, r3, 0
 srai r0, r0, 2
 andi r3, r31, 13
 sub r3, r4, r2 // icount 96
 nop // to align meminst icount 97
 andi r4, r4, 0xfe
 st r2, r4, 12
 ori r2, r31, 5
 nop // to align meminst icount 101
 andi r31, r31, 0xfe
 stu r1, r31, 2
 seq r0, r6, r4 // icount 104
 sco r7, r7, r4 // icount 105
 seq r7, r1, r6 // icount 106
 nop // to align meminst icount 107
 andi r0, r0, 0xfe
 ld r4, r0, 10
 srai r4, r5, 4
 ror r3, r1, r5 // icount 111
 srai r2, r1, 9
 seq r3, r2, r7 // icount 113
 sra r2, r7, r4 // icount 114
 roli r0, r2, 13
 lbi r2, 7
 slt r6, r7, r1 // icount 117
 slt r3, r2, r0 // icount 118
 sub r5, r7, r1 // icount 119
 sub r6, r5, r3 // icount 120
 nop // to align meminst icount 121
 andi r1, r1, 0xfe
 stu r6, r1, 12
 and r7, r3, r7 // icount 124
 roli r6, r0, 0
 lbi r2, 0
 lbi r6, 0
 nop // to align branch icount 128
 bnez r4, 12
 sra r1, r4, r6 // icount 130
 add r2, r0, r5 // icount 131
 roli r1, r4, 7
 lbi r2, 7
 slli r2, r3, 2
 sll r4, r0, r4 // icount 135
 seq r0, r2, r3 // icount 136
 and r5, r2, r4 // icount 137
 or r3, r2, r7 // icount 138
 roli r5, r5, 11
 seq r5, r1, r6 // icount 140
 andi r2, r6, 8
 j 16
 nop // icount 143
 nop // icount 144
 nop // icount 145
 nop // icount 146
 nop // icount 147
 nop // icount 148
 nop // icount 149
 nop // icount 150
 lbi r0, 0
 lbi r1, 0
 bnez r3, 8
 sll r4, r2, r6 // icount 154
 or r6, r1, r7 // icount 155
 ror r5, r5, r5 // icount 156
 roli r6, r1, 14
 addi r1, r31, 2
 nop // to align meminst icount 159
 andi r6, r6, 0xfe
 ld r0, r6, 4
 sra r3, r1, r5 // icount 162
 sco r2, r5, r0 // icount 163
 j 30
 nop // icount 165
 nop // icount 166
 nop // icount 167
 nop // icount 168
 nop // icount 169
 nop // icount 170
 nop // icount 171
 nop // icount 172
 nop // icount 173
 nop // icount 174
 nop // icount 175
 nop // icount 176
 nop // icount 177
 nop // icount 178
 nop // icount 179
 lbi r5, 0
 lbi r4, 0
 nop // to align branch icount 182
 bnez r2, 20
 lbi r31, 1
 nop // to align meminst icount 185
 andi r2, r2, 0xfe
 ld r31, r2, 14
 andi r3, r6, 13
 sco r2, r4, r3 // icount 189
 sra r6, r6, r5 // icount 190
 or r3, r7, r3 // icount 191
 or r1, r2, r4 // icount 192
 and r2, r3, r5 // icount 193
 sco r7, r1, r3 // icount 194
 subi r0, r4, 7
 slbi r0, 12
 sll r5, r3, r3 // icount 197
 srai r2, r1, 12
 sll r3, r3, r2 // icount 199
 slli r6, r1, 4
 nop // to align meminst icount 201
 andi r0, r0, 0xfe
 st r4, r0, 12
 sra r3, r7, r7 // icount 204
 sco r6, r7, r2 // icount 205
 subi r0, r0, 12
 slt r3, r6, r6 // icount 207
 j 22
 nop // icount 209
 nop // icount 210
 nop // icount 211
 nop // icount 212
 nop // icount 213
 nop // icount 214
 nop // icount 215
 nop // icount 216
 nop // icount 217
 nop // icount 218
 nop // icount 219
 lbi r3, 0
 lbi r0, 0
 nop // to align branch icount 222
 bnez r6, 28
 andi r0, r0, 0xfe
 stu r5, r0, 0
 slt r4, r7, r3 // icount 226
 nop // to align meminst icount 227
 andi r5, r5, 0xfe
 ld r4, r5, 4
 addi r4, r5, 13
 slli r31, r6, 3
 andi r31, r31, 0xfe
 stu r0, r31, 12
 sub r6, r1, r3 // icount 234
 sra r4, r7, r6 // icount 235
 add r5, r0, r3 // icount 236
 slt r0, r0, r7 // icount 237
 sub r0, r0, r0 // icount 238
 subi r4, r31, 1
 ori r31, r1, 1
 and r5, r1, r6 // icount 241
 srai r2, r3, 6
 add r2, r6, r1 // icount 243
 slbi r31, 0
 sra r2, r6, r0 // icount 245
 sll r4, r1, r3 // icount 246
 ori r31, r2, 12
 ror r6, r3, r2 // icount 248
 or r6, r5, r4 // icount 249
 subi r5, r4, 7
 add r3, r7, r7 // icount 251
 ori r2, r0, 10
 sub r5, r7, r2 // icount 253
 subi r1, r5, 10
 sll r0, r6, r0 // icount 255
 lbi r2, 0
 lbi r1, 0
 nop // to align branch icount 258
 bnez r2, 20
 slt r7, r3, r4 // icount 260
 sle r7, r5, r1 // icount 261
 slli r4, r1, 1
 slbi r1, 9
 addi r0, r6, 6
 sll r6, r1, r4 // icount 265
 andi r1, r1, 0xfe
 ld r31, r1, 2
 rori r0, r0, 12
 ori r1, r2, 4
 sco r3, r1, r1 // icount 270
 and r7, r0, r0 // icount 271
 roli r31, r6, 5
 or r1, r3, r1 // icount 273
 andi r5, r5, 6
 addi r3, r5, 9
 roli r5, r0, 6
 rol r1, r5, r1 // icount 277
 or r4, r6, r5 // icount 278
 ror r0, r2, r1 // icount 279
 sco r2, r4, r7 // icount 280
 j 18
 nop // icount 282
 nop // icount 283
 nop // icount 284
 nop // icount 285
 nop // icount 286
 nop // icount 287
 nop // icount 288
 nop // icount 289
 nop // icount 290
 lbi r4, 0
 lbi r2, 0
 bnez r0, 20
 or r3, r3, r4 // icount 294
 slt r4, r1, r5 // icount 295
 and r1, r0, r1 // icount 296
 roli r0, r0, 6
 addi r5, r6, 13
 nop // to align meminst icount 299
 andi r0, r0, 0xfe
 ld r6, r0, 14
 sub r6, r4, r7 // icount 302
 seq r4, r2, r0 // icount 303
 lbi r0, 6
 sll r5, r1, r7 // icount 305
 sll r1, r4, r3 // icount 306
 andi r3, r1, 2
 andi r3, r2, 9
 seq r7, r0, r5 // icount 309
 slli r3, r0, 14
 ori r31, r4, 8
 ror r2, r7, r5 // icount 312
 sle r4, r2, r2 // icount 313
 slli r1, r6, 7
 slbi r5, 6
 lbi r3, 0
 lbi r31, 0
 nop // to align branch icount 318
 bnez r6, 24
 slli r6, r2, 7
 lbi r1, 4
 seq r2, r6, r0 // icount 322
 or r3, r5, r4 // icount 323
 subi r5, r5, 14
 rol r3, r7, r5 // icount 325
 ori r5, r4, 8
 sub r5, r5, r4 // icount 327
 subi r6, r3, 6
 slt r0, r4, r2 // icount 329
 rol r7, r0, r6 // icount 330
 nop // to align meminst icount 331
 andi r2, r2, 0xfe
 stu r6, r2, 8
 slli r1, r1, 4
 sra r7, r3, r4 // icount 335
 slbi r4, 2
 and r4, r7, r3 // icount 337
 roli r5, r5, 10
 srai r3, r2, 11
 rol r3, r0, r2 // icount 340
 nop // to align meminst icount 341
 andi r5, r5, 0xfe
 stu r2, r5, 8
 or r1, r5, r2 // icount 344
 seq r1, r4, r5 // icount 345
 slli r2, r0, 1
 addi r3, r5, 1
 j 26
 nop // icount 349
 nop // icount 350
 nop // icount 351
 nop // icount 352
 nop // icount 353
 nop // icount 354
 nop // icount 355
 nop // icount 356
 nop // icount 357
 nop // icount 358
 nop // icount 359
 nop // icount 360
 nop // icount 361
 lbi r6, 0
 lbi r1, 0
 nop // to align branch icount 364
 beqz r4, 16
 srai r1, r4, 0
 and r4, r0, r4 // icount 367
 sco r4, r0, r5 // icount 368
 rori r0, r3, 4
 sle r5, r5, r2 // icount 370
 andi r6, r0, 6
 slt r3, r2, r3 // icount 372
 sco r1, r5, r3 // icount 373
 ror r1, r1, r3 // icount 374
 sle r0, r2, r3 // icount 375
 and r2, r0, r4 // icount 376
 seq r4, r2, r4 // icount 377
 addi r3, r0, 10
 rori r31, r31, 3
 add r5, r1, r2 // icount 380
 slt r0, r6, r1 // icount 381
 lbi r4, 0
 lbi r0, 0
 nop // to align branch icount 384
 bnez r0, 8
 andi r4, r4, 2
 ror r0, r1, r6 // icount 387
 subi r4, r4, 12
 sll r0, r1, r7 // icount 389
 sco r0, r1, r3 // icount 390
 nop // to align meminst icount 391
 andi r3, r3, 0xfe
 st r4, r3, 12
 addi r2, r31, 0
 ror r0, r6, r0 // icount 395
 lbi r4, 0
 lbi r6, 0
 nop // to align branch icount 398
 bnez r6, 28
 slli r1, r4, 1
 nop // to align meminst icount 401
 andi r3, r3, 0xfe
 st r6, r3, 14
 sll r0, r1, r5 // icount 404
 nop // to align meminst icount 405
 andi r5, r5, 0xfe
 st r4, r5, 12
 sub r6, r4, r7 // icount 408
 sll r5, r2, r1 // icount 409
 slli r5, r5, 2
 sco r2, r5, r6 // icount 411
 slli r0, r3, 1
 srai r6, r6, 1
 sra r1, r4, r7 // icount 414
 sub r3, r4, r7 // icount 415
 and r7, r1, r1 // icount 416
 or r1, r6, r6 // icount 417
 slli r0, r1, 8
 lbi r31, 11
 andi r0, r0, 0xfe
 st r5, r0, 2
 subi r31, r5, 7
 addi r31, r5, 2
 slbi r0, 7
 andi r1, r4, 0
 slt r6, r5, r3 // icount 426
 lbi r31, 6
 srai r0, r1, 11
 slli r0, r6, 6
 sub r0, r7, r6 // icount 430
 slli r3, r4, 3
 slt r0, r6, r6 // icount 432
 j 30
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
 nop // icount 444
 nop // icount 445
 nop // icount 446
 nop // icount 447
 nop // icount 448
 lbi r0, 0
 lbi r4, 0
 beqz r31, 0
 lbi r2, 0
 lbi r6, 0
 nop // to align branch icount 454
 bnez r3, 28
 andi r3, r3, 0xfe
 ld r2, r3, 4
 sle r1, r6, r1 // icount 458
 sll r2, r0, r2 // icount 459
 rol r7, r1, r5 // icount 460
 ror r0, r4, r2 // icount 461
 sco r0, r7, r4 // icount 462
 ror r2, r5, r6 // icount 463
 sub r6, r2, r3 // icount 464
 subi r4, r6, 6
 sub r6, r1, r5 // icount 466
 addi r2, r4, 8
 and r2, r3, r4 // icount 468
 nop // to align meminst icount 469
 andi r6, r6, 0xfe
 stu r4, r6, 12
 andi r31, r31, 0xfe
 stu r6, r31, 4
 sle r4, r7, r7 // icount 474
 and r6, r2, r0 // icount 475
 sco r0, r0, r3 // icount 476
 rori r3, r6, 15
 sub r3, r0, r6 // icount 478
 rol r7, r6, r2 // icount 479
 sle r5, r3, r0 // icount 480
 seq r5, r5, r4 // icount 481
 andi r2, r2, 0xfe
 stu r31, r2, 14
 sle r2, r6, r4 // icount 484
 add r4, r7, r1 // icount 485
 ori r0, r5, 11
 and r7, r4, r3 // icount 487
 rori r1, r31, 14
 lbi r1, 0
 lbi r0, 0
 bnez r3, 20
 and r1, r0, r7 // icount 492
 andi r0, r31, 8
 and r5, r4, r7 // icount 494
 nop // to align meminst icount 495
 andi r31, r31, 0xfe
 stu r5, r31, 12
 andi r31, r31, 0xfe
 ld r3, r31, 14
 ori r4, r1, 12
 sle r3, r1, r4 // icount 501
 srai r1, r0, 0
 andi r2, r1, 13
 sle r7, r4, r2 // icount 504
 sub r4, r7, r7 // icount 505
 sra r2, r0, r4 // icount 506
 nop // to align meminst icount 507
 andi r6, r6, 0xfe
 st r31, r6, 6
 add r7, r1, r5 // icount 510
 sco r6, r6, r5 // icount 511
 ori r1, r3, 1
 slbi r2, 1
 andi r3, r3, 0xfe
 stu r1, r3, 4
 sco r1, r6, r7 // icount 516
 lbi r5, 2
 lbi r0, 0
 lbi r1, 0
 nop // to align branch icount 520
 bnez r2, 8
 seq r2, r1, r4 // icount 522
 ror r5, r0, r0 // icount 523
 seq r4, r2, r5 // icount 524
 sll r0, r7, r4 // icount 525
 andi r5, r5, 0xfe
 st r2, r5, 4
 andi r5, r5, 0xfe
 stu r31, r5, 14
 lbi r4, 11
 rol r4, r5, r3 // icount 531
 j 32
 nop // icount 533
 nop // icount 534
 nop // icount 535
 nop // icount 536
 nop // icount 537
 nop // icount 538
 nop // icount 539
 nop // icount 540
 nop // icount 541
 nop // icount 542
 nop // icount 543
 nop // icount 544
 nop // icount 545
 nop // icount 546
 nop // icount 547
 nop // icount 548
 j 4
 nop // icount 550
 nop // icount 551
 lbi r5, 0
 lbi r31, 0
 nop // to align branch icount 554
 bnez r31, 20
 sll r1, r2, r4 // icount 556
 addi r4, r3, 12
 slt r7, r6, r4 // icount 558
 sle r7, r1, r3 // icount 559
 add r6, r4, r1 // icount 560
 rol r6, r7, r5 // icount 561
 andi r3, r3, 0xfe
 st r4, r3, 10
 and r0, r0, r7 // icount 564
 seq r1, r4, r7 // icount 565
 slt r4, r2, r5 // icount 566
 slt r4, r1, r6 // icount 567
 addi r5, r31, 10
 seq r0, r5, r2 // icount 569
 andi r2, r2, 0xfe
 ld r0, r2, 2
 add r5, r3, r7 // icount 572
 slli r4, r6, 14
 slt r0, r2, r6 // icount 574
 sra r4, r1, r1 // icount 575
 sll r2, r4, r2 // icount 576
 nop // to align meminst icount 577
 andi r6, r6, 0xfe
 ld r5, r6, 14
 j 0
 lbi r1, 0
 lbi r4, 0
 bnez r1, 4
 andi r0, r0, 0xfe
 ld r0, r0, 14
 seq r6, r2, r4 // icount 586
 srai r0, r4, 1
 seq r1, r2, r5 // icount 588
 lbi r6, 0
 lbi r2, 0
 bnez r1, 12
 sub r1, r5, r0 // icount 592
 or r0, r0, r4 // icount 593
 sra r2, r7, r4 // icount 594
 slt r4, r3, r1 // icount 595
 roli r1, r3, 2
 nop // to align meminst icount 597
 andi r1, r1, 0xfe
 st r31, r1, 2
 addi r5, r31, 5
 sll r5, r6, r5 // icount 601
 andi r0, r0, 0xfe
 st r3, r0, 6
 sub r4, r0, r1 // icount 604
 addi r1, r6, 1
 subi r2, r6, 7
 j 16
 nop // icount 608
 nop // icount 609
 nop // icount 610
 nop // icount 611
 nop // icount 612
 nop // icount 613
 nop // icount 614
 nop // icount 615
 lbi r3, 0
 lbi r4, 0
 nop // to align branch icount 618
 bnez r2, 28
 addi r1, r0, 7
 ror r2, r4, r4 // icount 621
 seq r3, r5, r2 // icount 622
 subi r5, r3, 12
 sco r0, r3, r3 // icount 624
 sco r2, r3, r0 // icount 625
 andi r0, r0, 0xfe
 ld r1, r0, 2
 add r7, r3, r2 // icount 628
 or r1, r6, r3 // icount 629
 sub r5, r3, r6 // icount 630
 lbi r5, 10
 andi r1, r1, 0xfe
 st r2, r1, 6
 and r2, r4, r1 // icount 634
 slli r0, r3, 0
 andi r5, r5, 0xfe
 st r4, r5, 14
 slbi r2, 9
 or r4, r5, r1 // icount 639
 slbi r6, 3
 sub r0, r7, r5 // icount 641
 andi r0, r0, 0xfe
 st r0, r0, 10
 rol r1, r7, r5 // icount 644
 ori r4, r4, 14
 ror r6, r4, r5 // icount 646
 rol r0, r2, r2 // icount 647
 addi r5, r6, 10
 srai r1, r3, 13
 sll r5, r2, r4 // icount 650
 seq r2, r6, r7 // icount 651
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 654
 beqz r31, 32
 roli r5, r0, 0
 lbi r5, 14
 slli r31, r6, 3
 or r5, r3, r0 // icount 659
 slt r6, r5, r2 // icount 660
 slli r3, r0, 5
 sco r0, r3, r6 // icount 662
 or r5, r3, r0 // icount 663
 rori r1, r31, 5
 nop // to align meminst icount 665
 andi r3, r3, 0xfe
 ld r6, r3, 10
 slt r1, r6, r1 // icount 668
 nop // to align meminst icount 669
 andi r31, r31, 0xfe
 st r31, r31, 12
 seq r5, r6, r3 // icount 672
 seq r7, r5, r3 // icount 673
 slbi r1, 5
 slbi r4, 6
 sub r6, r7, r2 // icount 676
 and r6, r4, r1 // icount 677
 lbi r6, 8
 add r4, r1, r7 // icount 679
 andi r0, r5, 6
 andi r1, r0, 3
 and r6, r2, r4 // icount 682
 rori r0, r2, 7
 addi r5, r0, 4
 slt r4, r1, r7 // icount 685
 slt r7, r2, r4 // icount 686
 subi r3, r2, 5
 sra r4, r4, r2 // icount 688
 or r7, r0, r7 // icount 689
 rol r5, r4, r6 // icount 690
 sco r3, r6, r5 // icount 691
 lbi r2, 0
 lbi r1, 0
 nop // to align branch icount 694
 beqz r0, 4
 rori r3, r3, 2
 slli r0, r0, 7
 ror r5, r4, r1 // icount 698
 lbi r2, 11
 lbi r3, 0
 lbi r1, 0
 nop // to align branch icount 702
 bnez r3, 32
 sll r5, r1, r6 // icount 704
 or r5, r2, r7 // icount 705
 and r2, r3, r1 // icount 706
 rol r1, r0, r4 // icount 707
 andi r2, r2, 0xfe
 ld r5, r2, 10
 andi r6, r6, 0xfe
 st r5, r6, 8
 roli r2, r2, 3
 sra r7, r4, r6 // icount 713
 subi r5, r5, 12
 sra r1, r6, r4 // icount 715
 seq r5, r3, r3 // icount 716
 and r0, r2, r6 // icount 717
 andi r6, r31, 11
 ori r31, r2, 6
 sra r7, r2, r7 // icount 720
 add r5, r0, r4 // icount 721
 roli r2, r6, 8
 slt r7, r5, r5 // icount 723
 andi r6, r6, 0xfe
 st r6, r6, 6
 slt r6, r4, r2 // icount 726
 sra r7, r3, r0 // icount 727
 ori r6, r0, 12
 nop // to align meminst icount 729
 andi r31, r31, 0xfe
 ld r31, r31, 12
 andi r1, r1, 0xfe
 stu r3, r1, 10
 addi r31, r5, 7
 add r1, r4, r7 // icount 735
 and r1, r5, r4 // icount 736
 sll r5, r1, r5 // icount 737
 andi r5, r5, 0xfe
 stu r5, r5, 10
 andi r31, r5, 4
 sco r1, r1, r5 // icount 741
 or r2, r2, r1 // icount 742
 lbi r31, 0
 lbi r5, 0
 bnez r4, 32
 subi r5, r6, 8
 rori r4, r6, 12
 sle r5, r0, r7 // icount 748
 sll r2, r3, r4 // icount 749
 sco r7, r4, r0 // icount 750
 sco r3, r4, r2 // icount 751
 andi r1, r1, 0xfe
 stu r3, r1, 0
 andi r6, r6, 0xfe
 stu r31, r6, 2
 andi r1, r1, 0xfe
 st r31, r1, 0
 sra r5, r6, r6 // icount 758
 and r2, r0, r5 // icount 759
 sra r7, r2, r2 // icount 760
 slt r3, r4, r5 // icount 761
 srai r3, r1, 3
 sub r0, r2, r4 // icount 763
 ori r3, r6, 10
 sra r6, r4, r0 // icount 765
 add r4, r6, r6 // icount 766
 ror r6, r5, r4 // icount 767
 slbi r0, 13
 nop // to align meminst icount 769
 andi r0, r0, 0xfe
 stu r31, r0, 8
 sra r5, r7, r1 // icount 772
 slbi r31, 0
 sub r6, r3, r2 // icount 774
 seq r4, r6, r1 // icount 775
 slt r2, r2, r2 // icount 776
 and r1, r2, r6 // icount 777
 sle r0, r6, r1 // icount 778
 sub r4, r0, r0 // icount 779
 andi r4, r4, 0xfe
 st r1, r4, 6
 lbi r31, 11
 sll r6, r7, r7 // icount 783
 j 18
 nop // icount 785
 nop // icount 786
 nop // icount 787
 nop // icount 788
 nop // icount 789
 nop // icount 790
 nop // icount 791
 nop // icount 792
 nop // icount 793
 j 32
 nop // icount 795
 nop // icount 796
 nop // icount 797
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
 nop // icount 808
 nop // icount 809
 nop // icount 810
 j 32
 nop // icount 812
 nop // icount 813
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
 lbi r5, 0
 lbi r2, 0
 nop // to align branch icount 830
 bnez r1, 16
 and r5, r3, r3 // icount 832
 sll r5, r5, r1 // icount 833
 or r1, r6, r4 // icount 834
 sco r1, r5, r3 // icount 835
 andi r6, r6, 0xfe
 st r1, r6, 6
 andi r6, r6, 0xfe
 st r5, r6, 14
 slt r4, r5, r4 // icount 840
 or r3, r3, r0 // icount 841
 sll r3, r1, r7 // icount 842
 roli r6, r1, 6
 ror r2, r6, r0 // icount 844
 ori r6, r2, 13
 andi r4, r4, 0xfe
 ld r1, r4, 10
 slli r6, r0, 2
 rori r3, r6, 8
 srai r6, r4, 13
 j 6
 nop // icount 852
 nop // icount 853
 nop // icount 854
 lbi r6, 0
 lbi r3, 0
 beqz r6, 4
 slli r6, r5, 4
 lbi r6, 4
 sco r6, r6, r5 // icount 860
 sco r0, r2, r0 // icount 861
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 864
 beqz r6, 16
 sco r3, r0, r5 // icount 866
 sra r4, r5, r5 // icount 867
 subi r5, r6, 12
 rol r7, r3, r6 // icount 869
 add r5, r5, r5 // icount 870
 sle r6, r2, r7 // icount 871
 andi r3, r3, 0xfe
 st r2, r3, 6
 roli r3, r4, 15
 slli r1, r4, 11
 addi r0, r31, 12
 sll r2, r7, r1 // icount 877
 lbi r5, 9
 subi r4, r2, 10
 rol r4, r1, r4 // icount 880
 and r4, r4, r3 // icount 881
 rori r5, r5, 2
 j 28
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
 nop // icount 896
 nop // icount 897
 j 20
 nop // icount 899
 nop // icount 900
 nop // icount 901
 nop // icount 902
 nop // icount 903
 nop // icount 904
 nop // icount 905
 nop // icount 906
 nop // icount 907
 nop // icount 908
 lbi r4, 0
 lbi r4, 0
 bnez r6, 16
 roli r3, r31, 12
 sco r7, r1, r4 // icount 913
 andi r0, r0, 0xfe
 st r0, r0, 12
 andi r4, r4, 0xfe
 stu r6, r4, 2
 or r2, r7, r7 // icount 918
 sle r7, r0, r4 // icount 919
 andi r2, r5, 1
 sle r1, r6, r4 // icount 921
 rori r31, r3, 14
 sco r0, r2, r6 // icount 923
 lbi r1, 11
 sll r2, r7, r1 // icount 925
 slli r5, r2, 15
 andi r1, r4, 2
 rol r7, r4, r7 // icount 928
 slbi r4, 5
 lbi r0, 0
 lbi r3, 0
 nop // to align branch icount 932
 bnez r4, 8
 sco r1, r5, r3 // icount 934
 slt r3, r7, r5 // icount 935
 addi r3, r5, 14
 slli r0, r0, 6
 sra r2, r6, r4 // icount 938
 slli r6, r0, 13
 rol r1, r7, r1 // icount 940
 slli r4, r5, 9
 lbi r2, 0
 lbi r31, 0
 nop // to align branch icount 944
 beqz r2, 4
 ror r1, r3, r5 // icount 946
 slli r5, r2, 0
 rori r6, r3, 1
 ori r1, r5, 2
 lbi r2, 0
 lbi r5, 0
 nop // to align branch icount 952
 bnez r0, 20
 addi r31, r4, 4
 ror r7, r2, r3 // icount 955
 andi r5, r4, 2
 sll r0, r0, r2 // icount 957
 lbi r6, 0
 subi r2, r6, 11
 andi r31, r5, 9
 nop // to align meminst icount 961
 andi r0, r0, 0xfe
 ld r6, r0, 12
 addi r6, r0, 5
 sra r5, r5, r2 // icount 965
 andi r4, r5, 0
 lbi r1, 13
 lbi r31, 10
 sub r3, r3, r1 // icount 969
 andi r5, r5, 0xfe
 ld r6, r5, 4
 andi r2, r2, 0xfe
 stu r31, r2, 2
 roli r31, r0, 8
 sra r0, r2, r4 // icount 975
 seq r2, r4, r5 // icount 976
 nop // to align meminst icount 977
 andi r31, r31, 0xfe
 stu r2, r31, 0
 lbi r0, 0
 lbi r0, 0
 nop // to align branch icount 982
 beqz r3, 0
 lbi r1, 0
 lbi r4, 0
 nop // to align branch icount 986
 bnez r4, 20
 ror r2, r0, r5 // icount 988
 seq r5, r7, r2 // icount 989
 subi r0, r1, 7
 slli r6, r6, 7
 andi r3, r3, 0xfe
 ld r4, r3, 8
 sco r6, r0, r0 // icount 994
 sll r3, r2, r5 // icount 995
 sco r6, r2, r5 // icount 996
 rol r0, r4, r6 // icount 997
 or r1, r3, r1 // icount 998
 nop // to align meminst icount 999
 andi r31, r31, 0xfe
 stu r3, r31, 14
 and r7, r1, r2 // icount 1002
 sco r4, r2, r1 // icount 1003
 slbi r3, 1
 seq r1, r2, r5 // icount 1005
 rol r3, r7, r5 // icount 1006
 slli r6, r1, 14
 roli r6, r0, 8
 and r7, r1, r4 // icount 1009
 add r2, r7, r4 // icount 1010
 j 22
 nop // icount 1012
 nop // icount 1013
 nop // icount 1014
 nop // icount 1015
 nop // icount 1016
 nop // icount 1017
 nop // icount 1018
 nop // icount 1019
 nop // icount 1020
 nop // icount 1021
 nop // icount 1022
 lbi r4, 0
 lbi r4, 0
 beqz r5, 28
 ror r4, r6, r1 // icount 1026
 roli r1, r2, 3
 seq r4, r2, r6 // icount 1028
 addi r6, r3, 6
 sra r1, r5, r5 // icount 1030
 rol r6, r5, r7 // icount 1031
 sll r7, r5, r2 // icount 1032
 ori r2, r3, 14
 sll r3, r5, r6 // icount 1034
 nop // to align meminst icount 1035
 andi r1, r1, 0xfe
 stu r2, r1, 10
 srai r6, r3, 5
 slt r6, r3, r0 // icount 1039
 lbi r4, 0
 roli r4, r2, 12
 roli r2, r31, 11
 ori r4, r31, 6
 slbi r3, 1
 slli r6, r31, 7
 sra r6, r5, r6 // icount 1046
 sco r6, r1, r0 // icount 1047
 ror r0, r5, r0 // icount 1048
 roli r31, r2, 12
 slli r2, r3, 3
 srai r4, r0, 3
 subi r3, r6, 8
 slt r6, r2, r6 // icount 1053
 sub r6, r1, r5 // icount 1054
 nop // to align meminst icount 1055
 andi r3, r3, 0xfe
 ld r5, r3, 12
 j 2
 nop // icount 1059
 lbi r5, 0
 lbi r1, 0
 nop // to align branch icount 1062
 bnez r6, 24
 sra r6, r3, r4 // icount 1064
 addi r4, r6, 9
 rori r6, r0, 7
 rol r3, r7, r2 // icount 1067
 slbi r6, 1
 rori r1, r1, 6
 subi r2, r6, 11
 seq r7, r0, r0 // icount 1071
 slt r1, r0, r7 // icount 1072
 nop // to align meminst icount 1073
 andi r6, r6, 0xfe
 stu r3, r6, 6
 ror r4, r1, r6 // icount 1076
 slt r4, r7, r3 // icount 1077
 addi r2, r31, 13
 nop // to align meminst icount 1079
 andi r5, r5, 0xfe
 ld r5, r5, 4
 andi r2, r2, 0xfe
 stu r0, r2, 0
 srai r1, r6, 11
 or r1, r7, r4 // icount 1085
 add r2, r6, r3 // icount 1086
 andi r1, r6, 3
 sra r0, r1, r1 // icount 1088
 sle r6, r3, r6 // icount 1089
 and r0, r1, r7 // icount 1090
 or r3, r6, r0 // icount 1091
 or r1, r1, r2 // icount 1092
 j 32
 nop // icount 1094
 nop // icount 1095
 nop // icount 1096
 nop // icount 1097
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
 lbi r3, 0
 lbi r31, 0
 nop // to align branch icount 1112
 bnez r5, 16
 ori r5, r6, 2
 lbi r4, 9
 rori r0, r6, 3
 sco r7, r6, r6 // icount 1117
 lbi r4, 5
 rol r7, r1, r2 // icount 1119
 subi r31, r1, 15
 seq r6, r5, r7 // icount 1121
 slbi r2, 9
 and r1, r6, r7 // icount 1123
 ror r5, r3, r1 // icount 1124
 addi r31, r0, 13
 add r0, r3, r0 // icount 1126
 ori r2, r2, 9
 or r4, r6, r6 // icount 1128
 nop // to align meminst icount 1129
 andi r4, r4, 0xfe
 st r4, r4, 8
 j 0
 lbi r0, 0
 lbi r2, 0
 beqz r2, 28
 ori r0, r5, 13
 nop // to align meminst icount 1137
 andi r0, r0, 0xfe
 ld r5, r0, 10
 sle r4, r0, r3 // icount 1140
 slt r2, r4, r7 // icount 1141
 andi r1, r1, 0xfe
 stu r6, r1, 12
 sco r2, r6, r1 // icount 1144
 nop // to align meminst icount 1145
 andi r3, r3, 0xfe
 st r4, r3, 14
 sle r0, r6, r0 // icount 1148
 nop // to align meminst icount 1149
 andi r3, r3, 0xfe
 stu r2, r3, 10
 andi r1, r6, 1
 addi r1, r3, 10
 srai r6, r5, 8
 rori r2, r0, 10
 subi r6, r5, 13
 slli r3, r1, 7
 addi r4, r31, 0
 sco r2, r2, r2 // icount 1159
 srai r31, r0, 6
 nop // to align meminst icount 1161
 andi r6, r6, 0xfe
 st r31, r6, 10
 seq r2, r4, r3 // icount 1164
 rori r3, r4, 10
 add r5, r4, r6 // icount 1166
 andi r31, r4, 0
 or r0, r4, r0 // icount 1168
 slli r5, r3, 10
 srai r4, r6, 5
 or r3, r0, r3 // icount 1171
 andi r1, r1, 0xfe
 st r4, r1, 6
 lbi r5, 0
 lbi r1, 0
 nop // to align branch icount 1176
 bnez r6, 4
 subi r3, r1, 13
 srai r31, r0, 8
 or r7, r2, r0 // icount 1180
 slbi r1, 13
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 1184
 bnez r3, 4
 subi r1, r2, 11
 sll r2, r6, r6 // icount 1187
 slli r1, r6, 12
 srai r1, r4, 12
 j 8
 nop // icount 1191
 nop // icount 1192
 nop // icount 1193
 nop // icount 1194
 lbi r31, 0
 lbi r31, 0
 bnez r3, 8
 and r1, r3, r0 // icount 1198
 rori r4, r3, 5
 seq r1, r7, r7 // icount 1200
 lbi r6, 5
 roli r3, r0, 11
 sra r6, r4, r5 // icount 1203
 sle r7, r2, r6 // icount 1204
 nop // to align meminst icount 1205
 andi r3, r3, 0xfe
 stu r4, r3, 14
 j 6
 nop // icount 1209
 nop // icount 1210
 nop // icount 1211
 lbi r4, 0
 lbi r0, 0
 nop // to align branch icount 1214
 beqz r3, 8
 lbi r31, 2
 add r1, r4, r1 // icount 1217
 ori r31, r2, 15
 sle r5, r7, r7 // icount 1219
 sle r4, r0, r3 // icount 1220
 slt r3, r7, r1 // icount 1221
 rol r6, r7, r3 // icount 1222
 rori r0, r4, 11
 lbi r0, 0
 lbi r5, 0
 nop // to align branch icount 1226
 beqz r2, 8
 seq r2, r5, r1 // icount 1228
 or r5, r7, r4 // icount 1229
 slbi r1, 8
 seq r2, r5, r2 // icount 1231
 rol r2, r1, r5 // icount 1232
 srai r6, r0, 13
 sle r7, r6, r7 // icount 1234
 lbi r4, 1
 lbi r2, 0
 lbi r5, 0
 nop // to align branch icount 1238
 beqz r0, 12
 roli r3, r6, 14
 nop // to align meminst icount 1241
 andi r6, r6, 0xfe
 ld r0, r6, 10
 slli r2, r2, 4
 nop // to align meminst icount 1245
 andi r0, r0, 0xfe
 ld r6, r0, 14
 slli r2, r3, 13
 slli r6, r3, 13
 sra r5, r3, r2 // icount 1250
 sll r0, r5, r2 // icount 1251
 sll r7, r3, r7 // icount 1252
 sll r3, r3, r3 // icount 1253
 rori r6, r3, 9
 and r2, r3, r1 // icount 1255
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 1258
 beqz r1, 4
 lbi r2, 11
 addi r6, r6, 12
 ori r3, r0, 1
 or r3, r2, r5 // icount 1263
 lbi r3, 0
 lbi r2, 0
 nop // to align branch icount 1266
 bnez r31, 12
 rol r7, r0, r2 // icount 1268
 sle r5, r7, r1 // icount 1269
 sll r6, r3, r5 // icount 1270
 sub r2, r2, r2 // icount 1271
 andi r4, r6, 2
 andi r3, r0, 13
 srai r4, r6, 4
 subi r3, r5, 15
 slbi r6, 9
 rori r31, r0, 8
 sle r4, r1, r2 // icount 1278
 andi r2, r2, 3
 j 8
 nop // icount 1281
 nop // icount 1282
 nop // icount 1283
 nop // icount 1284
 j 26
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
 lbi r0, 0
 lbi r0, 0
 beqz r2, 20
 srai r1, r1, 7
 rol r4, r3, r6 // icount 1303
 andi r0, r0, 0xfe
 stu r1, r0, 12
 andi r1, r31, 2
 rori r5, r0, 1
 sle r7, r1, r4 // icount 1308
 subi r3, r0, 11
 and r6, r0, r5 // icount 1310
 andi r1, r5, 0
 ror r6, r5, r3 // icount 1312
 sle r7, r5, r4 // icount 1313
 rol r2, r5, r4 // icount 1314
 nop // to align meminst icount 1315
 andi r5, r5, 0xfe
 ld r1, r5, 14
 rori r4, r3, 0
 nop // to align meminst icount 1319
 andi r1, r1, 0xfe
 ld r5, r1, 0
 and r5, r7, r2 // icount 1322
 rol r5, r0, r3 // icount 1323
 andi r6, r6, 0xfe
 st r6, r6, 6
 roli r2, r5, 15
 addi r2, r1, 7
 j 26
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
 nop // icount 1341
 lbi r31, 0
 lbi r6, 0
 nop // to align branch icount 1344
 beqz r5, 4
 sle r2, r5, r3 // icount 1346
 nop // to align meminst icount 1347
 andi r4, r4, 0xfe
 stu r0, r4, 0
 andi r6, r6, 9
 slbi r6, 15
 lbi r31, 0
 lbi r4, 0
 nop // to align branch icount 1354
 beqz r0, 8
 sll r2, r5, r6 // icount 1356
 nop // to align meminst icount 1357
 andi r6, r6, 0xfe
 ld r2, r6, 6
 rori r0, r1, 14
 sra r6, r5, r4 // icount 1361
 ori r5, r3, 10
 andi r3, r5, 8
 sll r7, r0, r0 // icount 1364
 and r2, r1, r1 // icount 1365
 j 18
 nop // icount 1367
 nop // icount 1368
 nop // icount 1369
 nop // icount 1370
 nop // icount 1371
 nop // icount 1372
 nop // icount 1373
 nop // icount 1374
 nop // icount 1375
 j 30
 nop // icount 1377
 nop // icount 1378
 nop // icount 1379
 nop // icount 1380
 nop // icount 1381
 nop // icount 1382
 nop // icount 1383
 nop // icount 1384
 nop // icount 1385
 nop // icount 1386
 nop // icount 1387
 nop // icount 1388
 nop // icount 1389
 nop // icount 1390
 nop // icount 1391
 j 18
 nop // icount 1393
 nop // icount 1394
 nop // icount 1395
 nop // icount 1396
 nop // icount 1397
 nop // icount 1398
 nop // icount 1399
 nop // icount 1400
 nop // icount 1401
 lbi r2, 0
 lbi r4, 0
 nop // to align branch icount 1404
 beqz r3, 12
 seq r2, r2, r1 // icount 1406
 roli r2, r1, 1
 roli r0, r0, 1
 nop // to align meminst icount 1409
 andi r2, r2, 0xfe
 stu r1, r2, 0
 seq r4, r1, r5 // icount 1412
 seq r2, r7, r3 // icount 1413
 or r7, r5, r6 // icount 1414
 subi r31, r5, 6
 add r7, r2, r1 // icount 1416
 sco r7, r3, r1 // icount 1417
 srai r1, r1, 14
 rori r6, r4, 5
 j 0
 j 24
 nop // icount 1422
 nop // icount 1423
 nop // icount 1424
 nop // icount 1425
 nop // icount 1426
 nop // icount 1427
 nop // icount 1428
 nop // icount 1429
 nop // icount 1430
 nop // icount 1431
 nop // icount 1432
 nop // icount 1433
 j 26
 nop // icount 1435
 nop // icount 1436
 nop // icount 1437
 nop // icount 1438
 nop // icount 1439
 nop // icount 1440
 nop // icount 1441
 nop // icount 1442
 nop // icount 1443
 nop // icount 1444
 nop // icount 1445
 nop // icount 1446
 nop // icount 1447
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 1450
 beqz r5, 24
 sll r7, r2, r3 // icount 1452
 seq r4, r0, r6 // icount 1453
 roli r31, r4, 5
 andi r6, r2, 6
 sco r1, r6, r7 // icount 1456
 sll r2, r4, r0 // icount 1457
 slbi r1, 11
 nop // to align meminst icount 1459
 andi r4, r4, 0xfe
 st r31, r4, 4
 ori r0, r0, 2
 lbi r2, 10
 slli r0, r31, 6
 addi r6, r3, 4
 andi r3, r3, 0xfe
 st r31, r3, 14
 slli r2, r31, 0
 nop // to align meminst icount 1469
 andi r1, r1, 0xfe
 stu r0, r1, 14
 slt r2, r0, r5 // icount 1472
 sra r5, r1, r2 // icount 1473
 sra r5, r7, r0 // icount 1474
 addi r5, r1, 2
 slbi r2, 4
 sra r1, r7, r2 // icount 1477
 sra r4, r7, r4 // icount 1478
 sra r5, r0, r0 // icount 1479
 rol r2, r5, r4 // icount 1480
 lbi r3, 0
 lbi r1, 0
 beqz r3, 32
 subi r0, r2, 5
 seq r2, r4, r5 // icount 1485
 ror r1, r7, r3 // icount 1486
 sll r2, r5, r7 // icount 1487
 slt r0, r7, r0 // icount 1488
 sco r1, r4, r3 // icount 1489
 add r0, r5, r1 // icount 1490
 and r2, r0, r5 // icount 1491
 srai r2, r3, 11
 nop // to align meminst icount 1493
 andi r1, r1, 0xfe
 stu r6, r1, 10
 ror r7, r2, r2 // icount 1496
 nop // to align meminst icount 1497
 andi r1, r1, 0xfe
 ld r6, r1, 14
 slli r3, r6, 0
 subi r31, r2, 0
 sra r6, r7, r1 // icount 1502
 sco r4, r6, r3 // icount 1503
 slbi r1, 5
 slbi r5, 10
 srai r2, r5, 1
 nop // to align meminst icount 1507
 andi r0, r0, 0xfe
 stu r2, r0, 4
 slli r0, r31, 4
 or r4, r4, r4 // icount 1511
 addi r3, r2, 10
 andi r6, r2, 4
 and r6, r6, r3 // icount 1514
 subi r31, r2, 9
 slbi r6, 7
 slli r4, r0, 11
 sle r0, r3, r5 // icount 1518
 nop // to align meminst icount 1519
 andi r1, r1, 0xfe
 stu r2, r1, 6
 sra r3, r3, r4 // icount 1522
 and r1, r1, r3 // icount 1523
 j 2
 nop // icount 1525
 lbi r1, 0
 lbi r6, 0
 nop // to align branch icount 1528
 bnez r31, 8
 or r4, r2, r6 // icount 1530
 nop // to align meminst icount 1531
 andi r0, r0, 0xfe
 st r1, r0, 14
 sco r6, r5, r1 // icount 1534
 srai r1, r0, 15
 slt r6, r2, r4 // icount 1536
 sub r6, r0, r7 // icount 1537
 andi r1, r1, 0xfe
 stu r6, r1, 4
 rori r3, r31, 0
 j 14
 nop // icount 1542
 nop // icount 1543
 nop // icount 1544
 nop // icount 1545
 nop // icount 1546
 nop // icount 1547
 nop // icount 1548
 lbi r2, 0
 lbi r1, 0
 bnez r5, 8
 andi r5, r6, 10
 sco r0, r0, r3 // icount 1553
 roli r1, r0, 12
 subi r0, r3, 15
 ror r1, r6, r3 // icount 1556
 ror r5, r3, r4 // icount 1557
 rol r5, r1, r0 // icount 1558
 roli r1, r2, 11
 j 8
 nop // icount 1561
 nop // icount 1562
 nop // icount 1563
 nop // icount 1564
 j 28
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
 nop // icount 1576
 nop // icount 1577
 nop // icount 1578
 nop // icount 1579
 j 10
 nop // icount 1581
 nop // icount 1582
 nop // icount 1583
 nop // icount 1584
 nop // icount 1585
 j 24
 nop // icount 1587
 nop // icount 1588
 nop // icount 1589
 nop // icount 1590
 nop // icount 1591
 nop // icount 1592
 nop // icount 1593
 nop // icount 1594
 nop // icount 1595
 nop // icount 1596
 nop // icount 1597
 nop // icount 1598
 j 22
 nop // icount 1600
 nop // icount 1601
 nop // icount 1602
 nop // icount 1603
 nop // icount 1604
 nop // icount 1605
 nop // icount 1606
 nop // icount 1607
 nop // icount 1608
 nop // icount 1609
 nop // icount 1610
 j 16
 nop // icount 1612
 nop // icount 1613
 nop // icount 1614
 nop // icount 1615
 nop // icount 1616
 nop // icount 1617
 nop // icount 1618
 nop // icount 1619
 j 26
 nop // icount 1621
 nop // icount 1622
 nop // icount 1623
 nop // icount 1624
 nop // icount 1625
 nop // icount 1626
 nop // icount 1627
 nop // icount 1628
 nop // icount 1629
 nop // icount 1630
 nop // icount 1631
 nop // icount 1632
 nop // icount 1633
 lbi r3, 0
 lbi r31, 0
 nop // to align branch icount 1636
 bnez r4, 24
 ror r4, r1, r7 // icount 1638
 rol r1, r7, r4 // icount 1639
 slbi r4, 9
 add r7, r0, r1 // icount 1641
 rol r3, r3, r0 // icount 1642
 addi r1, r31, 10
 slt r5, r3, r7 // icount 1644
 or r6, r6, r1 // icount 1645
 sll r3, r0, r0 // icount 1646
 ror r6, r5, r4 // icount 1647
 ori r2, r2, 9
 slt r5, r3, r4 // icount 1649
 slt r4, r1, r1 // icount 1650
 seq r3, r6, r2 // icount 1651
 sub r4, r3, r7 // icount 1652
 nop // to align meminst icount 1653
 andi r4, r4, 0xfe
 st r0, r4, 4
 andi r2, r2, 0xfe
 ld r0, r2, 10
 andi r0, r0, 0xfe
 stu r6, r0, 4
 sra r7, r0, r5 // icount 1660
 roli r4, r31, 4
 add r3, r3, r3 // icount 1662
 nop // to align meminst icount 1663
 andi r3, r3, 0xfe
 ld r5, r3, 8
 srai r0, r1, 12
 rori r4, r1, 14
 j 30
 nop // icount 1669
 nop // icount 1670
 nop // icount 1671
 nop // icount 1672
 nop // icount 1673
 nop // icount 1674
 nop // icount 1675
 nop // icount 1676
 nop // icount 1677
 nop // icount 1678
 nop // icount 1679
 nop // icount 1680
 nop // icount 1681
 nop // icount 1682
 nop // icount 1683
 lbi r5, 0
 lbi r5, 0
 nop // to align branch icount 1686
 bnez r0, 28
 roli r2, r31, 3
 slbi r5, 2
 sle r5, r5, r2 // icount 1690
 ori r0, r31, 0
 sub r0, r1, r5 // icount 1692
 nop // to align meminst icount 1693
 andi r2, r2, 0xfe
 ld r4, r2, 0
 ori r1, r4, 12
 subi r4, r6, 15
 add r2, r2, r6 // icount 1698
 rol r7, r2, r2 // icount 1699
 sll r1, r0, r7 // icount 1700
 seq r4, r1, r3 // icount 1701
 sco r3, r5, r7 // icount 1702
 sra r1, r5, r0 // icount 1703
 ori r4, r31, 2
 ori r1, r5, 14
 sco r7, r4, r1 // icount 1706
 lbi r31, 5
 rol r7, r3, r6 // icount 1708
 ori r4, r1, 14
 slt r6, r2, r0 // icount 1710
 sll r3, r7, r7 // icount 1711
 subi r3, r1, 0
 add r2, r5, r7 // icount 1713
 slbi r0, 2
 nop // to align meminst icount 1715
 andi r31, r31, 0xfe
 ld r3, r31, 4
 sll r1, r4, r4 // icount 1718
 lbi r5, 7
 halt // icount 1720
