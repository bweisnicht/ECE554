 // seed 5
 lbi r0, 134
 slbi r0, 69
 lbi r1, 201
 slbi r1, 50
 lbi r2, 132
 slbi r2, 221
 lbi r3, 43
 slbi r3, 122
 lbi r4, 65
 slbi r4, 217
 lbi r5, 248
 slbi r5, 115
 lbi r6, 187
 slbi r6, 71
 lbi r31, 45
 slbi r31, 169
 lbi r1, 0
 lbi r2, 0
 nop // to align branch icount 18
 bnez r2, 20
 andi r6, r3, 15
 sle r3, r3, r6 // icount 21
 srai r5, r1, 7
 sco r7, r4, r0 // icount 23
 subi r3, r0, 7
 nop // to align meminst icount 25
 andi r0, r0, 0xfe
 stu r2, r0, 0
 andi r31, r31, 0xfe
 ld r0, r31, 10
 slli r6, r6, 11
 seq r0, r3, r5 // icount 31
 roli r5, r6, 0
 slli r0, r6, 5
 sub r4, r0, r3 // icount 34
 nop // to align meminst icount 35
 andi r4, r4, 0xfe
 ld r0, r4, 6
 add r2, r1, r0 // icount 38
 andi r31, r3, 10
 andi r6, r6, 0xfe
 ld r1, r6, 2
 slbi r3, 13
 sra r1, r3, r7 // icount 43
 slbi r1, 6
 sco r3, r2, r5 // icount 45
 sco r0, r5, r7 // icount 46
 add r5, r7, r0 // icount 47
 lbi r2, 0
 lbi r3, 0
 nop // to align branch icount 50
 bnez r2, 4
 srai r31, r5, 15
 subi r3, r3, 4
 ror r0, r0, r6 // icount 54
 seq r0, r0, r7 // icount 55
 and r0, r6, r2 // icount 56
 j 2
 nop // icount 58
 nop // to align meminst icount 59
 andi r4, r4, 0xfe
 st r3, r4, 0
 lbi r0, 0
 lbi r6, 0
 nop // to align branch icount 64
 beqz r2, 16
 rol r4, r3, r6 // icount 66
 rol r7, r4, r3 // icount 67
 slli r6, r5, 6
 slt r0, r6, r6 // icount 69
 or r0, r3, r3 // icount 70
 rori r31, r0, 0
 seq r1, r5, r1 // icount 72
 ori r4, r31, 12
 rol r5, r6, r3 // icount 74
 subi r1, r1, 6
 ror r3, r2, r6 // icount 76
 nop // to align meminst icount 77
 andi r6, r6, 0xfe
 stu r0, r6, 12
 srai r4, r2, 13
 andi r3, r5, 5
 roli r0, r6, 3
 addi r0, r5, 3
 lbi r31, 0
 lbi r1, 0
 nop // to align branch icount 86
 beqz r0, 28
 sco r3, r4, r2 // icount 88
 sub r4, r2, r1 // icount 89
 or r3, r5, r1 // icount 90
 sco r5, r4, r3 // icount 91
 seq r1, r1, r3 // icount 92
 or r6, r2, r3 // icount 93
 slbi r6, 8
 sco r2, r7, r6 // icount 95
 srai r4, r0, 15
 roli r1, r3, 11
 add r2, r3, r7 // icount 98
 nop // to align meminst icount 99
 andi r5, r5, 0xfe
 st r6, r5, 8
 seq r1, r6, r1 // icount 102
 sco r6, r6, r7 // icount 103
 ror r2, r3, r3 // icount 104
 sra r4, r3, r1 // icount 105
 sra r5, r3, r7 // icount 106
 lbi r6, 3
 srai r6, r4, 6
 ror r6, r7, r1 // icount 109
 sll r5, r5, r2 // icount 110
 add r6, r0, r7 // icount 111
 srai r31, r31, 12
 add r1, r6, r6 // icount 113
 andi r2, r2, 0xfe
 ld r6, r2, 12
 slt r0, r2, r6 // icount 116
 slbi r3, 11
 subi r5, r0, 7
 lbi r31, 0
 lbi r31, 0
 bnez r5, 12
 sub r4, r3, r2 // icount 122
 slbi r5, 13
 slli r4, r6, 10
 sll r2, r6, r6 // icount 125
 slt r4, r1, r7 // icount 126
 and r2, r1, r1 // icount 127
 sub r5, r2, r6 // icount 128
 subi r4, r4, 3
 andi r5, r5, 0xfe
 stu r6, r5, 10
 sle r1, r4, r3 // icount 132
 ror r2, r7, r7 // icount 133
 sle r5, r6, r4 // icount 134
 roli r6, r2, 4
 ori r2, r4, 8
 lbi r6, 0
 lbi r2, 0
 bnez r4, 28
 seq r0, r1, r1 // icount 140
 lbi r1, 14
 and r5, r6, r7 // icount 142
 ror r2, r7, r2 // icount 143
 and r4, r7, r5 // icount 144
 and r7, r0, r6 // icount 145
 sll r5, r7, r5 // icount 146
 or r1, r2, r7 // icount 147
 sra r5, r4, r0 // icount 148
 sub r5, r0, r7 // icount 149
 sra r7, r1, r6 // icount 150
 slt r3, r6, r3 // icount 151
 roli r5, r2, 4
 sub r3, r6, r6 // icount 153
 sle r1, r4, r4 // icount 154
 ror r6, r6, r0 // icount 155
 slbi r3, 9
 sll r3, r5, r7 // icount 157
 add r6, r6, r0 // icount 158
 or r3, r7, r5 // icount 159
 ori r0, r5, 14
 sra r2, r6, r3 // icount 161
 sll r2, r2, r5 // icount 162
 lbi r0, 12
 lbi r2, 10
 or r7, r1, r1 // icount 165
 andi r4, r3, 2
 sll r0, r0, r6 // icount 167
 sll r0, r0, r3 // icount 168
 j 22
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
 nop // icount 180
 nop // to align meminst icount 181
 andi r1, r1, 0xfe
 stu r5, r1, 8
 ori r2, r31, 14
 j 30
 nop // icount 186
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
 lbi r6, 0
 lbi r31, 0
 bnez r2, 24
 rol r6, r7, r3 // icount 204
 roli r6, r3, 9
 and r5, r3, r4 // icount 206
 ori r6, r2, 5
 rori r2, r6, 6
 subi r0, r0, 4
 slbi r31, 7
 srai r1, r5, 14
 sub r6, r3, r6 // icount 212
 nop // to align meminst icount 213
 andi r5, r5, 0xfe
 st r3, r5, 2
 slt r6, r7, r6 // icount 216
 ror r0, r0, r4 // icount 217
 seq r0, r4, r5 // icount 218
 sle r1, r1, r7 // icount 219
 and r4, r6, r6 // icount 220
 subi r2, r3, 3
 andi r31, r31, 0xfe
 st r31, r31, 0
 roli r31, r3, 3
 and r3, r2, r6 // icount 225
 sll r0, r2, r0 // icount 226
 sub r7, r3, r7 // icount 227
 sra r2, r7, r0 // icount 228
 sco r7, r2, r4 // icount 229
 sll r2, r6, r7 // icount 230
 addi r2, r2, 3
 roli r1, r4, 11
 lbi r1, 0
 lbi r31, 0
 bnez r31, 24
 sub r3, r2, r6 // icount 236
 seq r2, r4, r2 // icount 237
 ror r3, r6, r0 // icount 238
 sll r5, r1, r1 // icount 239
 srai r31, r5, 7
 rol r2, r5, r5 // icount 241
 add r5, r3, r0 // icount 242
 seq r6, r4, r2 // icount 243
 addi r2, r5, 10
 ror r6, r1, r5 // icount 245
 add r3, r1, r0 // icount 246
 slt r3, r6, r3 // icount 247
 slli r6, r2, 14
 add r2, r5, r0 // icount 249
 sll r0, r6, r3 // icount 250
 or r5, r6, r4 // icount 251
 addi r4, r4, 11
 slli r4, r1, 5
 sle r7, r1, r3 // icount 254
 nop // to align meminst icount 255
 andi r3, r3, 0xfe
 ld r5, r3, 8
 roli r31, r4, 1
 sco r0, r3, r4 // icount 259
 ori r2, r6, 8
 sub r4, r6, r0 // icount 261
 sra r5, r3, r3 // icount 262
 j 28
 nop // icount 264
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
 lbi r0, 0
 lbi r5, 0
 nop // to align branch icount 280
 beqz r4, 4
 slli r0, r0, 12
 add r3, r3, r2 // icount 283
 sra r2, r6, r5 // icount 284
 sco r4, r3, r7 // icount 285
 lbi r5, 0
 lbi r3, 0
 nop // to align branch icount 288
 bnez r5, 8
 seq r1, r1, r0 // icount 290
 add r0, r0, r6 // icount 291
 addi r3, r4, 1
 nop // to align meminst icount 293
 andi r6, r6, 0xfe
 ld r3, r6, 4
 seq r0, r1, r2 // icount 296
 roli r5, r4, 0
 and r3, r6, r7 // icount 298
 addi r1, r1, 8
 lbi r5, 0
 lbi r2, 0
 nop // to align branch icount 302
 beqz r3, 8
 add r6, r3, r1 // icount 304
 andi r1, r4, 7
 andi r5, r0, 12
 addi r0, r5, 15
 and r1, r0, r6 // icount 308
 slli r0, r0, 13
 rol r3, r2, r1 // icount 310
 and r5, r4, r4 // icount 311
 rori r2, r3, 14
 j 4
 nop // icount 314
 nop // icount 315
 andi r4, r4, 0xfe
 st r3, r4, 2
 j 16
 nop // icount 319
 nop // icount 320
 nop // icount 321
 nop // icount 322
 nop // icount 323
 nop // icount 324
 nop // icount 325
 nop // icount 326
 j 24
 nop // icount 328
 nop // icount 329
 nop // icount 330
 nop // icount 331
 nop // icount 332
 nop // icount 333
 nop // icount 334
 nop // icount 335
 nop // icount 336
 nop // icount 337
 nop // icount 338
 nop // icount 339
 lbi r6, 0
 lbi r1, 0
 nop // to align branch icount 342
 bnez r6, 32
 or r7, r5, r1 // icount 344
 sra r5, r6, r3 // icount 345
 add r0, r5, r5 // icount 346
 lbi r1, 11
 sco r0, r4, r4 // icount 348
 slt r6, r0, r1 // icount 349
 sle r3, r0, r4 // icount 350
 nop // to align meminst icount 351
 andi r5, r5, 0xfe
 st r31, r5, 6
 roli r2, r31, 14
 sra r3, r0, r6 // icount 355
 and r6, r7, r1 // icount 356
 add r7, r0, r5 // icount 357
 slt r0, r5, r3 // icount 358
 nop // to align meminst icount 359
 andi r2, r2, 0xfe
 st r2, r2, 14
 lbi r0, 7
 slbi r2, 8
 roli r0, r4, 2
 nop // to align meminst icount 365
 andi r31, r31, 0xfe
 st r1, r31, 12
 rol r7, r6, r0 // icount 368
 or r0, r4, r7 // icount 369
 lbi r6, 4
 subi r3, r1, 9
 andi r2, r1, 7
 or r3, r6, r6 // icount 373
 add r1, r6, r4 // icount 374
 sle r1, r0, r5 // icount 375
 andi r2, r2, 0xfe
 stu r4, r2, 10
 sub r4, r5, r7 // icount 378
 sll r6, r2, r0 // icount 379
 slli r0, r0, 6
 sra r3, r1, r6 // icount 381
 lbi r5, 7
 slli r3, r5, 12
 sco r1, r2, r7 // icount 384
 lbi r2, 0
 lbi r3, 0
 beqz r0, 16
 andi r31, r31, 0xfe
 ld r0, r31, 12
 sco r5, r3, r4 // icount 390
 lbi r31, 5
 ori r6, r6, 15
 slt r2, r7, r6 // icount 393
 and r0, r1, r6 // icount 394
 seq r1, r2, r0 // icount 395
 andi r3, r3, 0xfe
 stu r1, r3, 2
 roli r2, r3, 13
 sub r7, r0, r2 // icount 399
 andi r1, r1, 0xfe
 ld r1, r1, 6
 addi r4, r0, 3
 and r2, r0, r6 // icount 403
 andi r3, r3, 0xfe
 ld r31, r3, 12
 or r7, r7, r5 // icount 406
 ori r31, r31, 4
 rori r2, r2, 15
 lbi r0, 0
 lbi r4, 0
 bnez r3, 0
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 414
 beqz r4, 20
 ori r4, r5, 1
 nop // to align meminst icount 417
 andi r6, r6, 0xfe
 ld r2, r6, 14
 subi r3, r4, 8
 and r3, r5, r5 // icount 421
 subi r5, r0, 1
 subi r5, r1, 5
 rol r6, r3, r5 // icount 424
 addi r31, r31, 7
 ori r6, r0, 6
 sra r1, r1, r5 // icount 427
 ror r5, r2, r5 // icount 428
 add r7, r7, r5 // icount 429
 sco r1, r1, r3 // icount 430
 lbi r5, 0
 ori r5, r0, 13
 subi r1, r5, 0
 and r2, r7, r3 // icount 434
 nop // to align meminst icount 435
 andi r0, r0, 0xfe
 ld r1, r0, 14
 sub r6, r7, r7 // icount 438
 add r5, r5, r4 // icount 439
 ror r6, r5, r0 // icount 440
 lbi r2, 0
 lbi r3, 0
 bnez r6, 28
 or r2, r5, r6 // icount 444
 subi r2, r2, 3
 add r7, r1, r2 // icount 446
 slt r7, r2, r6 // icount 447
 seq r4, r3, r1 // icount 448
 sra r2, r6, r6 // icount 449
 or r1, r6, r0 // icount 450
 lbi r4, 14
 slbi r6, 12
 sll r5, r7, r7 // icount 453
 and r5, r1, r5 // icount 454
 add r5, r6, r2 // icount 455
 ror r0, r1, r2 // icount 456
 nop // to align meminst icount 457
 andi r3, r3, 0xfe
 ld r0, r3, 14
 slbi r1, 0
 addi r0, r6, 10
 add r4, r2, r6 // icount 462
 and r4, r5, r5 // icount 463
 andi r5, r5, 0xfe
 st r1, r5, 0
 sra r1, r1, r0 // icount 466
 slbi r4, 3
 and r7, r0, r7 // icount 468
 addi r3, r31, 15
 slt r7, r0, r3 // icount 470
 or r4, r4, r0 // icount 471
 addi r2, r3, 13
 rol r6, r0, r1 // icount 473
 andi r1, r1, 0xfe
 ld r1, r1, 6
 andi r3, r3, 0xfe
 st r0, r3, 10
 add r2, r1, r6 // icount 478
 lbi r1, 0
 lbi r3, 0
 beqz r6, 20
 seq r6, r6, r1 // icount 482
 ror r3, r4, r5 // icount 483
 and r5, r4, r0 // icount 484
 sll r2, r3, r7 // icount 485
 sll r6, r0, r1 // icount 486
 rol r5, r2, r6 // icount 487
 ori r2, r5, 14
 subi r2, r5, 15
 roli r4, r31, 14
 subi r31, r31, 11
 andi r4, r4, 0xfe
 stu r0, r4, 12
 roli r1, r1, 3
 roli r31, r0, 7
 srai r1, r3, 15
 lbi r3, 6
 sll r6, r4, r1 // icount 498
 srai r4, r2, 14
 sub r1, r2, r5 // icount 500
 subi r3, r4, 5
 slli r1, r5, 1
 sll r7, r0, r1 // icount 503
 j 24
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
 nop // to align meminst icount 517
 andi r1, r1, 0xfe
 ld r3, r1, 8
 slli r4, r1, 8
 ror r2, r4, r5 // icount 521
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
 andi r6, r6, 0xfe
 stu r2, r6, 4
 j 24
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
 nop // icount 549
 nop // icount 550
 lbi r3, 0
 lbi r31, 0
 bnez r6, 28
 srai r3, r31, 0
 and r3, r4, r1 // icount 555
 seq r1, r0, r4 // icount 556
 seq r1, r0, r4 // icount 557
 andi r3, r3, 0xfe
 stu r5, r3, 8
 slli r3, r5, 13
 srai r2, r5, 0
 rol r7, r2, r5 // icount 562
 and r6, r1, r7 // icount 563
 rol r7, r3, r5 // icount 564
 nop // to align meminst icount 565
 andi r0, r0, 0xfe
 ld r0, r0, 12
 addi r5, r1, 1
 slt r6, r3, r1 // icount 569
 slbi r2, 7
 ori r3, r31, 15
 and r5, r6, r7 // icount 572
 roli r6, r5, 0
 ori r4, r3, 1
 ori r6, r1, 5
 and r3, r1, r0 // icount 576
 slbi r2, 3
 sle r5, r7, r1 // icount 578
 and r4, r5, r6 // icount 579
 sub r0, r5, r3 // icount 580
 nop // to align meminst icount 581
 andi r4, r4, 0xfe
 ld r3, r4, 4
 srai r3, r0, 6
 ori r0, r6, 2
 andi r5, r31, 7
 lbi r2, 0
 lbi r3, 0
 beqz r4, 12
 rori r2, r2, 13
 rol r2, r4, r5 // icount 591
 subi r4, r4, 13
 subi r2, r31, 1
 seq r2, r6, r6 // icount 594
 sle r2, r4, r7 // icount 595
 sra r7, r2, r6 // icount 596
 subi r3, r4, 5
 ror r3, r5, r4 // icount 598
 sra r7, r7, r7 // icount 599
 sub r7, r1, r1 // icount 600
 or r4, r6, r0 // icount 601
 lbi r1, 0
 lbi r3, 0
 nop // to align branch icount 604
 beqz r3, 28
 sle r7, r0, r6 // icount 606
 ori r3, r3, 5
 ror r0, r6, r2 // icount 608
 addi r5, r31, 6
 andi r5, r1, 10
 sub r1, r4, r3 // icount 611
 or r4, r1, r6 // icount 612
 sub r5, r1, r2 // icount 613
 seq r7, r2, r6 // icount 614
 sra r4, r5, r0 // icount 615
 roli r0, r31, 12
 rori r5, r31, 7
 andi r0, r5, 6
 roli r1, r4, 2
 lbi r5, 5
 seq r2, r1, r2 // icount 621
 andi r4, r4, 0xfe
 stu r5, r4, 12
 sle r5, r6, r6 // icount 624
 add r6, r4, r1 // icount 625
 roli r6, r5, 0
 subi r6, r3, 2
 sco r5, r6, r6 // icount 628
 nop // to align meminst icount 629
 andi r0, r0, 0xfe
 st r4, r0, 10
 or r2, r3, r7 // icount 632
 sll r2, r4, r5 // icount 633
 ori r0, r3, 13
 andi r1, r6, 0
 addi r3, r4, 8
 lbi r6, 0
 lbi r31, 0
 beqz r5, 0
 sle r3, r7, r2 // icount 640
 nop // to align meminst icount 641
 andi r6, r6, 0xfe
 stu r1, r6, 6
 slli r0, r1, 3
 slli r4, r4, 2
 j 20
 nop // icount 647
 nop // icount 648
 nop // icount 649
 nop // icount 650
 nop // icount 651
 nop // icount 652
 nop // icount 653
 nop // icount 654
 nop // icount 655
 nop // icount 656
 roli r0, r4, 11
 j 8
 nop // icount 659
 nop // icount 660
 nop // icount 661
 nop // icount 662
 ori r3, r5, 10
 or r7, r0, r3 // icount 664
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
 j 14
 nop // icount 676
 nop // icount 677
 nop // icount 678
 nop // icount 679
 nop // icount 680
 nop // icount 681
 nop // icount 682
 slli r4, r6, 14
 subi r4, r0, 13
 lbi r0, 0
 lbi r2, 0
 bnez r31, 20
 sra r4, r2, r6 // icount 688
 sra r1, r5, r6 // icount 689
 addi r2, r2, 9
 slbi r31, 1
 ror r4, r0, r2 // icount 692
 nop // to align meminst icount 693
 andi r1, r1, 0xfe
 ld r2, r1, 8
 sub r3, r7, r6 // icount 696
 srai r0, r6, 13
 and r7, r0, r4 // icount 698
 slt r3, r5, r2 // icount 699
 or r7, r0, r3 // icount 700
 andi r5, r5, 9
 rori r2, r31, 7
 andi r5, r4, 9
 ror r0, r2, r6 // icount 704
 sll r7, r7, r2 // icount 705
 slt r4, r1, r5 // icount 706
 rori r31, r6, 2
 and r6, r4, r3 // icount 708
 sco r1, r2, r1 // icount 709
 j 18
 nop // icount 711
 nop // icount 712
 nop // icount 713
 nop // icount 714
 nop // icount 715
 nop // icount 716
 nop // icount 717
 nop // icount 718
 nop // icount 719
 andi r3, r2, 9
 j 30
 nop // icount 722
 nop // icount 723
 nop // icount 724
 nop // icount 725
 nop // icount 726
 nop // icount 727
 nop // icount 728
 nop // icount 729
 nop // icount 730
 nop // icount 731
 nop // icount 732
 nop // icount 733
 nop // icount 734
 nop // icount 735
 nop // icount 736
 lbi r2, 0
 lbi r3, 0
 bnez r4, 12
 add r4, r0, r3 // icount 740
 sll r5, r1, r6 // icount 741
 ror r5, r3, r1 // icount 742
 rol r1, r3, r1 // icount 743
 ori r0, r1, 1
 subi r1, r5, 8
 subi r0, r5, 2
 addi r31, r5, 0
 sub r1, r5, r4 // icount 748
 sco r6, r1, r7 // icount 749
 srai r5, r6, 12
 andi r5, r31, 2
 ori r4, r5, 12
 add r1, r6, r7 // icount 753
 slbi r3, 3
 j 20
 nop // icount 756
 nop // icount 757
 nop // icount 758
 nop // icount 759
 nop // icount 760
 nop // icount 761
 nop // icount 762
 nop // icount 763
 nop // icount 764
 nop // icount 765
 lbi r6, 0
 lbi r3, 0
 nop // to align branch icount 768
 beqz r0, 28
 or r0, r6, r3 // icount 770
 sle r2, r2, r3 // icount 771
 rori r1, r2, 6
 sra r3, r6, r4 // icount 773
 or r0, r2, r2 // icount 774
 subi r4, r31, 3
 sra r5, r4, r5 // icount 776
 sub r6, r4, r1 // icount 777
 addi r3, r6, 1
 sco r1, r5, r4 // icount 779
 or r5, r4, r1 // icount 780
 roli r6, r6, 10
 andi r31, r4, 15
 sle r1, r2, r1 // icount 783
 seq r7, r2, r3 // icount 784
 srai r0, r5, 1
 ori r0, r5, 13
 rol r0, r1, r4 // icount 787
 ori r6, r4, 5
 lbi r5, 11
 sco r7, r2, r3 // icount 790
 slbi r31, 8
 rol r6, r5, r2 // icount 792
 or r6, r5, r7 // icount 793
 srai r1, r31, 5
 sll r6, r3, r6 // icount 795
 andi r4, r4, 0xfe
 st r2, r4, 6
 ror r5, r2, r6 // icount 798
 j 10
 nop // icount 800
 nop // icount 801
 nop // icount 802
 nop // icount 803
 nop // icount 804
 ror r4, r7, r6 // icount 805
 ror r7, r6, r3 // icount 806
 lbi r1, 0
 lbi r5, 0
 beqz r4, 16
 slt r7, r7, r3 // icount 810
 slbi r6, 4
 ori r5, r6, 9
 sra r7, r5, r6 // icount 813
 sub r0, r5, r2 // icount 814
 sco r2, r6, r1 // icount 815
 roli r0, r5, 2
 sub r0, r5, r5 // icount 817
 sll r0, r3, r2 // icount 818
 sra r1, r7, r0 // icount 819
 addi r1, r31, 1
 slt r4, r3, r5 // icount 821
 rol r5, r7, r6 // icount 822
 nop // to align meminst icount 823
 andi r31, r31, 0xfe
 ld r1, r31, 14
 and r5, r7, r6 // icount 826
 and r7, r1, r1 // icount 827
 j 8
 nop // icount 829
 nop // icount 830
 nop // icount 831
 nop // icount 832
 slt r0, r4, r2 // icount 833
 and r5, r3, r4 // icount 834
 subi r2, r5, 1
 lbi r31, 0
 lbi r4, 0
 nop // to align branch icount 838
 bnez r5, 32
 andi r5, r2, 3
 ori r0, r2, 7
 roli r5, r5, 14
 and r1, r1, r3 // icount 843
 sra r6, r4, r0 // icount 844
 slbi r4, 9
 add r3, r1, r1 // icount 846
 nop // to align meminst icount 847
 andi r5, r5, 0xfe
 st r1, r5, 0
 andi r31, r31, 0xfe
 ld r4, r31, 14
 andi r5, r6, 0
 ror r2, r6, r2 // icount 853
 add r6, r5, r7 // icount 854
 add r7, r0, r7 // icount 855
 sra r2, r6, r6 // icount 856
 sle r1, r5, r5 // icount 857
 ror r6, r4, r3 // icount 858
 sco r1, r4, r7 // icount 859
 rol r1, r3, r5 // icount 860
 and r1, r3, r0 // icount 861
 ori r3, r3, 7
 and r5, r5, r0 // icount 863
 or r5, r7, r3 // icount 864
 nop // to align meminst icount 865
 andi r4, r4, 0xfe
 ld r2, r4, 0
 ror r3, r4, r2 // icount 868
 nop // to align meminst icount 869
 andi r0, r0, 0xfe
 ld r0, r0, 0
 sll r3, r4, r3 // icount 872
 rol r7, r0, r7 // icount 873
 or r4, r4, r1 // icount 874
 ror r2, r5, r1 // icount 875
 roli r4, r31, 14
 rori r2, r0, 3
 or r2, r6, r4 // icount 878
 and r1, r2, r1 // icount 879
 lbi r6, 0
 lbi r1, 0
 nop // to align branch icount 882
 bnez r3, 32
 sll r0, r7, r3 // icount 884
 sle r7, r4, r7 // icount 885
 sle r2, r6, r6 // icount 886
 and r6, r0, r0 // icount 887
 andi r6, r6, 0xfe
 stu r4, r6, 14
 slli r3, r3, 2
 nop // to align meminst icount 891
 andi r2, r2, 0xfe
 ld r4, r2, 0
 andi r6, r6, 0xfe
 st r5, r6, 10
 sra r5, r0, r7 // icount 896
 srai r0, r6, 11
 slli r2, r31, 12
 slli r3, r3, 0
 seq r1, r5, r7 // icount 900
 slbi r3, 15
 and r4, r7, r3 // icount 902
 lbi r2, 14
 add r3, r5, r3 // icount 904
 roli r2, r5, 13
 subi r3, r31, 15
 addi r0, r0, 0
 andi r0, r0, 0xfe
 st r4, r0, 14
 sle r1, r6, r5 // icount 910
 lbi r0, 11
 srai r3, r5, 2
 add r3, r1, r6 // icount 913
 slt r7, r0, r5 // icount 914
 and r2, r1, r0 // icount 915
 andi r1, r1, 0xfe
 st r6, r1, 14
 roli r3, r31, 11
 srai r0, r1, 13
 roli r4, r3, 15
 nop // to align meminst icount 921
 andi r4, r4, 0xfe
 ld r0, r4, 10
 j 26
 nop // icount 925
 nop // icount 926
 nop // icount 927
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
 j 26
 nop // icount 939
 nop // icount 940
 nop // icount 941
 nop // icount 942
 nop // icount 943
 nop // icount 944
 nop // icount 945
 nop // icount 946
 nop // icount 947
 nop // icount 948
 nop // icount 949
 nop // icount 950
 nop // icount 951
 seq r1, r0, r7 // icount 952
 rori r5, r31, 0
 j 10
 nop // icount 955
 nop // icount 956
 nop // icount 957
 nop // icount 958
 nop // icount 959
 lbi r31, 0
 lbi r6, 0
 nop // to align branch icount 962
 bnez r6, 8
 lbi r6, 2
 sle r0, r6, r3 // icount 965
 andi r31, r31, 0xfe
 st r3, r31, 6
 lbi r6, 6
 andi r6, r5, 9
 sub r6, r2, r7 // icount 970
 rori r3, r4, 5
 rori r5, r0, 8
 lbi r1, 0
 lbi r1, 0
 bnez r2, 12
 ror r4, r5, r7 // icount 976
 srai r3, r2, 4
 sll r6, r0, r3 // icount 978
 or r6, r4, r6 // icount 979
 ori r4, r3, 8
 sco r6, r0, r1 // icount 981
 sub r6, r1, r0 // icount 982
 nop // to align meminst icount 983
 andi r0, r0, 0xfe
 st r3, r0, 6
 andi r31, r31, 0xfe
 ld r1, r31, 8
 slt r5, r7, r2 // icount 988
 sra r7, r6, r7 // icount 989
 and r2, r4, r7 // icount 990
 j 26
 nop // icount 992
 nop // icount 993
 nop // icount 994
 nop // icount 995
 nop // icount 996
 nop // icount 997
 nop // icount 998
 nop // icount 999
 nop // icount 1000
 nop // icount 1001
 nop // icount 1002
 nop // icount 1003
 nop // icount 1004
 lbi r3, 0
 lbi r6, 0
 beqz r6, 4
 sco r0, r7, r0 // icount 1008
 andi r5, r1, 9
 sle r6, r0, r7 // icount 1010
 slli r2, r0, 8
 seq r2, r1, r0 // icount 1012
 halt // icount 1013
