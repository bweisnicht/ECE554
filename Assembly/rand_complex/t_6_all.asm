 // seed 6
 lbi r0, 101
 slbi r0, 250
 lbi r1, 134
 slbi r1, 169
 lbi r2, 129
 slbi r2, 20
 lbi r3, 170
 slbi r3, 25
 lbi r4, 34
 slbi r4, 120
 lbi r5, 224
 slbi r5, 171
 lbi r6, 33
 slbi r6, 21
 lbi r31, 187
 slbi r31, 9
 slli r3, r2, 7
 lbi r3, 0
 lbi r6, 0
 beqz r1, 0
 lbi r0, 0
 lbi r4, 0
 nop // to align branch icount 22
 bnez r1, 28
 and r5, r4, r4 // icount 24
 subi r4, r31, 11
 rol r0, r2, r0 // icount 26
 slt r0, r2, r6 // icount 27
 andi r31, r31, 0xfe
 ld r5, r31, 8
 slli r5, r31, 11
 sll r3, r2, r0 // icount 31
 addi r3, r1, 2
 sra r2, r7, r5 // icount 33
 sra r2, r6, r6 // icount 34
 nop // to align meminst icount 35
 andi r5, r5, 0xfe
 st r6, r5, 10
 srai r0, r2, 13
 sle r1, r5, r6 // icount 39
 rori r5, r5, 3
 slbi r3, 0
 add r4, r6, r5 // icount 42
 rori r4, r31, 12
 seq r3, r0, r3 // icount 44
 roli r1, r2, 13
 sra r2, r5, r7 // icount 46
 rol r1, r5, r1 // icount 47
 srai r2, r6, 9
 and r0, r1, r4 // icount 49
 sle r6, r0, r3 // icount 50
 add r2, r6, r2 // icount 51
 or r2, r5, r7 // icount 52
 slli r3, r31, 0
 slli r2, r1, 14
 sll r4, r7, r0 // icount 55
 lbi r4, 0
 lbi r6, 0
 nop // to align branch icount 58
 beqz r5, 28
 andi r5, r5, 0xfe
 ld r6, r5, 0
 andi r1, r1, 0xfe
 stu r4, r1, 8
 andi r4, r4, 0xfe
 ld r1, r4, 8
 sra r5, r0, r5 // icount 66
 nop // to align meminst icount 67
 andi r2, r2, 0xfe
 st r2, r2, 4
 rori r31, r1, 8
 ror r1, r3, r6 // icount 71
 andi r1, r1, 0xfe
 stu r4, r1, 2
 roli r6, r5, 12
 addi r31, r31, 5
 andi r3, r3, 0xfe
 st r1, r3, 2
 rori r6, r6, 9
 sll r4, r7, r7 // icount 79
 sco r0, r7, r7 // icount 80
 sll r6, r7, r5 // icount 81
 andi r31, r31, 0xfe
 st r4, r31, 0
 andi r4, r4, 0xfe
 st r1, r4, 2
 rol r3, r3, r3 // icount 86
 sco r2, r1, r3 // icount 87
 lbi r1, 5
 sle r4, r5, r7 // icount 89
 seq r2, r1, r4 // icount 90
 roli r1, r2, 11
 addi r4, r6, 14
 slbi r0, 4
 andi r0, r5, 3
 addi r6, r2, 4
 sra r5, r6, r4 // icount 96
 andi r2, r31, 8
 j 30
 nop // icount 99
 nop // icount 100
 nop // icount 101
 nop // icount 102
 nop // icount 103
 nop // icount 104
 nop // icount 105
 nop // icount 106
 nop // icount 107
 nop // icount 108
 nop // icount 109
 nop // icount 110
 nop // icount 111
 nop // icount 112
 nop // icount 113
 seq r3, r7, r4 // icount 114
 lbi r3, 0
 lbi r3, 0
 beqz r4, 12
 rol r2, r0, r0 // icount 118
 addi r4, r3, 0
 slbi r5, 9
 rol r0, r6, r3 // icount 121
 subi r0, r5, 10
 sle r3, r6, r7 // icount 123
 sra r7, r2, r1 // icount 124
 slt r0, r0, r1 // icount 125
 slli r5, r3, 8
 slbi r31, 15
 rori r2, r3, 15
 and r7, r5, r7 // icount 129
 ror r6, r0, r3 // icount 130
 lbi r3, 0
 lbi r2, 0
 beqz r6, 20
 sco r5, r1, r3 // icount 134
 sll r6, r0, r3 // icount 135
 add r3, r1, r5 // icount 136
 sco r3, r3, r4 // icount 137
 and r0, r5, r7 // icount 138
 nop // to align meminst icount 139
 andi r0, r0, 0xfe
 st r4, r0, 8
 andi r4, r4, 0xfe
 stu r2, r4, 2
 sle r5, r4, r6 // icount 144
 and r0, r4, r0 // icount 145
 andi r5, r5, 0xfe
 stu r4, r5, 2
 seq r1, r3, r7 // icount 148
 addi r6, r31, 0
 andi r2, r2, 0xfe
 ld r4, r2, 2
 slli r1, r1, 12
 rori r5, r3, 14
 ror r5, r3, r3 // icount 154
 sle r5, r5, r4 // icount 155
 ror r6, r1, r1 // icount 156
 slbi r4, 9
 sra r1, r7, r5 // icount 158
 add r7, r7, r0 // icount 159
 sle r4, r7, r7 // icount 160
 lbi r4, 0
 lbi r0, 0
 beqz r5, 28
 andi r1, r2, 6
 nop // to align meminst icount 165
 andi r31, r31, 0xfe
 st r31, r31, 10
 srai r6, r31, 10
 srai r5, r0, 7
 sll r1, r3, r5 // icount 170
 slli r1, r4, 10
 sll r2, r7, r1 // icount 172
 nop // to align meminst icount 173
 andi r4, r4, 0xfe
 ld r2, r4, 2
 rori r0, r0, 10
 seq r1, r1, r2 // icount 177
 sll r2, r3, r6 // icount 178
 slbi r6, 10
 rol r4, r3, r2 // icount 180
 rori r4, r0, 4
 slbi r4, 12
 nop // to align meminst icount 183
 andi r2, r2, 0xfe
 stu r5, r2, 8
 rori r6, r1, 11
 lbi r1, 14
 and r0, r4, r2 // icount 188
 seq r7, r7, r5 // icount 189
 sco r6, r0, r3 // icount 190
 andi r6, r6, 5
 or r6, r2, r7 // icount 192
 roli r1, r0, 15
 slbi r4, 10
 addi r1, r3, 13
 sub r6, r1, r6 // icount 196
 addi r3, r6, 3
 subi r0, r5, 12
 slbi r3, 8
 sle r2, r0, r4 // icount 200
 lbi r1, 0
 lbi r3, 0
 beqz r4, 32
 or r6, r2, r7 // icount 204
 add r3, r3, r3 // icount 205
 rori r2, r3, 6
 seq r7, r6, r5 // icount 207
 rol r0, r3, r5 // icount 208
 ori r1, r6, 4
 sle r4, r0, r4 // icount 210
 nop // to align meminst icount 211
 andi r0, r0, 0xfe
 st r5, r0, 12
 and r7, r6, r6 // icount 214
 sub r2, r1, r6 // icount 215
 sle r3, r6, r4 // icount 216
 nop // to align meminst icount 217
 andi r3, r3, 0xfe
 ld r6, r3, 6
 lbi r6, 9
 sra r2, r1, r7 // icount 221
 rol r7, r5, r6 // icount 222
 nop // to align meminst icount 223
 andi r2, r2, 0xfe
 ld r3, r2, 10
 or r4, r7, r6 // icount 226
 sub r6, r6, r4 // icount 227
 sra r3, r6, r2 // icount 228
 srai r3, r1, 14
 subi r5, r31, 9
 sra r2, r5, r5 // icount 231
 sll r0, r3, r4 // icount 232
 andi r4, r4, 14
 slt r3, r3, r4 // icount 234
 srai r1, r31, 5
 andi r2, r0, 14
 add r7, r1, r6 // icount 237
 sco r6, r1, r2 // icount 238
 ori r0, r31, 15
 subi r6, r0, 6
 srai r5, r6, 13
 lbi r1, 0
 lbi r1, 0
 nop // to align branch icount 244
 bnez r4, 16
 andi r2, r2, 0xfe
 ld r31, r2, 12
 roli r5, r2, 14
 sub r4, r6, r4 // icount 249
 addi r2, r2, 5
 slli r2, r0, 3
 subi r1, r1, 6
 roli r0, r31, 6
 lbi r1, 4
 or r6, r1, r0 // icount 255
 roli r5, r5, 13
 sll r3, r4, r1 // icount 257
 roli r0, r1, 15
 slli r31, r0, 2
 slli r0, r1, 15
 slbi r0, 8
 sub r7, r5, r3 // icount 262
 rol r4, r5, r0 // icount 263
 j 30
 nop // icount 265
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
 lbi r3, 0
 lbi r5, 0
 nop // to align branch icount 296
 bnez r6, 32
 add r7, r6, r4 // icount 298
 rol r3, r5, r0 // icount 299
 andi r4, r6, 8
 or r4, r2, r6 // icount 301
 or r2, r5, r6 // icount 302
 sco r1, r4, r7 // icount 303
 addi r1, r2, 15
 rori r2, r4, 0
 andi r2, r4, 13
 nop // to align meminst icount 307
 andi r4, r4, 0xfe
 st r31, r4, 8
 andi r4, r4, 0xfe
 ld r6, r4, 0
 and r0, r3, r5 // icount 312
 slli r6, r3, 10
 and r7, r1, r3 // icount 314
 andi r1, r0, 7
 sra r1, r1, r4 // icount 316
 srai r6, r0, 9
 sco r2, r7, r5 // icount 318
 slli r0, r1, 7
 sub r5, r5, r3 // icount 320
 sra r3, r1, r2 // icount 321
 sle r7, r0, r5 // icount 322
 slbi r5, 15
 and r7, r5, r1 // icount 324
 subi r6, r3, 0
 seq r5, r7, r3 // icount 326
 sra r5, r6, r5 // icount 327
 slli r3, r3, 9
 seq r6, r5, r2 // icount 329
 rol r0, r3, r2 // icount 330
 slt r4, r1, r6 // icount 331
 srai r31, r5, 11
 addi r31, r4, 13
 j 18
 nop // icount 335
 nop // icount 336
 nop // icount 337
 nop // icount 338
 nop // icount 339
 nop // icount 340
 nop // icount 341
 nop // icount 342
 nop // icount 343
 rol r7, r5, r4 // icount 344
 lbi r2, 6
 lbi r4, 0
 lbi r5, 0
 nop // to align branch icount 348
 beqz r2, 16
 add r0, r7, r5 // icount 350
 sra r0, r0, r4 // icount 351
 sco r3, r7, r1 // icount 352
 sub r1, r2, r6 // icount 353
 andi r4, r4, 0xfe
 st r31, r4, 4
 sle r1, r4, r2 // icount 356
 roli r1, r2, 11
 add r2, r7, r5 // icount 358
 addi r6, r0, 5
 sll r5, r1, r6 // icount 360
 lbi r1, 0
 ori r1, r31, 3
 slli r31, r31, 1
 lbi r3, 6
 ror r2, r3, r0 // icount 365
 slt r6, r2, r5 // icount 366
 srai r1, r31, 9
 ori r31, r1, 5
 lbi r5, 0
 lbi r31, 0
 bnez r1, 32
 seq r1, r6, r1 // icount 372
 add r6, r0, r2 // icount 373
 rori r3, r5, 10
 rori r31, r31, 1
 ror r2, r3, r5 // icount 376
 sub r6, r0, r1 // icount 377
 ori r6, r31, 6
 srai r5, r1, 11
 seq r1, r2, r1 // icount 380
 sle r6, r0, r6 // icount 381
 slli r5, r5, 4
 addi r3, r2, 9
 rol r7, r3, r0 // icount 384
 nop // to align meminst icount 385
 andi r0, r0, 0xfe
 st r1, r0, 2
 sub r3, r1, r6 // icount 388
 nop // to align meminst icount 389
 andi r0, r0, 0xfe
 ld r2, r0, 4
 slli r5, r3, 14
 rol r6, r1, r6 // icount 393
 andi r1, r1, 0
 sco r4, r6, r6 // icount 395
 andi r5, r5, 0xfe
 ld r4, r5, 8
 or r3, r2, r0 // icount 398
 slli r5, r6, 8
 slli r0, r4, 5
 sco r4, r5, r7 // icount 401
 add r7, r5, r6 // icount 402
 nop // to align meminst icount 403
 andi r2, r2, 0xfe
 stu r4, r2, 14
 slbi r31, 13
 andi r2, r6, 4
 subi r31, r3, 12
 sra r6, r6, r3 // icount 409
 seq r5, r2, r5 // icount 410
 lbi r0, 0
 lbi r3, 0
 beqz r4, 28
 andi r5, r1, 3
 nop // to align meminst icount 415
 andi r5, r5, 0xfe
 stu r2, r5, 10
 slt r5, r1, r4 // icount 418
 ori r4, r2, 9
 sra r3, r7, r6 // icount 420
 nop // to align meminst icount 421
 andi r5, r5, 0xfe
 stu r3, r5, 2
 ori r6, r3, 0
 sll r3, r6, r7 // icount 425
 roli r5, r3, 15
 sll r7, r1, r1 // icount 427
 subi r4, r6, 11
 rol r0, r7, r7 // icount 429
 andi r1, r1, 0xfe
 stu r2, r1, 10
 rori r1, r5, 15
 nop // to align meminst icount 433
 andi r0, r0, 0xfe
 st r0, r0, 2
 ror r7, r4, r5 // icount 436
 sra r6, r2, r0 // icount 437
 andi r4, r4, 8
 ror r4, r6, r5 // icount 439
 roli r3, r31, 5
 sle r0, r2, r5 // icount 441
 srai r3, r31, 5
 sco r1, r5, r7 // icount 443
 andi r31, r31, 0xfe
 st r6, r31, 2
 andi r4, r4, 0xfe
 stu r3, r4, 4
 sub r6, r4, r7 // icount 448
 nop // to align meminst icount 449
 andi r6, r6, 0xfe
 st r2, r6, 4
 sle r4, r1, r1 // icount 452
 lbi r6, 0
 lbi r6, 0
 beqz r31, 28
 addi r2, r6, 8
 addi r5, r31, 14
 ror r1, r5, r7 // icount 458
 seq r3, r7, r2 // icount 459
 or r5, r2, r2 // icount 460
 or r1, r6, r0 // icount 461
 andi r2, r2, 0xfe
 ld r0, r2, 8
 subi r5, r5, 0
 sra r6, r3, r0 // icount 465
 andi r1, r31, 13
 sco r5, r4, r6 // icount 467
 andi r5, r5, 0xfe
 st r6, r5, 12
 subi r6, r5, 13
 sra r4, r2, r5 // icount 471
 slli r5, r2, 0
 roli r2, r31, 2
 sra r3, r6, r4 // icount 474
 ori r0, r1, 7
 and r0, r0, r2 // icount 476
 slbi r4, 1
 ori r5, r4, 5
 rori r2, r31, 10
 slt r5, r7, r3 // icount 480
 rori r0, r2, 8
 ror r1, r1, r7 // icount 482
 sco r1, r3, r1 // icount 483
 andi r5, r5, 0xfe
 stu r0, r5, 10
 lbi r1, 15
 j 14
 nop // icount 488
 nop // icount 489
 nop // icount 490
 nop // icount 491
 nop // icount 492
 nop // icount 493
 nop // icount 494
 lbi r6, 0
 lbi r3, 0
 beqz r5, 28
 slt r0, r2, r5 // icount 498
 add r7, r5, r2 // icount 499
 lbi r4, 4
 nop // to align meminst icount 501
 andi r2, r2, 0xfe
 ld r31, r2, 0
 sll r5, r5, r6 // icount 504
 sra r6, r0, r1 // icount 505
 andi r4, r31, 12
 subi r3, r31, 12
 add r1, r4, r1 // icount 508
 sll r3, r6, r1 // icount 509
 lbi r1, 5
 and r6, r3, r7 // icount 511
 srai r31, r3, 4
 sll r3, r1, r3 // icount 513
 srai r3, r3, 8
 ori r1, r1, 5
 and r0, r3, r0 // icount 516
 rol r2, r3, r3 // icount 517
 addi r31, r3, 9
 lbi r0, 11
 andi r31, r31, 0xfe
 ld r4, r31, 4
 andi r0, r0, 0xfe
 stu r4, r0, 4
 subi r1, r0, 11
 sco r5, r6, r3 // icount 525
 lbi r31, 1
 or r0, r3, r3 // icount 527
 sll r7, r3, r1 // icount 528
 seq r5, r7, r0 // icount 529
 j 14
 nop // icount 531
 nop // icount 532
 nop // icount 533
 nop // icount 534
 nop // icount 535
 nop // icount 536
 nop // icount 537
 j 0
 roli r1, r4, 9
 j 28
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
 nop // icount 552
 nop // icount 553
 nop // icount 554
 sra r3, r0, r7 // icount 555
 andi r3, r3, 0xfe
 ld r0, r3, 14
 sle r6, r7, r0 // icount 558
 nop // to align meminst icount 559
 andi r6, r6, 0xfe
 ld r5, r6, 8
 add r5, r3, r2 // icount 562
 j 20
 nop // icount 564
 nop // icount 565
 nop // icount 566
 nop // icount 567
 nop // icount 568
 nop // icount 569
 nop // icount 570
 nop // icount 571
 nop // icount 572
 nop // icount 573
 lbi r1, 0
 lbi r4, 0
 nop // to align branch icount 576
 bnez r4, 12
 seq r7, r1, r2 // icount 578
 subi r4, r6, 3
 and r2, r5, r6 // icount 580
 sle r2, r5, r5 // icount 581
 slt r5, r7, r4 // icount 582
 ror r3, r3, r3 // icount 583
 sle r3, r0, r7 // icount 584
 or r0, r7, r2 // icount 585
 sub r4, r5, r1 // icount 586
 and r5, r7, r7 // icount 587
 slbi r0, 5
 slbi r1, 6
 lbi r2, 11
 lbi r6, 0
 lbi r5, 0
 bnez r3, 8
 roli r6, r31, 2
 sra r7, r4, r4 // icount 595
 andi r6, r1, 12
 slli r0, r2, 10
 addi r1, r4, 0
 nop // to align meminst icount 599
 andi r31, r31, 0xfe
 st r2, r31, 12
 seq r6, r5, r4 // icount 602
 ror r7, r7, r5 // icount 603
 sle r5, r5, r1 // icount 604
 nop // to align meminst icount 605
 andi r3, r3, 0xfe
 stu r4, r3, 8
 andi r6, r6, 0xfe
 stu r31, r6, 12
 and r0, r6, r1 // icount 610
 lbi r0, 0
 lbi r3, 0
 bnez r31, 24
 ori r31, r6, 12
 seq r4, r5, r4 // icount 615
 roli r6, r3, 9
 subi r5, r0, 4
 slli r5, r2, 0
 nop // to align meminst icount 619
 andi r0, r0, 0xfe
 st r31, r0, 8
 add r0, r4, r7 // icount 622
 ror r1, r4, r6 // icount 623
 slbi r0, 2
 rol r0, r0, r4 // icount 625
 and r5, r6, r1 // icount 626
 slt r3, r6, r1 // icount 627
 andi r3, r3, 0xfe
 ld r6, r3, 4
 rol r6, r0, r5 // icount 630
 slt r1, r1, r1 // icount 631
 slt r5, r3, r3 // icount 632
 lbi r1, 3
 ori r1, r6, 3
 sle r2, r1, r1 // icount 635
 and r3, r2, r0 // icount 636
 seq r5, r4, r1 // icount 637
 addi r1, r1, 7
 sra r7, r7, r1 // icount 639
 addi r1, r31, 0
 j 8
 nop // icount 642
 nop // icount 643
 nop // icount 644
 nop // icount 645
 andi r31, r4, 7
 j 14
 nop // icount 648
 nop // icount 649
 nop // icount 650
 nop // icount 651
 nop // icount 652
 nop // icount 653
 nop // icount 654
 sll r2, r6, r1 // icount 655
 j 22
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
 lbi r31, 0
 lbi r4, 0
 nop // to align branch icount 670
 bnez r0, 16
 andi r3, r3, 0xfe
 st r31, r3, 12
 sll r7, r1, r5 // icount 674
 srai r6, r3, 9
 addi r31, r5, 1
 sll r0, r4, r2 // icount 677
 and r1, r1, r6 // icount 678
 lbi r3, 4
 sle r0, r6, r5 // icount 680
 or r1, r0, r1 // icount 681
 andi r3, r31, 11
 slt r6, r1, r2 // icount 683
 lbi r5, 4
 ori r4, r3, 6
 slbi r3, 0
 nop // to align meminst icount 687
 andi r3, r3, 0xfe
 stu r3, r3, 14
 andi r4, r4, 0xfe
 st r31, r4, 12
 srai r31, r4, 8
 sra r1, r4, r5 // icount 693
 lbi r5, 0
 lbi r6, 0
 nop // to align branch icount 696
 beqz r1, 12
 sub r3, r7, r7 // icount 698
 nop // to align meminst icount 699
 andi r6, r6, 0xfe
 ld r31, r6, 12
 lbi r3, 8
 slt r0, r3, r1 // icount 703
 sra r3, r6, r2 // icount 704
 roli r1, r5, 12
 addi r31, r6, 6
 sle r2, r5, r6 // icount 707
 andi r6, r6, 0xfe
 ld r3, r6, 8
 roli r0, r4, 10
 seq r5, r6, r5 // icount 711
 and r0, r4, r6 // icount 712
 lbi r2, 0
 lbi r31, 0
 bnez r1, 8
 slli r31, r1, 6
 sle r1, r3, r2 // icount 717
 andi r3, r3, 0xfe
 stu r31, r3, 0
 sra r6, r5, r6 // icount 720
 or r2, r0, r4 // icount 721
 sra r1, r0, r3 // icount 722
 subi r31, r0, 0
 sub r1, r1, r5 // icount 724
 lbi r2, 0
 lbi r5, 0
 beqz r31, 20
 subi r0, r2, 14
 srai r4, r5, 6
 seq r2, r1, r1 // icount 730
 slbi r6, 12
 and r6, r3, r5 // icount 732
 roli r5, r0, 14
 rori r0, r2, 10
 addi r4, r2, 15
 rol r4, r4, r0 // icount 736
 rol r1, r7, r2 // icount 737
 lbi r2, 0
 nop // to align meminst icount 739
 andi r5, r5, 0xfe
 ld r6, r5, 10
 slt r0, r4, r1 // icount 742
 add r0, r5, r6 // icount 743
 or r3, r5, r0 // icount 744
 roli r1, r5, 14
 rori r1, r0, 3
 rol r0, r4, r5 // icount 747
 slbi r0, 9
 subi r3, r2, 15
 j 16
 nop // icount 751
 nop // icount 752
 nop // icount 753
 nop // icount 754
 nop // icount 755
 nop // icount 756
 nop // icount 757
 nop // icount 758
 lbi r0, 0
 lbi r4, 0
 beqz r5, 16
 ori r5, r31, 8
 srai r5, r31, 12
 rori r2, r6, 4
 rol r6, r5, r4 // icount 765
 slt r3, r0, r7 // icount 766
 slli r6, r31, 12
 add r3, r1, r6 // icount 768
 sll r1, r4, r7 // icount 769
 slt r6, r1, r5 // icount 770
 ror r5, r7, r3 // icount 771
 ori r3, r3, 6
 rol r7, r0, r0 // icount 773
 sll r2, r2, r1 // icount 774
 seq r0, r5, r7 // icount 775
 srai r3, r3, 1
 add r1, r6, r3 // icount 777
 lbi r6, 0
 lbi r5, 0
 nop // to align branch icount 780
 beqz r6, 4
 and r6, r2, r7 // icount 782
 sco r2, r5, r2 // icount 783
 rori r4, r2, 2
 add r5, r3, r1 // icount 785
 lbi r2, 0
 lbi r31, 0
 nop // to align branch icount 788
 beqz r3, 28
 add r4, r2, r7 // icount 790
 slbi r6, 9
 rori r6, r2, 3
 roli r31, r6, 13
 sra r0, r1, r1 // icount 794
 addi r1, r1, 1
 ori r6, r3, 2
 rol r4, r6, r7 // icount 797
 andi r2, r0, 9
 sll r0, r1, r3 // icount 799
 ror r3, r5, r2 // icount 800
 slt r6, r7, r1 // icount 801
 rori r4, r5, 6
 and r0, r7, r0 // icount 803
 addi r4, r4, 7
 sra r6, r5, r2 // icount 805
 addi r2, r3, 0
 sle r1, r4, r5 // icount 807
 sle r5, r7, r2 // icount 808
 seq r4, r2, r3 // icount 809
 lbi r4, 1
 add r4, r3, r6 // icount 811
 rori r2, r2, 2
 or r7, r5, r3 // icount 813
 andi r4, r4, 0xfe
 ld r0, r4, 10
 roli r6, r3, 9
 sle r0, r3, r1 // icount 817
 ror r3, r5, r5 // icount 818
 sll r7, r7, r7 // icount 819
 lbi r3, 0
 lbi r2, 0
 nop // to align branch icount 822
 beqz r4, 28
 slli r5, r6, 10
 roli r3, r2, 13
 sll r7, r5, r0 // icount 826
 slt r7, r4, r0 // icount 827
 slt r0, r6, r0 // icount 828
 sub r7, r6, r2 // icount 829
 andi r5, r5, 0xfe
 stu r3, r5, 6
 seq r5, r2, r7 // icount 832
 slbi r31, 8
 sll r7, r4, r4 // icount 834
 rol r5, r4, r6 // icount 835
 add r5, r1, r7 // icount 836
 roli r2, r3, 13
 add r0, r0, r6 // icount 838
 sco r6, r3, r1 // icount 839
 sco r3, r2, r6 // icount 840
 rol r6, r7, r6 // icount 841
 subi r4, r4, 8
 subi r4, r5, 10
 rori r2, r3, 6
 roli r0, r0, 1
 slbi r2, 9
 rol r7, r7, r3 // icount 847
 andi r31, r3, 9
 sll r1, r2, r4 // icount 849
 slli r31, r4, 15
 add r0, r7, r0 // icount 851
 and r3, r5, r6 // icount 852
 sra r6, r6, r2 // icount 853
 add r1, r5, r6 // icount 854
 lbi r1, 0
 lbi r2, 0
 beqz r2, 0
 andi r5, r5, 0xfe
 stu r4, r5, 8
 lbi r3, 0
 lbi r6, 0
 nop // to align branch icount 862
 bnez r31, 0
 j 22
 nop // icount 865
 nop // icount 866
 nop // icount 867
 nop // icount 868
 nop // icount 869
 nop // icount 870
 nop // icount 871
 nop // icount 872
 nop // icount 873
 nop // icount 874
 nop // icount 875
 j 14
 nop // icount 877
 nop // icount 878
 nop // icount 879
 nop // icount 880
 nop // icount 881
 nop // icount 882
 nop // icount 883
 lbi r2, 0
 lbi r31, 0
 nop // to align branch icount 886
 beqz r6, 24
 add r6, r7, r7 // icount 888
 or r2, r2, r4 // icount 889
 andi r1, r1, 0xfe
 ld r4, r1, 12
 slbi r31, 11
 addi r0, r3, 13
 srai r6, r31, 12
 sll r1, r7, r6 // icount 895
 rori r6, r6, 6
 addi r4, r4, 5
 sra r7, r1, r1 // icount 898
 rol r7, r3, r7 // icount 899
 sll r5, r2, r7 // icount 900
 add r2, r4, r0 // icount 901
 sll r7, r3, r7 // icount 902
 lbi r5, 12
 addi r6, r31, 3
 and r5, r4, r7 // icount 905
 ror r6, r3, r4 // icount 906
 slbi r5, 6
 ror r4, r2, r5 // icount 908
 or r2, r1, r1 // icount 909
 sub r4, r7, r6 // icount 910
 lbi r2, 4
 rori r5, r6, 13
 sle r7, r1, r4 // icount 913
 and r6, r4, r3 // icount 914
 nop // to align meminst icount 915
 andi r2, r2, 0xfe
 st r3, r2, 6
 ori r2, r3, 2
 j 0
 lbi r0, 3
 rol r1, r5, r0 // icount 921
 j 10
 nop // icount 923
 nop // icount 924
 nop // icount 925
 nop // icount 926
 nop // icount 927
 andi r0, r0, 0xfe
 st r4, r0, 2
 ror r0, r7, r5 // icount 930
 lbi r6, 0
 lbi r0, 0
 bnez r4, 24
 andi r1, r1, 0xfe
 stu r1, r1, 10
 add r0, r2, r1 // icount 936
 sra r7, r4, r6 // icount 937
 sle r7, r3, r5 // icount 938
 lbi r31, 14
 or r7, r5, r7 // icount 940
 sco r1, r2, r2 // icount 941
 lbi r1, 6
 slt r0, r6, r1 // icount 943
 rol r7, r6, r5 // icount 944
 sub r1, r7, r7 // icount 945
 slt r4, r5, r4 // icount 946
 roli r4, r2, 10
 ori r1, r3, 7
 nop // to align meminst icount 949
 andi r5, r5, 0xfe
 ld r0, r5, 0
 slt r1, r4, r1 // icount 952
 sub r5, r5, r6 // icount 953
 subi r5, r4, 3
 addi r2, r6, 6
 andi r31, r31, 0xfe
 st r1, r31, 14
 ror r6, r1, r2 // icount 958
 sll r2, r6, r5 // icount 959
 sra r7, r6, r5 // icount 960
 nop // to align meminst icount 961
 andi r31, r31, 0xfe
 ld r2, r31, 10
 j 30
 nop // icount 965
 nop // icount 966
 nop // icount 967
 nop // icount 968
 nop // icount 969
 nop // icount 970
 nop // icount 971
 nop // icount 972
 nop // icount 973
 nop // icount 974
 nop // icount 975
 nop // icount 976
 nop // icount 977
 nop // icount 978
 nop // icount 979
 slli r31, r3, 12
 sco r4, r3, r5 // icount 981
 lbi r6, 0
 lbi r0, 0
 nop // to align branch icount 984
 bnez r31, 0
 seq r6, r2, r0 // icount 986
 lbi r5, 0
 lbi r2, 0
 beqz r4, 4
 andi r1, r1, 0xfe
 ld r6, r1, 14
 add r5, r7, r4 // icount 992
 addi r5, r5, 6
 ori r3, r6, 11
 lbi r1, 0
 lbi r31, 0
 bnez r4, 28
 add r5, r4, r6 // icount 998
 sll r3, r1, r0 // icount 999
 rol r4, r2, r3 // icount 1000
 andi r2, r2, 13
 sra r4, r3, r6 // icount 1002
 slt r0, r6, r0 // icount 1003
 rol r2, r6, r1 // icount 1004
 rol r5, r4, r0 // icount 1005
 seq r4, r4, r7 // icount 1006
 addi r5, r6, 6
 slbi r4, 14
 or r7, r2, r3 // icount 1009
 andi r5, r5, 0xfe
 stu r3, r5, 4
 subi r1, r3, 12
 nop // to align meminst icount 1013
 andi r4, r4, 0xfe
 st r6, r4, 14
 ori r31, r2, 6
 rori r4, r1, 11
 sll r3, r1, r4 // icount 1018
 sle r1, r5, r7 // icount 1019
 slli r3, r31, 2
 and r7, r0, r6 // icount 1021
 andi r4, r1, 15
 srai r6, r5, 14
 sra r0, r6, r0 // icount 1024
 srai r31, r1, 5
 ror r2, r1, r4 // icount 1026
 nop // to align meminst icount 1027
 andi r2, r2, 0xfe
 st r2, r2, 12
 slbi r4, 4
 j 28
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
 sle r0, r0, r7 // icount 1046
 j 14
 nop // icount 1048
 nop // icount 1049
 nop // icount 1050
 nop // icount 1051
 nop // icount 1052
 nop // icount 1053
 nop // icount 1054
 lbi r2, 0
 lbi r31, 0
 bnez r31, 0
 halt // icount 1058
