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
 lbi r2, 0
 lbi r3, 0
 nop // to align branch icount 18
 beqz r3, 24
 sll r0, r6, r1 // icount 20
 slbi r4, 3
 slli r4, r2, 9
 lbi r31, 9
 andi r2, r3, 1
 rol r6, r6, r2 // icount 25
 ror r5, r6, r7 // icount 26
 nop // to align meminst icount 27
 andi r3, r3, 0xfe
 ld r31, r3, 10
 andi r2, r3, 0
 slt r3, r0, r1 // icount 31
 sll r5, r4, r7 // icount 32
 or r6, r5, r6 // icount 33
 sco r6, r4, r5 // icount 34
 srai r2, r4, 1
 addi r5, r6, 13
 sra r5, r3, r5 // icount 37
 ror r3, r7, r0 // icount 38
 sub r5, r0, r6 // icount 39
 srai r31, r4, 8
 rori r0, r5, 6
 sle r1, r2, r2 // icount 42
 addi r5, r5, 15
 sll r1, r2, r5 // icount 44
 sra r2, r4, r6 // icount 45
 j 8
 nop // icount 47
 nop // icount 48
 nop // icount 49
 nop // icount 50
 lbi r4, 0
 lbi r0, 0
 beqz r1, 28
 sll r0, r6, r2 // icount 54
 roli r2, r2, 3
 slbi r5, 7
 slli r5, r0, 6
 and r3, r7, r0 // icount 58
 addi r5, r4, 2
 andi r5, r5, 0xfe
 ld r6, r5, 8
 andi r6, r6, 0xfe
 ld r0, r6, 8
 andi r4, r4, 12
 srai r4, r1, 7
 addi r5, r5, 8
 andi r2, r2, 12
 sub r2, r7, r4 // icount 68
 slli r1, r6, 14
 ori r1, r4, 15
 seq r7, r6, r6 // icount 71
 sco r7, r7, r2 // icount 72
 rori r1, r1, 15
 sle r2, r6, r4 // icount 74
 sco r1, r7, r4 // icount 75
 lbi r0, 0
 sco r5, r5, r6 // icount 77
 lbi r0, 12
 srai r1, r1, 2
 rol r1, r3, r3 // icount 80
 ori r2, r3, 11
 lbi r2, 6
 nop // to align meminst icount 83
 andi r31, r31, 0xfe
 ld r4, r31, 2
 j 4
 nop // icount 87
 nop // icount 88
 j 8
 nop // icount 90
 nop // icount 91
 nop // icount 92
 nop // icount 93
 j 12
 nop // icount 95
 nop // icount 96
 nop // icount 97
 nop // icount 98
 nop // icount 99
 nop // icount 100
 lbi r5, 0
 lbi r4, 0
 beqz r0, 24
 lbi r31, 2
 and r5, r7, r2 // icount 105
 or r2, r5, r0 // icount 106
 andi r5, r3, 13
 andi r3, r3, 0xfe
 ld r2, r3, 14
 ror r1, r7, r7 // icount 110
 lbi r3, 10
 rol r3, r3, r4 // icount 112
 rol r2, r0, r0 // icount 113
 addi r4, r3, 0
 slbi r5, 9
 rol r0, r6, r3 // icount 116
 subi r0, r5, 10
 sle r3, r6, r7 // icount 118
 sra r7, r2, r1 // icount 119
 slt r0, r0, r1 // icount 120
 slli r5, r3, 8
 slbi r31, 15
 rori r2, r3, 15
 and r7, r5, r7 // icount 124
 ror r6, r0, r3 // icount 125
 roli r2, r3, 12
 rori r1, r31, 6
 slli r0, r3, 6
 j 12
 nop // icount 130
 nop // icount 131
 nop // icount 132
 nop // icount 133
 nop // icount 134
 nop // icount 135
 lbi r5, 0
 lbi r3, 0
 nop // to align branch icount 138
 beqz r1, 32
 ror r2, r3, r3 // icount 140
 slbi r5, 9
 sra r6, r4, r4 // icount 142
 andi r1, r1, 14
 andi r5, r5, 0xfe
 stu r2, r5, 4
 addi r6, r0, 12
 srai r0, r1, 11
 sco r0, r1, r6 // icount 148
 nop // to align meminst icount 149
 andi r0, r0, 0xfe
 ld r31, r0, 12
 ror r3, r1, r5 // icount 152
 or r3, r6, r4 // icount 153
 seq r4, r7, r2 // icount 154
 sll r6, r5, r3 // icount 155
 rori r3, r5, 9
 or r7, r6, r6 // icount 157
 andi r4, r4, 0xfe
 st r1, r4, 8
 andi r1, r1, 0xfe
 st r0, r1, 0
 addi r1, r31, 14
 slbi r4, 6
 subi r31, r5, 8
 and r7, r1, r3 // icount 165
 slbi r5, 13
 lbi r5, 12
 addi r3, r5, 2
 rol r4, r5, r1 // icount 169
 ror r0, r1, r5 // icount 170
 sco r7, r1, r2 // icount 171
 srai r1, r2, 14
 add r0, r0, r5 // icount 173
 ori r1, r2, 1
 rol r5, r6, r2 // icount 175
 subi r5, r6, 6
 lbi r2, 0
 lbi r4, 0
 beqz r5, 16
 sra r7, r2, r5 // icount 180
 sra r6, r6, r6 // icount 181
 sra r3, r4, r6 // icount 182
 sle r6, r5, r7 // icount 183
 ori r0, r31, 4
 andi r2, r0, 11
 andi r31, r31, 0xfe
 st r0, r31, 14
 sll r1, r6, r5 // icount 188
 nop // to align meminst icount 189
 andi r2, r2, 0xfe
 stu r1, r2, 2
 sco r2, r6, r5 // icount 192
 or r7, r7, r7 // icount 193
 rori r31, r5, 0
 or r0, r6, r2 // icount 195
 slt r0, r6, r4 // icount 196
 rori r2, r1, 1
 addi r3, r6, 14
 lbi r4, 0
 lbi r1, 0
 beqz r6, 0
 j 12
 nop // icount 203
 nop // icount 204
 nop // icount 205
 nop // icount 206
 nop // icount 207
 nop // icount 208
 j 10
 nop // icount 210
 nop // icount 211
 nop // icount 212
 nop // icount 213
 nop // icount 214
 lbi r4, 0
 lbi r31, 0
 beqz r0, 8
 sco r0, r6, r3 // icount 218
 sll r3, r3, r4 // icount 219
 and r5, r3, r2 // icount 220
 nop // to align meminst icount 221
 andi r31, r31, 0xfe
 ld r2, r31, 6
 sra r1, r0, r6 // icount 224
 subi r1, r2, 13
 sra r5, r4, r7 // icount 226
 seq r2, r6, r3 // icount 227
 j 26
 nop // icount 229
 nop // icount 230
 nop // icount 231
 nop // icount 232
 nop // icount 233
 nop // icount 234
 nop // icount 235
 nop // icount 236
 nop // icount 237
 nop // icount 238
 nop // icount 239
 nop // icount 240
 nop // icount 241
 j 6
 nop // icount 243
 nop // icount 244
 nop // icount 245
 lbi r6, 0
 lbi r2, 0
 nop // to align branch icount 248
 beqz r1, 28
 srai r4, r3, 12
 slt r6, r3, r7 // icount 251
 lbi r0, 10
 sle r3, r2, r0 // icount 253
 andi r31, r31, 0xfe
 stu r4, r31, 10
 rol r1, r5, r2 // icount 256
 nop // to align meminst icount 257
 andi r4, r4, 0xfe
 ld r0, r4, 2
 srai r1, r6, 9
 roli r5, r3, 9
 rol r0, r7, r5 // icount 262
 nop // to align meminst icount 263
 andi r4, r4, 0xfe
 ld r0, r4, 10
 andi r2, r2, 0xfe
 st r0, r2, 6
 sra r2, r0, r6 // icount 268
 rori r2, r31, 12
 ror r4, r3, r4 // icount 270
 subi r6, r2, 4
 and r0, r7, r3 // icount 272
 slt r7, r7, r2 // icount 273
 and r1, r6, r7 // icount 274
 addi r4, r31, 2
 slt r4, r3, r6 // icount 276
 nop // to align meminst icount 277
 andi r6, r6, 0xfe
 ld r5, r6, 10
 or r6, r4, r4 // icount 280
 roli r6, r31, 13
 rol r3, r5, r7 // icount 282
 sle r4, r4, r4 // icount 283
 rol r6, r2, r2 // icount 284
 sub r6, r2, r1 // icount 285
 lbi r1, 0
 lbi r3, 0
 nop // to align branch icount 288
 beqz r6, 12
 addi r5, r3, 14
 subi r0, r2, 2
 add r2, r6, r7 // icount 292
 nop // to align meminst icount 293
 andi r6, r6, 0xfe
 ld r3, r6, 6
 ori r4, r3, 6
 add r3, r7, r5 // icount 297
 sle r3, r1, r7 // icount 298
 sub r7, r7, r4 // icount 299
 addi r1, r4, 2
 rori r1, r31, 5
 addi r6, r4, 14
 nop // to align meminst icount 303
 andi r5, r5, 0xfe
 stu r6, r5, 6
 j 24
 nop // icount 307
 nop // icount 308
 nop // icount 309
 nop // icount 310
 nop // icount 311
 nop // icount 312
 nop // icount 313
 nop // icount 314
 nop // icount 315
 nop // icount 316
 nop // icount 317
 nop // icount 318
 j 8
 nop // icount 320
 nop // icount 321
 nop // icount 322
 nop // icount 323
 lbi r4, 0
 lbi r31, 0
 nop // to align branch icount 326
 bnez r3, 12
 addi r6, r3, 4
 srai r0, r4, 3
 slt r1, r4, r3 // icount 330
 nop // to align meminst icount 331
 andi r2, r2, 0xfe
 stu r0, r2, 14
 slbi r4, 0
 or r3, r7, r7 // icount 335
 roli r31, r0, 4
 andi r6, r6, 10
 slbi r5, 11
 nop // to align meminst icount 339
 andi r0, r0, 0xfe
 stu r0, r0, 4
 seq r3, r0, r7 // icount 342
 slt r2, r5, r1 // icount 343
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 346
 beqz r1, 0
 lbi r2, 0
 lbi r4, 0
 nop // to align branch icount 350
 beqz r1, 20
 sco r6, r4, r0 // icount 352
 roli r31, r31, 11
 sra r0, r3, r1 // icount 354
 and r3, r0, r5 // icount 355
 addi r1, r5, 4
 rol r5, r6, r0 // icount 357
 andi r31, r31, 0xfe
 st r5, r31, 10
 subi r5, r2, 2
 nop // to align meminst icount 361
 andi r0, r0, 0xfe
 stu r3, r0, 12
 sll r3, r5, r7 // icount 364
 subi r6, r4, 10
 andi r3, r3, 0xfe
 stu r3, r3, 6
 rori r5, r5, 4
 ori r3, r2, 5
 add r6, r6, r1 // icount 370
 nop // to align meminst icount 371
 andi r4, r4, 0xfe
 ld r5, r4, 14
 roli r4, r0, 14
 slbi r0, 6
 srai r2, r31, 14
 roli r5, r3, 4
 j 20
 nop // icount 379
 nop // icount 380
 nop // icount 381
 nop // icount 382
 nop // icount 383
 nop // icount 384
 nop // icount 385
 nop // icount 386
 nop // icount 387
 nop // icount 388
 lbi r2, 0
 lbi r0, 0
 bnez r31, 24
 add r4, r4, r0 // icount 392
 rol r1, r7, r7 // icount 393
 and r6, r0, r2 // icount 394
 slt r7, r5, r4 // icount 395
 or r2, r6, r4 // icount 396
 ror r1, r2, r2 // icount 397
 andi r31, r0, 11
 slt r6, r0, r0 // icount 399
 add r6, r3, r1 // icount 400
 nop // to align meminst icount 401
 andi r31, r31, 0xfe
 stu r4, r31, 2
 sra r1, r1, r7 // icount 404
 sra r7, r3, r7 // icount 405
 seq r3, r6, r2 // icount 406
 sub r0, r4, r3 // icount 407
 and r5, r6, r2 // icount 408
 roli r31, r4, 3
 andi r1, r1, 15
 ror r7, r4, r5 // icount 411
 sco r6, r3, r5 // icount 412
 sub r0, r0, r0 // icount 413
 slt r5, r6, r4 // icount 414
 sra r7, r7, r3 // icount 415
 subi r4, r2, 7
 roli r0, r1, 1
 lbi r31, 0
 lbi r1, 0
 nop // to align branch icount 420
 bnez r31, 24
 sco r5, r4, r1 // icount 422
 subi r2, r5, 3
 or r6, r6, r0 // icount 424
 nop // to align meminst icount 425
 andi r3, r3, 0xfe
 st r5, r3, 10
 sra r3, r0, r2 // icount 428
 addi r3, r2, 1
 srai r0, r5, 3
 add r6, r1, r1 // icount 431
 sle r2, r5, r0 // icount 432
 sra r5, r3, r3 // icount 433
 slli r1, r3, 13
 nop // to align meminst icount 435
 andi r2, r2, 0xfe
 ld r1, r2, 2
 and r6, r7, r6 // icount 438
 nop // to align meminst icount 439
 andi r5, r5, 0xfe
 st r5, r5, 8
 subi r2, r1, 0
 sco r5, r3, r6 // icount 443
 andi r3, r3, 0xfe
 st r4, r3, 0
 rol r7, r7, r5 // icount 446
 andi r5, r0, 12
 srai r2, r6, 9
 lbi r1, 14
 andi r2, r2, 0xfe
 stu r6, r2, 4
 sra r7, r0, r3 // icount 452
 andi r6, r5, 6
 j 2
 nop // icount 455
 j 10
 nop // icount 457
 nop // icount 458
 nop // icount 459
 nop // icount 460
 nop // icount 461
 j 20
 nop // icount 463
 nop // icount 464
 nop // icount 465
 nop // icount 466
 nop // icount 467
 nop // icount 468
 nop // icount 469
 nop // icount 470
 nop // icount 471
 nop // icount 472
 j 4
 nop // icount 474
 nop // icount 475
 lbi r4, 0
 lbi r31, 0
 nop // to align branch icount 478
 beqz r31, 8
 seq r6, r1, r7 // icount 480
 roli r1, r5, 12
 sra r1, r5, r6 // icount 482
 sra r5, r4, r2 // icount 483
 lbi r4, 13
 slli r6, r1, 2
 slt r3, r0, r0 // icount 486
 slbi r31, 5
 lbi r31, 0
 lbi r0, 0
 nop // to align branch icount 490
 bnez r3, 8
 sco r6, r5, r1 // icount 492
 nop // to align meminst icount 493
 andi r0, r0, 0xfe
 ld r3, r0, 14
 addi r6, r31, 3
 seq r5, r4, r3 // icount 497
 sco r0, r7, r5 // icount 498
 or r4, r1, r4 // icount 499
 slbi r4, 4
 sle r4, r5, r2 // icount 501
 j 16
 nop // icount 503
 nop // icount 504
 nop // icount 505
 nop // icount 506
 nop // icount 507
 nop // icount 508
 nop // icount 509
 nop // icount 510
 lbi r6, 0
 lbi r5, 0
 bnez r4, 32
 sle r0, r3, r2 // icount 514
 andi r0, r5, 8
 slbi r2, 4
 nop // to align meminst icount 517
 andi r31, r31, 0xfe
 st r1, r31, 8
 lbi r1, 12
 srai r2, r3, 7
 sra r7, r7, r6 // icount 522
 nop // to align meminst icount 523
 andi r2, r2, 0xfe
 stu r2, r2, 0
 ori r4, r1, 8
 sle r6, r6, r7 // icount 527
 addi r2, r6, 8
 addi r5, r31, 14
 ror r1, r5, r7 // icount 530
 seq r3, r7, r2 // icount 531
 or r5, r2, r2 // icount 532
 or r1, r6, r0 // icount 533
 andi r2, r2, 0xfe
 ld r0, r2, 8
 subi r5, r5, 0
 sra r6, r3, r0 // icount 537
 andi r1, r31, 13
 sco r5, r4, r6 // icount 539
 andi r5, r5, 0xfe
 st r6, r5, 12
 subi r6, r5, 13
 sra r4, r2, r5 // icount 543
 slli r5, r2, 0
 roli r2, r31, 2
 sra r3, r6, r4 // icount 546
 ori r0, r1, 7
 and r0, r0, r2 // icount 548
 slbi r4, 1
 ori r5, r4, 5
 rori r2, r31, 10
 lbi r31, 0
 lbi r3, 0
 nop // to align branch icount 554
 bnez r5, 16
 andi r4, r0, 1
 subi r1, r31, 0
 slli r1, r1, 8
 nop // to align meminst icount 559
 andi r0, r0, 0xfe
 st r5, r0, 10
 srai r31, r1, 14
 ror r3, r0, r6 // icount 563
 lbi r6, 5
 addi r0, r1, 11
 sle r0, r6, r7 // icount 566
 andi r5, r6, 5
 addi r3, r1, 11
 nop // to align meminst icount 569
 andi r3, r3, 0xfe
 st r5, r3, 0
 sle r7, r5, r2 // icount 572
 nop // to align meminst icount 573
 andi r5, r5, 0xfe
 stu r0, r5, 14
 slt r4, r3, r0 // icount 576
 or r6, r3, r3 // icount 577
 lbi r4, 0
 lbi r31, 0
 nop // to align branch icount 580
 beqz r1, 4
 or r7, r2, r3 // icount 582
 lbi r3, 15
 rol r3, r3, r1 // icount 584
 sle r3, r4, r3 // icount 585
 j 28
 nop // icount 587
 nop // icount 588
 nop // icount 589
 nop // icount 590
 nop // icount 591
 nop // icount 592
 nop // icount 593
 nop // icount 594
 nop // icount 595
 nop // icount 596
 nop // icount 597
 nop // icount 598
 nop // icount 599
 nop // icount 600
 lbi r1, 0
 lbi r2, 0
 beqz r0, 8
 sub r2, r0, r3 // icount 604
 sll r0, r2, r5 // icount 605
 sco r7, r4, r4 // icount 606
 subi r4, r5, 11
 srai r5, r2, 13
 ror r1, r2, r6 // icount 609
 sub r7, r5, r2 // icount 610
 slli r5, r5, 14
 lbi r0, 0
 lbi r1, 0
 nop // to align branch icount 614
 bnez r1, 12
 sub r3, r0, r3 // icount 616
 sco r7, r0, r5 // icount 617
 sra r6, r6, r3 // icount 618
 rol r1, r2, r4 // icount 619
 andi r6, r6, 0xfe
 stu r0, r6, 10
 sle r6, r3, r2 // icount 622
 sub r6, r7, r0 // icount 623
 addi r2, r6, 11
 nop // to align meminst icount 625
 andi r4, r4, 0xfe
 ld r0, r4, 0
 and r4, r5, r6 // icount 628
 nop // to align meminst icount 629
 andi r1, r1, 0xfe
 st r4, r1, 8
 and r2, r5, r1 // icount 632
 j 18
 nop // icount 634
 nop // icount 635
 nop // icount 636
 nop // icount 637
 nop // icount 638
 nop // icount 639
 nop // icount 640
 nop // icount 641
 nop // icount 642
 lbi r4, 0
 lbi r1, 0
 bnez r0, 8
 lbi r0, 14
 nop // to align meminst icount 647
 andi r2, r2, 0xfe
 st r1, r2, 12
 srai r2, r5, 8
 rol r6, r3, r1 // icount 651
 sco r1, r3, r2 // icount 652
 roli r1, r0, 1
 ori r2, r4, 4
 slbi r4, 14
 j 0
 lbi r31, 0
 lbi r0, 0
 bnez r1, 12
 sle r5, r5, r2 // icount 660
 slbi r5, 7
 sra r6, r2, r7 // icount 662
 sll r4, r5, r4 // icount 663
 andi r2, r2, 0xfe
 stu r1, r2, 12
 andi r3, r3, 0xfe
 stu r2, r3, 0
 srai r4, r0, 2
 sra r2, r5, r7 // icount 669
 subi r5, r5, 8
 rori r31, r4, 11
 subi r5, r31, 3
 roli r3, r6, 9
 j 8
 nop // icount 675
 nop // icount 676
 nop // icount 677
 nop // icount 678
 j 26
 nop // icount 680
 nop // icount 681
 nop // icount 682
 nop // icount 683
 nop // icount 684
 nop // icount 685
 nop // icount 686
 nop // icount 687
 nop // icount 688
 nop // icount 689
 nop // icount 690
 nop // icount 691
 nop // icount 692
 j 26
 nop // icount 694
 nop // icount 695
 nop // icount 696
 nop // icount 697
 nop // icount 698
 nop // icount 699
 nop // icount 700
 nop // icount 701
 nop // icount 702
 nop // icount 703
 nop // icount 704
 nop // icount 705
 nop // icount 706
 lbi r6, 0
 lbi r1, 0
 beqz r0, 16
 subi r31, r3, 12
 ori r31, r6, 12
 seq r4, r5, r4 // icount 712
 roli r6, r3, 9
 subi r5, r0, 4
 slli r5, r2, 0
 andi r0, r0, 0xfe
 st r31, r0, 8
 add r0, r4, r7 // icount 718
 ror r1, r4, r6 // icount 719
 slbi r0, 2
 rol r0, r0, r4 // icount 721
 and r5, r6, r1 // icount 722
 slt r3, r6, r1 // icount 723
 andi r3, r3, 0xfe
 ld r6, r3, 4
 rol r6, r0, r5 // icount 726
 slt r1, r1, r1 // icount 727
 lbi r3, 0
 lbi r3, 0
 nop // to align branch icount 730
 bnez r5, 24
 addi r1, r1, 9
 slt r2, r1, r1 // icount 733
 ori r2, r1, 2
 and r0, r0, r3 // icount 735
 srai r5, r1, 11
 sub r2, r1, r3 // icount 737
 slbi r31, 14
 sle r6, r1, r0 // icount 739
 sll r7, r2, r4 // icount 740
 slt r3, r3, r1 // icount 741
 ori r6, r2, 10
 slbi r4, 1
 slbi r3, 14
 roli r1, r3, 11
 andi r4, r4, 0xfe
 stu r3, r4, 12
 srai r5, r0, 14
 sll r2, r3, r4 // icount 749
 sub r6, r2, r1 // icount 750
 sle r3, r7, r7 // icount 751
 sll r5, r7, r6 // icount 752
 add r1, r1, r0 // icount 753
 seq r3, r2, r7 // icount 754
 slli r1, r6, 4
 andi r6, r6, 0xfe
 st r3, r6, 10
 lbi r1, 0
 lbi r3, 0
 nop // to align branch icount 760
 bnez r4, 12
 slbi r3, 0
 nop // to align meminst icount 763
 andi r3, r3, 0xfe
 stu r3, r3, 14
 andi r4, r4, 0xfe
 st r31, r4, 12
 sra r4, r4, r7 // icount 768
 sra r1, r4, r5 // icount 769
 roli r6, r5, 2
 rol r7, r1, r7 // icount 771
 sco r7, r6, r6 // icount 772
 nop // to align meminst icount 773
 andi r31, r31, 0xfe
 ld r0, r31, 6
 ori r3, r6, 2
 and r2, r4, r6 // icount 777
 sco r1, r3, r5 // icount 778
 j 28
 nop // icount 780
 nop // icount 781
 nop // icount 782
 nop // icount 783
 nop // icount 784
 nop // icount 785
 nop // icount 786
 nop // icount 787
 nop // icount 788
 nop // icount 789
 nop // icount 790
 nop // icount 791
 nop // icount 792
 nop // icount 793
 lbi r31, 0
 lbi r3, 0
 nop // to align branch icount 796
 bnez r3, 28
 lbi r31, 11
 rori r5, r4, 5
 addi r0, r5, 11
 nop // to align meminst icount 801
 andi r5, r5, 0xfe
 ld r3, r5, 4
 andi r0, r0, 0xfe
 stu r4, r0, 10
 sco r7, r1, r2 // icount 806
 sub r0, r7, r3 // icount 807
 rori r1, r2, 9
 slli r0, r31, 6
 andi r6, r6, 0xfe
 st r6, r6, 6
 add r1, r4, r2 // icount 812
 addi r1, r3, 12
 add r1, r7, r0 // icount 814
 or r5, r5, r1 // icount 815
 and r5, r5, r7 // icount 816
 subi r0, r2, 14
 srai r4, r5, 6
 seq r2, r1, r1 // icount 819
 slbi r6, 12
 and r6, r3, r5 // icount 821
 roli r5, r0, 14
 rori r0, r2, 10
 addi r4, r2, 15
 rol r4, r4, r0 // icount 825
 rol r1, r7, r2 // icount 826
 lbi r2, 0
 andi r5, r5, 0xfe
 ld r6, r5, 10
 slt r0, r4, r1 // icount 830
 lbi r5, 0
 lbi r6, 0
 beqz r0, 8
 seq r5, r0, r3 // icount 834
 seq r5, r1, r7 // icount 835
 sub r2, r1, r1 // icount 836
 ror r6, r5, r0 // icount 837
 andi r0, r0, 0xfe
 st r4, r0, 10
 and r7, r3, r7 // icount 840
 nop // to align meminst icount 841
 andi r1, r1, 0xfe
 ld r0, r1, 8
 rori r1, r6, 15
 j 16
 nop // icount 846
 nop // icount 847
 nop // icount 848
 nop // icount 849
 nop // icount 850
 nop // icount 851
 nop // icount 852
 nop // icount 853
 j 18
 nop // icount 855
 nop // icount 856
 nop // icount 857
 nop // icount 858
 nop // icount 859
 nop // icount 860
 nop // icount 861
 nop // icount 862
 nop // icount 863
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
 j 16
 nop // icount 877
 nop // icount 878
 nop // icount 879
 nop // icount 880
 nop // icount 881
 nop // icount 882
 nop // icount 883
 nop // icount 884
 j 26
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
 nop // icount 898
 lbi r1, 0
 lbi r2, 0
 beqz r5, 20
 andi r0, r6, 14
 ror r6, r3, r7 // icount 903
 addi r1, r0, 13
 and r7, r3, r4 // icount 905
 rol r5, r6, r1 // icount 906
 roli r31, r4, 7
 srai r3, r1, 6
 or r0, r3, r0 // icount 909
 subi r2, r3, 3
 and r7, r5, r5 // icount 911
 sle r3, r4, r3 // icount 912
 sub r3, r0, r6 // icount 913
 sra r5, r1, r6 // icount 914
 subi r2, r2, 5
 andi r0, r0, 0xfe
 ld r31, r0, 10
 and r2, r4, r3 // icount 918
 ori r0, r1, 7
 seq r2, r4, r1 // icount 920
 slli r2, r31, 0
 sco r7, r4, r7 // icount 922
 lbi r4, 0
 lbi r5, 0
 bnez r4, 8
 ori r2, r5, 13
 nop // to align meminst icount 927
 andi r1, r1, 0xfe
 stu r4, r1, 2
 add r1, r7, r0 // icount 930
 sub r3, r6, r1 // icount 931
 ori r2, r1, 12
 srai r2, r4, 0
 sra r1, r2, r3 // icount 934
 add r5, r2, r4 // icount 935
 lbi r0, 0
 lbi r6, 0
 nop // to align branch icount 938
 beqz r31, 8
 andi r3, r3, 0xfe
 ld r5, r3, 8
 and r0, r2, r7 // icount 942
 seq r4, r0, r4 // icount 943
 rol r2, r4, r5 // icount 944
 srai r3, r0, 4
 and r5, r7, r4 // icount 946
 add r2, r7, r7 // icount 947
 subi r2, r5, 6
 j 26
 nop // icount 950
 nop // icount 951
 nop // icount 952
 nop // icount 953
 nop // icount 954
 nop // icount 955
 nop // icount 956
 nop // icount 957
 nop // icount 958
 nop // icount 959
 nop // icount 960
 nop // icount 961
 nop // icount 962
 j 14
 nop // icount 964
 nop // icount 965
 nop // icount 966
 nop // icount 967
 nop // icount 968
 nop // icount 969
 nop // icount 970
 j 4
 nop // icount 972
 nop // icount 973
 lbi r3, 0
 lbi r6, 0
 nop // to align branch icount 976
 beqz r4, 24
 and r2, r2, r1 // icount 978
 sra r4, r3, r7 // icount 979
 rori r5, r0, 8
 sll r0, r6, r4 // icount 981
 slli r0, r1, 5
 nop // to align meminst icount 983
 andi r5, r5, 0xfe
 ld r3, r5, 2
 sco r4, r7, r7 // icount 986
 rol r6, r2, r4 // icount 987
 slli r5, r6, 10
 roli r3, r2, 13
 sll r7, r5, r0 // icount 990
 slt r7, r4, r0 // icount 991
 slt r0, r6, r0 // icount 992
 sub r7, r6, r2 // icount 993
 andi r5, r5, 0xfe
 stu r3, r5, 6
 seq r5, r2, r7 // icount 996
 slbi r31, 8
 sll r7, r4, r4 // icount 998
 rol r5, r4, r6 // icount 999
 add r5, r1, r7 // icount 1000
 roli r2, r3, 13
 add r0, r0, r6 // icount 1002
 sco r6, r3, r1 // icount 1003
 sco r3, r2, r6 // icount 1004
 lbi r31, 0
 lbi r6, 0
 beqz r6, 28
 ror r6, r4, r4 // icount 1008
 seq r7, r4, r5 // icount 1009
 rori r3, r2, 10
 add r6, r0, r0 // icount 1011
 subi r4, r2, 4
 sco r4, r3, r7 // icount 1013
 sll r1, r7, r4 // icount 1014
 and r6, r4, r1 // icount 1015
 sra r2, r7, r7 // icount 1016
 sco r3, r0, r0 // icount 1017
 seq r1, r6, r3 // icount 1018
 nop // to align meminst icount 1019
 andi r2, r2, 0xfe
 ld r6, r2, 0
 sra r5, r6, r1 // icount 1022
 or r0, r2, r2 // icount 1023
 slt r4, r5, r4 // icount 1024
 srai r6, r3, 15
 slt r3, r5, r7 // icount 1026
 rori r31, r2, 13
 addi r31, r0, 14
 ori r2, r1, 8
 sle r4, r5, r1 // icount 1030
 nop // to align meminst icount 1031
 andi r31, r31, 0xfe
 stu r1, r31, 14
 slbi r3, 0
 slbi r31, 13
 roli r31, r3, 13
 slt r6, r3, r6 // icount 1037
 sra r4, r0, r4 // icount 1038
 sll r1, r4, r1 // icount 1039
 j 2
 nop // icount 1041
 lbi r31, 0
 lbi r31, 0
 nop // to align branch icount 1044
 beqz r1, 16
 sco r0, r5, r3 // icount 1046
 subi r0, r2, 7
 sco r6, r7, r7 // icount 1048
 nop // to align meminst icount 1049
 andi r6, r6, 0xfe
 st r31, r6, 0
 andi r1, r1, 0xfe
 stu r1, r1, 4
 slbi r3, 8
 ror r7, r6, r4 // icount 1055
 andi r3, r3, 0xfe
 ld r1, r3, 8
 seq r1, r4, r1 // icount 1058
 sub r1, r2, r3 // icount 1059
 andi r4, r4, 0xfe
 ld r5, r4, 14
 and r4, r2, r4 // icount 1062
 nop // to align meminst icount 1063
 andi r6, r6, 0xfe
 st r0, r6, 12
 ror r2, r7, r1 // icount 1066
 rori r2, r6, 10
 sll r1, r3, r3 // icount 1068
 lbi r1, 0
 lbi r31, 0
 beqz r0, 8
 andi r0, r0, 0xfe
 st r1, r0, 2
 seq r7, r0, r1 // icount 1074
 sll r4, r5, r0 // icount 1075
 sub r5, r4, r7 // icount 1076
 sra r0, r6, r6 // icount 1077
 andi r6, r6, 0xfe
 ld r6, r6, 2
 sra r2, r0, r0 // icount 1080
 add r4, r3, r5 // icount 1081
 j 30
 nop // icount 1083
 nop // icount 1084
 nop // icount 1085
 nop // icount 1086
 nop // icount 1087
 nop // icount 1088
 nop // icount 1089
 nop // icount 1090
 nop // icount 1091
 nop // icount 1092
 nop // icount 1093
 nop // icount 1094
 nop // icount 1095
 nop // icount 1096
 nop // icount 1097
 lbi r3, 0
 lbi r5, 0
 nop // to align branch icount 1100
 bnez r31, 32
 lbi r31, 4
 seq r0, r7, r7 // icount 1103
 andi r1, r2, 15
 subi r3, r1, 5
 lbi r0, 1
 slt r3, r5, r7 // icount 1107
 sle r2, r7, r1 // icount 1108
 nop // to align meminst icount 1109
 andi r4, r4, 0xfe
 st r4, r4, 10
 rol r6, r4, r5 // icount 1112
 sll r4, r1, r3 // icount 1113
 andi r0, r0, 0xfe
 ld r0, r0, 2
 srai r1, r1, 4
 seq r4, r6, r5 // icount 1117
 ror r7, r5, r1 // icount 1118
 slt r5, r2, r3 // icount 1119
 lbi r31, 0
 ori r6, r2, 3
 sle r1, r5, r2 // icount 1122
 nop // to align meminst icount 1123
 andi r5, r5, 0xfe
 stu r31, r5, 14
 slbi r5, 14
 roli r3, r3, 15
 ori r3, r31, 10
 nop // to align meminst icount 1129
 andi r4, r4, 0xfe
 ld r6, r4, 0
 addi r5, r1, 5
 slt r5, r5, r2 // icount 1133
 sra r6, r1, r7 // icount 1134
 slt r0, r7, r0 // icount 1135
 srai r4, r5, 0
 nop // to align meminst icount 1137
 andi r3, r3, 0xfe
 ld r6, r3, 2
 slli r4, r5, 15
 sco r3, r4, r7 // icount 1141
 sra r2, r6, r5 // icount 1142
 lbi r0, 0
 lbi r3, 0
 beqz r3, 12
 sll r2, r4, r7 // icount 1146
 and r5, r6, r0 // icount 1147
 sle r6, r4, r2 // icount 1148
 subi r0, r0, 5
 subi r2, r2, 6
 subi r0, r5, 10
 slbi r6, 1
 nop // to align meminst icount 1153
 andi r3, r3, 0xfe
 st r31, r3, 14
 rori r3, r31, 2
 sll r6, r7, r7 // icount 1157
 rori r6, r2, 1
 or r5, r6, r4 // icount 1159
 j 26
 nop // icount 1161
 nop // icount 1162
 nop // icount 1163
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
 j 26
 nop // icount 1175
 nop // icount 1176
 nop // icount 1177
 nop // icount 1178
 nop // icount 1179
 nop // icount 1180
 nop // icount 1181
 nop // icount 1182
 nop // icount 1183
 nop // icount 1184
 nop // icount 1185
 nop // icount 1186
 nop // icount 1187
 lbi r31, 0
 lbi r3, 0
 nop // to align branch icount 1190
 beqz r31, 16
 ror r3, r5, r3 // icount 1192
 sra r7, r3, r0 // icount 1193
 lbi r31, 6
 slli r3, r1, 4
 sle r1, r7, r4 // icount 1196
 ror r4, r7, r5 // icount 1197
 lbi r1, 10
 addi r4, r0, 8
 sco r4, r2, r2 // icount 1200
 ror r5, r2, r5 // icount 1201
 and r7, r6, r6 // icount 1202
 ror r7, r2, r7 // icount 1203
 sle r0, r0, r7 // icount 1204
 slli r6, r5, 4
 slbi r4, 13
 sll r1, r4, r4 // icount 1207
 j 26
 nop // icount 1209
 nop // icount 1210
 nop // icount 1211
 nop // icount 1212
 nop // icount 1213
 nop // icount 1214
 nop // icount 1215
 nop // icount 1216
 nop // icount 1217
 nop // icount 1218
 nop // icount 1219
 nop // icount 1220
 nop // icount 1221
 j 12
 nop // icount 1223
 nop // icount 1224
 nop // icount 1225
 nop // icount 1226
 nop // icount 1227
 nop // icount 1228
 j 26
 nop // icount 1230
 nop // icount 1231
 nop // icount 1232
 nop // icount 1233
 nop // icount 1234
 nop // icount 1235
 nop // icount 1236
 nop // icount 1237
 nop // icount 1238
 nop // icount 1239
 nop // icount 1240
 nop // icount 1241
 nop // icount 1242
 lbi r4, 0
 lbi r1, 0
 bnez r1, 8
 ori r3, r2, 6
 seq r1, r4, r1 // icount 1247
 and r7, r4, r5 // icount 1248
 sra r6, r7, r1 // icount 1249
 seq r0, r6, r0 // icount 1250
 nop // to align meminst icount 1251
 andi r6, r6, 0xfe
 stu r5, r6, 2
 sll r1, r2, r3 // icount 1254
 addi r5, r2, 6
 j 26
 nop // icount 1257
 nop // icount 1258
 nop // icount 1259
 nop // icount 1260
 nop // icount 1261
 nop // icount 1262
 nop // icount 1263
 nop // icount 1264
 nop // icount 1265
 nop // icount 1266
 nop // icount 1267
 nop // icount 1268
 nop // icount 1269
 j 18
 nop // icount 1271
 nop // icount 1272
 nop // icount 1273
 nop // icount 1274
 nop // icount 1275
 nop // icount 1276
 nop // icount 1277
 nop // icount 1278
 nop // icount 1279
 lbi r3, 0
 lbi r0, 0
 nop // to align branch icount 1282
 bnez r3, 8
 subi r5, r6, 4
 nop // to align meminst icount 1285
 andi r6, r6, 0xfe
 st r3, r6, 0
 addi r0, r5, 11
 addi r5, r5, 0
 or r1, r3, r2 // icount 1290
 ori r1, r5, 12
 slli r5, r3, 6
 sra r5, r1, r6 // icount 1293
 lbi r5, 0
 lbi r0, 0
 nop // to align branch icount 1296
 bnez r0, 4
 slli r0, r1, 2
 rori r3, r4, 12
 rol r7, r4, r6 // icount 1300
 sll r3, r3, r6 // icount 1301
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 1304
 beqz r4, 8
 roli r0, r3, 6
 add r4, r7, r2 // icount 1307
 slli r4, r0, 3
 add r5, r2, r5 // icount 1309
 sle r7, r2, r1 // icount 1310
 srai r31, r6, 4
 slli r3, r31, 0
 nop // to align meminst icount 1313
 andi r5, r5, 0xfe
 stu r2, r5, 14
 j 26
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
 nop // icount 1328
 nop // icount 1329
 lbi r6, 0
 lbi r5, 0
 nop // to align branch icount 1332
 bnez r0, 28
 sco r2, r7, r0 // icount 1334
 addi r0, r4, 13
 seq r4, r0, r5 // icount 1336
 roli r0, r6, 11
 sra r3, r7, r7 // icount 1338
 sub r1, r4, r1 // icount 1339
 rori r5, r5, 0
 rol r4, r1, r0 // icount 1341
 slt r3, r0, r4 // icount 1342
 srai r2, r1, 14
 andi r2, r2, 0xfe
 stu r6, r2, 12
 lbi r5, 11
 nop // to align meminst icount 1347
 andi r31, r31, 0xfe
 stu r3, r31, 0
 slbi r4, 1
 andi r31, r6, 13
 addi r0, r2, 5
 or r3, r1, r6 // icount 1353
 addi r6, r1, 3
 subi r31, r5, 6
 slbi r6, 11
 srai r3, r3, 2
 slbi r3, 3
 slbi r1, 10
 ror r5, r5, r1 // icount 1360
 ror r1, r0, r7 // icount 1361
 andi r0, r0, 0xfe
 stu r31, r0, 2
 add r6, r2, r1 // icount 1364
 sra r6, r7, r0 // icount 1365
 lbi r2, 0
 lbi r0, 0
 nop // to align branch icount 1368
 bnez r2, 20
 seq r7, r6, r7 // icount 1370
 nop // to align meminst icount 1371
 andi r2, r2, 0xfe
 st r3, r2, 6
 add r4, r4, r6 // icount 1374
 nop // to align meminst icount 1375
 andi r5, r5, 0xfe
 ld r4, r5, 4
 sll r0, r1, r1 // icount 1378
 lbi r4, 11
 ror r2, r1, r6 // icount 1380
 sll r1, r6, r7 // icount 1381
 rol r6, r6, r2 // icount 1382
 sub r0, r6, r3 // icount 1383
 sll r4, r7, r3 // icount 1384
 slbi r3, 9
 slli r0, r3, 4
 and r4, r0, r0 // icount 1387
 seq r1, r3, r2 // icount 1388
 srai r4, r6, 0
 add r4, r6, r2 // icount 1390
 ror r3, r0, r3 // icount 1391
 seq r4, r5, r6 // icount 1392
 rol r2, r0, r0 // icount 1393
 j 28
 nop // icount 1395
 nop // icount 1396
 nop // icount 1397
 nop // icount 1398
 nop // icount 1399
 nop // icount 1400
 nop // icount 1401
 nop // icount 1402
 nop // icount 1403
 nop // icount 1404
 nop // icount 1405
 nop // icount 1406
 nop // icount 1407
 nop // icount 1408
 j 12
 nop // icount 1410
 nop // icount 1411
 nop // icount 1412
 nop // icount 1413
 nop // icount 1414
 nop // icount 1415
 lbi r3, 0
 lbi r5, 0
 nop // to align branch icount 1418
 beqz r2, 0
 j 26
 nop // icount 1421
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
 lbi r31, 0
 lbi r3, 0
 nop // to align branch icount 1436
 bnez r0, 28
 ror r6, r6, r7 // icount 1438
 lbi r4, 1
 slli r1, r31, 14
 sra r5, r4, r4 // icount 1441
 rori r2, r31, 14
 seq r5, r4, r6 // icount 1443
 roli r3, r1, 0
 nop // to align meminst icount 1445
 andi r31, r31, 0xfe
 ld r5, r31, 12
 lbi r4, 11
 ror r4, r3, r1 // icount 1449
 or r4, r2, r4 // icount 1450
 roli r5, r31, 14
 sra r1, r5, r1 // icount 1452
 lbi r0, 5
 andi r5, r5, 0xfe
 st r31, r5, 2
 or r7, r0, r1 // icount 1456
 sle r0, r5, r3 // icount 1457
 rol r2, r2, r3 // icount 1458
 and r6, r1, r6 // icount 1459
 lbi r5, 13
 nop // to align meminst icount 1461
 andi r6, r6, 0xfe
 st r2, r6, 10
 srai r0, r31, 14
 slbi r1, 6
 add r3, r5, r4 // icount 1466
 sco r7, r2, r0 // icount 1467
 ror r0, r4, r0 // icount 1468
 rori r0, r1, 6
 roli r6, r3, 6
 lbi r2, 0
 lbi r0, 0
 bnez r4, 4
 and r4, r3, r6 // icount 1474
 ori r6, r6, 14
 subi r5, r0, 14
 or r2, r2, r1 // icount 1477
 j 26
 nop // icount 1479
 nop // icount 1480
 nop // icount 1481
 nop // icount 1482
 nop // icount 1483
 nop // icount 1484
 nop // icount 1485
 nop // icount 1486
 nop // icount 1487
 nop // icount 1488
 nop // icount 1489
 nop // icount 1490
 nop // icount 1491
 lbi r0, 0
 lbi r4, 0
 nop // to align branch icount 1494
 bnez r2, 16
 andi r0, r0, 0xfe
 ld r3, r0, 2
 andi r3, r3, 0xfe
 ld r0, r3, 6
 slli r3, r4, 9
 nop // to align meminst icount 1501
 andi r0, r0, 0xfe
 stu r2, r0, 10
 slbi r2, 13
 andi r31, r31, 12
 ror r4, r0, r6 // icount 1506
 nop // to align meminst icount 1507
 andi r5, r5, 0xfe
 st r0, r5, 2
 and r1, r6, r3 // icount 1510
 and r5, r7, r5 // icount 1511
 andi r3, r3, 0xfe
 ld r1, r3, 4
 ror r6, r5, r3 // icount 1514
 sll r1, r1, r7 // icount 1515
 sub r5, r0, r5 // icount 1516
 sle r3, r4, r5 // icount 1517
 or r6, r2, r6 // icount 1518
 j 10
 nop // icount 1520
 nop // icount 1521
 nop // icount 1522
 nop // icount 1523
 nop // icount 1524
 lbi r6, 0
 lbi r0, 0
 beqz r5, 20
 roli r2, r31, 12
 rori r5, r6, 10
 sra r4, r4, r0 // icount 1530
 lbi r5, 11
 sub r1, r0, r3 // icount 1532
 add r3, r5, r7 // icount 1533
 sco r5, r1, r4 // icount 1534
 slbi r6, 10
 sco r0, r4, r5 // icount 1536
 roli r4, r2, 14
 slbi r5, 3
 andi r2, r6, 13
 andi r1, r1, 0xfe
 stu r5, r1, 4
 and r0, r6, r4 // icount 1542
 nop // to align meminst icount 1543
 andi r5, r5, 0xfe
 stu r31, r5, 14
 roli r2, r2, 1
 sco r0, r0, r2 // icount 1547
 sco r0, r3, r6 // icount 1548
 sra r1, r0, r7 // icount 1549
 sub r0, r1, r4 // icount 1550
 j 6
 nop // icount 1552
 nop // icount 1553
 nop // icount 1554
 j 4
 nop // icount 1556
 nop // icount 1557
 j 30
 nop // icount 1559
 nop // icount 1560
 nop // icount 1561
 nop // icount 1562
 nop // icount 1563
 nop // icount 1564
 nop // icount 1565
 nop // icount 1566
 nop // icount 1567
 nop // icount 1568
 nop // icount 1569
 nop // icount 1570
 nop // icount 1571
 nop // icount 1572
 nop // icount 1573
 lbi r4, 0
 lbi r4, 0
 nop // to align branch icount 1576
 beqz r5, 16
 sle r5, r0, r3 // icount 1578
 slt r4, r6, r7 // icount 1579
 andi r31, r31, 0xfe
 st r6, r31, 10
 andi r3, r3, 0xfe
 st r2, r3, 4
 sle r7, r0, r5 // icount 1584
 sra r2, r1, r3 // icount 1585
 subi r2, r2, 11
 sub r2, r2, r7 // icount 1587
 andi r31, r31, 0xfe
 st r4, r31, 2
 add r3, r6, r4 // icount 1590
 ori r6, r31, 12
 sra r3, r3, r6 // icount 1592
 sll r4, r6, r3 // icount 1593
 slt r7, r3, r6 // icount 1594
 or r6, r1, r6 // icount 1595
 sco r3, r2, r4 // icount 1596
 halt // icount 1597
