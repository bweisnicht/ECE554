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
 sll r7, r7, r2 // icount 16
 slbi r5, 1
 j 14
 nop // icount 19
 nop // icount 20
 nop // icount 21
 nop // icount 22
 nop // icount 23
 nop // icount 24
 nop // icount 25
 lbi r1, 0
 lbi r6, 0
 nop // to align branch icount 28
 beqz r2, 24
 slt r1, r2, r7 // icount 30
 ori r0, r5, 12
 ror r4, r0, r7 // icount 32
 rori r2, r5, 3
 and r5, r4, r4 // icount 34
 nop // to align meminst icount 35
 andi r5, r5, 0xfe
 ld r3, r5, 8
 rol r4, r1, r1 // icount 38
 sra r4, r1, r4 // icount 39
 ror r0, r6, r3 // icount 40
 lbi r0, 4
 slt r7, r5, r0 // icount 42
 seq r6, r7, r2 // icount 43
 andi r2, r2, 0xfe
 st r5, r2, 12
 ori r2, r3, 12
 or r5, r4, r4 // icount 47
 and r4, r1, r7 // icount 48
 ror r0, r0, r7 // icount 49
 slbi r6, 15
 add r7, r0, r7 // icount 51
 andi r0, r0, 0xfe
 st r0, r0, 0
 add r4, r4, r0 // icount 54
 srai r5, r31, 6
 subi r6, r2, 14
 lbi r2, 8
 ror r0, r0, r5 // icount 58
 addi r4, r31, 9
 lbi r3, 14
 rori r1, r3, 4
 j 20
 nop // icount 63
 nop // icount 64
 nop // icount 65
 nop // icount 66
 nop // icount 67
 nop // icount 68
 nop // icount 69
 nop // icount 70
 nop // icount 71
 nop // icount 72
 addi r31, r31, 9
 andi r31, r31, 0xfe
 ld r1, r31, 6
 sra r3, r0, r1 // icount 76
 lbi r1, 0
 lbi r6, 0
 beqz r5, 16
 rol r6, r3, r7 // icount 80
 sle r5, r4, r5 // icount 81
 slli r4, r31, 3
 nop // to align meminst icount 83
 andi r1, r1, 0xfe
 ld r1, r1, 14
 subi r5, r5, 7
 add r0, r6, r4 // icount 87
 sub r7, r5, r2 // icount 88
 sle r4, r1, r0 // icount 89
 sll r4, r4, r4 // icount 90
 sle r7, r5, r1 // icount 91
 and r7, r5, r6 // icount 92
 sub r6, r2, r5 // icount 93
 subi r31, r3, 15
 slbi r5, 3
 lbi r6, 0
 nop // to align meminst icount 97
 andi r6, r6, 0xfe
 st r4, r6, 10
 lbi r3, 0
 lbi r4, 0
 nop // to align branch icount 102
 beqz r1, 24
 slt r2, r4, r1 // icount 104
 roli r2, r5, 15
 add r4, r5, r7 // icount 106
 sle r0, r2, r2 // icount 107
 andi r31, r31, 0xfe
 ld r5, r31, 4
 and r1, r6, r7 // icount 110
 subi r2, r6, 0
 sub r1, r1, r7 // icount 112
 roli r5, r1, 6
 andi r6, r6, 0xfe
 ld r1, r6, 12
 subi r3, r2, 15
 srai r0, r2, 13
 rol r6, r6, r2 // icount 118
 roli r4, r2, 8
 ori r0, r0, 1
 roli r2, r6, 8
 sll r4, r6, r6 // icount 122
 sll r3, r6, r3 // icount 123
 sub r0, r2, r3 // icount 124
 rori r5, r0, 4
 add r2, r0, r2 // icount 126
 nop // to align meminst icount 127
 andi r3, r3, 0xfe
 st r1, r3, 4
 rori r2, r6, 10
 nop // to align meminst icount 131
 andi r0, r0, 0xfe
 st r5, r0, 2
 j 24
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
 j 8
 nop // icount 148
 nop // icount 149
 nop // icount 150
 nop // icount 151
 j 10
 nop // icount 153
 nop // icount 154
 nop // icount 155
 nop // icount 156
 nop // icount 157
 lbi r4, 0
 lbi r2, 0
 nop // to align branch icount 160
 bnez r6, 0
 sll r3, r1, r3 // icount 162
 nop // to align meminst icount 163
 andi r4, r4, 0xfe
 ld r2, r4, 2
 sco r4, r6, r1 // icount 166
 lbi r5, 0
 lbi r4, 0
 bnez r2, 8
 lbi r0, 14
 or r6, r5, r6 // icount 171
 and r1, r2, r5 // icount 172
 slli r31, r1, 10
 and r2, r6, r7 // icount 174
 nop // to align meminst icount 175
 andi r4, r4, 0xfe
 ld r2, r4, 10
 lbi r31, 1
 nop // to align meminst icount 179
 andi r2, r2, 0xfe
 ld r31, r2, 14
 j 10
 nop // icount 183
 nop // icount 184
 nop // icount 185
 nop // icount 186
 nop // icount 187
 j 16
 nop // icount 189
 nop // icount 190
 nop // icount 191
 nop // icount 192
 nop // icount 193
 nop // icount 194
 nop // icount 195
 nop // icount 196
 j 14
 nop // icount 198
 nop // icount 199
 nop // icount 200
 nop // icount 201
 nop // icount 202
 nop // icount 203
 nop // icount 204
 j 16
 nop // icount 206
 nop // icount 207
 nop // icount 208
 nop // icount 209
 nop // icount 210
 nop // icount 211
 nop // icount 212
 nop // icount 213
 roli r5, r2, 12
 lbi r0, 0
 lbi r1, 0
 bnez r31, 12
 sll r4, r1, r2 // icount 218
 sll r5, r2, r3 // icount 219
 sll r3, r7, r1 // icount 220
 nop // to align meminst icount 221
 andi r0, r0, 0xfe
 stu r4, r0, 0
 sle r0, r7, r5 // icount 224
 subi r3, r3, 6
 rori r1, r4, 4
 roli r3, r3, 4
 slt r6, r3, r1 // icount 228
 sra r4, r5, r0 // icount 229
 addi r31, r4, 14
 sll r2, r7, r7 // icount 231
 j 24
 nop // icount 233
 nop // icount 234
 nop // icount 235
 nop // icount 236
 nop // icount 237
 nop // icount 238
 nop // icount 239
 nop // icount 240
 nop // icount 241
 nop // icount 242
 nop // icount 243
 nop // icount 244
 add r3, r0, r6 // icount 245
 j 28
 nop // icount 247
 nop // icount 248
 nop // icount 249
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
 j 16
 nop // icount 262
 nop // icount 263
 nop // icount 264
 nop // icount 265
 nop // icount 266
 nop // icount 267
 nop // icount 268
 nop // icount 269
 lbi r3, 0
 lbi r5, 0
 nop // to align branch icount 272
 bnez r3, 4
 lbi r6, 1
 addi r6, r0, 15
 sra r5, r5, r5 // icount 276
 roli r0, r4, 10
 lbi r4, 0
 lbi r3, 0
 nop // to align branch icount 280
 bnez r6, 28
 sra r0, r6, r7 // icount 282
 addi r1, r0, 7
 ori r31, r5, 12
 slli r0, r0, 7
 ori r0, r6, 14
 rol r0, r0, r0 // icount 287
 slt r4, r1, r7 // icount 288
 sra r7, r1, r1 // icount 289
 rol r6, r2, r1 // icount 290
 nop // to align meminst icount 291
 andi r4, r4, 0xfe
 st r3, r4, 4
 add r1, r0, r6 // icount 294
 seq r7, r7, r3 // icount 295
 sll r0, r5, r6 // icount 296
 sll r3, r3, r1 // icount 297
 srai r2, r1, 15
 roli r3, r4, 5
 rori r5, r1, 8
 nop // to align meminst icount 301
 andi r0, r0, 0xfe
 stu r4, r0, 10
 rol r7, r0, r7 // icount 304
 ror r2, r1, r0 // icount 305
 andi r31, r1, 5
 lbi r5, 3
 andi r6, r3, 0
 rol r1, r7, r2 // icount 309
 sra r3, r3, r6 // icount 310
 slbi r6, 10
 sco r1, r7, r3 // icount 312
 subi r31, r5, 4
 sra r6, r4, r0 // icount 314
 sll r1, r0, r3 // icount 315
 lbi r5, 0
 lbi r6, 0
 nop // to align branch icount 318
 bnez r1, 32
 sra r0, r3, r0 // icount 320
 slbi r2, 3
 rol r1, r7, r1 // icount 322
 sll r0, r2, r0 // icount 323
 slbi r6, 15
 rol r1, r1, r3 // icount 325
 sra r5, r1, r5 // icount 326
 sco r3, r0, r5 // icount 327
 andi r2, r2, 0xfe
 stu r0, r2, 10
 sub r1, r2, r5 // icount 330
 add r5, r1, r6 // icount 331
 addi r2, r4, 2
 sub r7, r7, r4 // icount 333
 sra r4, r4, r3 // icount 334
 roli r4, r0, 3
 rol r3, r4, r3 // icount 336
 ori r4, r5, 5
 add r7, r1, r1 // icount 338
 add r7, r0, r3 // icount 339
 slt r5, r5, r6 // icount 340
 subi r31, r6, 7
 sra r1, r7, r6 // icount 342
 andi r4, r0, 14
 roli r3, r0, 1
 or r1, r7, r5 // icount 345
 sra r4, r3, r1 // icount 346
 or r6, r3, r1 // icount 347
 rol r1, r3, r4 // icount 348
 addi r31, r5, 10
 add r7, r3, r7 // icount 350
 sra r2, r7, r4 // icount 351
 lbi r2, 3
 j 10
 nop // icount 354
 nop // icount 355
 nop // icount 356
 nop // icount 357
 nop // icount 358
 srai r3, r5, 13
 sll r3, r6, r7 // icount 360
 lbi r0, 0
 lbi r6, 0
 beqz r3, 32
 andi r6, r6, 0xfe
 stu r3, r6, 4
 slli r31, r4, 10
 and r6, r0, r5 // icount 367
 and r5, r3, r1 // icount 368
 rori r0, r6, 10
 lbi r2, 14
 rori r1, r5, 8
 rori r0, r2, 10
 nop // to align meminst icount 373
 andi r5, r5, 0xfe
 ld r0, r5, 6
 roli r6, r0, 9
 add r0, r2, r2 // icount 377
 slbi r6, 4
 srai r3, r6, 3
 and r3, r3, r5 // icount 380
 slbi r31, 1
 subi r2, r3, 15
 ror r5, r7, r2 // icount 383
 andi r5, r5, 0xfe
 st r4, r5, 4
 seq r0, r0, r2 // icount 386
 rol r5, r7, r6 // icount 387
 ror r5, r0, r1 // icount 388
 or r4, r2, r5 // icount 389
 ori r3, r6, 1
 sub r5, r4, r0 // icount 391
 sub r1, r5, r6 // icount 392
 slt r4, r1, r4 // icount 393
 srai r1, r4, 0
 and r4, r0, r4 // icount 395
 sco r4, r0, r5 // icount 396
 rori r0, r3, 4
 sle r5, r5, r2 // icount 398
 andi r6, r0, 6
 andi r2, r2, 0xfe
 stu r3, r2, 6
 sco r1, r5, r3 // icount 402
 ror r1, r1, r3 // icount 403
 sle r0, r2, r3 // icount 404
 and r2, r0, r4 // icount 405
 seq r4, r2, r4 // icount 406
 j 0
 sll r4, r5, r7 // icount 408
 j 30
 nop // icount 410
 nop // icount 411
 nop // icount 412
 nop // icount 413
 nop // icount 414
 nop // icount 415
 nop // icount 416
 nop // icount 417
 nop // icount 418
 nop // icount 419
 nop // icount 420
 nop // icount 421
 nop // icount 422
 nop // icount 423
 nop // icount 424
 and r2, r0, r1 // icount 425
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 428
 beqz r1, 4
 sle r0, r4, r0 // icount 430
 sra r4, r1, r4 // icount 431
 and r6, r4, r1 // icount 432
 seq r4, r1, r4 // icount 433
 j 16
 nop // icount 435
 nop // icount 436
 nop // icount 437
 nop // icount 438
 nop // icount 439
 nop // icount 440
 nop // icount 441
 nop // icount 442
 ori r0, r31, 4
 j 4
 nop // icount 445
 nop // icount 446
 addi r5, r4, 7
 lbi r31, 0
 lbi r0, 0
 nop // to align branch icount 450
 bnez r31, 8
 or r0, r4, r6 // icount 452
 rol r6, r4, r4 // icount 453
 lbi r3, 8
 sub r3, r4, r5 // icount 455
 lbi r3, 2
 addi r5, r4, 10
 andi r3, r3, 0xfe
 stu r1, r3, 8
 andi r2, r2, 0xfe
 stu r3, r2, 4
 seq r5, r5, r3 // icount 462
 lbi r1, 0
 lbi r31, 0
 beqz r5, 24
 sra r0, r3, r3 // icount 466
 sco r6, r4, r6 // icount 467
 or r7, r4, r4 // icount 468
 and r7, r1, r4 // icount 469
 or r1, r2, r1 // icount 470
 slli r6, r1, 12
 ror r0, r3, r1 // icount 472
 nop // to align meminst icount 473
 andi r6, r6, 0xfe
 ld r3, r6, 14
 lbi r0, 10
 sra r7, r0, r5 // icount 477
 seq r7, r0, r5 // icount 478
 sra r0, r7, r6 // icount 479
 ror r1, r2, r4 // icount 480
 or r3, r6, r5 // icount 481
 andi r6, r6, 0xfe
 stu r3, r6, 14
 sle r0, r4, r1 // icount 484
 slbi r6, 0
 add r6, r0, r7 // icount 486
 sra r3, r3, r4 // icount 487
 sub r6, r6, r6 // icount 488
 ror r1, r7, r0 // icount 489
 sra r1, r7, r0 // icount 490
 roli r3, r6, 13
 andi r3, r3, 0xfe
 ld r2, r3, 4
 lbi r1, 2
 slli r2, r0, 4
 roli r5, r1, 14
 rori r2, r4, 0
 slbi r4, 0
 srai r6, r5, 4
 sub r6, r2, r3 // icount 500
 j 4
 nop // icount 502
 nop // icount 503
 j 18
 nop // icount 505
 nop // icount 506
 nop // icount 507
 nop // icount 508
 nop // icount 509
 nop // icount 510
 nop // icount 511
 nop // icount 512
 nop // icount 513
 roli r1, r0, 10
 j 20
 nop // icount 516
 nop // icount 517
 nop // icount 518
 nop // icount 519
 nop // icount 520
 nop // icount 521
 nop // icount 522
 nop // icount 523
 nop // icount 524
 nop // icount 525
 ror r0, r2, r4 // icount 526
 slli r2, r4, 14
 j 26
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
 lbi r6, 0
 lbi r6, 0
 nop // to align branch icount 544
 bnez r31, 24
 sub r7, r6, r7 // icount 546
 andi r2, r2, 0
 ori r0, r31, 6
 sra r3, r3, r6 // icount 549
 roli r0, r1, 13
 and r2, r3, r6 // icount 551
 subi r3, r31, 0
 addi r5, r5, 8
 andi r6, r6, 0xfe
 st r2, r6, 14
 ori r6, r6, 8
 or r1, r0, r7 // icount 557
 srai r5, r1, 0
 slli r4, r2, 6
 srai r31, r4, 2
 ori r1, r5, 1
 ror r0, r1, r2 // icount 562
 ori r2, r6, 14
 ror r4, r3, r2 // icount 564
 nop // to align meminst icount 565
 andi r4, r4, 0xfe
 ld r6, r4, 14
 andi r5, r5, 0xfe
 ld r5, r5, 14
 sle r1, r4, r1 // icount 570
 nop // to align meminst icount 571
 andi r2, r2, 0xfe
 stu r6, r2, 2
 rori r4, r6, 0
 add r1, r7, r1 // icount 575
 lbi r6, 8
 slbi r1, 15
 j 18
 nop // icount 579
 nop // icount 580
 nop // icount 581
 nop // icount 582
 nop // icount 583
 nop // icount 584
 nop // icount 585
 nop // icount 586
 nop // icount 587
 sra r2, r0, r4 // icount 588
 j 22
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
 j 30
 nop // icount 602
 nop // icount 603
 nop // icount 604
 nop // icount 605
 nop // icount 606
 nop // icount 607
 nop // icount 608
 nop // icount 609
 nop // icount 610
 nop // icount 611
 nop // icount 612
 nop // icount 613
 nop // icount 614
 nop // icount 615
 nop // icount 616
 roli r1, r0, 11
 j 8
 nop // icount 619
 nop // icount 620
 nop // icount 621
 nop // icount 622
 j 26
 nop // icount 624
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
 nop // icount 636
 lbi r6, 0
 lbi r1, 0
 bnez r3, 4
 sco r2, r7, r5 // icount 640
 slt r1, r6, r3 // icount 641
 sll r7, r7, r6 // icount 642
 sra r5, r7, r7 // icount 643
 sub r1, r6, r0 // icount 644
 andi r5, r2, 2
 lbi r3, 0
 lbi r4, 0
 nop // to align branch icount 648
 beqz r0, 4
 andi r2, r5, 10
 addi r31, r3, 8
 sle r2, r4, r5 // icount 652
 slt r7, r6, r5 // icount 653
 j 28
 nop // icount 655
 nop // icount 656
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
 j 22
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
 lbi r1, 0
 lbi r3, 0
 bnez r5, 16
 srai r6, r31, 1
 sco r7, r5, r7 // icount 685
 addi r2, r3, 8
 sle r4, r0, r3 // icount 687
 slli r6, r6, 9
 roli r1, r6, 7
 subi r4, r0, 3
 rori r31, r3, 11
 rori r3, r4, 9
 subi r0, r2, 14
 add r7, r5, r4 // icount 694
 and r5, r6, r2 // icount 695
 slli r1, r6, 12
 nop // to align meminst icount 697
 andi r0, r0, 0xfe
 ld r31, r0, 10
 ori r5, r5, 4
 ror r0, r5, r2 // icount 701
 rol r7, r0, r3 // icount 702
 lbi r3, 0
 lbi r6, 0
 bnez r4, 28
 slt r0, r2, r6 // icount 706
 sra r4, r1, r1 // icount 707
 sll r2, r4, r2 // icount 708
 nop // to align meminst icount 709
 andi r6, r6, 0xfe
 ld r5, r6, 14
 addi r31, r0, 2
 subi r4, r0, 11
 add r5, r7, r0 // icount 714
 sra r4, r6, r5 // icount 715
 addi r0, r0, 10
 seq r4, r1, r0 // icount 717
 andi r3, r1, 7
 seq r0, r0, r1 // icount 719
 add r2, r4, r0 // icount 720
 slbi r2, 1
 slli r4, r1, 13
 rol r5, r1, r1 // icount 723
 ori r1, r31, 11
 sco r3, r5, r2 // icount 725
 sle r7, r5, r5 // icount 726
 subi r3, r3, 6
 sub r5, r1, r4 // icount 728
 sle r6, r1, r0 // icount 729
 slt r7, r2, r3 // icount 730
 slli r3, r6, 8
 slt r0, r4, r0 // icount 732
 sll r4, r0, r4 // icount 733
 andi r5, r1, 11
 rol r3, r6, r1 // icount 735
 lbi r1, 0
 lbi r31, 0
 nop // to align branch icount 738
 bnez r3, 12
 rol r0, r7, r3 // icount 740
 sra r1, r5, r0 // icount 741
 add r2, r0, r3 // icount 742
 slli r6, r1, 6
 rol r6, r0, r3 // icount 744
 lbi r3, 10
 andi r5, r5, 0xfe
 stu r1, r5, 4
 add r1, r2, r4 // icount 748
 seq r0, r3, r3 // icount 749
 seq r4, r5, r5 // icount 750
 nop // to align meminst icount 751
 andi r31, r31, 0xfe
 st r6, r31, 4
 addi r5, r1, 2
 lbi r31, 0
 lbi r31, 0
 bnez r6, 8
 sub r0, r7, r5 // icount 758
 nop // to align meminst icount 759
 andi r0, r0, 0xfe
 st r0, r0, 10
 rol r1, r7, r5 // icount 762
 ori r4, r4, 14
 ror r6, r4, r5 // icount 764
 rol r0, r2, r2 // icount 765
 addi r5, r6, 10
 srai r1, r3, 13
 sll r5, r2, r4 // icount 768
 nop // to align meminst icount 769
 andi r6, r6, 0xfe
 st r31, r6, 4
 sll r7, r6, r6 // icount 772
 j 30
 nop // icount 774
 nop // icount 775
 nop // icount 776
 nop // icount 777
 nop // icount 778
 nop // icount 779
 nop // icount 780
 nop // icount 781
 nop // icount 782
 nop // icount 783
 nop // icount 784
 nop // icount 785
 nop // icount 786
 nop // icount 787
 nop // icount 788
 addi r0, r5, 11
 j 8
 nop // icount 791
 nop // icount 792
 nop // icount 793
 nop // icount 794
 halt // icount 795
