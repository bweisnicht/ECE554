// seed 1
lbi r0, 10 // icount 0
slbi r0, 116 // icount 1
lbi r1, 213 // icount 2
slbi r1, 86 // icount 3
lbi r2, 144 // icount 4
slbi r2, 0 // icount 5
lbi r3, 48 // icount 6
slbi r3, 253 // icount 7
lbi r4, 192 // icount 8
slbi r4, 93 // icount 9
lbi r5, 89 // icount 10
slbi r5, 146 // icount 11
lbi r6, 33 // icount 12
slbi r6, 16 // icount 13
lbi r7, 243 // icount 14
slbi r7, 39 // icount 15
lbi r0, 0 // icount 16
lbi r1, 1 // icount 17
lbi r2, -1 // icount 18
lbi r3, 1 // icount 19
andi r6, r6, 0xfe // icount 20
lbi r3, 3 // icount 21
lbi r5, 44 // icount 22
bnez r1, .rlabel_0 // icount 23
slt r1, r1, r4 // icount 24
add r2, r4, r7 // icount 25
sle r7, r4, r3 // icount 26
.rlabel_0:
ld r7, r6, 14
addi r6, r6, 14
bnez r1, .rlabel_1 // icount 27
.rlabel_1:
jal .rlabel_2 // icount 28
slt r3, r2, r5 // icount 29
ror r5, r2, r3 // icount 30
seq r2, r6, r6 // icount 31
.rlabel_2:
j .rlabel_3 // icount 32
sle r4, r5, r3 // icount 33
sll r2, r2, r7 // icount 34
ror r4, r5, r4 // icount 35
or r5, r0, r2 // icount 36
slt r3, r5, r4 // icount 37
ror r7, r4, r5 // icount 38
or r4, r4, r0 // icount 39
and r6, r7, r1 // icount 40
rol r5, r4, r7 // icount 41
sle r3, r2, r1 // icount 42
sle r2, r2, r6 // icount 43
sco r3, r4, r7 // icount 44
or r5, r4, r7 // icount 45
ror r7, r7, r2 // icount 46
sra r0, r6, r5 // icount 47
or r7, r1, r0 // icount 48
sle r6, r5, r0 // icount 49
and r7, r5, r2 // icount 50
sub r5, r2, r7 // icount 51
.rlabel_3:
st r7, r6, 4
addi r6, r6, 4
j .rlabel_4 // icount 52
ror r5, r4, r7 // icount 53
slt r3, r0, r1 // icount 54
sll r6, r0, r4 // icount 55
rol r3, r5, r1 // icount 56
sll r2, r2, r5 // icount 57
seq r0, r4, r2 // icount 58
or r4, r2, r7 // icount 59
and r1, r5, r0 // icount 60
sra r2, r4, r4 // icount 61
rol r6, r6, r2 // icount 62
sll r6, r5, r2 // icount 63
rol r0, r5, r2 // icount 64
sra r2, r7, r0 // icount 65
sco r6, r6, r3 // icount 66
rol r1, r4, r4 // icount 67
ror r1, r3, r7 // icount 68
slt r2, r2, r2 // icount 69
slt r5, r5, r4 // icount 70
sub r2, r3, r0 // icount 71
sub r4, r5, r7 // icount 72
sco r4, r3, r6 // icount 73
ror r6, r7, r3 // icount 74
sra r7, r2, r7 // icount 75
and r4, r5, r0 // icount 76
add r6, r4, r0 // icount 77
sub r3, r6, r3 // icount 78
sra r5, r0, r4 // icount 79
rol r0, r3, r2 // icount 80
slt r1, r0, r7 // icount 81
slt r3, r2, r2 // icount 82
sll r1, r4, r4 // icount 83
sco r4, r7, r2 // icount 84
slt r7, r7, r7 // icount 85
ror r4, r0, r7 // icount 86
seq r3, r7, r2 // icount 87
ror r0, r1, r7 // icount 88
add r2, r5, r4 // icount 89
sra r0, r5, r3 // icount 90
sll r2, r5, r1 // icount 91
add r5, r3, r0 // icount 92
or r3, r7, r0 // icount 93
sll r5, r6, r6 // icount 94
sle r1, r2, r3 // icount 95
rol r1, r1, r2 // icount 96
ror r0, r1, r4 // icount 97
sle r4, r4, r5 // icount 98
and r5, r1, r2 // icount 99
sll r4, r2, r2 // icount 100
sle r6, r0, r1 // icount 101
seq r4, r5, r5 // icount 102
and r1, r0, r6 // icount 103
ror r5, r6, r2 // icount 104
ror r3, r3, r4 // icount 105
.rlabel_4:
beqz r0, .rlabel_5 // icount 106
sub r6, r2, r5 // icount 107
add r6, r2, r0 // icount 108
rol r7, r5, r0 // icount 109
seq r5, r2, r6 // icount 110
sco r7, r2, r3 // icount 111
sle r5, r5, r6 // icount 112
sub r3, r0, r0 // icount 113
sra r0, r0, r5 // icount 114
sub r5, r3, r0 // icount 115
sub r6, r6, r3 // icount 116
or r1, r2, r0 // icount 117
sll r1, r0, r7 // icount 118
or r2, r7, r4 // icount 119
rol r6, r4, r7 // icount 120
seq r6, r4, r5 // icount 121
.rlabel_5:
beqz r0, .rlabel_6 // icount 122
add r0, r5, r1 // icount 123
add r4, r3, r0 // icount 124
sub r7, r4, r6 // icount 125
rol r3, r5, r7 // icount 126
add r2, r3, r1 // icount 127
sub r6, r3, r6 // icount 128
sll r3, r1, r2 // icount 129
and r5, r7, r3 // icount 130
sra r7, r5, r3 // icount 131
ror r3, r2, r6 // icount 132
ror r1, r5, r1 // icount 133
add r3, r5, r5 // icount 134
ror r4, r3, r6 // icount 135
add r3, r7, r6 // icount 136
.rlabel_6:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_7 // icount 137
sle r2, r1, r1 // icount 138
slt r0, r3, r2 // icount 139
sco r4, r1, r7 // icount 140
and r7, r0, r3 // icount 141
sll r7, r0, r4 // icount 142
sra r6, r0, r2 // icount 143
slt r4, r4, r0 // icount 144
sle r7, r6, r7 // icount 145
and r3, r4, r1 // icount 146
add r5, r1, r6 // icount 147
ror r2, r4, r2 // icount 148
slt r1, r3, r6 // icount 149
slt r7, r6, r2 // icount 150
sub r5, r5, r3 // icount 151
sll r0, r1, r5 // icount 152
.rlabel_7:
beqz r0, .rlabel_8 // icount 153
.rlabel_8:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_9 // icount 154
add r5, r4, r1 // icount 155
rol r3, r6, r5 // icount 156
or r4, r5, r3 // icount 157
slt r0, r5, r1 // icount 158
sll r6, r2, r5 // icount 159
seq r7, r7, r1 // icount 160
or r5, r4, r7 // icount 161
add r1, r3, r7 // icount 162
or r5, r3, r3 // icount 163
rol r2, r0, r4 // icount 164
or r2, r2, r0 // icount 165
add r4, r2, r6 // icount 166
.rlabel_9:
jal .rlabel_10 // icount 167
seq r3, r5, r4 // icount 168
slt r3, r2, r6 // icount 169
or r5, r1, r1 // icount 170
seq r6, r2, r0 // icount 171
or r5, r2, r1 // icount 172
.rlabel_10:
ld r7, r6, 0
addi r6, r6, 0
j .rlabel_11 // icount 173
rol r6, r0, r0 // icount 174
sle r7, r3, r0 // icount 175
sub r0, r0, r0 // icount 176
slt r5, r5, r1 // icount 177
or r4, r5, r4 // icount 178
or r6, r7, r4 // icount 179
or r3, r5, r1 // icount 180
seq r4, r4, r6 // icount 181
seq r3, r3, r0 // icount 182
sub r5, r5, r6 // icount 183
sle r4, r5, r4 // icount 184
rol r6, r0, r3 // icount 185
add r0, r1, r4 // icount 186
add r0, r5, r0 // icount 187
slt r5, r3, r7 // icount 188
sra r7, r0, r7 // icount 189
sle r7, r5, r1 // icount 190
sll r0, r4, r0 // icount 191
ror r2, r5, r4 // icount 192
add r3, r5, r7 // icount 193
sle r5, r0, r3 // icount 194
rol r3, r2, r0 // icount 195
ror r4, r7, r7 // icount 196
ror r6, r5, r3 // icount 197
and r1, r3, r1 // icount 198
sll r7, r7, r4 // icount 199
rol r1, r3, r4 // icount 200
seq r4, r6, r0 // icount 201
or r0, r5, r2 // icount 202
sub r6, r0, r2 // icount 203
rol r0, r1, r1 // icount 204
sll r0, r5, r0 // icount 205
seq r5, r6, r7 // icount 206
slt r3, r6, r5 // icount 207
add r0, r2, r1 // icount 208
rol r4, r0, r7 // icount 209
add r0, r7, r6 // icount 210
sle r3, r0, r0 // icount 211
sub r2, r2, r0 // icount 212
sub r2, r4, r6 // icount 213
sle r5, r7, r3 // icount 214
sub r7, r3, r1 // icount 215
slt r2, r1, r6 // icount 216
ror r7, r6, r2 // icount 217
sra r2, r3, r3 // icount 218
slt r2, r3, r7 // icount 219
sub r3, r2, r3 // icount 220
slt r1, r1, r1 // icount 221
ror r7, r4, r6 // icount 222
sll r5, r5, r6 // icount 223
sle r6, r4, r6 // icount 224
slt r7, r5, r6 // icount 225
sub r5, r3, r3 // icount 226
and r4, r7, r7 // icount 227
sub r5, r5, r5 // icount 228
sra r3, r1, r6 // icount 229
rol r1, r7, r4 // icount 230
seq r2, r3, r4 // icount 231
rol r3, r1, r6 // icount 232
sco r3, r1, r1 // icount 233
sco r6, r3, r1 // icount 234
sub r2, r7, r4 // icount 235
sub r5, r5, r5 // icount 236
slt r4, r6, r1 // icount 237
and r4, r0, r6 // icount 238
sra r0, r4, r4 // icount 239
sub r6, r2, r0 // icount 240
ror r3, r0, r6 // icount 241
add r5, r6, r4 // icount 242
seq r7, r3, r4 // icount 243
slt r4, r7, r3 // icount 244
add r2, r0, r7 // icount 245
slt r5, r6, r7 // icount 246
sle r4, r0, r2 // icount 247
add r3, r3, r6 // icount 248
sco r7, r1, r5 // icount 249
or r3, r0, r6 // icount 250
sra r2, r2, r1 // icount 251
slt r2, r3, r0 // icount 252
seq r1, r7, r0 // icount 253
or r3, r1, r5 // icount 254
seq r5, r1, r2 // icount 255
sub r2, r7, r5 // icount 256
sco r1, r6, r3 // icount 257
rol r2, r4, r2 // icount 258
and r1, r7, r4 // icount 259
slt r0, r6, r6 // icount 260
sco r5, r7, r0 // icount 261
add r0, r5, r7 // icount 262
sco r5, r0, r6 // icount 263
ror r7, r3, r6 // icount 264
sco r4, r6, r2 // icount 265
ror r4, r7, r4 // icount 266
sco r3, r4, r3 // icount 267
ror r4, r5, r2 // icount 268
and r0, r7, r6 // icount 269
sub r4, r7, r3 // icount 270
seq r1, r4, r0 // icount 271
seq r4, r7, r1 // icount 272
or r5, r6, r2 // icount 273
slt r0, r1, r5 // icount 274
add r4, r2, r2 // icount 275
sco r1, r1, r5 // icount 276
slt r1, r4, r7 // icount 277
or r6, r1, r1 // icount 278
or r4, r7, r2 // icount 279
sub r1, r0, r6 // icount 280
sco r6, r6, r5 // icount 281
ror r5, r0, r4 // icount 282
.rlabel_11:
beqz r0, .rlabel_12 // icount 283
sll r4, r4, r0 // icount 284
rol r7, r3, r1 // icount 285
ror r1, r5, r3 // icount 286
sub r7, r2, r5 // icount 287
.rlabel_12:
beqz r0, .rlabel_13 // icount 288
add r0, r2, r4 // icount 289
.rlabel_13:
beqz r0, .rlabel_14 // icount 290
or r0, r1, r5 // icount 291
seq r2, r1, r7 // icount 292
or r6, r7, r0 // icount 293
ror r5, r5, r2 // icount 294
or r7, r5, r3 // icount 295
sub r0, r3, r1 // icount 296
add r3, r0, r5 // icount 297
sra r5, r3, r7 // icount 298
sra r7, r2, r1 // icount 299
slt r3, r3, r6 // icount 300
sra r5, r5, r2 // icount 301
or r4, r7, r1 // icount 302
sle r0, r6, r2 // icount 303
sra r7, r4, r7 // icount 304
.rlabel_14:
j .rlabel_15 // icount 305
sub r6, r1, r7 // icount 306
or r3, r3, r0 // icount 307
rol r7, r1, r0 // icount 308
add r7, r7, r0 // icount 309
sll r4, r5, r6 // icount 310
and r0, r4, r2 // icount 311
seq r5, r3, r6 // icount 312
seq r6, r0, r2 // icount 313
and r3, r0, r4 // icount 314
sra r3, r0, r4 // icount 315
sle r0, r3, r0 // icount 316
and r5, r3, r3 // icount 317
seq r7, r0, r3 // icount 318
ror r0, r4, r1 // icount 319
sra r5, r2, r6 // icount 320
and r1, r5, r6 // icount 321
sub r1, r4, r3 // icount 322
sll r2, r0, r7 // icount 323
sub r6, r0, r4 // icount 324
sle r6, r1, r1 // icount 325
and r2, r5, r4 // icount 326
sle r2, r3, r4 // icount 327
or r6, r2, r1 // icount 328
slt r2, r5, r7 // icount 329
seq r3, r2, r2 // icount 330
sll r0, r3, r4 // icount 331
slt r3, r4, r1 // icount 332
and r7, r3, r2 // icount 333
rol r1, r5, r2 // icount 334
seq r2, r4, r0 // icount 335
sll r1, r2, r4 // icount 336
sub r5, r4, r3 // icount 337
and r7, r2, r2 // icount 338
add r5, r0, r2 // icount 339
sco r1, r3, r4 // icount 340
sle r4, r3, r3 // icount 341
sub r2, r1, r4 // icount 342
and r5, r7, r5 // icount 343
rol r5, r7, r6 // icount 344
sle r0, r3, r2 // icount 345
sub r1, r4, r4 // icount 346
ror r5, r5, r6 // icount 347
rol r3, r6, r7 // icount 348
sll r7, r2, r7 // icount 349
or r6, r5, r2 // icount 350
sub r4, r4, r6 // icount 351
add r5, r0, r6 // icount 352
sra r1, r1, r0 // icount 353
slt r6, r1, r7 // icount 354
sle r1, r5, r1 // icount 355
.rlabel_15:
j .rlabel_16 // icount 356
seq r5, r4, r6 // icount 357
sle r6, r2, r7 // icount 358
sra r1, r1, r2 // icount 359
sra r3, r2, r1 // icount 360
or r0, r7, r6 // icount 361
add r4, r2, r5 // icount 362
add r1, r2, r6 // icount 363
seq r0, r1, r5 // icount 364
sco r5, r6, r1 // icount 365
sle r1, r4, r5 // icount 366
rol r5, r0, r4 // icount 367
seq r7, r2, r3 // icount 368
ror r0, r0, r0 // icount 369
or r1, r7, r7 // icount 370
and r4, r1, r4 // icount 371
or r3, r2, r4 // icount 372
sle r5, r4, r5 // icount 373
ror r6, r3, r2 // icount 374
rol r4, r4, r3 // icount 375
sle r2, r3, r6 // icount 376
sle r2, r4, r7 // icount 377
sco r4, r7, r3 // icount 378
sco r3, r3, r0 // icount 379
and r0, r6, r7 // icount 380
seq r7, r3, r5 // icount 381
sll r5, r6, r0 // icount 382
rol r2, r4, r2 // icount 383
seq r6, r0, r3 // icount 384
sra r4, r5, r6 // icount 385
sll r7, r4, r4 // icount 386
ror r2, r0, r3 // icount 387
ror r7, r7, r3 // icount 388
rol r6, r4, r0 // icount 389
slt r7, r1, r6 // icount 390
sll r7, r4, r3 // icount 391
sle r2, r3, r4 // icount 392
sub r1, r1, r0 // icount 393
sll r4, r0, r4 // icount 394
sub r1, r6, r2 // icount 395
sco r1, r7, r2 // icount 396
or r3, r3, r1 // icount 397
sra r3, r6, r4 // icount 398
sco r4, r6, r6 // icount 399
sub r2, r3, r5 // icount 400
slt r3, r5, r5 // icount 401
rol r5, r6, r2 // icount 402
sle r4, r0, r1 // icount 403
ror r0, r2, r4 // icount 404
sco r6, r5, r7 // icount 405
rol r6, r4, r5 // icount 406
sle r3, r4, r7 // icount 407
sle r7, r4, r3 // icount 408
slt r1, r1, r0 // icount 409
sle r3, r3, r3 // icount 410
sll r1, r1, r4 // icount 411
sra r3, r4, r4 // icount 412
and r2, r1, r0 // icount 413
sle r4, r4, r4 // icount 414
sco r5, r4, r0 // icount 415
ror r6, r1, r7 // icount 416
ror r3, r6, r6 // icount 417
rol r0, r0, r4 // icount 418
slt r0, r1, r6 // icount 419
rol r3, r6, r5 // icount 420
sll r0, r2, r0 // icount 421
sub r0, r0, r0 // icount 422
sco r2, r0, r7 // icount 423
sco r5, r5, r7 // icount 424
add r7, r2, r6 // icount 425
sco r5, r0, r6 // icount 426
sle r4, r7, r4 // icount 427
rol r5, r6, r1 // icount 428
slt r3, r5, r1 // icount 429
slt r4, r4, r5 // icount 430
slt r6, r7, r3 // icount 431
sub r7, r2, r1 // icount 432
sll r4, r1, r6 // icount 433
rol r6, r4, r0 // icount 434
sra r2, r7, r5 // icount 435
slt r5, r4, r3 // icount 436
sub r7, r5, r4 // icount 437
and r2, r3, r2 // icount 438
sle r1, r3, r2 // icount 439
and r1, r1, r6 // icount 440
rol r1, r6, r4 // icount 441
and r1, r2, r0 // icount 442
add r2, r6, r6 // icount 443
ror r6, r3, r3 // icount 444
and r3, r0, r2 // icount 445
sll r4, r4, r6 // icount 446
seq r0, r1, r3 // icount 447
.rlabel_16:
j .rlabel_17 // icount 448
sle r0, r3, r6 // icount 449
slt r2, r6, r5 // icount 450
rol r5, r2, r0 // icount 451
or r1, r1, r3 // icount 452
or r4, r0, r5 // icount 453
add r7, r6, r2 // icount 454
sll r4, r5, r0 // icount 455
add r0, r6, r6 // icount 456
slt r6, r4, r4 // icount 457
sll r6, r3, r2 // icount 458
and r0, r7, r1 // icount 459
rol r2, r5, r3 // icount 460
seq r5, r5, r4 // icount 461
and r2, r5, r3 // icount 462
sra r2, r1, r1 // icount 463
sle r5, r7, r3 // icount 464
sco r3, r6, r2 // icount 465
sub r5, r2, r7 // icount 466
add r3, r3, r7 // icount 467
rol r1, r0, r3 // icount 468
and r7, r4, r1 // icount 469
seq r3, r4, r0 // icount 470
sco r6, r1, r3 // icount 471
or r7, r2, r3 // icount 472
add r2, r1, r4 // icount 473
add r4, r3, r4 // icount 474
sco r2, r5, r7 // icount 475
slt r7, r7, r3 // icount 476
sra r3, r2, r6 // icount 477
ror r0, r0, r5 // icount 478
add r7, r6, r2 // icount 479
rol r0, r1, r0 // icount 480
sco r1, r1, r6 // icount 481
sll r7, r1, r7 // icount 482
sle r7, r3, r4 // icount 483
sub r1, r0, r5 // icount 484
add r6, r0, r5 // icount 485
ror r4, r6, r7 // icount 486
slt r6, r3, r6 // icount 487
or r2, r1, r5 // icount 488
slt r2, r7, r6 // icount 489
sll r3, r2, r7 // icount 490
sra r3, r1, r5 // icount 491
sra r2, r0, r0 // icount 492
seq r4, r5, r6 // icount 493
sub r7, r4, r4 // icount 494
add r0, r7, r7 // icount 495
sra r7, r4, r5 // icount 496
rol r3, r4, r2 // icount 497
or r6, r6, r4 // icount 498
seq r3, r2, r4 // icount 499
sub r1, r6, r4 // icount 500
seq r6, r6, r0 // icount 501
and r2, r4, r7 // icount 502
ror r5, r2, r3 // icount 503
slt r6, r0, r5 // icount 504
ror r3, r0, r1 // icount 505
sle r3, r5, r7 // icount 506
sll r0, r2, r5 // icount 507
ror r2, r1, r0 // icount 508
or r5, r4, r6 // icount 509
seq r7, r0, r3 // icount 510
seq r2, r2, r5 // icount 511
sll r7, r2, r6 // icount 512
and r6, r6, r4 // icount 513
or r1, r3, r0 // icount 514
rol r7, r7, r2 // icount 515
seq r5, r5, r2 // icount 516
sle r3, r4, r5 // icount 517
sra r0, r4, r7 // icount 518
or r3, r2, r5 // icount 519
rol r0, r7, r7 // icount 520
sra r3, r6, r3 // icount 521
sco r4, r0, r5 // icount 522
sle r0, r5, r6 // icount 523
rol r5, r3, r5 // icount 524
sll r4, r7, r4 // icount 525
seq r5, r3, r0 // icount 526
sub r6, r1, r0 // icount 527
slt r3, r5, r0 // icount 528
ror r1, r6, r6 // icount 529
and r4, r3, r1 // icount 530
or r7, r0, r4 // icount 531
sle r3, r1, r7 // icount 532
sra r4, r3, r5 // icount 533
sll r6, r3, r7 // icount 534
sco r7, r4, r5 // icount 535
seq r4, r0, r5 // icount 536
and r3, r2, r2 // icount 537
sco r0, r7, r6 // icount 538
slt r6, r4, r0 // icount 539
sll r3, r4, r3 // icount 540
sra r5, r6, r2 // icount 541
sll r7, r5, r2 // icount 542
or r3, r4, r5 // icount 543
and r6, r4, r4 // icount 544
add r6, r1, r5 // icount 545
and r5, r1, r4 // icount 546
sle r6, r2, r2 // icount 547
rol r4, r3, r0 // icount 548
or r0, r3, r7 // icount 549
or r1, r4, r4 // icount 550
add r5, r3, r4 // icount 551
sle r1, r5, r2 // icount 552
rol r2, r2, r1 // icount 553
sle r1, r4, r3 // icount 554
sub r1, r5, r7 // icount 555
rol r4, r1, r6 // icount 556
sll r6, r3, r4 // icount 557
add r3, r3, r3 // icount 558
seq r7, r0, r7 // icount 559
seq r5, r2, r6 // icount 560
sub r6, r2, r4 // icount 561
and r4, r5, r0 // icount 562
and r6, r6, r3 // icount 563
sle r0, r3, r1 // icount 564
or r6, r3, r2 // icount 565
sub r2, r3, r5 // icount 566
sll r3, r7, r2 // icount 567
add r2, r5, r5 // icount 568
ror r2, r1, r6 // icount 569
or r0, r5, r5 // icount 570
sub r2, r6, r2 // icount 571
seq r6, r7, r1 // icount 572
.rlabel_17:
beqz r0, .rlabel_18 // icount 573
sub r1, r0, r4 // icount 574
sub r2, r6, r5 // icount 575
sco r0, r6, r0 // icount 576
sub r7, r0, r2 // icount 577
ror r1, r2, r5 // icount 578
add r4, r5, r1 // icount 579
add r7, r6, r2 // icount 580
ror r0, r4, r4 // icount 581
and r0, r4, r6 // icount 582
add r2, r7, r5 // icount 583
sll r1, r4, r1 // icount 584
sle r1, r0, r1 // icount 585
slt r3, r4, r3 // icount 586
or r2, r2, r1 // icount 587
add r4, r5, r6 // icount 588
.rlabel_18:
jal .rlabel_19 // icount 589
sle r3, r4, r7 // icount 590
sub r7, r0, r7 // icount 591
or r6, r7, r7 // icount 592
sco r2, r4, r2 // icount 593
slt r7, r6, r6 // icount 594
sub r4, r3, r6 // icount 595
slt r2, r2, r5 // icount 596
sra r4, r0, r7 // icount 597
or r0, r0, r6 // icount 598
add r4, r4, r5 // icount 599
slt r1, r4, r7 // icount 600
slt r0, r0, r2 // icount 601
sll r6, r6, r7 // icount 602
rol r3, r1, r0 // icount 603
sco r2, r4, r7 // icount 604
ror r2, r3, r1 // icount 605
and r3, r3, r7 // icount 606
sra r2, r5, r1 // icount 607
and r4, r3, r2 // icount 608
slt r0, r7, r4 // icount 609
rol r4, r4, r7 // icount 610
sll r3, r0, r4 // icount 611
sub r0, r0, r0 // icount 612
sll r1, r2, r3 // icount 613
.rlabel_19:
st r7, r6, 0
addi r6, r6, 0
jal .rlabel_20 // icount 614
add r6, r6, r2 // icount 615
and r0, r4, r7 // icount 616
sll r6, r1, r4 // icount 617
sra r2, r7, r5 // icount 618
slt r1, r6, r2 // icount 619
and r1, r4, r0 // icount 620
add r2, r3, r5 // icount 621
slt r1, r0, r6 // icount 622
seq r6, r1, r3 // icount 623
slt r5, r1, r1 // icount 624
or r4, r2, r6 // icount 625
or r1, r2, r4 // icount 626
sco r4, r1, r2 // icount 627
.rlabel_20:
jal .rlabel_21 // icount 628
and r3, r1, r2 // icount 629
sub r6, r6, r5 // icount 630
.rlabel_21:
j .rlabel_22 // icount 631
add r3, r0, r6 // icount 632
slt r1, r3, r5 // icount 633
sll r1, r7, r1 // icount 634
sll r0, r5, r3 // icount 635
sra r0, r3, r7 // icount 636
add r1, r2, r5 // icount 637
and r5, r4, r7 // icount 638
and r6, r0, r3 // icount 639
seq r5, r6, r5 // icount 640
sra r0, r2, r3 // icount 641
slt r0, r7, r4 // icount 642
or r2, r3, r4 // icount 643
slt r2, r0, r5 // icount 644
and r6, r1, r5 // icount 645
slt r5, r2, r1 // icount 646
sle r0, r0, r3 // icount 647
sco r2, r3, r4 // icount 648
slt r3, r1, r4 // icount 649
seq r2, r1, r6 // icount 650
sra r4, r4, r7 // icount 651
sco r7, r0, r0 // icount 652
rol r0, r1, r1 // icount 653
slt r1, r7, r5 // icount 654
and r5, r6, r2 // icount 655
slt r2, r4, r5 // icount 656
or r0, r1, r2 // icount 657
and r7, r6, r7 // icount 658
sco r1, r7, r4 // icount 659
sle r2, r2, r5 // icount 660
ror r1, r0, r2 // icount 661
sll r5, r3, r2 // icount 662
sco r5, r1, r6 // icount 663
slt r7, r3, r4 // icount 664
sll r7, r1, r2 // icount 665
or r7, r6, r3 // icount 666
seq r3, r4, r7 // icount 667
slt r2, r0, r3 // icount 668
slt r6, r5, r2 // icount 669
sub r2, r2, r1 // icount 670
sle r5, r7, r6 // icount 671
ror r0, r7, r6 // icount 672
and r7, r4, r6 // icount 673
sll r1, r7, r1 // icount 674
sll r1, r2, r6 // icount 675
and r5, r6, r1 // icount 676
sub r1, r6, r0 // icount 677
sra r2, r5, r1 // icount 678
sra r3, r6, r3 // icount 679
sle r3, r2, r4 // icount 680
sco r1, r3, r4 // icount 681
sll r7, r6, r1 // icount 682
and r2, r1, r6 // icount 683
ror r6, r6, r1 // icount 684
or r4, r5, r5 // icount 685
slt r4, r6, r1 // icount 686
sra r5, r1, r0 // icount 687
sll r6, r3, r0 // icount 688
sll r0, r0, r4 // icount 689
and r5, r6, r6 // icount 690
seq r4, r7, r4 // icount 691
sll r4, r2, r7 // icount 692
sco r2, r7, r5 // icount 693
and r2, r3, r1 // icount 694
sll r4, r7, r1 // icount 695
add r2, r0, r0 // icount 696
seq r1, r0, r2 // icount 697
seq r7, r7, r4 // icount 698
add r7, r7, r0 // icount 699
add r5, r1, r5 // icount 700
.rlabel_22:
j .rlabel_23 // icount 701
and r3, r4, r0 // icount 702
sco r2, r5, r3 // icount 703
slt r4, r7, r3 // icount 704
sll r7, r4, r0 // icount 705
sub r6, r5, r4 // icount 706
rol r1, r2, r4 // icount 707
ror r5, r0, r3 // icount 708
seq r5, r2, r0 // icount 709
slt r3, r7, r0 // icount 710
slt r5, r7, r0 // icount 711
sle r1, r0, r6 // icount 712
ror r5, r2, r6 // icount 713
ror r0, r2, r6 // icount 714
sll r5, r6, r2 // icount 715
ror r1, r5, r7 // icount 716
slt r4, r3, r7 // icount 717
sub r4, r7, r2 // icount 718
sco r5, r5, r1 // icount 719
and r0, r0, r5 // icount 720
add r7, r0, r3 // icount 721
sle r3, r3, r5 // icount 722
ror r3, r6, r4 // icount 723
sra r5, r0, r2 // icount 724
slt r5, r3, r7 // icount 725
sra r3, r1, r7 // icount 726
sco r7, r2, r1 // icount 727
slt r5, r7, r7 // icount 728
sco r3, r5, r6 // icount 729
sub r2, r5, r3 // icount 730
seq r3, r5, r0 // icount 731
sco r5, r2, r0 // icount 732
sub r2, r5, r2 // icount 733
sub r3, r5, r7 // icount 734
.rlabel_23:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_24 // icount 735
rol r4, r2, r4 // icount 736
sub r7, r4, r2 // icount 737
sub r1, r4, r5 // icount 738
or r6, r2, r3 // icount 739
or r2, r0, r1 // icount 740
add r3, r6, r7 // icount 741
sco r7, r0, r7 // icount 742
sco r4, r0, r4 // icount 743
.rlabel_24:
jal .rlabel_25 // icount 744
rol r3, r2, r4 // icount 745
ror r3, r0, r7 // icount 746
ror r6, r1, r1 // icount 747
sco r1, r4, r6 // icount 748
and r2, r0, r1 // icount 749
ror r7, r1, r5 // icount 750
rol r1, r1, r4 // icount 751
seq r0, r3, r1 // icount 752
sra r7, r2, r5 // icount 753
seq r5, r5, r6 // icount 754
add r7, r2, r5 // icount 755
and r3, r0, r5 // icount 756
sll r3, r1, r4 // icount 757
sll r4, r4, r5 // icount 758
sub r0, r6, r2 // icount 759
sco r2, r4, r1 // icount 760
slt r3, r5, r7 // icount 761
slt r2, r0, r3 // icount 762
.rlabel_25:
beqz r0, .rlabel_26 // icount 763
add r2, r6, r4 // icount 764
sll r0, r5, r3 // icount 765
sll r4, r1, r5 // icount 766
or r1, r5, r2 // icount 767
sub r2, r3, r2 // icount 768
slt r4, r6, r4 // icount 769
sco r5, r4, r1 // icount 770
add r4, r5, r5 // icount 771
slt r3, r6, r2 // icount 772
.rlabel_26:
st r7, r6, 8
addi r6, r6, 8
jal .rlabel_27 // icount 773
sub r4, r6, r7 // icount 774
sra r7, r0, r6 // icount 775
sco r7, r6, r0 // icount 776
sco r7, r3, r0 // icount 777
seq r0, r6, r0 // icount 778
or r4, r2, r3 // icount 779
sra r5, r0, r7 // icount 780
sco r1, r2, r5 // icount 781
ror r4, r5, r0 // icount 782
or r0, r4, r1 // icount 783
sub r1, r4, r3 // icount 784
rol r1, r2, r6 // icount 785
slt r5, r6, r5 // icount 786
sll r4, r5, r7 // icount 787
and r5, r0, r0 // icount 788
sco r5, r3, r2 // icount 789
sra r5, r5, r4 // icount 790
slt r1, r3, r0 // icount 791
sco r5, r0, r3 // icount 792
and r3, r1, r4 // icount 793
seq r7, r4, r1 // icount 794
sle r7, r2, r4 // icount 795
ror r2, r1, r1 // icount 796
ror r0, r4, r7 // icount 797
sco r3, r5, r4 // icount 798
sco r2, r7, r1 // icount 799
or r1, r2, r7 // icount 800
.rlabel_27:
ld r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_28 // icount 801
add r0, r6, r3 // icount 802
seq r3, r6, r7 // icount 803
sle r6, r3, r5 // icount 804
sle r1, r6, r3 // icount 805
.rlabel_28:
ld r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_29 // icount 806
or r2, r3, r5 // icount 807
sco r1, r6, r5 // icount 808
sle r6, r5, r3 // icount 809
add r5, r3, r5 // icount 810
seq r4, r1, r0 // icount 811
ror r2, r7, r7 // icount 812
rol r6, r4, r6 // icount 813
rol r1, r4, r6 // icount 814
or r2, r1, r1 // icount 815
.rlabel_29:
bnez r1, .rlabel_30 // icount 816
sra r2, r7, r7 // icount 817
.rlabel_30:
beqz r0, .rlabel_31 // icount 818
and r4, r0, r5 // icount 819
sub r5, r2, r7 // icount 820
sco r3, r6, r3 // icount 821
or r7, r5, r3 // icount 822
rol r5, r7, r0 // icount 823
.rlabel_31:
jal .rlabel_32 // icount 824
sra r3, r3, r7 // icount 825
sub r5, r6, r1 // icount 826
seq r6, r1, r0 // icount 827
seq r5, r4, r0 // icount 828
or r3, r0, r5 // icount 829
slt r0, r3, r0 // icount 830
sle r0, r4, r7 // icount 831
seq r5, r6, r0 // icount 832
rol r0, r0, r4 // icount 833
ror r5, r5, r4 // icount 834
and r2, r0, r3 // icount 835
sra r7, r3, r7 // icount 836
sub r3, r3, r0 // icount 837
sra r7, r6, r7 // icount 838
sco r6, r2, r7 // icount 839
sub r1, r2, r5 // icount 840
add r5, r5, r5 // icount 841
sll r3, r4, r4 // icount 842
sco r0, r4, r2 // icount 843
sco r3, r4, r2 // icount 844
seq r6, r1, r5 // icount 845
sle r2, r7, r0 // icount 846
rol r1, r0, r0 // icount 847
ror r7, r2, r6 // icount 848
sub r0, r1, r7 // icount 849
sub r4, r3, r1 // icount 850
sll r3, r3, r5 // icount 851
.rlabel_32:
ld r7, r6, 12
addi r6, r6, 12
bnez r1, .rlabel_33 // icount 852
rol r0, r1, r3 // icount 853
sle r1, r2, r6 // icount 854
ror r5, r0, r4 // icount 855
or r4, r5, r5 // icount 856
sra r4, r6, r2 // icount 857
sco r7, r2, r7 // icount 858
sra r0, r3, r6 // icount 859
sra r0, r6, r4 // icount 860
.rlabel_33:
bnez r1, .rlabel_34 // icount 861
and r1, r5, r3 // icount 862
sra r3, r0, r1 // icount 863
sll r6, r4, r4 // icount 864
.rlabel_34:
jal .rlabel_35 // icount 865
add r5, r4, r2 // icount 866
sub r4, r6, r1 // icount 867
or r2, r4, r3 // icount 868
sle r3, r7, r6 // icount 869
or r1, r1, r2 // icount 870
sll r5, r6, r2 // icount 871
rol r1, r5, r1 // icount 872
sco r5, r4, r3 // icount 873
and r1, r3, r7 // icount 874
sco r6, r6, r2 // icount 875
sco r2, r4, r1 // icount 876
slt r3, r1, r0 // icount 877
add r3, r3, r0 // icount 878
sle r4, r5, r2 // icount 879
or r2, r3, r4 // icount 880
seq r5, r1, r7 // icount 881
rol r3, r0, r4 // icount 882
or r5, r1, r4 // icount 883
or r3, r1, r4 // icount 884
sco r3, r4, r5 // icount 885
seq r6, r7, r3 // icount 886
sco r2, r1, r7 // icount 887
sub r4, r0, r7 // icount 888
add r1, r6, r6 // icount 889
sco r7, r5, r7 // icount 890
sra r2, r6, r0 // icount 891
add r1, r6, r0 // icount 892
ror r3, r2, r1 // icount 893
sra r7, r4, r6 // icount 894
or r7, r1, r5 // icount 895
seq r1, r0, r2 // icount 896
.rlabel_35:
st r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_36 // icount 897
sub r2, r7, r0 // icount 898
sub r2, r4, r1 // icount 899
.rlabel_36:
jal .rlabel_37 // icount 900
ror r4, r1, r1 // icount 901
rol r2, r4, r3 // icount 902
sco r4, r4, r1 // icount 903
sle r6, r4, r7 // icount 904
rol r7, r7, r7 // icount 905
or r2, r1, r6 // icount 906
sub r5, r5, r5 // icount 907
rol r5, r4, r1 // icount 908
seq r1, r4, r4 // icount 909
or r4, r6, r1 // icount 910
or r6, r3, r6 // icount 911
ror r3, r1, r6 // icount 912
sra r0, r4, r2 // icount 913
seq r0, r1, r7 // icount 914
sco r1, r3, r4 // icount 915
sco r1, r1, r7 // icount 916
sle r2, r7, r7 // icount 917
ror r1, r5, r7 // icount 918
sra r1, r4, r3 // icount 919
and r6, r6, r4 // icount 920
rol r1, r6, r0 // icount 921
sub r6, r0, r0 // icount 922
.rlabel_37:
st r7, r6, 12
addi r6, r6, 12
j .rlabel_38 // icount 923
ror r3, r2, r7 // icount 924
sub r7, r7, r2 // icount 925
or r5, r0, r5 // icount 926
and r1, r1, r5 // icount 927
ror r7, r5, r6 // icount 928
sra r5, r0, r7 // icount 929
ror r3, r4, r0 // icount 930
sle r5, r7, r4 // icount 931
and r6, r3, r0 // icount 932
or r7, r3, r4 // icount 933
add r1, r5, r6 // icount 934
ror r2, r4, r7 // icount 935
or r7, r1, r3 // icount 936
sll r3, r0, r4 // icount 937
or r1, r0, r1 // icount 938
sle r3, r5, r4 // icount 939
sra r5, r7, r5 // icount 940
sub r5, r2, r6 // icount 941
add r6, r0, r3 // icount 942
seq r5, r2, r5 // icount 943
seq r0, r5, r5 // icount 944
slt r5, r6, r4 // icount 945
and r0, r7, r4 // icount 946
slt r4, r5, r7 // icount 947
add r3, r4, r6 // icount 948
sco r1, r3, r4 // icount 949
or r3, r3, r2 // icount 950
seq r0, r4, r6 // icount 951
add r1, r2, r3 // icount 952
or r6, r5, r7 // icount 953
ror r5, r1, r7 // icount 954
or r7, r3, r3 // icount 955
sub r3, r4, r2 // icount 956
slt r6, r3, r4 // icount 957
or r3, r5, r3 // icount 958
sco r4, r5, r1 // icount 959
sub r2, r1, r4 // icount 960
sle r6, r6, r7 // icount 961
and r0, r7, r6 // icount 962
sco r2, r3, r6 // icount 963
add r4, r4, r5 // icount 964
sle r7, r6, r0 // icount 965
slt r3, r3, r2 // icount 966
sub r2, r6, r3 // icount 967
or r6, r5, r3 // icount 968
and r0, r3, r4 // icount 969
sco r7, r5, r5 // icount 970
slt r0, r7, r6 // icount 971
sco r1, r7, r7 // icount 972
add r7, r7, r7 // icount 973
seq r1, r5, r3 // icount 974
sle r3, r0, r3 // icount 975
sra r1, r4, r0 // icount 976
rol r1, r1, r6 // icount 977
sll r5, r1, r1 // icount 978
ror r7, r3, r0 // icount 979
sco r0, r5, r3 // icount 980
slt r0, r4, r0 // icount 981
sll r5, r2, r5 // icount 982
sra r7, r2, r5 // icount 983
and r2, r3, r1 // icount 984
seq r3, r5, r6 // icount 985
rol r7, r0, r6 // icount 986
sll r5, r0, r4 // icount 987
or r5, r3, r4 // icount 988
add r0, r4, r7 // icount 989
sco r0, r0, r5 // icount 990
or r0, r1, r7 // icount 991
slt r3, r1, r2 // icount 992
or r3, r1, r0 // icount 993
sle r3, r6, r1 // icount 994
or r7, r3, r0 // icount 995
rol r1, r2, r7 // icount 996
add r3, r6, r4 // icount 997
ror r1, r5, r3 // icount 998
sub r0, r0, r4 // icount 999
sco r0, r2, r1 // icount 1000
seq r4, r5, r3 // icount 1001
sra r2, r4, r0 // icount 1002
sle r1, r6, r5 // icount 1003
slt r7, r5, r5 // icount 1004
seq r7, r3, r1 // icount 1005
sco r7, r0, r0 // icount 1006
rol r3, r1, r0 // icount 1007
or r6, r6, r4 // icount 1008
add r6, r2, r6 // icount 1009
and r5, r3, r3 // icount 1010
.rlabel_38:
st r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_39 // icount 1011
add r1, r2, r7 // icount 1012
and r1, r3, r6 // icount 1013
slt r4, r0, r0 // icount 1014
.rlabel_39:
bnez r1, .rlabel_40 // icount 1015
ror r2, r7, r7 // icount 1016
seq r0, r3, r3 // icount 1017
sco r5, r5, r0 // icount 1018
rol r0, r4, r6 // icount 1019
and r6, r5, r1 // icount 1020
rol r4, r0, r1 // icount 1021
ror r6, r1, r4 // icount 1022
rol r2, r2, r7 // icount 1023
rol r2, r5, r7 // icount 1024
sle r3, r7, r1 // icount 1025
or r6, r3, r5 // icount 1026
.rlabel_40:
j .rlabel_41 // icount 1027
sll r2, r5, r1 // icount 1028
slt r3, r6, r6 // icount 1029
sll r0, r3, r3 // icount 1030
sll r5, r5, r4 // icount 1031
sco r4, r2, r0 // icount 1032
sco r3, r2, r2 // icount 1033
sco r3, r3, r3 // icount 1034
slt r1, r5, r6 // icount 1035
rol r5, r0, r3 // icount 1036
slt r4, r7, r0 // icount 1037
or r7, r6, r0 // icount 1038
add r5, r5, r7 // icount 1039
sra r7, r3, r5 // icount 1040
rol r7, r7, r6 // icount 1041
add r4, r2, r6 // icount 1042
ror r4, r5, r7 // icount 1043
sle r6, r7, r2 // icount 1044
sco r3, r1, r4 // icount 1045
slt r7, r0, r0 // icount 1046
rol r0, r1, r5 // icount 1047
sub r6, r7, r4 // icount 1048
sll r1, r2, r2 // icount 1049
or r1, r6, r2 // icount 1050
rol r1, r4, r2 // icount 1051
sco r2, r3, r1 // icount 1052
rol r3, r3, r4 // icount 1053
sco r1, r3, r0 // icount 1054
add r1, r2, r4 // icount 1055
add r3, r6, r0 // icount 1056
sra r2, r1, r0 // icount 1057
add r1, r6, r1 // icount 1058
seq r0, r7, r3 // icount 1059
slt r5, r6, r0 // icount 1060
ror r2, r4, r0 // icount 1061
seq r3, r3, r4 // icount 1062
sra r6, r4, r0 // icount 1063
sle r2, r3, r4 // icount 1064
and r2, r2, r4 // icount 1065
sub r7, r1, r2 // icount 1066
sll r6, r5, r7 // icount 1067
add r6, r1, r3 // icount 1068
sle r3, r5, r2 // icount 1069
seq r1, r1, r0 // icount 1070
sco r5, r0, r4 // icount 1071
and r6, r0, r1 // icount 1072
or r5, r5, r2 // icount 1073
and r0, r1, r2 // icount 1074
sll r7, r0, r3 // icount 1075
and r3, r0, r6 // icount 1076
seq r6, r5, r0 // icount 1077
or r5, r1, r5 // icount 1078
seq r1, r2, r2 // icount 1079
and r3, r6, r5 // icount 1080
rol r0, r2, r4 // icount 1081
sra r2, r7, r3 // icount 1082
ror r7, r3, r4 // icount 1083
sra r3, r1, r4 // icount 1084
rol r6, r5, r6 // icount 1085
ror r4, r0, r0 // icount 1086
rol r5, r5, r6 // icount 1087
or r0, r2, r0 // icount 1088
slt r0, r4, r0 // icount 1089
rol r7, r7, r2 // icount 1090
slt r7, r7, r0 // icount 1091
rol r4, r3, r3 // icount 1092
sub r1, r7, r5 // icount 1093
sra r5, r6, r7 // icount 1094
sll r2, r0, r5 // icount 1095
or r4, r5, r3 // icount 1096
.rlabel_41:
j .rlabel_42 // icount 1097
or r2, r1, r2 // icount 1098
sle r0, r0, r2 // icount 1099
add r6, r6, r2 // icount 1100
add r6, r6, r7 // icount 1101
sub r0, r3, r4 // icount 1102
ror r1, r1, r7 // icount 1103
sub r5, r7, r1 // icount 1104
or r7, r5, r4 // icount 1105
rol r6, r5, r6 // icount 1106
slt r4, r3, r2 // icount 1107
and r5, r5, r2 // icount 1108
seq r0, r7, r4 // icount 1109
sll r0, r7, r6 // icount 1110
and r4, r0, r5 // icount 1111
ror r1, r2, r5 // icount 1112
ror r0, r1, r1 // icount 1113
or r5, r7, r7 // icount 1114
rol r3, r7, r5 // icount 1115
ror r2, r6, r5 // icount 1116
add r2, r4, r7 // icount 1117
ror r6, r5, r7 // icount 1118
add r6, r6, r4 // icount 1119
sub r7, r2, r1 // icount 1120
sub r0, r3, r2 // icount 1121
slt r4, r5, r4 // icount 1122
add r3, r1, r2 // icount 1123
add r7, r3, r5 // icount 1124
and r1, r1, r5 // icount 1125
seq r1, r4, r3 // icount 1126
sra r1, r3, r0 // icount 1127
or r5, r3, r7 // icount 1128
and r0, r2, r5 // icount 1129
or r6, r7, r3 // icount 1130
seq r4, r7, r2 // icount 1131
sub r5, r6, r0 // icount 1132
sco r6, r4, r5 // icount 1133
sll r2, r6, r6 // icount 1134
slt r3, r6, r4 // icount 1135
and r4, r0, r2 // icount 1136
slt r6, r7, r3 // icount 1137
add r0, r1, r3 // icount 1138
rol r7, r4, r3 // icount 1139
slt r0, r3, r4 // icount 1140
sle r6, r6, r5 // icount 1141
seq r6, r5, r5 // icount 1142
sll r5, r5, r1 // icount 1143
seq r0, r2, r2 // icount 1144
slt r7, r0, r3 // icount 1145
sub r4, r5, r6 // icount 1146
and r7, r4, r7 // icount 1147
or r2, r0, r1 // icount 1148
sra r6, r6, r6 // icount 1149
and r1, r5, r4 // icount 1150
rol r2, r0, r1 // icount 1151
sub r3, r5, r6 // icount 1152
slt r7, r2, r6 // icount 1153
slt r4, r0, r3 // icount 1154
and r1, r7, r6 // icount 1155
add r2, r2, r4 // icount 1156
sub r3, r5, r6 // icount 1157
ror r0, r2, r7 // icount 1158
add r5, r1, r3 // icount 1159
seq r6, r1, r4 // icount 1160
slt r4, r0, r2 // icount 1161
add r1, r1, r0 // icount 1162
rol r3, r5, r7 // icount 1163
sle r0, r3, r5 // icount 1164
add r3, r0, r7 // icount 1165
seq r4, r1, r6 // icount 1166
sco r7, r0, r4 // icount 1167
seq r6, r6, r6 // icount 1168
or r7, r0, r3 // icount 1169
or r1, r5, r0 // icount 1170
sco r3, r2, r1 // icount 1171
seq r0, r2, r7 // icount 1172
slt r6, r3, r6 // icount 1173
rol r1, r3, r6 // icount 1174
sub r1, r7, r0 // icount 1175
seq r5, r4, r3 // icount 1176
and r5, r3, r5 // icount 1177
rol r6, r6, r0 // icount 1178
rol r6, r7, r4 // icount 1179
rol r5, r7, r7 // icount 1180
slt r5, r3, r0 // icount 1181
or r1, r2, r4 // icount 1182
or r1, r7, r7 // icount 1183
sra r4, r7, r2 // icount 1184
sra r5, r3, r3 // icount 1185
sle r0, r1, r0 // icount 1186
seq r6, r5, r5 // icount 1187
add r3, r6, r6 // icount 1188
or r3, r3, r5 // icount 1189
slt r7, r3, r0 // icount 1190
sub r5, r4, r7 // icount 1191
and r6, r3, r2 // icount 1192
sle r1, r1, r6 // icount 1193
or r5, r4, r2 // icount 1194
or r5, r4, r0 // icount 1195
sco r3, r6, r6 // icount 1196
or r1, r4, r7 // icount 1197
sco r5, r5, r1 // icount 1198
sco r1, r0, r0 // icount 1199
sll r2, r6, r6 // icount 1200
and r4, r4, r2 // icount 1201
slt r4, r0, r7 // icount 1202
sle r7, r2, r0 // icount 1203
add r5, r3, r6 // icount 1204
.rlabel_42:
ld r7, r6, 12
addi r6, r6, 12
bnez r1, .rlabel_43 // icount 1205
or r1, r6, r1 // icount 1206
sra r7, r4, r3 // icount 1207
.rlabel_43:
st r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_44 // icount 1208
sra r0, r7, r2 // icount 1209
or r3, r0, r2 // icount 1210
rol r0, r1, r5 // icount 1211
sub r6, r6, r0 // icount 1212
and r0, r3, r5 // icount 1213
sco r6, r0, r1 // icount 1214
slt r2, r7, r4 // icount 1215
slt r4, r1, r3 // icount 1216
sco r5, r3, r0 // icount 1217
sco r7, r5, r5 // icount 1218
sra r1, r6, r0 // icount 1219
sco r6, r6, r3 // icount 1220
ror r0, r6, r2 // icount 1221
and r4, r1, r3 // icount 1222
.rlabel_44:
jal .rlabel_45 // icount 1223
or r3, r0, r1 // icount 1224
seq r0, r5, r3 // icount 1225
sll r3, r5, r6 // icount 1226
slt r5, r7, r1 // icount 1227
sle r2, r6, r3 // icount 1228
sle r4, r4, r3 // icount 1229
slt r4, r0, r2 // icount 1230
ror r3, r5, r4 // icount 1231
and r5, r2, r5 // icount 1232
slt r2, r1, r2 // icount 1233
slt r3, r5, r3 // icount 1234
sll r4, r1, r3 // icount 1235
seq r4, r1, r4 // icount 1236
sco r0, r2, r4 // icount 1237
slt r2, r2, r3 // icount 1238
slt r0, r4, r7 // icount 1239
sle r7, r4, r5 // icount 1240
or r5, r0, r7 // icount 1241
sco r1, r4, r5 // icount 1242
add r5, r5, r6 // icount 1243
or r5, r3, r5 // icount 1244
sll r6, r4, r3 // icount 1245
sll r5, r6, r6 // icount 1246
sub r4, r4, r7 // icount 1247
sub r2, r3, r5 // icount 1248
sco r2, r0, r7 // icount 1249
add r2, r6, r7 // icount 1250
.rlabel_45:
st r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_46 // icount 1251
ror r3, r5, r2 // icount 1252
sra r1, r4, r0 // icount 1253
sub r0, r1, r6 // icount 1254
sle r0, r3, r7 // icount 1255
rol r4, r4, r0 // icount 1256
sco r4, r0, r5 // icount 1257
seq r4, r7, r2 // icount 1258
ror r2, r7, r3 // icount 1259
sub r2, r2, r0 // icount 1260
ror r5, r6, r1 // icount 1261
.rlabel_46:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_47 // icount 1262
and r2, r0, r6 // icount 1263
rol r6, r6, r3 // icount 1264
.rlabel_47:
j .rlabel_48 // icount 1265
and r0, r0, r3 // icount 1266
slt r4, r7, r5 // icount 1267
sco r7, r5, r3 // icount 1268
seq r3, r5, r2 // icount 1269
sra r2, r6, r2 // icount 1270
ror r4, r3, r3 // icount 1271
sle r2, r7, r5 // icount 1272
sco r4, r6, r4 // icount 1273
slt r0, r4, r7 // icount 1274
ror r5, r4, r3 // icount 1275
sle r7, r3, r0 // icount 1276
and r0, r4, r0 // icount 1277
sra r2, r5, r1 // icount 1278
sle r2, r2, r7 // icount 1279
rol r5, r3, r5 // icount 1280
sco r6, r4, r3 // icount 1281
and r2, r0, r5 // icount 1282
sll r6, r0, r4 // icount 1283
add r7, r0, r2 // icount 1284
add r0, r0, r7 // icount 1285
and r7, r6, r3 // icount 1286
sub r4, r0, r4 // icount 1287
sub r7, r3, r2 // icount 1288
or r4, r1, r0 // icount 1289
sle r5, r7, r7 // icount 1290
sub r1, r0, r6 // icount 1291
rol r2, r2, r1 // icount 1292
and r4, r7, r0 // icount 1293
add r5, r5, r1 // icount 1294
sra r5, r0, r2 // icount 1295
rol r1, r6, r4 // icount 1296
seq r1, r6, r0 // icount 1297
slt r0, r2, r7 // icount 1298
slt r1, r5, r0 // icount 1299
slt r3, r7, r7 // icount 1300
sll r5, r2, r2 // icount 1301
and r0, r4, r4 // icount 1302
sco r3, r1, r2 // icount 1303
and r4, r1, r4 // icount 1304
sra r5, r4, r0 // icount 1305
.rlabel_48:
ld r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_49 // icount 1306
and r1, r4, r6 // icount 1307
sll r3, r1, r1 // icount 1308
rol r2, r6, r5 // icount 1309
sub r6, r3, r3 // icount 1310
sub r6, r3, r7 // icount 1311
or r2, r3, r7 // icount 1312
sub r6, r7, r4 // icount 1313
sco r5, r7, r0 // icount 1314
sco r1, r4, r2 // icount 1315
sle r4, r0, r7 // icount 1316
slt r1, r4, r7 // icount 1317
sra r3, r4, r2 // icount 1318
.rlabel_49:
j .rlabel_50 // icount 1319
sra r7, r5, r3 // icount 1320
sub r4, r1, r1 // icount 1321
ror r4, r2, r3 // icount 1322
ror r6, r3, r1 // icount 1323
rol r0, r5, r5 // icount 1324
and r4, r6, r5 // icount 1325
seq r0, r4, r0 // icount 1326
sle r7, r4, r5 // icount 1327
.rlabel_50:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_51 // icount 1328
and r4, r0, r3 // icount 1329
seq r0, r2, r6 // icount 1330
.rlabel_51:
st r7, r6, 10
addi r6, r6, 10
j .rlabel_52 // icount 1331
sle r7, r4, r3 // icount 1332
rol r5, r0, r6 // icount 1333
ror r5, r2, r2 // icount 1334
sle r2, r7, r7 // icount 1335
rol r2, r2, r0 // icount 1336
or r4, r3, r4 // icount 1337
sra r5, r2, r5 // icount 1338
slt r6, r0, r6 // icount 1339
sra r6, r2, r7 // icount 1340
rol r4, r4, r5 // icount 1341
and r7, r3, r0 // icount 1342
sra r7, r2, r6 // icount 1343
sub r1, r0, r1 // icount 1344
sub r4, r3, r0 // icount 1345
ror r7, r2, r5 // icount 1346
sll r5, r0, r3 // icount 1347
slt r4, r3, r2 // icount 1348
sub r1, r4, r3 // icount 1349
sub r6, r6, r0 // icount 1350
slt r5, r3, r2 // icount 1351
or r6, r0, r7 // icount 1352
rol r3, r1, r4 // icount 1353
sle r5, r0, r4 // icount 1354
ror r3, r3, r4 // icount 1355
sco r4, r6, r7 // icount 1356
sub r0, r0, r4 // icount 1357
sco r6, r2, r6 // icount 1358
seq r1, r7, r3 // icount 1359
slt r4, r4, r7 // icount 1360
sra r2, r0, r2 // icount 1361
rol r0, r5, r4 // icount 1362
or r1, r1, r5 // icount 1363
seq r7, r7, r2 // icount 1364
sle r5, r0, r4 // icount 1365
sra r0, r1, r0 // icount 1366
seq r5, r2, r7 // icount 1367
or r2, r4, r1 // icount 1368
add r4, r2, r6 // icount 1369
sle r6, r4, r6 // icount 1370
rol r0, r1, r1 // icount 1371
ror r4, r1, r0 // icount 1372
slt r1, r1, r1 // icount 1373
ror r4, r7, r4 // icount 1374
ror r5, r5, r6 // icount 1375
and r5, r5, r3 // icount 1376
and r0, r0, r4 // icount 1377
sll r0, r5, r7 // icount 1378
rol r7, r1, r4 // icount 1379
sle r0, r2, r1 // icount 1380
rol r4, r2, r4 // icount 1381
sco r2, r0, r6 // icount 1382
sra r0, r7, r4 // icount 1383
sle r7, r4, r6 // icount 1384
slt r0, r7, r1 // icount 1385
or r0, r5, r3 // icount 1386
rol r4, r0, r3 // icount 1387
add r5, r3, r4 // icount 1388
sll r7, r3, r2 // icount 1389
sub r1, r1, r5 // icount 1390
sle r6, r5, r7 // icount 1391
sll r3, r6, r5 // icount 1392
and r5, r7, r2 // icount 1393
sle r6, r3, r1 // icount 1394
slt r0, r5, r1 // icount 1395
sle r0, r6, r6 // icount 1396
seq r1, r1, r7 // icount 1397
sle r4, r0, r1 // icount 1398
slt r5, r3, r7 // icount 1399
rol r6, r1, r6 // icount 1400
and r5, r1, r2 // icount 1401
ror r6, r7, r5 // icount 1402
sub r1, r0, r3 // icount 1403
or r6, r1, r5 // icount 1404
seq r1, r7, r1 // icount 1405
sco r0, r3, r2 // icount 1406
and r1, r7, r3 // icount 1407
add r7, r0, r5 // icount 1408
and r2, r0, r2 // icount 1409
and r7, r6, r5 // icount 1410
slt r5, r1, r6 // icount 1411
sra r6, r1, r0 // icount 1412
or r4, r1, r3 // icount 1413
sle r6, r0, r6 // icount 1414
or r3, r0, r2 // icount 1415
ror r4, r6, r0 // icount 1416
sub r4, r5, r1 // icount 1417
ror r7, r6, r2 // icount 1418
sco r4, r6, r6 // icount 1419
slt r7, r5, r7 // icount 1420
sco r4, r0, r2 // icount 1421
add r6, r0, r6 // icount 1422
rol r4, r3, r0 // icount 1423
slt r3, r1, r4 // icount 1424
seq r0, r6, r2 // icount 1425
sll r5, r4, r1 // icount 1426
sle r3, r5, r1 // icount 1427
sub r4, r3, r7 // icount 1428
add r2, r1, r5 // icount 1429
sll r3, r6, r5 // icount 1430
sra r2, r4, r0 // icount 1431
ror r6, r2, r5 // icount 1432
and r3, r4, r6 // icount 1433
and r6, r6, r2 // icount 1434
sco r5, r1, r7 // icount 1435
sra r2, r3, r1 // icount 1436
rol r4, r3, r6 // icount 1437
sle r0, r2, r5 // icount 1438
and r0, r6, r6 // icount 1439
seq r7, r5, r6 // icount 1440
slt r2, r4, r7 // icount 1441
rol r1, r3, r1 // icount 1442
rol r4, r6, r4 // icount 1443
.rlabel_52:
jal .rlabel_53 // icount 1444
sll r3, r0, r1 // icount 1445
sub r4, r6, r0 // icount 1446
seq r0, r0, r4 // icount 1447
sll r6, r4, r1 // icount 1448
sra r5, r4, r5 // icount 1449
and r3, r4, r0 // icount 1450
sle r0, r1, r4 // icount 1451
or r7, r5, r5 // icount 1452
sco r7, r7, r5 // icount 1453
ror r3, r3, r4 // icount 1454
sll r0, r0, r5 // icount 1455
and r5, r3, r2 // icount 1456
sra r1, r6, r6 // icount 1457
ror r7, r0, r0 // icount 1458
add r2, r4, r5 // icount 1459
slt r4, r6, r5 // icount 1460
slt r6, r2, r3 // icount 1461
.rlabel_53:
st r7, r6, 12
addi r6, r6, 12
bnez r1, .rlabel_54 // icount 1462
ror r1, r6, r3 // icount 1463
sco r3, r0, r5 // icount 1464
.rlabel_54:
j .rlabel_55 // icount 1465
slt r4, r4, r1 // icount 1466
seq r7, r5, r2 // icount 1467
add r5, r3, r2 // icount 1468
rol r7, r7, r1 // icount 1469
or r2, r5, r7 // icount 1470
sub r1, r5, r0 // icount 1471
sle r4, r2, r3 // icount 1472
ror r1, r0, r4 // icount 1473
sub r1, r2, r4 // icount 1474
or r4, r5, r4 // icount 1475
sll r2, r2, r3 // icount 1476
slt r1, r0, r0 // icount 1477
sub r2, r2, r6 // icount 1478
sle r2, r1, r1 // icount 1479
ror r1, r2, r5 // icount 1480
ror r6, r5, r6 // icount 1481
sco r5, r5, r3 // icount 1482
sll r5, r1, r3 // icount 1483
rol r0, r2, r3 // icount 1484
seq r6, r4, r7 // icount 1485
sub r6, r3, r0 // icount 1486
sle r1, r7, r1 // icount 1487
rol r5, r7, r7 // icount 1488
.rlabel_55:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_56 // icount 1489
.rlabel_56:
jal .rlabel_57 // icount 1490
sll r7, r0, r2 // icount 1491
sra r4, r2, r1 // icount 1492
and r0, r5, r5 // icount 1493
seq r2, r2, r1 // icount 1494
and r2, r3, r0 // icount 1495
ror r2, r6, r5 // icount 1496
sle r3, r3, r0 // icount 1497
ror r7, r6, r1 // icount 1498
sra r0, r5, r6 // icount 1499
sco r6, r0, r5 // icount 1500
slt r2, r5, r3 // icount 1501
or r1, r4, r6 // icount 1502
sco r6, r2, r6 // icount 1503
sco r0, r0, r5 // icount 1504
sra r4, r5, r6 // icount 1505
or r1, r6, r6 // icount 1506
sle r2, r5, r0 // icount 1507
and r5, r2, r1 // icount 1508
add r2, r5, r5 // icount 1509
sle r3, r6, r4 // icount 1510
slt r3, r3, r1 // icount 1511
sub r1, r3, r0 // icount 1512
sub r2, r3, r3 // icount 1513
sub r7, r0, r0 // icount 1514
sco r6, r7, r3 // icount 1515
and r6, r1, r5 // icount 1516
sub r7, r6, r7 // icount 1517
or r1, r6, r3 // icount 1518
slt r7, r3, r1 // icount 1519
sra r5, r4, r4 // icount 1520
sco r5, r3, r7 // icount 1521
.rlabel_57:
jal .rlabel_58 // icount 1522
or r6, r0, r7 // icount 1523
sra r0, r7, r0 // icount 1524
and r3, r1, r6 // icount 1525
or r6, r7, r2 // icount 1526
and r0, r4, r6 // icount 1527
.rlabel_58:
beqz r0, .rlabel_59 // icount 1528
sra r6, r5, r5 // icount 1529
sra r0, r7, r2 // icount 1530
and r6, r7, r4 // icount 1531
or r4, r4, r1 // icount 1532
sub r6, r1, r1 // icount 1533
sle r6, r5, r3 // icount 1534
seq r0, r2, r3 // icount 1535
rol r0, r4, r0 // icount 1536
.rlabel_59:
ld r7, r6, 6
addi r6, r6, 6
jal .rlabel_60 // icount 1537
or r2, r0, r5 // icount 1538
and r5, r2, r6 // icount 1539
and r0, r7, r2 // icount 1540
sub r3, r4, r7 // icount 1541
slt r2, r1, r5 // icount 1542
sub r5, r6, r7 // icount 1543
sco r7, r6, r6 // icount 1544
slt r6, r7, r0 // icount 1545
sll r1, r7, r3 // icount 1546
slt r4, r2, r4 // icount 1547
sra r5, r2, r1 // icount 1548
sco r4, r7, r2 // icount 1549
sco r2, r1, r2 // icount 1550
sll r4, r7, r4 // icount 1551
add r2, r6, r3 // icount 1552
and r6, r6, r2 // icount 1553
sle r6, r4, r3 // icount 1554
sle r6, r1, r6 // icount 1555
rol r1, r2, r6 // icount 1556
slt r7, r7, r5 // icount 1557
rol r7, r0, r0 // icount 1558
sle r7, r0, r3 // icount 1559
ror r4, r4, r5 // icount 1560
.rlabel_60:
j .rlabel_61 // icount 1561
sco r7, r6, r7 // icount 1562
sle r5, r1, r0 // icount 1563
or r5, r6, r4 // icount 1564
rol r7, r0, r2 // icount 1565
ror r2, r5, r6 // icount 1566
sco r6, r3, r2 // icount 1567
ror r0, r6, r4 // icount 1568
slt r0, r2, r6 // icount 1569
ror r6, r4, r3 // icount 1570
rol r3, r0, r4 // icount 1571
sle r4, r1, r6 // icount 1572
seq r0, r3, r4 // icount 1573
or r5, r2, r7 // icount 1574
sle r7, r6, r5 // icount 1575
ror r6, r6, r0 // icount 1576
and r6, r3, r1 // icount 1577
add r6, r4, r3 // icount 1578
and r2, r5, r5 // icount 1579
and r5, r3, r4 // icount 1580
sle r6, r2, r1 // icount 1581
slt r5, r0, r5 // icount 1582
slt r1, r4, r2 // icount 1583
slt r7, r4, r4 // icount 1584
sll r0, r2, r7 // icount 1585
sll r0, r5, r3 // icount 1586
sra r7, r3, r2 // icount 1587
sle r1, r0, r4 // icount 1588
sra r3, r0, r5 // icount 1589
ror r1, r0, r1 // icount 1590
and r6, r4, r4 // icount 1591
seq r2, r1, r4 // icount 1592
sll r0, r2, r6 // icount 1593
sra r6, r6, r3 // icount 1594
add r1, r0, r7 // icount 1595
sle r7, r6, r4 // icount 1596
or r6, r6, r7 // icount 1597
rol r5, r4, r7 // icount 1598
seq r4, r6, r7 // icount 1599
slt r4, r6, r0 // icount 1600
slt r0, r2, r3 // icount 1601
rol r0, r1, r6 // icount 1602
add r3, r6, r2 // icount 1603
ror r7, r7, r6 // icount 1604
sra r4, r6, r3 // icount 1605
rol r1, r1, r0 // icount 1606
seq r2, r3, r7 // icount 1607
ror r3, r4, r6 // icount 1608
sll r4, r5, r6 // icount 1609
rol r4, r7, r7 // icount 1610
sub r5, r7, r5 // icount 1611
ror r1, r0, r7 // icount 1612
seq r3, r0, r3 // icount 1613
add r1, r1, r4 // icount 1614
seq r3, r1, r4 // icount 1615
sco r0, r5, r7 // icount 1616
ror r7, r7, r1 // icount 1617
seq r2, r3, r3 // icount 1618
sll r6, r1, r3 // icount 1619
add r4, r6, r0 // icount 1620
and r2, r7, r1 // icount 1621
sco r4, r3, r4 // icount 1622
sll r1, r0, r4 // icount 1623
sub r2, r3, r6 // icount 1624
add r4, r7, r4 // icount 1625
and r6, r3, r1 // icount 1626
and r6, r3, r5 // icount 1627
add r0, r0, r3 // icount 1628
sle r5, r4, r4 // icount 1629
ror r5, r2, r1 // icount 1630
seq r6, r4, r2 // icount 1631
sco r3, r6, r7 // icount 1632
sll r2, r6, r0 // icount 1633
and r5, r7, r6 // icount 1634
sra r2, r2, r3 // icount 1635
or r4, r1, r3 // icount 1636
ror r6, r3, r6 // icount 1637
seq r0, r4, r1 // icount 1638
sco r6, r7, r4 // icount 1639
add r5, r1, r6 // icount 1640
sle r0, r0, r4 // icount 1641
sra r7, r3, r4 // icount 1642
ror r3, r0, r5 // icount 1643
slt r6, r5, r7 // icount 1644
sub r6, r2, r6 // icount 1645
sub r7, r7, r7 // icount 1646
and r4, r6, r7 // icount 1647
sll r4, r4, r2 // icount 1648
ror r2, r3, r5 // icount 1649
sco r0, r4, r6 // icount 1650
sco r4, r1, r1 // icount 1651
seq r5, r1, r0 // icount 1652
sll r7, r2, r0 // icount 1653
rol r7, r5, r2 // icount 1654
and r2, r4, r2 // icount 1655
ror r7, r4, r7 // icount 1656
or r2, r6, r6 // icount 1657
sll r5, r3, r1 // icount 1658
sco r1, r5, r3 // icount 1659
seq r4, r2, r5 // icount 1660
sll r1, r6, r5 // icount 1661
sra r3, r0, r2 // icount 1662
add r6, r7, r1 // icount 1663
or r2, r7, r4 // icount 1664
ror r7, r3, r5 // icount 1665
rol r5, r1, r3 // icount 1666
sll r7, r7, r6 // icount 1667
seq r0, r0, r6 // icount 1668
sco r7, r0, r6 // icount 1669
sra r5, r1, r7 // icount 1670
sll r7, r2, r4 // icount 1671
sll r6, r6, r6 // icount 1672
seq r3, r1, r2 // icount 1673
sco r4, r2, r7 // icount 1674
sra r7, r7, r5 // icount 1675
seq r0, r2, r4 // icount 1676
sub r1, r6, r6 // icount 1677
seq r7, r4, r0 // icount 1678
sco r5, r4, r4 // icount 1679
sub r4, r7, r1 // icount 1680
add r0, r7, r3 // icount 1681
ror r2, r3, r0 // icount 1682
seq r1, r0, r7 // icount 1683
.rlabel_61:
beqz r0, .rlabel_62 // icount 1684
sub r2, r0, r4 // icount 1685
sra r5, r4, r7 // icount 1686
.rlabel_62:
st r7, r6, 2
addi r6, r6, 2
jal .rlabel_63 // icount 1687
slt r7, r3, r4 // icount 1688
sub r2, r2, r3 // icount 1689
sle r6, r5, r1 // icount 1690
rol r6, r0, r4 // icount 1691
add r5, r4, r5 // icount 1692
rol r4, r5, r0 // icount 1693
sle r7, r2, r1 // icount 1694
or r1, r7, r5 // icount 1695
sll r7, r6, r1 // icount 1696
and r7, r7, r1 // icount 1697
rol r0, r2, r7 // icount 1698
sle r6, r2, r5 // icount 1699
seq r2, r3, r4 // icount 1700
and r0, r3, r4 // icount 1701
sle r3, r5, r3 // icount 1702
and r2, r3, r1 // icount 1703
sra r2, r5, r1 // icount 1704
slt r0, r7, r1 // icount 1705
sub r5, r5, r0 // icount 1706
sle r6, r3, r5 // icount 1707
and r0, r1, r2 // icount 1708
seq r2, r1, r1 // icount 1709
sco r0, r3, r5 // icount 1710
sub r3, r5, r3 // icount 1711
sll r2, r3, r3 // icount 1712
and r3, r2, r2 // icount 1713
rol r3, r5, r6 // icount 1714
.rlabel_63:
jal .rlabel_64 // icount 1715
slt r6, r4, r6 // icount 1716
sle r1, r1, r0 // icount 1717
seq r1, r6, r7 // icount 1718
ror r3, r4, r2 // icount 1719
sll r1, r3, r7 // icount 1720
sra r4, r1, r5 // icount 1721
or r5, r3, r4 // icount 1722
ror r4, r3, r6 // icount 1723
sll r6, r7, r2 // icount 1724
add r4, r2, r2 // icount 1725
seq r1, r4, r3 // icount 1726
seq r5, r6, r5 // icount 1727
sub r6, r6, r3 // icount 1728
slt r2, r6, r6 // icount 1729
sra r7, r0, r6 // icount 1730
rol r1, r4, r7 // icount 1731
sco r4, r6, r6 // icount 1732
ror r4, r4, r0 // icount 1733
and r3, r5, r4 // icount 1734
sle r4, r4, r4 // icount 1735
or r6, r4, r2 // icount 1736
ror r7, r6, r5 // icount 1737
rol r6, r5, r0 // icount 1738
add r6, r0, r5 // icount 1739
sll r1, r2, r2 // icount 1740
rol r1, r3, r6 // icount 1741
.rlabel_64:
ld r7, r6, 6
addi r6, r6, 6
j .rlabel_65 // icount 1742
ror r0, r2, r7 // icount 1743
seq r2, r7, r7 // icount 1744
sub r2, r6, r7 // icount 1745
or r0, r5, r7 // icount 1746
sco r4, r2, r4 // icount 1747
seq r5, r6, r2 // icount 1748
slt r6, r5, r4 // icount 1749
slt r5, r0, r5 // icount 1750
sco r4, r7, r2 // icount 1751
seq r7, r1, r6 // icount 1752
sco r6, r6, r5 // icount 1753
sra r0, r3, r6 // icount 1754
seq r2, r6, r5 // icount 1755
sra r7, r3, r0 // icount 1756
ror r7, r0, r7 // icount 1757
or r6, r1, r3 // icount 1758
sco r0, r2, r3 // icount 1759
add r0, r6, r2 // icount 1760
or r6, r4, r5 // icount 1761
ror r2, r3, r1 // icount 1762
sco r0, r7, r5 // icount 1763
add r1, r2, r3 // icount 1764
rol r7, r7, r1 // icount 1765
sra r2, r5, r4 // icount 1766
seq r0, r0, r2 // icount 1767
sra r6, r6, r7 // icount 1768
or r5, r2, r5 // icount 1769
rol r0, r6, r1 // icount 1770
and r0, r2, r4 // icount 1771
rol r1, r0, r5 // icount 1772
sll r4, r5, r3 // icount 1773
sub r5, r0, r1 // icount 1774
slt r7, r1, r0 // icount 1775
seq r0, r1, r3 // icount 1776
sco r6, r1, r6 // icount 1777
sub r3, r7, r2 // icount 1778
or r2, r6, r0 // icount 1779
rol r1, r0, r0 // icount 1780
ror r0, r4, r2 // icount 1781
seq r5, r5, r1 // icount 1782
add r6, r7, r7 // icount 1783
or r1, r2, r2 // icount 1784
sra r4, r4, r6 // icount 1785
and r0, r4, r7 // icount 1786
slt r5, r2, r6 // icount 1787
ror r0, r4, r6 // icount 1788
rol r7, r5, r7 // icount 1789
and r1, r4, r2 // icount 1790
sco r6, r1, r7 // icount 1791
rol r6, r5, r4 // icount 1792
or r7, r4, r7 // icount 1793
rol r5, r6, r2 // icount 1794
add r1, r2, r7 // icount 1795
and r2, r5, r2 // icount 1796
sub r6, r7, r2 // icount 1797
sub r2, r6, r7 // icount 1798
slt r2, r1, r0 // icount 1799
ror r2, r6, r2 // icount 1800
.rlabel_65:
jal .rlabel_66 // icount 1801
seq r4, r2, r2 // icount 1802
sra r5, r2, r1 // icount 1803
rol r3, r6, r4 // icount 1804
sco r5, r2, r1 // icount 1805
sra r5, r5, r7 // icount 1806
sco r7, r6, r0 // icount 1807
sco r3, r2, r0 // icount 1808
sra r4, r1, r3 // icount 1809
sco r4, r5, r5 // icount 1810
add r5, r5, r0 // icount 1811
.rlabel_66:
beqz r0, .rlabel_67 // icount 1812
and r3, r1, r7 // icount 1813
seq r5, r1, r5 // icount 1814
rol r2, r3, r7 // icount 1815
sco r1, r5, r7 // icount 1816
sle r3, r3, r5 // icount 1817
ror r7, r0, r6 // icount 1818
rol r1, r5, r4 // icount 1819
or r2, r3, r2 // icount 1820
sub r4, r2, r5 // icount 1821
or r4, r6, r3 // icount 1822
or r6, r1, r1 // icount 1823
rol r4, r2, r2 // icount 1824
.rlabel_67:
ld r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_68 // icount 1825
or r2, r1, r0 // icount 1826
sub r4, r4, r2 // icount 1827
sco r7, r2, r2 // icount 1828
or r5, r5, r4 // icount 1829
or r7, r7, r3 // icount 1830
sle r3, r7, r1 // icount 1831
ror r3, r0, r0 // icount 1832
.rlabel_68:
jal .rlabel_69 // icount 1833
sco r6, r7, r4 // icount 1834
sra r1, r6, r5 // icount 1835
and r7, r3, r3 // icount 1836
sll r0, r3, r0 // icount 1837
and r4, r0, r0 // icount 1838
and r2, r2, r4 // icount 1839
sra r0, r5, r2 // icount 1840
sco r1, r0, r6 // icount 1841
sco r0, r5, r1 // icount 1842
add r4, r5, r1 // icount 1843
add r7, r0, r0 // icount 1844
sll r0, r5, r1 // icount 1845
add r2, r2, r6 // icount 1846
sub r6, r0, r0 // icount 1847
sub r0, r1, r5 // icount 1848
sub r1, r4, r5 // icount 1849
rol r3, r0, r4 // icount 1850
ror r6, r4, r2 // icount 1851
slt r6, r1, r1 // icount 1852
slt r1, r0, r6 // icount 1853
slt r7, r6, r1 // icount 1854
seq r4, r4, r2 // icount 1855
ror r0, r0, r0 // icount 1856
or r0, r5, r3 // icount 1857
sll r1, r2, r5 // icount 1858
sle r1, r5, r4 // icount 1859
sra r1, r2, r0 // icount 1860
rol r5, r1, r1 // icount 1861
rol r3, r7, r4 // icount 1862
seq r2, r0, r7 // icount 1863
.rlabel_69:
ld r7, r6, 12
addi r6, r6, 12
j .rlabel_70 // icount 1864
sra r0, r1, r5 // icount 1865
sll r5, r2, r3 // icount 1866
and r5, r7, r0 // icount 1867
or r1, r1, r4 // icount 1868
and r3, r1, r6 // icount 1869
rol r0, r7, r1 // icount 1870
seq r4, r4, r1 // icount 1871
and r3, r3, r2 // icount 1872
slt r0, r7, r3 // icount 1873
seq r0, r1, r6 // icount 1874
sll r5, r0, r4 // icount 1875
ror r5, r7, r3 // icount 1876
add r7, r5, r5 // icount 1877
add r2, r6, r2 // icount 1878
or r0, r7, r7 // icount 1879
slt r1, r7, r5 // icount 1880
and r3, r3, r2 // icount 1881
sub r4, r6, r0 // icount 1882
sll r4, r4, r6 // icount 1883
sub r7, r2, r1 // icount 1884
or r4, r1, r0 // icount 1885
rol r2, r0, r6 // icount 1886
sub r5, r6, r7 // icount 1887
sle r2, r1, r4 // icount 1888
sll r2, r2, r2 // icount 1889
or r0, r5, r7 // icount 1890
sco r3, r5, r2 // icount 1891
slt r2, r4, r0 // icount 1892
slt r1, r1, r6 // icount 1893
sle r1, r1, r6 // icount 1894
ror r2, r0, r6 // icount 1895
rol r4, r2, r6 // icount 1896
sll r5, r1, r7 // icount 1897
seq r3, r6, r3 // icount 1898
and r5, r5, r2 // icount 1899
and r3, r0, r6 // icount 1900
rol r7, r2, r7 // icount 1901
rol r4, r6, r3 // icount 1902
and r0, r3, r4 // icount 1903
slt r6, r2, r2 // icount 1904
or r2, r6, r4 // icount 1905
slt r1, r3, r3 // icount 1906
seq r2, r6, r1 // icount 1907
sle r3, r6, r2 // icount 1908
sub r0, r4, r5 // icount 1909
sll r2, r0, r7 // icount 1910
sco r2, r0, r1 // icount 1911
sra r2, r2, r6 // icount 1912
slt r4, r1, r7 // icount 1913
and r0, r5, r3 // icount 1914
seq r7, r7, r3 // icount 1915
or r5, r1, r5 // icount 1916
or r3, r4, r7 // icount 1917
sle r0, r7, r7 // icount 1918
sle r4, r4, r5 // icount 1919
add r6, r4, r2 // icount 1920
rol r1, r2, r6 // icount 1921
ror r3, r7, r4 // icount 1922
ror r5, r3, r4 // icount 1923
and r3, r7, r1 // icount 1924
add r1, r1, r7 // icount 1925
.rlabel_70:
ld r7, r6, 8
addi r6, r6, 8
j .rlabel_71 // icount 1926
seq r1, r6, r6 // icount 1927
add r2, r1, r5 // icount 1928
sco r2, r4, r4 // icount 1929
add r2, r6, r6 // icount 1930
ror r6, r1, r1 // icount 1931
sco r7, r1, r1 // icount 1932
and r5, r7, r1 // icount 1933
or r5, r4, r6 // icount 1934
sll r5, r0, r6 // icount 1935
sub r2, r4, r1 // icount 1936
slt r1, r2, r4 // icount 1937
sco r2, r3, r5 // icount 1938
sle r6, r6, r5 // icount 1939
sub r4, r6, r6 // icount 1940
ror r7, r7, r0 // icount 1941
and r4, r1, r0 // icount 1942
sll r1, r0, r0 // icount 1943
and r3, r5, r6 // icount 1944
and r1, r1, r4 // icount 1945
or r1, r3, r1 // icount 1946
sub r5, r5, r3 // icount 1947
sle r7, r1, r6 // icount 1948
seq r0, r6, r6 // icount 1949
sra r7, r0, r1 // icount 1950
sco r6, r1, r1 // icount 1951
add r2, r7, r4 // icount 1952
add r3, r7, r5 // icount 1953
sra r6, r5, r7 // icount 1954
add r7, r5, r6 // icount 1955
sll r3, r0, r5 // icount 1956
sub r0, r5, r3 // icount 1957
sub r1, r5, r7 // icount 1958
slt r7, r3, r1 // icount 1959
sle r1, r0, r3 // icount 1960
sub r6, r7, r4 // icount 1961
and r7, r2, r5 // icount 1962
sub r2, r2, r2 // icount 1963
add r7, r2, r1 // icount 1964
and r1, r0, r7 // icount 1965
sle r0, r6, r5 // icount 1966
sco r2, r4, r5 // icount 1967
rol r0, r5, r5 // icount 1968
seq r1, r0, r2 // icount 1969
sra r1, r6, r3 // icount 1970
sub r0, r0, r3 // icount 1971
ror r5, r1, r4 // icount 1972
ror r4, r5, r3 // icount 1973
slt r4, r0, r0 // icount 1974
ror r4, r4, r5 // icount 1975
sco r3, r3, r7 // icount 1976
sub r1, r5, r3 // icount 1977
sco r5, r6, r1 // icount 1978
and r3, r5, r6 // icount 1979
ror r3, r1, r2 // icount 1980
slt r6, r2, r6 // icount 1981
and r7, r3, r0 // icount 1982
rol r6, r2, r5 // icount 1983
sll r1, r6, r4 // icount 1984
seq r2, r7, r5 // icount 1985
ror r4, r0, r4 // icount 1986
sub r0, r2, r7 // icount 1987
.rlabel_71:
beqz r0, .rlabel_72 // icount 1988
sle r6, r1, r6 // icount 1989
add r1, r4, r6 // icount 1990
sco r5, r2, r3 // icount 1991
sra r1, r7, r2 // icount 1992
or r1, r6, r4 // icount 1993
seq r4, r0, r3 // icount 1994
.rlabel_72:
beqz r0, .rlabel_73 // icount 1995
rol r7, r4, r2 // icount 1996
sub r3, r3, r7 // icount 1997
sle r5, r6, r2 // icount 1998
seq r1, r6, r1 // icount 1999
ror r4, r5, r7 // icount 2000
sle r6, r6, r1 // icount 2001
sll r0, r0, r5 // icount 2002
sll r4, r2, r5 // icount 2003
sco r6, r4, r6 // icount 2004
sle r0, r0, r3 // icount 2005
and r5, r0, r6 // icount 2006
seq r2, r5, r7 // icount 2007
sub r7, r6, r7 // icount 2008
.rlabel_73:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_74 // icount 2009
ror r7, r3, r0 // icount 2010
or r4, r4, r4 // icount 2011
sle r3, r3, r0 // icount 2012
sco r4, r1, r4 // icount 2013
and r2, r7, r0 // icount 2014
sco r3, r2, r0 // icount 2015
seq r1, r1, r3 // icount 2016
sll r7, r6, r1 // icount 2017
sll r0, r6, r5 // icount 2018
add r5, r2, r7 // icount 2019
sra r3, r3, r1 // icount 2020
seq r4, r5, r7 // icount 2021
sll r1, r6, r0 // icount 2022
.rlabel_74:
jal .rlabel_75 // icount 2023
rol r6, r7, r1 // icount 2024
seq r3, r6, r3 // icount 2025
add r3, r1, r0 // icount 2026
ror r0, r5, r6 // icount 2027
sle r4, r0, r7 // icount 2028
or r1, r1, r6 // icount 2029
and r1, r4, r4 // icount 2030
add r2, r6, r7 // icount 2031
sra r7, r6, r4 // icount 2032
sll r3, r7, r5 // icount 2033
add r5, r2, r3 // icount 2034
ror r4, r6, r7 // icount 2035
sra r7, r3, r6 // icount 2036
add r0, r3, r4 // icount 2037
sle r3, r4, r1 // icount 2038
sco r4, r2, r1 // icount 2039
sll r1, r3, r2 // icount 2040
sco r5, r4, r3 // icount 2041
sle r4, r4, r2 // icount 2042
rol r3, r5, r4 // icount 2043
slt r0, r6, r0 // icount 2044
sll r2, r2, r3 // icount 2045
slt r1, r1, r6 // icount 2046
.rlabel_75:
ld r7, r6, 4
addi r6, r6, 4
j .rlabel_76 // icount 2047
sra r5, r5, r6 // icount 2048
sra r2, r3, r7 // icount 2049
add r7, r4, r7 // icount 2050
sll r5, r7, r0 // icount 2051
ror r2, r2, r3 // icount 2052
ror r3, r6, r5 // icount 2053
sub r6, r4, r6 // icount 2054
rol r2, r2, r4 // icount 2055
seq r0, r4, r6 // icount 2056
add r1, r2, r7 // icount 2057
rol r5, r7, r1 // icount 2058
rol r5, r4, r6 // icount 2059
slt r5, r7, r2 // icount 2060
sco r7, r7, r2 // icount 2061
add r2, r4, r3 // icount 2062
seq r5, r7, r7 // icount 2063
add r7, r6, r1 // icount 2064
or r6, r1, r4 // icount 2065
sco r3, r0, r1 // icount 2066
seq r0, r4, r7 // icount 2067
sle r7, r4, r3 // icount 2068
and r5, r4, r5 // icount 2069
sll r0, r0, r6 // icount 2070
sle r3, r5, r3 // icount 2071
sco r2, r0, r7 // icount 2072
sub r3, r7, r1 // icount 2073
ror r5, r6, r4 // icount 2074
seq r2, r3, r5 // icount 2075
sub r2, r4, r1 // icount 2076
sll r6, r2, r2 // icount 2077
and r5, r0, r4 // icount 2078
sle r6, r0, r6 // icount 2079
add r2, r6, r4 // icount 2080
ror r3, r1, r5 // icount 2081
sra r4, r1, r1 // icount 2082
sle r3, r5, r7 // icount 2083
rol r1, r5, r0 // icount 2084
sll r0, r0, r7 // icount 2085
sll r1, r5, r6 // icount 2086
sco r0, r2, r7 // icount 2087
or r4, r5, r4 // icount 2088
add r7, r0, r6 // icount 2089
ror r5, r0, r3 // icount 2090
sll r2, r3, r4 // icount 2091
add r2, r6, r0 // icount 2092
sub r2, r7, r5 // icount 2093
rol r6, r1, r7 // icount 2094
add r0, r1, r2 // icount 2095
seq r4, r7, r4 // icount 2096
and r4, r7, r3 // icount 2097
sle r7, r2, r4 // icount 2098
sco r4, r6, r7 // icount 2099
and r0, r3, r7 // icount 2100
or r1, r5, r3 // icount 2101
sle r1, r4, r1 // icount 2102
sra r3, r4, r6 // icount 2103
seq r2, r1, r5 // icount 2104
sle r1, r3, r0 // icount 2105
.rlabel_76:
ld r7, r6, 14
addi r6, r6, 14
jal .rlabel_77 // icount 2106
slt r5, r0, r7 // icount 2107
.rlabel_77:
st r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_78 // icount 2108
sll r1, r2, r0 // icount 2109
add r7, r4, r3 // icount 2110
sco r5, r6, r5 // icount 2111
ror r3, r1, r6 // icount 2112
ror r5, r7, r4 // icount 2113
sra r0, r6, r7 // icount 2114
sub r2, r0, r5 // icount 2115
ror r4, r4, r7 // icount 2116
sub r0, r6, r5 // icount 2117
sco r7, r3, r5 // icount 2118
sra r5, r3, r2 // icount 2119
seq r6, r1, r6 // icount 2120
sle r4, r6, r7 // icount 2121
.rlabel_78:
bnez r1, .rlabel_79 // icount 2122
rol r3, r3, r1 // icount 2123
ror r4, r7, r7 // icount 2124
slt r3, r7, r3 // icount 2125
rol r3, r6, r1 // icount 2126
rol r4, r7, r7 // icount 2127
rol r6, r0, r7 // icount 2128
.rlabel_79:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_80 // icount 2129
sll r7, r5, r4 // icount 2130
sra r5, r3, r6 // icount 2131
sle r0, r1, r4 // icount 2132
sll r6, r7, r2 // icount 2133
slt r1, r1, r7 // icount 2134
rol r6, r0, r4 // icount 2135
and r2, r7, r1 // icount 2136
sco r0, r6, r6 // icount 2137
slt r7, r4, r6 // icount 2138
sll r4, r6, r0 // icount 2139
sra r2, r4, r3 // icount 2140
sub r2, r7, r0 // icount 2141
sra r7, r5, r7 // icount 2142
sub r3, r6, r2 // icount 2143
and r7, r5, r2 // icount 2144
sra r2, r4, r7 // icount 2145
sll r4, r3, r5 // icount 2146
sco r7, r0, r1 // icount 2147
ror r7, r7, r1 // icount 2148
ror r1, r3, r6 // icount 2149
add r4, r3, r0 // icount 2150
sra r5, r4, r2 // icount 2151
rol r6, r2, r6 // icount 2152
seq r7, r2, r5 // icount 2153
seq r4, r5, r1 // icount 2154
seq r0, r3, r7 // icount 2155
slt r4, r1, r1 // icount 2156
sub r4, r3, r7 // icount 2157
or r0, r3, r4 // icount 2158
sll r5, r3, r6 // icount 2159
slt r6, r0, r2 // icount 2160
or r1, r2, r7 // icount 2161
sll r0, r5, r2 // icount 2162
slt r4, r7, r5 // icount 2163
seq r4, r2, r0 // icount 2164
add r0, r3, r5 // icount 2165
sra r2, r3, r0 // icount 2166
or r0, r0, r3 // icount 2167
.rlabel_80:
bnez r1, .rlabel_81 // icount 2168
ror r5, r0, r3 // icount 2169
add r2, r5, r3 // icount 2170
rol r4, r6, r4 // icount 2171
sll r3, r6, r1 // icount 2172
and r6, r3, r4 // icount 2173
slt r0, r3, r7 // icount 2174
sll r0, r5, r0 // icount 2175
seq r6, r0, r3 // icount 2176
.rlabel_81:
st r7, r6, 8
addi r6, r6, 8
bnez r1, .rlabel_82 // icount 2177
rol r3, r6, r3 // icount 2178
.rlabel_82:
ld r7, r6, 8
addi r6, r6, 8
beqz r0, .rlabel_83 // icount 2179
or r1, r6, r4 // icount 2180
rol r2, r5, r2 // icount 2181
rol r3, r1, r6 // icount 2182
slt r1, r4, r6 // icount 2183
add r1, r5, r0 // icount 2184
and r6, r5, r0 // icount 2185
seq r0, r0, r6 // icount 2186
slt r2, r7, r5 // icount 2187
sco r7, r4, r0 // icount 2188
sra r2, r6, r1 // icount 2189
sub r7, r4, r6 // icount 2190
.rlabel_83:
jal .rlabel_84 // icount 2191
or r2, r7, r4 // icount 2192
sle r5, r0, r4 // icount 2193
sll r2, r2, r4 // icount 2194
sub r2, r6, r7 // icount 2195
slt r1, r0, r6 // icount 2196
and r5, r0, r4 // icount 2197
rol r2, r7, r3 // icount 2198
sco r3, r7, r0 // icount 2199
and r0, r2, r2 // icount 2200
add r5, r6, r7 // icount 2201
or r6, r2, r4 // icount 2202
sub r1, r3, r7 // icount 2203
rol r3, r2, r4 // icount 2204
sll r2, r5, r3 // icount 2205
sub r4, r4, r1 // icount 2206
sco r5, r5, r4 // icount 2207
sll r6, r6, r7 // icount 2208
sle r1, r2, r1 // icount 2209
sra r6, r4, r6 // icount 2210
sco r3, r6, r6 // icount 2211
sub r6, r0, r5 // icount 2212
.rlabel_84:
jal .rlabel_85 // icount 2213
rol r0, r6, r7 // icount 2214
slt r0, r5, r6 // icount 2215
or r5, r4, r7 // icount 2216
sco r6, r2, r0 // icount 2217
sco r4, r0, r7 // icount 2218
add r7, r4, r0 // icount 2219
sub r7, r6, r0 // icount 2220
sco r6, r2, r2 // icount 2221
rol r1, r3, r4 // icount 2222
sra r1, r3, r4 // icount 2223
and r6, r1, r1 // icount 2224
sle r0, r4, r2 // icount 2225
sco r5, r3, r7 // icount 2226
sub r2, r3, r5 // icount 2227
add r5, r3, r2 // icount 2228
sle r4, r0, r0 // icount 2229
or r5, r5, r6 // icount 2230
rol r0, r2, r4 // icount 2231
sll r1, r4, r5 // icount 2232
and r7, r0, r0 // icount 2233
seq r3, r6, r7 // icount 2234
sub r3, r4, r5 // icount 2235
slt r7, r2, r2 // icount 2236
seq r1, r3, r4 // icount 2237
sll r7, r0, r7 // icount 2238
sll r5, r1, r2 // icount 2239
.rlabel_85:
bnez r1, .rlabel_86 // icount 2240
sra r0, r7, r1 // icount 2241
seq r7, r4, r5 // icount 2242
.rlabel_86:
st r7, r6, 0
addi r6, r6, 0
jal .rlabel_87 // icount 2243
slt r4, r5, r3 // icount 2244
sub r1, r5, r7 // icount 2245
slt r0, r6, r1 // icount 2246
ror r5, r6, r5 // icount 2247
and r2, r3, r2 // icount 2248
sra r0, r0, r7 // icount 2249
sco r0, r3, r3 // icount 2250
or r5, r2, r2 // icount 2251
seq r2, r1, r6 // icount 2252
slt r5, r1, r7 // icount 2253
seq r4, r0, r1 // icount 2254
sle r1, r5, r0 // icount 2255
sle r3, r5, r3 // icount 2256
sra r2, r5, r6 // icount 2257
seq r6, r5, r1 // icount 2258
add r1, r3, r5 // icount 2259
sub r4, r5, r6 // icount 2260
.rlabel_87:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_88 // icount 2261
sco r1, r0, r4 // icount 2262
or r1, r7, r2 // icount 2263
add r1, r3, r0 // icount 2264
ror r4, r4, r1 // icount 2265
ror r4, r7, r5 // icount 2266
add r3, r7, r4 // icount 2267
sle r4, r2, r5 // icount 2268
sle r0, r4, r7 // icount 2269
add r3, r3, r1 // icount 2270
sco r3, r6, r7 // icount 2271
sll r7, r0, r7 // icount 2272
sub r0, r4, r2 // icount 2273
sub r3, r1, r3 // icount 2274
sub r2, r4, r0 // icount 2275
and r3, r4, r1 // icount 2276
slt r7, r0, r0 // icount 2277
ror r2, r0, r6 // icount 2278
rol r5, r7, r4 // icount 2279
slt r2, r2, r0 // icount 2280
sco r5, r2, r6 // icount 2281
ror r7, r4, r7 // icount 2282
sco r1, r2, r7 // icount 2283
slt r0, r0, r4 // icount 2284
ror r6, r4, r0 // icount 2285
add r2, r5, r6 // icount 2286
sra r7, r4, r0 // icount 2287
and r5, r3, r0 // icount 2288
ror r1, r4, r6 // icount 2289
sll r3, r0, r1 // icount 2290
or r5, r1, r4 // icount 2291
sub r0, r3, r3 // icount 2292
and r3, r6, r2 // icount 2293
.rlabel_88:
ld r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_89 // icount 2294
or r0, r0, r3 // icount 2295
sll r1, r2, r6 // icount 2296
slt r2, r5, r2 // icount 2297
.rlabel_89:
jal .rlabel_90 // icount 2298
sra r2, r5, r7 // icount 2299
sll r3, r3, r3 // icount 2300
sle r6, r0, r2 // icount 2301
or r7, r6, r4 // icount 2302
sub r1, r7, r4 // icount 2303
sco r0, r0, r5 // icount 2304
sra r6, r3, r1 // icount 2305
and r7, r2, r6 // icount 2306
sll r2, r4, r6 // icount 2307
sco r4, r1, r5 // icount 2308
sle r7, r5, r0 // icount 2309
ror r1, r7, r5 // icount 2310
sra r2, r7, r7 // icount 2311
sub r2, r5, r7 // icount 2312
sll r1, r0, r1 // icount 2313
sra r1, r2, r5 // icount 2314
sra r6, r4, r1 // icount 2315
rol r6, r3, r5 // icount 2316
slt r3, r1, r0 // icount 2317
slt r5, r5, r2 // icount 2318
sco r1, r2, r1 // icount 2319
slt r1, r4, r2 // icount 2320
slt r2, r2, r2 // icount 2321
sco r6, r3, r6 // icount 2322
sle r3, r6, r2 // icount 2323
ror r4, r6, r7 // icount 2324
or r3, r6, r0 // icount 2325
.rlabel_90:
jal .rlabel_91 // icount 2326
add r7, r6, r0 // icount 2327
slt r4, r3, r2 // icount 2328
and r4, r4, r5 // icount 2329
sco r3, r4, r1 // icount 2330
add r6, r1, r1 // icount 2331
sco r7, r0, r7 // icount 2332
sll r0, r5, r1 // icount 2333
seq r5, r3, r7 // icount 2334
sra r3, r2, r4 // icount 2335
seq r3, r5, r7 // icount 2336
or r1, r4, r3 // icount 2337
sll r5, r5, r6 // icount 2338
sll r3, r5, r6 // icount 2339
slt r2, r4, r7 // icount 2340
rol r1, r2, r7 // icount 2341
add r7, r0, r6 // icount 2342
and r2, r0, r7 // icount 2343
seq r0, r2, r6 // icount 2344
sll r4, r2, r3 // icount 2345
slt r1, r4, r3 // icount 2346
add r4, r3, r6 // icount 2347
sco r0, r2, r4 // icount 2348
ror r0, r3, r7 // icount 2349
rol r3, r1, r3 // icount 2350
add r7, r3, r3 // icount 2351
and r6, r4, r0 // icount 2352
sle r5, r6, r6 // icount 2353
sub r6, r1, r6 // icount 2354
and r3, r3, r7 // icount 2355
ror r7, r6, r1 // icount 2356
rol r2, r0, r4 // icount 2357
.rlabel_91:
st r7, r6, 12
addi r6, r6, 12
bnez r1, .rlabel_92 // icount 2358
sra r1, r1, r5 // icount 2359
sub r2, r0, r6 // icount 2360
or r4, r1, r2 // icount 2361
slt r0, r5, r6 // icount 2362
sub r2, r3, r0 // icount 2363
add r0, r0, r5 // icount 2364
rol r0, r4, r0 // icount 2365
seq r4, r0, r4 // icount 2366
add r4, r5, r4 // icount 2367
sco r1, r2, r1 // icount 2368
sle r3, r1, r4 // icount 2369
slt r0, r2, r7 // icount 2370
seq r6, r7, r4 // icount 2371
and r1, r4, r4 // icount 2372
.rlabel_92:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_93 // icount 2373
seq r7, r6, r3 // icount 2374
add r6, r3, r4 // icount 2375
sra r5, r4, r7 // icount 2376
sco r4, r1, r4 // icount 2377
sra r2, r0, r1 // icount 2378
or r1, r6, r5 // icount 2379
sle r3, r6, r2 // icount 2380
or r5, r7, r5 // icount 2381
slt r7, r7, r2 // icount 2382
rol r4, r7, r5 // icount 2383
sco r2, r3, r5 // icount 2384
sll r0, r7, r4 // icount 2385
sub r1, r2, r7 // icount 2386
sra r2, r4, r3 // icount 2387
rol r4, r0, r6 // icount 2388
or r1, r2, r1 // icount 2389
sco r5, r1, r2 // icount 2390
sco r2, r7, r4 // icount 2391
sub r0, r1, r4 // icount 2392
ror r0, r3, r6 // icount 2393
seq r3, r0, r5 // icount 2394
sll r1, r7, r0 // icount 2395
and r7, r1, r3 // icount 2396
sco r2, r3, r3 // icount 2397
rol r2, r6, r0 // icount 2398
ror r3, r3, r5 // icount 2399
sco r0, r5, r5 // icount 2400
ror r4, r6, r2 // icount 2401
rol r5, r0, r0 // icount 2402
sco r4, r3, r4 // icount 2403
sll r6, r3, r3 // icount 2404
sle r6, r1, r0 // icount 2405
ror r0, r0, r2 // icount 2406
sll r7, r6, r2 // icount 2407
and r5, r5, r3 // icount 2408
ror r0, r0, r5 // icount 2409
ror r7, r5, r1 // icount 2410
and r1, r7, r3 // icount 2411
or r4, r4, r3 // icount 2412
sle r5, r0, r0 // icount 2413
or r6, r5, r0 // icount 2414
ror r1, r0, r0 // icount 2415
slt r4, r1, r3 // icount 2416
sll r5, r1, r4 // icount 2417
rol r5, r3, r6 // icount 2418
sco r1, r1, r2 // icount 2419
rol r0, r2, r2 // icount 2420
sll r5, r1, r4 // icount 2421
sll r5, r4, r0 // icount 2422
sle r1, r1, r6 // icount 2423
rol r0, r1, r4 // icount 2424
sll r7, r0, r1 // icount 2425
sub r2, r2, r4 // icount 2426
ror r1, r1, r3 // icount 2427
sll r1, r2, r2 // icount 2428
rol r0, r4, r2 // icount 2429
sle r7, r5, r2 // icount 2430
seq r2, r2, r4 // icount 2431
slt r5, r3, r0 // icount 2432
sll r5, r3, r2 // icount 2433
slt r0, r7, r1 // icount 2434
add r7, r5, r7 // icount 2435
sle r3, r0, r2 // icount 2436
sco r2, r6, r7 // icount 2437
or r7, r4, r7 // icount 2438
sle r3, r6, r6 // icount 2439
sle r6, r7, r5 // icount 2440
seq r6, r1, r2 // icount 2441
sra r2, r5, r0 // icount 2442
sra r6, r6, r3 // icount 2443
add r2, r7, r7 // icount 2444
seq r1, r3, r3 // icount 2445
or r1, r0, r1 // icount 2446
sle r1, r7, r1 // icount 2447
sco r3, r1, r4 // icount 2448
add r4, r0, r7 // icount 2449
sll r7, r5, r2 // icount 2450
slt r2, r4, r2 // icount 2451
sll r0, r1, r6 // icount 2452
sub r0, r4, r7 // icount 2453
slt r7, r2, r7 // icount 2454
seq r5, r3, r6 // icount 2455
sra r5, r7, r5 // icount 2456
.rlabel_93:
ld r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_94 // icount 2457
slt r3, r1, r1 // icount 2458
sll r5, r7, r3 // icount 2459
sra r3, r5, r3 // icount 2460
add r7, r6, r1 // icount 2461
sub r4, r4, r4 // icount 2462
sle r7, r2, r2 // icount 2463
ror r6, r3, r4 // icount 2464
sub r2, r4, r2 // icount 2465
sle r2, r7, r3 // icount 2466
.rlabel_94:
j .rlabel_95 // icount 2467
slt r0, r3, r6 // icount 2468
seq r5, r6, r1 // icount 2469
and r5, r0, r5 // icount 2470
sub r0, r5, r2 // icount 2471
ror r1, r3, r3 // icount 2472
and r2, r0, r2 // icount 2473
slt r2, r4, r3 // icount 2474
sco r2, r6, r2 // icount 2475
sra r6, r7, r6 // icount 2476
ror r3, r4, r5 // icount 2477
or r2, r4, r6 // icount 2478
rol r1, r2, r3 // icount 2479
seq r0, r6, r4 // icount 2480
sle r2, r6, r7 // icount 2481
or r0, r2, r5 // icount 2482
slt r6, r7, r1 // icount 2483
sub r4, r7, r7 // icount 2484
sco r4, r3, r2 // icount 2485
rol r1, r5, r7 // icount 2486
slt r2, r0, r7 // icount 2487
sra r6, r2, r1 // icount 2488
sco r3, r7, r0 // icount 2489
or r0, r3, r5 // icount 2490
seq r3, r0, r2 // icount 2491
sle r3, r0, r5 // icount 2492
add r2, r0, r2 // icount 2493
seq r6, r0, r0 // icount 2494
ror r1, r7, r1 // icount 2495
ror r7, r4, r5 // icount 2496
sco r6, r6, r3 // icount 2497
seq r7, r6, r3 // icount 2498
add r0, r0, r6 // icount 2499
sll r5, r7, r0 // icount 2500
sra r3, r1, r1 // icount 2501
slt r0, r6, r2 // icount 2502
add r5, r1, r2 // icount 2503
sco r2, r3, r2 // icount 2504
slt r2, r1, r4 // icount 2505
slt r3, r2, r2 // icount 2506
ror r3, r6, r2 // icount 2507
and r3, r3, r4 // icount 2508
ror r1, r4, r2 // icount 2509
sra r7, r1, r5 // icount 2510
seq r4, r4, r4 // icount 2511
sle r4, r3, r1 // icount 2512
sra r0, r1, r6 // icount 2513
slt r2, r6, r2 // icount 2514
or r1, r7, r2 // icount 2515
and r7, r6, r1 // icount 2516
ror r6, r4, r1 // icount 2517
sco r4, r4, r0 // icount 2518
sle r2, r2, r1 // icount 2519
sco r7, r5, r3 // icount 2520
sle r4, r0, r1 // icount 2521
rol r7, r2, r2 // icount 2522
sle r7, r1, r5 // icount 2523
or r4, r0, r6 // icount 2524
sco r5, r7, r5 // icount 2525
sle r4, r3, r7 // icount 2526
slt r4, r7, r2 // icount 2527
sle r1, r5, r0 // icount 2528
ror r1, r7, r0 // icount 2529
rol r0, r2, r4 // icount 2530
or r6, r5, r7 // icount 2531
sll r1, r2, r7 // icount 2532
add r4, r7, r2 // icount 2533
sub r1, r1, r4 // icount 2534
sra r3, r7, r6 // icount 2535
rol r3, r3, r7 // icount 2536
add r0, r5, r5 // icount 2537
add r5, r5, r4 // icount 2538
sub r0, r7, r4 // icount 2539
ror r5, r4, r7 // icount 2540
rol r4, r1, r6 // icount 2541
or r7, r1, r5 // icount 2542
and r7, r4, r1 // icount 2543
rol r4, r2, r3 // icount 2544
sco r5, r6, r3 // icount 2545
sub r5, r2, r0 // icount 2546
or r1, r7, r3 // icount 2547
and r7, r7, r5 // icount 2548
and r7, r2, r6 // icount 2549
sco r6, r7, r2 // icount 2550
sra r7, r4, r4 // icount 2551
ror r6, r3, r7 // icount 2552
sco r0, r5, r5 // icount 2553
slt r5, r1, r2 // icount 2554
sll r2, r3, r2 // icount 2555
and r3, r0, r0 // icount 2556
ror r7, r5, r0 // icount 2557
sra r0, r4, r2 // icount 2558
add r4, r5, r2 // icount 2559
add r7, r1, r5 // icount 2560
and r4, r3, r1 // icount 2561
sub r1, r6, r7 // icount 2562
.rlabel_95:
bnez r1, .rlabel_96 // icount 2563
.rlabel_96:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_97 // icount 2564
sll r7, r6, r4 // icount 2565
sra r5, r6, r2 // icount 2566
sco r4, r0, r6 // icount 2567
sco r4, r7, r4 // icount 2568
seq r3, r5, r1 // icount 2569
sco r5, r0, r1 // icount 2570
add r7, r5, r0 // icount 2571
seq r2, r6, r7 // icount 2572
add r6, r0, r3 // icount 2573
or r5, r6, r6 // icount 2574
slt r5, r3, r0 // icount 2575
sll r4, r5, r2 // icount 2576
rol r1, r3, r0 // icount 2577
sle r3, r3, r6 // icount 2578
rol r3, r4, r7 // icount 2579
add r3, r0, r2 // icount 2580
slt r4, r6, r5 // icount 2581
add r1, r4, r4 // icount 2582
sub r7, r1, r5 // icount 2583
rol r7, r7, r2 // icount 2584
sle r6, r7, r7 // icount 2585
sll r5, r3, r5 // icount 2586
sll r3, r1, r6 // icount 2587
sle r5, r2, r6 // icount 2588
or r1, r1, r5 // icount 2589
sco r3, r3, r6 // icount 2590
rol r6, r3, r2 // icount 2591
sra r1, r5, r0 // icount 2592
seq r1, r1, r6 // icount 2593
sra r1, r0, r4 // icount 2594
ror r0, r4, r3 // icount 2595
rol r1, r5, r0 // icount 2596
rol r7, r1, r6 // icount 2597
sub r7, r2, r6 // icount 2598
sra r0, r4, r1 // icount 2599
ror r5, r7, r3 // icount 2600
sco r0, r0, r1 // icount 2601
sub r0, r5, r6 // icount 2602
sle r0, r1, r0 // icount 2603
sco r5, r1, r7 // icount 2604
sub r5, r0, r3 // icount 2605
or r5, r4, r4 // icount 2606
sco r0, r2, r2 // icount 2607
sle r4, r1, r7 // icount 2608
add r3, r0, r5 // icount 2609
slt r7, r1, r7 // icount 2610
seq r0, r5, r2 // icount 2611
rol r2, r7, r3 // icount 2612
ror r3, r4, r4 // icount 2613
sub r2, r3, r4 // icount 2614
sra r6, r1, r6 // icount 2615
ror r6, r5, r3 // icount 2616
and r7, r5, r5 // icount 2617
add r4, r4, r5 // icount 2618
sll r4, r3, r3 // icount 2619
ror r2, r6, r0 // icount 2620
sle r1, r4, r7 // icount 2621
add r4, r0, r4 // icount 2622
sra r7, r2, r1 // icount 2623
sll r6, r4, r3 // icount 2624
and r5, r1, r7 // icount 2625
seq r2, r5, r6 // icount 2626
sle r3, r7, r5 // icount 2627
sll r6, r5, r2 // icount 2628
sll r3, r7, r4 // icount 2629
seq r3, r7, r4 // icount 2630
ror r4, r4, r7 // icount 2631
add r0, r5, r6 // icount 2632
ror r2, r6, r0 // icount 2633
sra r3, r4, r0 // icount 2634
and r6, r7, r2 // icount 2635
and r4, r0, r5 // icount 2636
slt r2, r0, r7 // icount 2637
sll r2, r0, r6 // icount 2638
slt r1, r4, r6 // icount 2639
ror r1, r2, r0 // icount 2640
add r2, r2, r0 // icount 2641
sra r0, r5, r6 // icount 2642
rol r1, r7, r1 // icount 2643
sub r0, r3, r7 // icount 2644
sra r3, r7, r4 // icount 2645
sra r2, r4, r5 // icount 2646
or r3, r5, r0 // icount 2647
.rlabel_97:
ld r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_98 // icount 2648
seq r4, r7, r7 // icount 2649
add r6, r4, r6 // icount 2650
slt r6, r7, r2 // icount 2651
sle r6, r0, r3 // icount 2652
and r0, r2, r4 // icount 2653
sle r6, r0, r2 // icount 2654
rol r3, r6, r4 // icount 2655
.rlabel_98:
j .rlabel_99 // icount 2656
and r5, r4, r0 // icount 2657
ror r1, r4, r5 // icount 2658
.rlabel_99:
addi r3, r3, -1 // icount 2659
beqz r3, .done // icount 2660
jr r5, 0 // icount 2661
.done:
halt // icount 2662
halt // icount 2663
