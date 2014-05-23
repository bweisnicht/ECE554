// seed 5
lbi r0, 134 // icount 0
slbi r0, 69 // icount 1
lbi r1, 201 // icount 2
slbi r1, 50 // icount 3
lbi r2, 132 // icount 4
slbi r2, 221 // icount 5
lbi r3, 43 // icount 6
slbi r3, 122 // icount 7
lbi r4, 65 // icount 8
slbi r4, 217 // icount 9
lbi r5, 248 // icount 10
slbi r5, 115 // icount 11
lbi r6, 187 // icount 12
slbi r6, 71 // icount 13
lbi r7, 45 // icount 14
slbi r7, 169 // icount 15
lbi r0, 0 // icount 16
lbi r1, 1 // icount 17
lbi r2, -1 // icount 18
lbi r3, 1 // icount 19
andi r6, r6, 0xfe // icount 20
lbi r3, 3 // icount 21
lbi r5, 44 // icount 22
bnez r1, .rlabel_0 // icount 23
or r4, r2, r2 // icount 24
sle r6, r2, r3 // icount 25
sco r3, r2, r6 // icount 26
slt r4, r3, r5 // icount 27
or r1, r5, r3 // icount 28
sco r7, r4, r0 // icount 29
sle r3, r1, r0 // icount 30
sll r0, r7, r6 // icount 31
rol r6, r0, r6 // icount 32
sle r7, r0, r5 // icount 33
rol r5, r6, r6 // icount 34
and r5, r5, r3 // icount 35
.rlabel_0:
jal .rlabel_1 // icount 36
slt r4, r5, r0 // icount 37
sll r2, r6, r0 // icount 38
rol r3, r1, r0 // icount 39
sra r4, r7, r5 // icount 40
add r0, r3, r3 // icount 41
sub r5, r0, r2 // icount 42
and r5, r3, r7 // icount 43
seq r1, r5, r6 // icount 44
or r0, r4, r7 // icount 45
sll r5, r6, r1 // icount 46
sll r5, r7, r1 // icount 47
.rlabel_1:
j .rlabel_2 // icount 48
rol r2, r1, r7 // icount 49
seq r7, r3, r1 // icount 50
seq r1, r7, r0 // icount 51
add r5, r7, r0 // icount 52
ror r3, r5, r2 // icount 53
and r4, r1, r7 // icount 54
seq r7, r7, r7 // icount 55
sub r2, r3, r3 // icount 56
rol r6, r4, r0 // icount 57
add r0, r3, r5 // icount 58
sco r2, r0, r1 // icount 59
slt r7, r2, r0 // icount 60
sub r4, r2, r5 // icount 61
sll r0, r0, r4 // icount 62
add r3, r6, r2 // icount 63
sub r6, r3, r3 // icount 64
ror r4, r0, r2 // icount 65
sll r3, r7, r6 // icount 66
.rlabel_2:
bnez r1, .rlabel_3 // icount 67
add r6, r6, r6 // icount 68
add r3, r1, r1 // icount 69
sll r4, r0, r7 // icount 70
add r3, r7, r0 // icount 71
seq r1, r5, r1 // icount 72
slt r4, r1, r7 // icount 73
.rlabel_3:
ld r7, r6, 6
addi r6, r6, 6
j .rlabel_4 // icount 74
sll r0, r5, r5 // icount 75
sub r1, r1, r3 // icount 76
ror r3, r2, r6 // icount 77
sco r0, r6, r6 // icount 78
slt r2, r4, r4 // icount 79
ror r2, r6, r6 // icount 80
seq r7, r3, r2 // icount 81
rol r1, r6, r0 // icount 82
sra r0, r0, r5 // icount 83
or r7, r4, r2 // icount 84
or r1, r0, r7 // icount 85
sco r3, r4, r2 // icount 86
sub r1, r1, r2 // icount 87
sra r5, r3, r1 // icount 88
or r7, r3, r3 // icount 89
sra r0, r3, r5 // icount 90
seq r1, r1, r3 // icount 91
rol r3, r1, r2 // icount 92
sle r0, r5, r7 // icount 93
slt r7, r4, r2 // icount 94
sco r5, r6, r2 // icount 95
ror r7, r0, r4 // icount 96
ror r1, r2, r3 // icount 97
seq r3, r3, r0 // icount 98
sco r5, r2, r7 // icount 99
sra r0, r6, r4 // icount 100
seq r1, r6, r1 // icount 101
add r7, r7, r6 // icount 102
sle r3, r3, r4 // icount 103
rol r4, r2, r0 // icount 104
sll r1, r1, r4 // icount 105
sra r5, r3, r7 // icount 106
ror r6, r7, r0 // icount 107
or r4, r5, r4 // icount 108
slt r4, r3, r0 // icount 109
sco r2, r1, r6 // icount 110
sll r5, r5, r2 // icount 111
or r7, r0, r0 // icount 112
slt r7, r7, r4 // icount 113
sle r0, r6, r3 // icount 114
sle r7, r6, r1 // icount 115
seq r6, r2, r6 // icount 116
sll r6, r6, r2 // icount 117
add r6, r5, r7 // icount 118
sll r1, r5, r5 // icount 119
add r4, r5, r3 // icount 120
sco r5, r7, r7 // icount 121
sll r3, r0, r0 // icount 122
rol r7, r4, r4 // icount 123
sle r6, r5, r6 // icount 124
sll r5, r6, r4 // icount 125
add r6, r3, r6 // icount 126
and r1, r1, r6 // icount 127
sle r2, r4, r1 // icount 128
or r3, r1, r2 // icount 129
sub r5, r2, r6 // icount 130
sra r4, r1, r4 // icount 131
or r5, r7, r6 // icount 132
slt r6, r5, r2 // icount 133
sra r1, r3, r1 // icount 134
ror r2, r7, r7 // icount 135
or r4, r7, r6 // icount 136
seq r2, r2, r2 // icount 137
sle r1, r2, r3 // icount 138
ror r5, r2, r4 // icount 139
slt r4, r6, r2 // icount 140
sle r1, r3, r5 // icount 141
sub r7, r0, r4 // icount 142
sco r0, r1, r7 // icount 143
and r5, r6, r7 // icount 144
or r2, r4, r7 // icount 145
and r7, r1, r2 // icount 146
seq r2, r4, r1 // icount 147
add r3, r6, r7 // icount 148
sll r5, r7, r5 // icount 149
and r7, r1, r2 // icount 150
sub r4, r3, r5 // icount 151
add r0, r5, r3 // icount 152
add r2, r7, r5 // icount 153
sra r7, r1, r6 // icount 154
sll r3, r6, r6 // icount 155
sll r2, r5, r2 // icount 156
seq r1, r2, r0 // icount 157
slt r1, r6, r3 // icount 158
sle r1, r4, r4 // icount 159
add r0, r4, r6 // icount 160
slt r7, r7, r7 // icount 161
sll r3, r4, r1 // icount 162
seq r2, r7, r3 // icount 163
add r6, r6, r0 // icount 164
sub r5, r1, r7 // icount 165
sll r5, r5, r1 // icount 166
add r5, r7, r3 // icount 167
slt r2, r3, r2 // icount 168
sll r2, r2, r5 // icount 169
seq r0, r7, r3 // icount 170
slt r2, r7, r7 // icount 171
and r1, r5, r2 // icount 172
sub r6, r1, r7 // icount 173
and r1, r3, r4 // icount 174
sll r6, r3, r0 // icount 175
add r0, r0, r3 // icount 176
sll r5, r0, r7 // icount 177
rol r5, r6, r1 // icount 178
ror r7, r2, r1 // icount 179
and r7, r7, r7 // icount 180
seq r7, r5, r6 // icount 181
and r2, r6, r2 // icount 182
.rlabel_4:
st r7, r6, 12
addi r6, r6, 12
j .rlabel_5 // icount 183
and r4, r3, r6 // icount 184
add r4, r2, r3 // icount 185
sra r2, r6, r1 // icount 186
slt r3, r2, r6 // icount 187
sle r6, r2, r3 // icount 188
sub r2, r0, r0 // icount 189
sco r7, r7, r7 // icount 190
sll r5, r7, r4 // icount 191
or r0, r7, r0 // icount 192
sll r5, r6, r6 // icount 193
seq r1, r5, r3 // icount 194
add r6, r6, r7 // icount 195
slt r0, r1, r4 // icount 196
sra r5, r0, r0 // icount 197
ror r1, r5, r0 // icount 198
sle r1, r1, r7 // icount 199
add r6, r2, r6 // icount 200
sra r3, r5, r1 // icount 201
and r4, r1, r6 // icount 202
sco r7, r7, r0 // icount 203
rol r1, r3, r7 // icount 204
sub r6, r2, r2 // icount 205
rol r2, r0, r3 // icount 206
add r1, r0, r2 // icount 207
sll r3, r7, r7 // icount 208
sra r2, r7, r0 // icount 209
sll r4, r7, r2 // icount 210
sco r6, r3, r3 // icount 211
sle r0, r2, r2 // icount 212
and r3, r2, r1 // icount 213
rol r5, r4, r1 // icount 214
sra r7, r7, r1 // icount 215
sco r1, r5, r2 // icount 216
rol r3, r6, r3 // icount 217
seq r2, r4, r2 // icount 218
and r0, r4, r6 // icount 219
rol r1, r3, r3 // icount 220
sub r4, r5, r4 // icount 221
seq r1, r7, r3 // icount 222
rol r2, r5, r5 // icount 223
rol r0, r0, r3 // icount 224
sra r4, r0, r5 // icount 225
rol r0, r6, r5 // icount 226
seq r0, r2, r5 // icount 227
ror r6, r1, r5 // icount 228
add r0, r0, r1 // icount 229
rol r6, r3, r6 // icount 230
sll r3, r3, r7 // icount 231
and r3, r6, r7 // icount 232
add r2, r5, r0 // icount 233
rol r3, r3, r6 // icount 234
add r6, r0, r1 // icount 235
sra r0, r5, r5 // icount 236
sra r6, r4, r5 // icount 237
rol r2, r1, r4 // icount 238
and r3, r6, r1 // icount 239
sco r3, r5, r5 // icount 240
sra r2, r4, r5 // icount 241
sra r0, r7, r0 // icount 242
sco r0, r3, r4 // icount 243
ror r2, r1, r6 // icount 244
ror r6, r1, r0 // icount 245
add r5, r4, r0 // icount 246
sll r7, r3, r5 // icount 247
sle r0, r5, r1 // icount 248
seq r4, r4, r1 // icount 249
rol r6, r0, r0 // icount 250
sll r2, r0, r3 // icount 251
sll r6, r3, r5 // icount 252
seq r7, r2, r3 // icount 253
sll r4, r7, r4 // icount 254
ror r5, r5, r3 // icount 255
and r1, r1, r5 // icount 256
add r0, r1, r2 // icount 257
add r7, r6, r0 // icount 258
add r0, r4, r3 // icount 259
sle r3, r5, r6 // icount 260
rol r1, r2, r5 // icount 261
rol r3, r0, r5 // icount 262
ror r3, r5, r0 // icount 263
and r3, r6, r7 // icount 264
sra r1, r0, r1 // icount 265
ror r5, r4, r0 // icount 266
and r2, r3, r1 // icount 267
add r6, r3, r1 // icount 268
seq r1, r2, r4 // icount 269
sll r0, r4, r2 // icount 270
seq r0, r6, r7 // icount 271
seq r1, r0, r7 // icount 272
and r1, r0, r6 // icount 273
ror r0, r3, r0 // icount 274
sle r2, r0, r2 // icount 275
or r2, r3, r0 // icount 276
ror r3, r4, r5 // icount 277
ror r7, r3, r2 // icount 278
slt r5, r0, r3 // icount 279
sra r6, r3, r1 // icount 280
sll r4, r7, r6 // icount 281
slt r6, r6, r1 // icount 282
sco r5, r1, r1 // icount 283
or r4, r7, r2 // icount 284
slt r1, r3, r5 // icount 285
add r0, r5, r5 // icount 286
sco r1, r7, r0 // icount 287
seq r4, r1, r7 // icount 288
ror r6, r0, r3 // icount 289
sub r1, r1, r6 // icount 290
sle r3, r0, r4 // icount 291
sco r7, r5, r5 // icount 292
.rlabel_5:
beqz r0, .rlabel_6 // icount 293
sco r2, r2, r7 // icount 294
sra r3, r0, r6 // icount 295
or r1, r2, r7 // icount 296
sle r0, r3, r0 // icount 297
sra r6, r7, r3 // icount 298
sra r6, r3, r0 // icount 299
.rlabel_6:
st r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_7 // icount 300
sco r0, r7, r4 // icount 301
sll r1, r4, r7 // icount 302
and r2, r4, r5 // icount 303
sra r6, r0, r1 // icount 304
sra r6, r7, r1 // icount 305
sll r0, r2, r6 // icount 306
sco r4, r3, r1 // icount 307
sle r7, r0, r7 // icount 308
rol r5, r6, r2 // icount 309
add r4, r1, r3 // icount 310
slt r2, r2, r1 // icount 311
sll r6, r3, r1 // icount 312
slt r0, r3, r3 // icount 313
slt r1, r4, r1 // icount 314
.rlabel_7:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_8 // icount 315
ror r4, r6, r2 // icount 316
seq r5, r0, r1 // icount 317
sco r3, r4, r0 // icount 318
and r5, r0, r6 // icount 319
sll r3, r0, r0 // icount 320
and r6, r4, r1 // icount 321
rol r0, r7, r7 // icount 322
seq r3, r3, r2 // icount 323
seq r0, r3, r6 // icount 324
sco r1, r2, r7 // icount 325
seq r3, r0, r2 // icount 326
add r5, r4, r4 // icount 327
sco r1, r0, r6 // icount 328
sco r5, r3, r4 // icount 329
ror r7, r6, r2 // icount 330
rol r6, r5, r1 // icount 331
sle r6, r7, r0 // icount 332
sco r2, r6, r2 // icount 333
and r0, r1, r6 // icount 334
sll r0, r5, r2 // icount 335
or r3, r4, r6 // icount 336
sub r3, r1, r7 // icount 337
rol r0, r2, r6 // icount 338
sub r7, r0, r2 // icount 339
.rlabel_8:
j .rlabel_9 // icount 340
sub r0, r3, r4 // icount 341
sub r0, r4, r1 // icount 342
and r2, r0, r6 // icount 343
ror r7, r6, r3 // icount 344
slt r7, r3, r1 // icount 345
sra r1, r7, r6 // icount 346
sle r2, r7, r2 // icount 347
ror r7, r2, r2 // icount 348
seq r4, r4, r0 // icount 349
sll r1, r0, r4 // icount 350
slt r4, r6, r4 // icount 351
seq r4, r1, r5 // icount 352
sub r6, r5, r6 // icount 353
rol r1, r7, r5 // icount 354
ror r2, r3, r4 // icount 355
and r3, r5, r5 // icount 356
seq r5, r0, r0 // icount 357
sub r1, r5, r0 // icount 358
.rlabel_9:
st r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_10 // icount 359
sll r5, r5, r6 // icount 360
add r3, r7, r7 // icount 361
seq r6, r1, r0 // icount 362
rol r1, r0, r4 // icount 363
seq r4, r1, r0 // icount 364
and r3, r5, r5 // icount 365
.rlabel_10:
jal .rlabel_11 // icount 366
sco r1, r0, r7 // icount 367
rol r7, r1, r5 // icount 368
sle r7, r5, r0 // icount 369
or r6, r0, r5 // icount 370
seq r1, r0, r5 // icount 371
add r7, r1, r2 // icount 372
sll r5, r2, r5 // icount 373
add r0, r1, r7 // icount 374
sub r6, r7, r7 // icount 375
and r4, r0, r5 // icount 376
seq r5, r1, r4 // icount 377
add r4, r6, r5 // icount 378
and r7, r3, r6 // icount 379
sll r6, r1, r5 // icount 380
and r2, r4, r0 // icount 381
and r0, r1, r2 // icount 382
or r3, r2, r7 // icount 383
slt r7, r2, r6 // icount 384
sll r1, r5, r3 // icount 385
sra r6, r2, r5 // icount 386
slt r1, r2, r1 // icount 387
.rlabel_11:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_12 // icount 388
sle r7, r1, r4 // icount 389
sra r6, r7, r7 // icount 390
slt r7, r1, r3 // icount 391
sle r2, r5, r0 // icount 392
or r0, r5, r5 // icount 393
add r5, r6, r2 // icount 394
sub r2, r4, r1 // icount 395
sub r3, r5, r6 // icount 396
sub r7, r7, r5 // icount 397
seq r5, r1, r0 // icount 398
add r5, r6, r0 // icount 399
or r6, r0, r2 // icount 400
sra r5, r0, r2 // icount 401
seq r5, r4, r5 // icount 402
seq r0, r1, r0 // icount 403
sra r1, r1, r0 // icount 404
slt r4, r7, r6 // icount 405
or r0, r0, r2 // icount 406
sco r0, r7, r7 // icount 407
sle r2, r3, r7 // icount 408
slt r7, r0, r3 // icount 409
sll r0, r1, r4 // icount 410
ror r3, r5, r0 // icount 411
and r3, r6, r2 // icount 412
sub r7, r1, r6 // icount 413
slt r3, r1, r1 // icount 414
and r0, r5, r3 // icount 415
seq r1, r1, r0 // icount 416
slt r1, r2, r4 // icount 417
or r4, r3, r6 // icount 418
rol r1, r5, r6 // icount 419
slt r4, r1, r4 // icount 420
sra r2, r3, r1 // icount 421
ror r1, r0, r5 // icount 422
sll r2, r3, r7 // icount 423
sll r1, r3, r0 // icount 424
sle r2, r0, r3 // icount 425
sle r1, r5, r6 // icount 426
sra r4, r2, r7 // icount 427
sub r7, r5, r2 // icount 428
slt r4, r2, r7 // icount 429
sle r7, r7, r0 // icount 430
sco r6, r5, r4 // icount 431
ror r4, r0, r6 // icount 432
rol r1, r1, r1 // icount 433
slt r7, r3, r0 // icount 434
sll r3, r4, r4 // icount 435
or r7, r7, r5 // icount 436
rol r3, r3, r3 // icount 437
sll r6, r4, r1 // icount 438
sle r4, r4, r2 // icount 439
sco r2, r3, r1 // icount 440
sra r1, r1, r6 // icount 441
ror r5, r3, r2 // icount 442
rol r0, r5, r1 // icount 443
sub r1, r3, r0 // icount 444
sco r3, r7, r5 // icount 445
seq r4, r1, r3 // icount 446
rol r4, r3, r1 // icount 447
ror r4, r1, r4 // icount 448
seq r6, r2, r6 // icount 449
rol r2, r6, r6 // icount 450
and r5, r6, r6 // icount 451
slt r6, r3, r7 // icount 452
.rlabel_12:
j .rlabel_13 // icount 453
sco r1, r3, r0 // icount 454
and r3, r4, r1 // icount 455
sll r4, r5, r0 // icount 456
or r0, r2, r5 // icount 457
ror r6, r1, r6 // icount 458
rol r4, r5, r4 // icount 459
rol r6, r5, r3 // icount 460
sle r2, r4, r5 // icount 461
add r2, r2, r2 // icount 462
seq r2, r7, r3 // icount 463
or r1, r7, r6 // icount 464
rol r7, r3, r5 // icount 465
slt r0, r5, r0 // icount 466
slt r1, r4, r0 // icount 467
sra r6, r0, r1 // icount 468
sll r4, r1, r6 // icount 469
sco r3, r4, r2 // icount 470
sle r3, r1, r7 // icount 471
sco r6, r0, r2 // icount 472
sco r2, r5, r5 // icount 473
sra r5, r6, r0 // icount 474
sub r0, r3, r4 // icount 475
ror r6, r1, r1 // icount 476
rol r1, r2, r2 // icount 477
add r7, r3, r7 // icount 478
add r3, r2, r1 // icount 479
sle r5, r7, r1 // icount 480
sll r6, r2, r5 // icount 481
ror r5, r1, r0 // icount 482
sll r5, r0, r7 // icount 483
sra r5, r3, r2 // icount 484
sra r3, r0, r3 // icount 485
sra r0, r1, r6 // icount 486
sub r7, r6, r1 // icount 487
seq r0, r3, r4 // icount 488
and r2, r3, r4 // icount 489
sra r2, r4, r2 // icount 490
sle r4, r0, r2 // icount 491
seq r1, r2, r7 // icount 492
sra r5, r4, r6 // icount 493
sub r0, r7, r2 // icount 494
and r6, r5, r6 // icount 495
rol r4, r2, r6 // icount 496
sco r4, r2, r3 // icount 497
and r4, r6, r7 // icount 498
sub r2, r4, r3 // icount 499
sll r4, r4, r5 // icount 500
rol r7, r1, r5 // icount 501
sco r0, r7, r3 // icount 502
or r0, r1, r7 // icount 503
or r4, r6, r0 // icount 504
sra r3, r2, r1 // icount 505
sll r7, r7, r2 // icount 506
add r7, r6, r7 // icount 507
or r2, r3, r3 // icount 508
rol r2, r4, r6 // icount 509
add r7, r4, r0 // icount 510
seq r2, r3, r7 // icount 511
or r2, r5, r5 // icount 512
sub r1, r4, r3 // icount 513
sub r6, r1, r1 // icount 514
sra r1, r0, r0 // icount 515
rol r5, r5, r2 // icount 516
and r1, r6, r7 // icount 517
sra r4, r5, r0 // icount 518
sra r0, r2, r7 // icount 519
slt r7, r4, r4 // icount 520
sra r2, r3, r6 // icount 521
seq r6, r0, r3 // icount 522
rol r1, r4, r1 // icount 523
slt r5, r7, r7 // icount 524
and r1, r1, r5 // icount 525
and r6, r2, r6 // icount 526
ror r1, r5, r6 // icount 527
sle r5, r6, r6 // icount 528
sub r1, r0, r4 // icount 529
slt r5, r4, r2 // icount 530
.rlabel_13:
ld r7, r6, 12
addi r6, r6, 12
j .rlabel_14 // icount 531
rol r1, r6, r1 // icount 532
sco r5, r6, r6 // icount 533
sle r4, r5, r0 // icount 534
seq r3, r1, r1 // icount 535
sco r3, r2, r3 // icount 536
sra r7, r5, r2 // icount 537
sub r6, r3, r0 // icount 538
slt r1, r2, r6 // icount 539
add r4, r6, r0 // icount 540
sll r3, r4, r4 // icount 541
slt r0, r7, r5 // icount 542
sub r2, r7, r7 // icount 543
sll r6, r3, r6 // icount 544
or r3, r3, r2 // icount 545
or r3, r0, r1 // icount 546
sll r1, r4, r4 // icount 547
sco r2, r4, r3 // icount 548
.rlabel_14:
ld r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_15 // icount 549
or r5, r3, r1 // icount 550
sll r1, r5, r1 // icount 551
add r7, r3, r7 // icount 552
ror r3, r7, r3 // icount 553
sll r7, r6, r4 // icount 554
sll r4, r0, r0 // icount 555
sle r0, r5, r6 // icount 556
and r0, r7, r4 // icount 557
sra r4, r2, r6 // icount 558
and r6, r4, r5 // icount 559
or r2, r6, r0 // icount 560
and r7, r4, r7 // icount 561
ror r0, r7, r0 // icount 562
ror r4, r0, r2 // icount 563
.rlabel_15:
bnez r1, .rlabel_16 // icount 564
rol r1, r4, r3 // icount 565
sco r4, r6, r3 // icount 566
.rlabel_16:
bnez r1, .rlabel_17 // icount 567
slt r0, r3, r2 // icount 568
.rlabel_17:
bnez r1, .rlabel_18 // icount 569
slt r3, r5, r2 // icount 570
or r3, r1, r0 // icount 571
sco r5, r5, r2 // icount 572
.rlabel_18:
bnez r1, .rlabel_19 // icount 573
ror r3, r7, r2 // icount 574
seq r5, r2, r4 // icount 575
sra r2, r1, r4 // icount 576
sle r3, r0, r0 // icount 577
sco r3, r2, r7 // icount 578
slt r4, r1, r5 // icount 579
sco r7, r3, r6 // icount 580
or r4, r1, r2 // icount 581
sll r7, r6, r2 // icount 582
and r7, r1, r1 // icount 583
.rlabel_19:
st r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_20 // icount 584
rol r7, r4, r7 // icount 585
seq r3, r7, r2 // icount 586
sra r0, r2, r2 // icount 587
add r2, r3, r4 // icount 588
sll r5, r1, r6 // icount 589
.rlabel_20:
beqz r0, .rlabel_21 // icount 590
sub r3, r5, r2 // icount 591
rol r5, r1, r1 // icount 592
or r0, r1, r0 // icount 593
seq r1, r0, r5 // icount 594
ror r5, r6, r1 // icount 595
add r0, r1, r6 // icount 596
.rlabel_21:
bnez r1, .rlabel_22 // icount 597
.rlabel_22:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_23 // icount 598
sub r1, r0, r7 // icount 599
sco r4, r6, r7 // icount 600
slt r5, r5, r6 // icount 601
and r1, r7, r5 // icount 602
rol r4, r1, r5 // icount 603
slt r6, r0, r0 // icount 604
sco r7, r1, r3 // icount 605
slt r7, r3, r1 // icount 606
.rlabel_23:
bnez r1, .rlabel_24 // icount 607
slt r6, r3, r0 // icount 608
sll r3, r1, r6 // icount 609
add r2, r0, r7 // icount 610
sll r3, r2, r4 // icount 611
.rlabel_24:
ld r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_25 // icount 612
sra r3, r6, r4 // icount 613
or r2, r1, r2 // icount 614
.rlabel_25:
jal .rlabel_26 // icount 615
sco r2, r4, r1 // icount 616
sra r5, r4, r5 // icount 617
or r1, r1, r4 // icount 618
slt r6, r6, r0 // icount 619
.rlabel_26:
ld r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_27 // icount 620
seq r2, r4, r1 // icount 621
or r5, r4, r1 // icount 622
seq r6, r2, r6 // icount 623
sra r4, r7, r2 // icount 624
sco r7, r7, r0 // icount 625
rol r0, r1, r1 // icount 626
seq r7, r2, r3 // icount 627
seq r0, r4, r5 // icount 628
sub r5, r4, r1 // icount 629
add r3, r6, r3 // icount 630
sub r6, r4, r0 // icount 631
sub r2, r4, r6 // icount 632
sle r5, r6, r4 // icount 633
seq r2, r3, r7 // icount 634
.rlabel_27:
beqz r0, .rlabel_28 // icount 635
sco r4, r1, r7 // icount 636
add r2, r2, r5 // icount 637
sle r5, r2, r1 // icount 638
sle r4, r6, r6 // icount 639
sco r1, r1, r2 // icount 640
sll r6, r3, r6 // icount 641
slt r2, r4, r4 // icount 642
sll r2, r0, r4 // icount 643
sle r2, r5, r7 // icount 644
or r6, r4, r7 // icount 645
sra r6, r0, r4 // icount 646
sll r2, r7, r5 // icount 647
or r3, r5, r4 // icount 648
sll r3, r6, r7 // icount 649
sco r4, r4, r7 // icount 650
.rlabel_28:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_29 // icount 651
sle r1, r5, r4 // icount 652
sra r7, r5, r6 // icount 653
add r2, r1, r5 // icount 654
sub r6, r2, r7 // icount 655
sub r2, r2, r5 // icount 656
seq r1, r0, r1 // icount 657
sub r0, r5, r5 // icount 658
rol r2, r3, r3 // icount 659
add r7, r0, r5 // icount 660
add r0, r1, r4 // icount 661
sco r1, r1, r0 // icount 662
slt r4, r3, r5 // icount 663
and r6, r3, r7 // icount 664
seq r7, r5, r5 // icount 665
sub r2, r7, r3 // icount 666
sle r2, r6, r5 // icount 667
and r7, r1, r1 // icount 668
slt r6, r1, r0 // icount 669
ror r1, r2, r0 // icount 670
and r5, r3, r4 // icount 671
rol r2, r1, r5 // icount 672
sub r7, r4, r6 // icount 673
ror r7, r5, r7 // icount 674
and r1, r2, r5 // icount 675
seq r0, r1, r2 // icount 676
sll r5, r4, r2 // icount 677
.rlabel_29:
bnez r1, .rlabel_30 // icount 678
and r1, r1, r3 // icount 679
or r0, r4, r4 // icount 680
sle r2, r5, r7 // icount 681
ror r0, r4, r2 // icount 682
or r6, r1, r3 // icount 683
seq r0, r5, r1 // icount 684
ror r4, r5, r7 // icount 685
.rlabel_30:
j .rlabel_31 // icount 686
sle r1, r5, r0 // icount 687
ror r2, r6, r2 // icount 688
sll r7, r0, r5 // icount 689
slt r0, r1, r0 // icount 690
sco r5, r7, r0 // icount 691
slt r2, r6, r2 // icount 692
sle r1, r5, r5 // icount 693
or r3, r4, r4 // icount 694
sle r4, r1, r7 // icount 695
sco r3, r1, r0 // icount 696
rol r1, r5, r1 // icount 697
and r1, r3, r0 // icount 698
slt r3, r1, r3 // icount 699
sll r5, r2, r2 // icount 700
add r1, r5, r1 // icount 701
sco r6, r3, r5 // icount 702
slt r0, r4, r2 // icount 703
or r2, r4, r4 // icount 704
sll r0, r6, r5 // icount 705
sub r3, r0, r0 // icount 706
ror r2, r3, r3 // icount 707
rol r7, r0, r7 // icount 708
sll r1, r1, r4 // icount 709
ror r5, r3, r4 // icount 710
sub r2, r2, r5 // icount 711
sle r7, r4, r7 // icount 712
ror r1, r0, r2 // icount 713
rol r4, r1, r6 // icount 714
and r2, r0, r2 // icount 715
sub r4, r1, r4 // icount 716
slt r7, r1, r3 // icount 717
and r3, r3, r7 // icount 718
add r4, r2, r7 // icount 719
sco r7, r7, r3 // icount 720
sle r1, r6, r2 // icount 721
and r6, r0, r0 // icount 722
ror r4, r6, r6 // icount 723
sco r3, r5, r3 // icount 724
sll r5, r1, r4 // icount 725
.rlabel_31:
beqz r0, .rlabel_32 // icount 726
seq r5, r5, r6 // icount 727
.rlabel_32:
ld r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_33 // icount 728
sco r4, r5, r6 // icount 729
.rlabel_33:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_34 // icount 730
rol r6, r7, r2 // icount 731
slt r3, r3, r3 // icount 732
add r5, r3, r5 // icount 733
sco r7, r1, r7 // icount 734
sll r1, r3, r7 // icount 735
and r4, r7, r3 // icount 736
slt r2, r7, r1 // icount 737
sle r5, r2, r0 // icount 738
sll r2, r3, r4 // icount 739
seq r6, r2, r6 // icount 740
sub r7, r7, r3 // icount 741
slt r0, r0, r0 // icount 742
add r0, r7, r5 // icount 743
sra r6, r7, r2 // icount 744
slt r7, r5, r1 // icount 745
sle r5, r5, r0 // icount 746
seq r3, r4, r5 // icount 747
sub r1, r0, r0 // icount 748
sle r6, r3, r3 // icount 749
add r1, r5, r7 // icount 750
and r2, r1, r0 // icount 751
sra r6, r5, r1 // icount 752
sco r7, r4, r2 // icount 753
sll r4, r5, r6 // icount 754
or r5, r0, r6 // icount 755
rol r7, r3, r4 // icount 756
sra r0, r5, r4 // icount 757
seq r7, r6, r6 // icount 758
slt r0, r1, r5 // icount 759
sco r4, r1, r2 // icount 760
sco r7, r5, r0 // icount 761
rol r7, r4, r7 // icount 762
slt r5, r6, r2 // icount 763
sle r1, r7, r6 // icount 764
or r3, r6, r6 // icount 765
add r7, r6, r5 // icount 766
sll r7, r3, r4 // icount 767
slt r6, r6, r3 // icount 768
and r4, r5, r6 // icount 769
sll r7, r0, r2 // icount 770
slt r4, r7, r3 // icount 771
rol r3, r2, r6 // icount 772
add r4, r5, r4 // icount 773
sco r2, r1, r1 // icount 774
sll r5, r1, r4 // icount 775
sco r4, r4, r6 // icount 776
rol r2, r3, r2 // icount 777
sll r6, r0, r3 // icount 778
rol r6, r1, r4 // icount 779
slt r3, r6, r1 // icount 780
ror r7, r4, r3 // icount 781
add r1, r1, r6 // icount 782
sub r6, r1, r0 // icount 783
sra r3, r5, r0 // icount 784
sll r7, r6, r5 // icount 785
or r6, r4, r1 // icount 786
sco r3, r2, r5 // icount 787
sra r7, r6, r7 // icount 788
rol r7, r2, r4 // icount 789
and r4, r7, r6 // icount 790
and r6, r3, r6 // icount 791
sub r7, r0, r7 // icount 792
add r2, r0, r5 // icount 793
sub r2, r5, r4 // icount 794
sle r6, r0, r7 // icount 795
sra r2, r3, r0 // icount 796
ror r1, r0, r5 // icount 797
sub r5, r2, r4 // icount 798
sco r1, r0, r2 // icount 799
sub r0, r2, r7 // icount 800
sll r0, r1, r0 // icount 801
add r1, r6, r6 // icount 802
sle r7, r7, r4 // icount 803
sra r7, r2, r6 // icount 804
sra r6, r2, r1 // icount 805
sra r1, r4, r3 // icount 806
sub r7, r6, r5 // icount 807
or r5, r7, r5 // icount 808
slt r4, r4, r2 // icount 809
ror r5, r4, r5 // icount 810
or r2, r3, r5 // icount 811
and r4, r4, r5 // icount 812
seq r7, r7, r3 // icount 813
.rlabel_34:
ld r7, r6, 4
addi r6, r6, 4
jal .rlabel_35 // icount 814
rol r2, r3, r4 // icount 815
and r3, r1, r4 // icount 816
slt r6, r6, r6 // icount 817
and r1, r3, r1 // icount 818
sco r4, r7, r4 // icount 819
sra r5, r5, r7 // icount 820
sll r0, r5, r4 // icount 821
ror r2, r5, r3 // icount 822
slt r0, r0, r6 // icount 823
sub r4, r5, r5 // icount 824
and r6, r4, r7 // icount 825
seq r4, r2, r2 // icount 826
rol r0, r4, r4 // icount 827
sll r0, r3, r4 // icount 828
sub r7, r7, r2 // icount 829
seq r2, r4, r1 // icount 830
sub r0, r4, r4 // icount 831
sra r4, r1, r6 // icount 832
rol r7, r7, r7 // icount 833
sco r0, r6, r1 // icount 834
sub r4, r0, r1 // icount 835
sco r6, r2, r2 // icount 836
.rlabel_35:
st r7, r6, 8
addi r6, r6, 8
bnez r1, .rlabel_36 // icount 837
sll r1, r5, r1 // icount 838
sll r7, r6, r5 // icount 839
sub r2, r0, r6 // icount 840
ror r4, r2, r3 // icount 841
sub r4, r0, r4 // icount 842
seq r7, r5, r3 // icount 843
ror r3, r4, r3 // icount 844
add r2, r1, r2 // icount 845
.rlabel_36:
ld r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_37 // icount 846
sll r5, r7, r6 // icount 847
sub r6, r0, r4 // icount 848
sll r1, r0, r4 // icount 849
sll r0, r1, r2 // icount 850
ror r4, r5, r6 // icount 851
or r1, r6, r3 // icount 852
sle r6, r7, r6 // icount 853
sco r0, r3, r5 // icount 854
.rlabel_37:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_38 // icount 855
sco r1, r3, r6 // icount 856
ror r1, r2, r1 // icount 857
sra r7, r7, r7 // icount 858
rol r6, r2, r2 // icount 859
slt r4, r3, r7 // icount 860
rol r4, r5, r0 // icount 861
sra r6, r2, r4 // icount 862
sle r2, r6, r4 // icount 863
sra r5, r2, r5 // icount 864
seq r6, r1, r6 // icount 865
and r2, r6, r6 // icount 866
ror r3, r4, r5 // icount 867
sll r4, r7, r0 // icount 868
sle r3, r0, r7 // icount 869
sub r4, r0, r2 // icount 870
sra r2, r4, r0 // icount 871
sle r6, r2, r1 // icount 872
slt r4, r2, r6 // icount 873
and r7, r0, r2 // icount 874
add r7, r3, r3 // icount 875
sra r5, r6, r4 // icount 876
slt r6, r6, r0 // icount 877
add r2, r1, r4 // icount 878
ror r5, r3, r7 // icount 879
or r5, r7, r0 // icount 880
slt r0, r6, r2 // icount 881
slt r6, r0, r7 // icount 882
sub r7, r7, r5 // icount 883
sle r2, r4, r0 // icount 884
sub r1, r3, r7 // icount 885
sco r7, r6, r6 // icount 886
sra r5, r3, r0 // icount 887
rol r6, r7, r1 // icount 888
sco r5, r0, r7 // icount 889
and r2, r1, r5 // icount 890
and r5, r4, r2 // icount 891
sll r2, r2, r2 // icount 892
slt r3, r3, r1 // icount 893
seq r5, r6, r0 // icount 894
rol r4, r4, r3 // icount 895
ror r3, r1, r0 // icount 896
or r2, r6, r3 // icount 897
add r4, r1, r2 // icount 898
and r1, r1, r0 // icount 899
sll r2, r5, r0 // icount 900
seq r2, r3, r2 // icount 901
rol r4, r5, r2 // icount 902
seq r3, r0, r1 // icount 903
or r0, r4, r2 // icount 904
rol r2, r3, r7 // icount 905
seq r3, r5, r1 // icount 906
and r7, r7, r3 // icount 907
sll r4, r0, r2 // icount 908
sco r1, r5, r1 // icount 909
sle r1, r2, r3 // icount 910
sco r4, r4, r0 // icount 911
ror r5, r1, r3 // icount 912
sco r2, r3, r5 // icount 913
rol r5, r7, r2 // icount 914
slt r5, r6, r3 // icount 915
sle r5, r0, r7 // icount 916
sub r7, r5, r6 // icount 917
ror r4, r7, r5 // icount 918
sco r7, r1, r6 // icount 919
or r0, r5, r2 // icount 920
slt r1, r1, r6 // icount 921
sll r5, r4, r3 // icount 922
sco r3, r4, r1 // icount 923
sra r0, r1, r2 // icount 924
sco r0, r1, r1 // icount 925
add r4, r6, r5 // icount 926
sll r5, r1, r0 // icount 927
slt r0, r5, r7 // icount 928
sub r3, r1, r2 // icount 929
and r5, r0, r5 // icount 930
or r1, r1, r6 // icount 931
sle r1, r6, r0 // icount 932
seq r6, r5, r7 // icount 933
.rlabel_38:
j .rlabel_39 // icount 934
slt r6, r1, r6 // icount 935
sll r2, r4, r1 // icount 936
rol r5, r6, r5 // icount 937
sle r2, r1, r5 // icount 938
ror r4, r4, r7 // icount 939
sle r3, r2, r5 // icount 940
seq r1, r1, r7 // icount 941
sll r5, r2, r0 // icount 942
slt r1, r7, r6 // icount 943
sra r5, r5, r2 // icount 944
sub r5, r0, r0 // icount 945
sub r2, r6, r6 // icount 946
sub r6, r7, r1 // icount 947
sle r4, r0, r7 // icount 948
add r3, r1, r6 // icount 949
sra r5, r6, r6 // icount 950
sll r1, r0, r5 // icount 951
sle r3, r7, r2 // icount 952
and r6, r4, r3 // icount 953
sra r3, r5, r6 // icount 954
seq r0, r3, r5 // icount 955
sco r6, r7, r2 // icount 956
ror r4, r6, r6 // icount 957
slt r5, r4, r2 // icount 958
sra r4, r3, r4 // icount 959
or r4, r5, r2 // icount 960
add r0, r2, r4 // icount 961
slt r6, r7, r3 // icount 962
sll r3, r1, r7 // icount 963
or r5, r0, r1 // icount 964
seq r1, r2, r6 // icount 965
sle r1, r1, r4 // icount 966
sle r6, r0, r6 // icount 967
sco r3, r2, r7 // icount 968
or r4, r2, r2 // icount 969
sub r3, r7, r2 // icount 970
seq r5, r5, r2 // icount 971
sll r7, r3, r5 // icount 972
ror r6, r5, r4 // icount 973
add r1, r3, r2 // icount 974
and r0, r7, r4 // icount 975
slt r0, r3, r5 // icount 976
and r1, r2, r3 // icount 977
sle r0, r4, r4 // icount 978
add r6, r1, r2 // icount 979
rol r3, r1, r4 // icount 980
and r6, r0, r6 // icount 981
and r5, r2, r4 // icount 982
sco r0, r4, r4 // icount 983
add r4, r1, r3 // icount 984
seq r6, r6, r7 // icount 985
slt r5, r0, r4 // icount 986
sll r0, r5, r0 // icount 987
sco r6, r0, r6 // icount 988
sco r5, r2, r6 // icount 989
sra r1, r6, r0 // icount 990
seq r4, r1, r6 // icount 991
sll r5, r7, r0 // icount 992
and r3, r6, r1 // icount 993
slt r3, r0, r0 // icount 994
seq r3, r6, r1 // icount 995
and r7, r0, r0 // icount 996
rol r5, r6, r7 // icount 997
sub r6, r3, r3 // icount 998
add r1, r6, r1 // icount 999
and r1, r0, r1 // icount 1000
sll r5, r5, r5 // icount 1001
add r1, r3, r4 // icount 1002
ror r1, r4, r0 // icount 1003
rol r5, r1, r5 // icount 1004
or r1, r3, r4 // icount 1005
sco r7, r4, r1 // icount 1006
sll r1, r1, r5 // icount 1007
sra r6, r7, r5 // icount 1008
add r3, r4, r6 // icount 1009
slt r7, r6, r4 // icount 1010
sle r3, r7, r7 // icount 1011
sle r1, r6, r6 // icount 1012
slt r7, r0, r7 // icount 1013
sra r3, r6, r4 // icount 1014
ror r7, r1, r0 // icount 1015
sra r7, r3, r1 // icount 1016
rol r5, r5, r6 // icount 1017
sco r4, r2, r6 // icount 1018
add r2, r3, r4 // icount 1019
sll r7, r3, r1 // icount 1020
sll r0, r6, r5 // icount 1021
sra r2, r2, r1 // icount 1022
ror r0, r0, r4 // icount 1023
sle r5, r6, r7 // icount 1024
sub r0, r4, r0 // icount 1025
ror r5, r6, r4 // icount 1026
or r2, r0, r6 // icount 1027
add r0, r1, r0 // icount 1028
and r3, r6, r3 // icount 1029
.rlabel_39:
st r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_40 // icount 1030
and r5, r6, r1 // icount 1031
ror r7, r4, r1 // icount 1032
seq r6, r6, r6 // icount 1033
or r5, r7, r5 // icount 1034
rol r7, r1, r1 // icount 1035
sle r1, r1, r3 // icount 1036
add r0, r4, r7 // icount 1037
.rlabel_40:
j .rlabel_41 // icount 1038
sub r3, r1, r3 // icount 1039
slt r1, r3, r4 // icount 1040
sco r4, r7, r1 // icount 1041
sra r0, r3, r5 // icount 1042
or r7, r6, r7 // icount 1043
sub r5, r4, r0 // icount 1044
ror r1, r3, r7 // icount 1045
add r5, r2, r4 // icount 1046
add r5, r6, r5 // icount 1047
.rlabel_41:
j .rlabel_42 // icount 1048
sco r1, r1, r0 // icount 1049
sll r0, r3, r2 // icount 1050
slt r6, r4, r3 // icount 1051
seq r6, r6, r3 // icount 1052
add r0, r3, r2 // icount 1053
sub r7, r1, r3 // icount 1054
slt r3, r7, r6 // icount 1055
sra r3, r5, r6 // icount 1056
rol r4, r3, r6 // icount 1057
sle r0, r0, r1 // icount 1058
slt r3, r1, r1 // icount 1059
sra r4, r6, r6 // icount 1060
rol r5, r1, r0 // icount 1061
sle r2, r3, r4 // icount 1062
and r6, r2, r0 // icount 1063
or r7, r6, r1 // icount 1064
slt r7, r3, r1 // icount 1065
sle r7, r2, r6 // icount 1066
sll r2, r6, r5 // icount 1067
sra r2, r2, r5 // icount 1068
sco r4, r3, r3 // icount 1069
or r1, r4, r4 // icount 1070
and r1, r0, r2 // icount 1071
slt r2, r5, r2 // icount 1072
sub r1, r0, r2 // icount 1073
slt r0, r7, r2 // icount 1074
sle r3, r0, r4 // icount 1075
sco r2, r3, r0 // icount 1076
seq r2, r1, r5 // icount 1077
ror r1, r6, r0 // icount 1078
sco r6, r7, r4 // icount 1079
and r2, r1, r4 // icount 1080
sub r0, r0, r0 // icount 1081
sll r2, r0, r7 // icount 1082
and r3, r7, r6 // icount 1083
sco r5, r0, r0 // icount 1084
rol r5, r1, r1 // icount 1085
sll r6, r6, r4 // icount 1086
rol r7, r6, r4 // icount 1087
add r4, r5, r1 // icount 1088
slt r7, r4, r3 // icount 1089
.rlabel_42:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_43 // icount 1090
sra r1, r4, r0 // icount 1091
sll r5, r1, r7 // icount 1092
add r7, r5, r2 // icount 1093
add r2, r3, r7 // icount 1094
sub r3, r2, r1 // icount 1095
sra r6, r0, r4 // icount 1096
sll r5, r0, r1 // icount 1097
rol r3, r3, r6 // icount 1098
.rlabel_43:
bnez r1, .rlabel_44 // icount 1099
sle r5, r6, r0 // icount 1100
sra r7, r5, r4 // icount 1101
slt r4, r6, r5 // icount 1102
sub r0, r1, r7 // icount 1103
ror r0, r7, r4 // icount 1104
sll r3, r3, r1 // icount 1105
sle r0, r2, r4 // icount 1106
sra r1, r0, r5 // icount 1107
and r6, r0, r4 // icount 1108
rol r1, r1, r5 // icount 1109
sle r4, r4, r3 // icount 1110
slt r3, r5, r0 // icount 1111
sco r4, r0, r1 // icount 1112
and r7, r0, r0 // icount 1113
.rlabel_44:
ld r7, r6, 12
addi r6, r6, 12
jal .rlabel_45 // icount 1114
or r4, r7, r7 // icount 1115
ror r7, r5, r3 // icount 1116
sll r5, r3, r5 // icount 1117
and r1, r2, r0 // icount 1118
sll r5, r6, r3 // icount 1119
sub r0, r6, r4 // icount 1120
rol r7, r5, r7 // icount 1121
sco r7, r5, r6 // icount 1122
seq r7, r5, r3 // icount 1123
seq r4, r7, r7 // icount 1124
.rlabel_45:
st r7, r6, 0
addi r6, r6, 0
j .rlabel_46 // icount 1125
and r3, r3, r6 // icount 1126
sco r0, r4, r5 // icount 1127
seq r4, r7, r4 // icount 1128
sle r7, r0, r3 // icount 1129
add r3, r7, r2 // icount 1130
add r2, r0, r6 // icount 1131
add r1, r2, r1 // icount 1132
sll r5, r1, r0 // icount 1133
slt r5, r2, r1 // icount 1134
add r6, r0, r2 // icount 1135
sll r7, r1, r2 // icount 1136
sco r5, r7, r1 // icount 1137
seq r3, r7, r5 // icount 1138
sco r5, r0, r1 // icount 1139
sle r0, r0, r0 // icount 1140
and r0, r7, r5 // icount 1141
rol r3, r7, r3 // icount 1142
seq r4, r1, r5 // icount 1143
or r4, r0, r6 // icount 1144
sle r1, r3, r7 // icount 1145
sll r7, r5, r6 // icount 1146
sll r4, r6, r7 // icount 1147
sub r5, r2, r7 // icount 1148
sra r4, r1, r7 // icount 1149
rol r6, r4, r3 // icount 1150
sra r7, r3, r0 // icount 1151
add r2, r6, r0 // icount 1152
sub r4, r2, r3 // icount 1153
slt r6, r6, r1 // icount 1154
sub r5, r5, r7 // icount 1155
and r2, r4, r0 // icount 1156
and r4, r0, r2 // icount 1157
ror r4, r5, r4 // icount 1158
sco r5, r6, r0 // icount 1159
sle r3, r0, r6 // icount 1160
sub r0, r0, r7 // icount 1161
or r5, r1, r1 // icount 1162
seq r1, r6, r7 // icount 1163
sco r7, r7, r1 // icount 1164
ror r5, r4, r7 // icount 1165
seq r0, r3, r7 // icount 1166
.rlabel_46:
jal .rlabel_47 // icount 1167
seq r3, r2, r2 // icount 1168
and r2, r7, r4 // icount 1169
.rlabel_47:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_48 // icount 1170
or r0, r7, r7 // icount 1171
ror r4, r2, r1 // icount 1172
or r5, r7, r3 // icount 1173
sco r7, r7, r2 // icount 1174
add r0, r2, r7 // icount 1175
sle r5, r3, r3 // icount 1176
sra r2, r7, r1 // icount 1177
add r6, r7, r1 // icount 1178
sub r6, r4, r5 // icount 1179
and r7, r2, r0 // icount 1180
seq r1, r0, r0 // icount 1181
slt r3, r0, r2 // icount 1182
slt r2, r5, r4 // icount 1183
sll r3, r7, r7 // icount 1184
sll r4, r5, r0 // icount 1185
sco r5, r0, r3 // icount 1186
sll r6, r1, r6 // icount 1187
add r4, r7, r2 // icount 1188
ror r6, r4, r0 // icount 1189
slt r1, r4, r7 // icount 1190
slt r4, r3, r1 // icount 1191
rol r5, r3, r0 // icount 1192
and r6, r2, r0 // icount 1193
and r1, r0, r6 // icount 1194
.rlabel_48:
st r7, r6, 0
addi r6, r6, 0
jal .rlabel_49 // icount 1195
sle r3, r6, r2 // icount 1196
sco r0, r6, r2 // icount 1197
sub r4, r5, r4 // icount 1198
seq r2, r3, r7 // icount 1199
or r7, r5, r6 // icount 1200
seq r1, r3, r5 // icount 1201
sra r7, r7, r6 // icount 1202
sub r3, r6, r3 // icount 1203
sll r1, r2, r6 // icount 1204
sll r5, r2, r2 // icount 1205
sle r4, r5, r2 // icount 1206
add r3, r7, r1 // icount 1207
or r6, r1, r2 // icount 1208
sle r5, r4, r4 // icount 1209
sra r0, r5, r1 // icount 1210
rol r2, r0, r2 // icount 1211
slt r7, r5, r4 // icount 1212
sra r4, r3, r6 // icount 1213
rol r4, r6, r7 // icount 1214
sco r6, r2, r6 // icount 1215
and r1, r2, r6 // icount 1216
sco r5, r6, r5 // icount 1217
or r1, r2, r3 // icount 1218
seq r6, r7, r0 // icount 1219
.rlabel_49:
ld r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_50 // icount 1220
sle r5, r7, r5 // icount 1221
add r0, r5, r1 // icount 1222
rol r3, r3, r4 // icount 1223
add r6, r0, r0 // icount 1224
slt r7, r2, r7 // icount 1225
sub r1, r6, r3 // icount 1226
sra r4, r0, r3 // icount 1227
or r1, r1, r0 // icount 1228
ror r2, r4, r5 // icount 1229
slt r0, r7, r7 // icount 1230
sra r1, r3, r0 // icount 1231
or r2, r4, r4 // icount 1232
.rlabel_50:
bnez r1, .rlabel_51 // icount 1233
sco r2, r0, r7 // icount 1234
rol r6, r1, r4 // icount 1235
and r0, r0, r1 // icount 1236
sub r5, r6, r0 // icount 1237
seq r5, r1, r1 // icount 1238
sle r7, r5, r7 // icount 1239
rol r5, r6, r7 // icount 1240
and r6, r5, r1 // icount 1241
ror r6, r7, r1 // icount 1242
or r2, r3, r2 // icount 1243
rol r5, r2, r5 // icount 1244
sll r2, r1, r4 // icount 1245
or r3, r2, r5 // icount 1246
.rlabel_51:
j .rlabel_52 // icount 1247
sco r0, r1, r3 // icount 1248
seq r7, r4, r2 // icount 1249
slt r6, r2, r0 // icount 1250
add r4, r1, r6 // icount 1251
seq r0, r1, r5 // icount 1252
seq r6, r2, r7 // icount 1253
seq r1, r7, r0 // icount 1254
add r0, r2, r7 // icount 1255
sub r6, r7, r1 // icount 1256
rol r4, r5, r6 // icount 1257
sll r1, r2, r5 // icount 1258
add r6, r0, r6 // icount 1259
sra r4, r5, r3 // icount 1260
sra r6, r7, r3 // icount 1261
rol r4, r1, r0 // icount 1262
ror r3, r7, r2 // icount 1263
sra r1, r0, r0 // icount 1264
slt r0, r7, r1 // icount 1265
sra r3, r1, r2 // icount 1266
sll r3, r4, r1 // icount 1267
sle r2, r5, r3 // icount 1268
slt r1, r3, r1 // icount 1269
ror r6, r4, r5 // icount 1270
seq r0, r1, r2 // icount 1271
or r0, r0, r7 // icount 1272
add r0, r1, r2 // icount 1273
seq r4, r7, r7 // icount 1274
add r3, r4, r5 // icount 1275
sco r1, r6, r7 // icount 1276
sub r4, r2, r4 // icount 1277
add r0, r3, r6 // icount 1278
sub r7, r6, r7 // icount 1279
sll r1, r3, r6 // icount 1280
sll r4, r7, r2 // icount 1281
sll r2, r1, r0 // icount 1282
sll r7, r7, r4 // icount 1283
seq r6, r2, r2 // icount 1284
sle r0, r4, r5 // icount 1285
slt r6, r5, r0 // icount 1286
ror r6, r2, r3 // icount 1287
add r3, r1, r3 // icount 1288
sub r0, r4, r2 // icount 1289
seq r2, r0, r7 // icount 1290
sle r4, r1, r0 // icount 1291
seq r1, r3, r2 // icount 1292
rol r4, r7, r3 // icount 1293
sco r5, r7, r6 // icount 1294
add r3, r4, r5 // icount 1295
sco r1, r2, r4 // icount 1296
sco r6, r0, r7 // icount 1297
sll r6, r2, r6 // icount 1298
and r3, r5, r0 // icount 1299
seq r1, r0, r6 // icount 1300
sub r5, r5, r4 // icount 1301
ror r6, r1, r2 // icount 1302
sll r4, r6, r0 // icount 1303
rol r4, r5, r4 // icount 1304
sle r0, r7, r0 // icount 1305
sll r4, r5, r2 // icount 1306
sra r6, r3, r7 // icount 1307
and r0, r5, r1 // icount 1308
ror r5, r2, r3 // icount 1309
add r2, r2, r2 // icount 1310
ror r5, r7, r4 // icount 1311
slt r3, r7, r6 // icount 1312
rol r6, r5, r0 // icount 1313
.rlabel_52:
jal .rlabel_53 // icount 1314
sra r5, r0, r0 // icount 1315
seq r2, r2, r6 // icount 1316
add r4, r2, r2 // icount 1317
sra r3, r7, r5 // icount 1318
sll r1, r0, r3 // icount 1319
ror r1, r6, r7 // icount 1320
ror r4, r2, r4 // icount 1321
or r7, r4, r3 // icount 1322
sub r4, r1, r6 // icount 1323
sll r5, r6, r7 // icount 1324
sco r6, r0, r2 // icount 1325
slt r2, r3, r2 // icount 1326
sll r2, r2, r1 // icount 1327
sub r6, r3, r0 // icount 1328
ror r3, r0, r7 // icount 1329
rol r5, r0, r4 // icount 1330
sco r4, r0, r7 // icount 1331
or r3, r7, r5 // icount 1332
seq r5, r1, r1 // icount 1333
sra r5, r6, r7 // icount 1334
sub r6, r5, r7 // icount 1335
sra r7, r3, r3 // icount 1336
seq r1, r5, r0 // icount 1337
or r5, r3, r4 // icount 1338
sub r4, r0, r7 // icount 1339
.rlabel_53:
beqz r0, .rlabel_54 // icount 1340
sra r1, r7, r5 // icount 1341
add r4, r3, r5 // icount 1342
seq r3, r5, r4 // icount 1343
or r1, r2, r2 // icount 1344
slt r6, r5, r2 // icount 1345
sub r1, r0, r6 // icount 1346
slt r1, r2, r4 // icount 1347
slt r7, r2, r6 // icount 1348
sub r0, r2, r0 // icount 1349
.rlabel_54:
ld r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_55 // icount 1350
rol r0, r3, r4 // icount 1351
sco r6, r6, r5 // icount 1352
sco r3, r4, r5 // icount 1353
add r0, r7, r5 // icount 1354
sra r5, r6, r2 // icount 1355
sra r0, r5, r6 // icount 1356
sub r7, r4, r0 // icount 1357
or r6, r2, r2 // icount 1358
or r6, r2, r0 // icount 1359
sll r0, r3, r6 // icount 1360
rol r6, r5, r5 // icount 1361
sll r7, r5, r2 // icount 1362
.rlabel_55:
bnez r1, .rlabel_56 // icount 1363
rol r1, r7, r5 // icount 1364
.rlabel_56:
j .rlabel_57 // icount 1365
sle r1, r1, r7 // icount 1366
sra r5, r6, r5 // icount 1367
seq r0, r4, r5 // icount 1368
sco r1, r0, r3 // icount 1369
add r0, r5, r3 // icount 1370
seq r2, r6, r1 // icount 1371
sle r5, r1, r2 // icount 1372
add r1, r2, r6 // icount 1373
sra r5, r7, r7 // icount 1374
sco r4, r2, r6 // icount 1375
or r2, r2, r6 // icount 1376
seq r4, r6, r1 // icount 1377
sub r2, r3, r7 // icount 1378
seq r6, r5, r1 // icount 1379
rol r2, r0, r3 // icount 1380
sub r0, r7, r1 // icount 1381
sub r1, r4, r4 // icount 1382
add r3, r3, r2 // icount 1383
sco r1, r3, r5 // icount 1384
sco r0, r0, r0 // icount 1385
ror r1, r2, r1 // icount 1386
ror r3, r1, r5 // icount 1387
sll r7, r3, r6 // icount 1388
sle r5, r3, r2 // icount 1389
add r1, r7, r1 // icount 1390
sll r4, r2, r0 // icount 1391
sco r5, r6, r4 // icount 1392
sle r5, r1, r1 // icount 1393
seq r5, r3, r3 // icount 1394
seq r7, r7, r4 // icount 1395
slt r7, r5, r6 // icount 1396
rol r0, r2, r6 // icount 1397
.rlabel_57:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_58 // icount 1398
sub r0, r7, r2 // icount 1399
sle r1, r1, r3 // icount 1400
ror r3, r2, r1 // icount 1401
and r0, r3, r6 // icount 1402
add r2, r7, r2 // icount 1403
slt r5, r3, r5 // icount 1404
sll r0, r2, r3 // icount 1405
ror r1, r0, r2 // icount 1406
sub r6, r7, r7 // icount 1407
sll r2, r0, r3 // icount 1408
ror r5, r5, r7 // icount 1409
sub r7, r2, r6 // icount 1410
sle r3, r4, r0 // icount 1411
seq r0, r7, r3 // icount 1412
slt r4, r0, r6 // icount 1413
slt r2, r7, r0 // icount 1414
or r4, r7, r7 // icount 1415
rol r1, r3, r0 // icount 1416
seq r3, r5, r6 // icount 1417
add r6, r4, r0 // icount 1418
sub r5, r0, r0 // icount 1419
rol r2, r5, r2 // icount 1420
ror r5, r5, r3 // icount 1421
ror r2, r1, r7 // icount 1422
sle r5, r4, r1 // icount 1423
sco r1, r6, r7 // icount 1424
ror r6, r2, r3 // icount 1425
.rlabel_58:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_59 // icount 1426
and r2, r5, r5 // icount 1427
or r1, r5, r0 // icount 1428
sco r3, r6, r6 // icount 1429
rol r0, r1, r2 // icount 1430
sub r0, r4, r0 // icount 1431
rol r3, r2, r4 // icount 1432
and r7, r4, r2 // icount 1433
sra r3, r4, r0 // icount 1434
slt r2, r4, r7 // icount 1435
and r5, r3, r2 // icount 1436
ror r6, r5, r5 // icount 1437
slt r5, r0, r3 // icount 1438
sra r7, r5, r3 // icount 1439
or r7, r4, r5 // icount 1440
slt r5, r5, r5 // icount 1441
slt r6, r6, r5 // icount 1442
sco r2, r1, r5 // icount 1443
sco r6, r6, r2 // icount 1444
sll r5, r1, r1 // icount 1445
slt r0, r7, r0 // icount 1446
ror r0, r6, r3 // icount 1447
sle r2, r4, r5 // icount 1448
seq r3, r1, r3 // icount 1449
and r7, r4, r3 // icount 1450
or r5, r2, r1 // icount 1451
sco r0, r1, r2 // icount 1452
rol r0, r2, r6 // icount 1453
seq r7, r1, r6 // icount 1454
slt r4, r1, r0 // icount 1455
sll r1, r0, r1 // icount 1456
sll r0, r6, r7 // icount 1457
add r5, r6, r0 // icount 1458
seq r0, r7, r1 // icount 1459
ror r0, r5, r6 // icount 1460
sub r2, r3, r1 // icount 1461
seq r5, r0, r3 // icount 1462
sco r0, r3, r0 // icount 1463
rol r6, r7, r3 // icount 1464
ror r0, r5, r1 // icount 1465
slt r5, r7, r4 // icount 1466
sle r0, r3, r7 // icount 1467
add r1, r6, r4 // icount 1468
slt r1, r3, r0 // icount 1469
sra r5, r2, r2 // icount 1470
slt r1, r5, r5 // icount 1471
or r1, r5, r4 // icount 1472
sra r3, r4, r2 // icount 1473
and r2, r0, r0 // icount 1474
add r5, r4, r4 // icount 1475
seq r7, r5, r4 // icount 1476
sra r5, r6, r2 // icount 1477
and r6, r2, r4 // icount 1478
ror r0, r7, r6 // icount 1479
sra r3, r2, r5 // icount 1480
and r1, r6, r7 // icount 1481
rol r7, r1, r4 // icount 1482
slt r4, r0, r3 // icount 1483
rol r5, r4, r1 // icount 1484
or r5, r3, r4 // icount 1485
sll r3, r4, r1 // icount 1486
ror r7, r5, r1 // icount 1487
rol r0, r1, r3 // icount 1488
and r7, r5, r5 // icount 1489
add r0, r7, r2 // icount 1490
sub r7, r6, r7 // icount 1491
rol r2, r2, r4 // icount 1492
add r5, r2, r6 // icount 1493
sle r5, r5, r7 // icount 1494
.rlabel_59:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_60 // icount 1495
sub r0, r4, r6 // icount 1496
rol r5, r1, r5 // icount 1497
sub r7, r5, r5 // icount 1498
sll r1, r5, r5 // icount 1499
and r6, r3, r0 // icount 1500
sco r4, r1, r6 // icount 1501
add r3, r7, r0 // icount 1502
rol r2, r1, r3 // icount 1503
add r1, r5, r2 // icount 1504
sle r4, r3, r5 // icount 1505
sub r5, r0, r5 // icount 1506
ror r5, r3, r3 // icount 1507
and r5, r6, r7 // icount 1508
seq r4, r3, r0 // icount 1509
sll r1, r7, r1 // icount 1510
seq r7, r7, r5 // icount 1511
sra r0, r7, r4 // icount 1512
rol r4, r4, r1 // icount 1513
or r1, r0, r4 // icount 1514
rol r0, r7, r1 // icount 1515
sll r4, r0, r0 // icount 1516
slt r2, r0, r2 // icount 1517
or r7, r4, r6 // icount 1518
rol r2, r4, r3 // icount 1519
sub r6, r6, r2 // icount 1520
rol r3, r3, r6 // icount 1521
add r6, r2, r6 // icount 1522
sra r3, r6, r6 // icount 1523
and r6, r5, r0 // icount 1524
rol r5, r5, r7 // icount 1525
slt r3, r3, r0 // icount 1526
sle r5, r1, r3 // icount 1527
sub r0, r2, r1 // icount 1528
or r1, r3, r1 // icount 1529
ror r3, r2, r5 // icount 1530
or r5, r1, r7 // icount 1531
and r1, r7, r2 // icount 1532
sra r4, r7, r0 // icount 1533
add r3, r4, r4 // icount 1534
seq r1, r2, r7 // icount 1535
slt r2, r5, r3 // icount 1536
and r1, r5, r1 // icount 1537
or r3, r7, r4 // icount 1538
sll r2, r6, r6 // icount 1539
sco r4, r2, r4 // icount 1540
sra r0, r7, r3 // icount 1541
sle r5, r2, r4 // icount 1542
rol r3, r3, r5 // icount 1543
sll r0, r7, r2 // icount 1544
and r2, r0, r2 // icount 1545
add r5, r7, r0 // icount 1546
ror r4, r1, r7 // icount 1547
rol r6, r4, r0 // icount 1548
sle r5, r4, r6 // icount 1549
slt r1, r6, r7 // icount 1550
sll r6, r6, r2 // icount 1551
ror r6, r2, r1 // icount 1552
slt r2, r6, r1 // icount 1553
and r3, r7, r5 // icount 1554
or r1, r0, r7 // icount 1555
add r0, r6, r1 // icount 1556
seq r1, r0, r4 // icount 1557
sco r5, r1, r3 // icount 1558
sub r2, r0, r1 // icount 1559
seq r1, r7, r6 // icount 1560
sub r4, r0, r6 // icount 1561
or r2, r1, r0 // icount 1562
sle r5, r5, r2 // icount 1563
sra r1, r1, r2 // icount 1564
and r4, r5, r6 // icount 1565
sub r6, r6, r5 // icount 1566
or r1, r7, r6 // icount 1567
or r7, r1, r7 // icount 1568
seq r0, r0, r4 // icount 1569
ror r0, r3, r2 // icount 1570
rol r0, r1, r6 // icount 1571
sra r7, r6, r0 // icount 1572
add r2, r5, r6 // icount 1573
sle r7, r5, r6 // icount 1574
seq r2, r4, r5 // icount 1575
ror r3, r6, r3 // icount 1576
seq r2, r3, r5 // icount 1577
sub r2, r7, r3 // icount 1578
or r4, r0, r1 // icount 1579
sle r6, r5, r3 // icount 1580
slt r3, r3, r5 // icount 1581
slt r7, r6, r3 // icount 1582
seq r2, r2, r6 // icount 1583
sll r7, r4, r2 // icount 1584
add r7, r3, r6 // icount 1585
sco r6, r3, r6 // icount 1586
rol r4, r4, r4 // icount 1587
sub r6, r1, r1 // icount 1588
sle r0, r1, r2 // icount 1589
sco r2, r6, r5 // icount 1590
ror r1, r6, r0 // icount 1591
sle r1, r0, r4 // icount 1592
add r5, r6, r3 // icount 1593
seq r7, r3, r0 // icount 1594
sll r0, r1, r7 // icount 1595
seq r1, r7, r4 // icount 1596
and r0, r3, r1 // icount 1597
ror r6, r4, r6 // icount 1598
sle r5, r6, r4 // icount 1599
.rlabel_60:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_61 // icount 1600
or r4, r1, r2 // icount 1601
ror r1, r0, r7 // icount 1602
slt r7, r4, r5 // icount 1603
sle r2, r2, r6 // icount 1604
sub r3, r0, r4 // icount 1605
.rlabel_61:
j .rlabel_62 // icount 1606
ror r4, r5, r4 // icount 1607
and r6, r6, r7 // icount 1608
ror r0, r4, r1 // icount 1609
rol r2, r7, r4 // icount 1610
ror r0, r3, r5 // icount 1611
add r6, r4, r3 // icount 1612
seq r7, r1, r7 // icount 1613
ror r6, r4, r6 // icount 1614
or r6, r6, r6 // icount 1615
add r0, r1, r0 // icount 1616
seq r6, r1, r0 // icount 1617
sll r5, r0, r4 // icount 1618
ror r3, r0, r2 // icount 1619
ror r7, r7, r2 // icount 1620
sco r3, r4, r5 // icount 1621
ror r5, r5, r4 // icount 1622
seq r1, r3, r1 // icount 1623
or r3, r7, r3 // icount 1624
rol r7, r4, r3 // icount 1625
seq r6, r5, r3 // icount 1626
ror r4, r6, r4 // icount 1627
.rlabel_62:
ld r7, r6, 8
addi r6, r6, 8
beqz r0, .rlabel_63 // icount 1628
rol r4, r3, r7 // icount 1629
sra r7, r7, r2 // icount 1630
sra r2, r2, r3 // icount 1631
.rlabel_63:
j .rlabel_64 // icount 1632
rol r7, r4, r4 // icount 1633
seq r2, r6, r2 // icount 1634
ror r1, r7, r2 // icount 1635
.rlabel_64:
st r7, r6, 12
addi r6, r6, 12
jal .rlabel_65 // icount 1636
seq r2, r4, r1 // icount 1637
and r3, r2, r3 // icount 1638
sll r6, r5, r5 // icount 1639
sle r2, r2, r3 // icount 1640
sle r4, r3, r7 // icount 1641
.rlabel_65:
ld r7, r6, 8
addi r6, r6, 8
j .rlabel_66 // icount 1642
ror r6, r7, r7 // icount 1643
and r2, r0, r4 // icount 1644
and r6, r5, r3 // icount 1645
seq r1, r5, r1 // icount 1646
seq r3, r3, r7 // icount 1647
sub r3, r2, r7 // icount 1648
seq r2, r2, r5 // icount 1649
sle r1, r3, r0 // icount 1650
ror r5, r1, r0 // icount 1651
sle r3, r5, r5 // icount 1652
slt r2, r0, r1 // icount 1653
sll r7, r5, r7 // icount 1654
or r2, r5, r7 // icount 1655
ror r4, r0, r1 // icount 1656
sub r5, r1, r7 // icount 1657
rol r2, r7, r0 // icount 1658
slt r0, r4, r7 // icount 1659
and r4, r3, r6 // icount 1660
and r1, r4, r2 // icount 1661
sub r2, r0, r2 // icount 1662
sco r5, r5, r7 // icount 1663
seq r7, r4, r3 // icount 1664
seq r0, r2, r4 // icount 1665
sle r3, r6, r2 // icount 1666
sle r3, r2, r3 // icount 1667
sra r5, r0, r0 // icount 1668
add r4, r3, r1 // icount 1669
slt r6, r1, r1 // icount 1670
rol r6, r1, r6 // icount 1671
ror r0, r3, r3 // icount 1672
ror r6, r7, r6 // icount 1673
add r4, r5, r0 // icount 1674
sle r7, r4, r5 // icount 1675
or r4, r4, r4 // icount 1676
slt r2, r1, r3 // icount 1677
sco r6, r7, r2 // icount 1678
seq r5, r1, r5 // icount 1679
seq r0, r0, r7 // icount 1680
and r7, r3, r2 // icount 1681
add r4, r2, r5 // icount 1682
sll r6, r3, r0 // icount 1683
sub r5, r1, r2 // icount 1684
sle r7, r1, r1 // icount 1685
add r2, r7, r3 // icount 1686
or r5, r4, r3 // icount 1687
or r2, r6, r0 // icount 1688
sra r3, r1, r6 // icount 1689
rol r5, r1, r4 // icount 1690
slt r4, r5, r3 // icount 1691
or r7, r5, r2 // icount 1692
slt r5, r5, r0 // icount 1693
sco r6, r7, r1 // icount 1694
rol r5, r2, r2 // icount 1695
or r4, r7, r2 // icount 1696
ror r3, r2, r4 // icount 1697
sub r5, r0, r4 // icount 1698
seq r1, r6, r3 // icount 1699
seq r4, r4, r3 // icount 1700
sco r7, r2, r1 // icount 1701
sub r6, r4, r0 // icount 1702
add r3, r5, r5 // icount 1703
sll r6, r5, r5 // icount 1704
sle r7, r7, r2 // icount 1705
sle r6, r0, r1 // icount 1706
and r3, r7, r2 // icount 1707
sub r4, r2, r7 // icount 1708
ror r4, r3, r4 // icount 1709
sco r3, r2, r1 // icount 1710
slt r1, r3, r3 // icount 1711
seq r2, r3, r2 // icount 1712
add r0, r4, r5 // icount 1713
sub r6, r4, r5 // icount 1714
sra r6, r6, r2 // icount 1715
and r1, r7, r7 // icount 1716
.rlabel_66:
beqz r0, .rlabel_67 // icount 1717
or r7, r4, r3 // icount 1718
and r0, r5, r0 // icount 1719
slt r1, r4, r5 // icount 1720
add r2, r4, r6 // icount 1721
and r0, r6, r0 // icount 1722
sra r6, r7, r4 // icount 1723
slt r7, r2, r2 // icount 1724
sra r7, r5, r2 // icount 1725
sco r0, r4, r4 // icount 1726
.rlabel_67:
ld r7, r6, 14
addi r6, r6, 14
bnez r1, .rlabel_68 // icount 1727
rol r1, r5, r5 // icount 1728
sco r4, r1, r3 // icount 1729
sle r7, r1, r7 // icount 1730
seq r2, r2, r1 // icount 1731
and r2, r3, r5 // icount 1732
ror r3, r0, r1 // icount 1733
.rlabel_68:
beqz r0, .rlabel_69 // icount 1734
or r2, r1, r0 // icount 1735
sco r6, r1, r1 // icount 1736
ror r4, r6, r5 // icount 1737
and r1, r7, r2 // icount 1738
sll r0, r0, r6 // icount 1739
sub r7, r7, r1 // icount 1740
or r1, r6, r2 // icount 1741
ror r3, r1, r0 // icount 1742
rol r4, r4, r1 // icount 1743
sll r3, r4, r7 // icount 1744
sle r4, r6, r0 // icount 1745
sco r1, r4, r6 // icount 1746
ror r1, r3, r5 // icount 1747
or r5, r5, r3 // icount 1748
.rlabel_69:
bnez r1, .rlabel_70 // icount 1749
or r6, r7, r3 // icount 1750
sco r0, r7, r4 // icount 1751
or r6, r6, r7 // icount 1752
add r4, r5, r1 // icount 1753
sll r0, r7, r4 // icount 1754
add r1, r0, r2 // icount 1755
add r6, r2, r5 // icount 1756
sle r3, r1, r1 // icount 1757
add r7, r6, r1 // icount 1758
seq r0, r6, r0 // icount 1759
.rlabel_70:
jal .rlabel_71 // icount 1760
ror r3, r7, r3 // icount 1761
or r0, r0, r1 // icount 1762
sle r1, r6, r0 // icount 1763
ror r6, r3, r7 // icount 1764
ror r2, r4, r6 // icount 1765
or r1, r7, r6 // icount 1766
sll r3, r6, r3 // icount 1767
slt r5, r0, r6 // icount 1768
rol r2, r0, r0 // icount 1769
sub r0, r3, r4 // icount 1770
seq r4, r4, r3 // icount 1771
sll r0, r0, r7 // icount 1772
add r7, r4, r0 // icount 1773
seq r7, r7, r3 // icount 1774
sra r2, r3, r6 // icount 1775
slt r6, r3, r3 // icount 1776
sra r5, r0, r1 // icount 1777
add r0, r3, r0 // icount 1778
slt r3, r7, r0 // icount 1779
sub r4, r1, r1 // icount 1780
add r3, r4, r4 // icount 1781
and r1, r4, r1 // icount 1782
sll r5, r2, r2 // icount 1783
sub r0, r0, r1 // icount 1784
add r6, r4, r6 // icount 1785
.rlabel_71:
jal .rlabel_72 // icount 1786
slt r6, r5, r3 // icount 1787
slt r4, r2, r3 // icount 1788
ror r6, r0, r5 // icount 1789
ror r4, r5, r1 // icount 1790
and r7, r2, r0 // icount 1791
sra r5, r4, r7 // icount 1792
and r7, r0, r2 // icount 1793
add r4, r0, r7 // icount 1794
or r0, r7, r6 // icount 1795
rol r1, r7, r1 // icount 1796
sle r5, r6, r5 // icount 1797
add r6, r0, r2 // icount 1798
.rlabel_72:
ld r7, r6, 4
addi r6, r6, 4
jal .rlabel_73 // icount 1799
seq r2, r0, r7 // icount 1800
sra r6, r1, r6 // icount 1801
sco r3, r3, r2 // icount 1802
sco r6, r5, r6 // icount 1803
and r3, r2, r0 // icount 1804
seq r6, r3, r4 // icount 1805
slt r2, r4, r4 // icount 1806
and r6, r7, r3 // icount 1807
or r2, r0, r0 // icount 1808
ror r5, r5, r1 // icount 1809
sle r7, r7, r4 // icount 1810
ror r2, r6, r6 // icount 1811
ror r4, r5, r7 // icount 1812
slt r1, r6, r7 // icount 1813
ror r7, r1, r4 // icount 1814
sra r0, r0, r4 // icount 1815
seq r5, r1, r5 // icount 1816
sll r3, r7, r0 // icount 1817
slt r3, r5, r7 // icount 1818
slt r2, r6, r3 // icount 1819
slt r5, r6, r1 // icount 1820
ror r6, r6, r2 // icount 1821
.rlabel_73:
ld r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_74 // icount 1822
sll r3, r0, r0 // icount 1823
slt r6, r5, r0 // icount 1824
sra r3, r7, r7 // icount 1825
sle r1, r7, r6 // icount 1826
.rlabel_74:
j .rlabel_75 // icount 1827
sll r7, r1, r7 // icount 1828
sco r4, r4, r2 // icount 1829
add r5, r0, r0 // icount 1830
and r4, r1, r0 // icount 1831
ror r4, r3, r1 // icount 1832
slt r6, r2, r5 // icount 1833
sle r5, r4, r5 // icount 1834
slt r0, r2, r3 // icount 1835
sle r1, r2, r5 // icount 1836
or r1, r2, r7 // icount 1837
or r1, r1, r2 // icount 1838
rol r0, r7, r6 // icount 1839
rol r1, r4, r5 // icount 1840
seq r1, r6, r7 // icount 1841
slt r3, r4, r4 // icount 1842
add r2, r3, r1 // icount 1843
ror r3, r2, r1 // icount 1844
slt r4, r1, r7 // icount 1845
or r7, r0, r1 // icount 1846
sle r0, r3, r2 // icount 1847
or r0, r3, r5 // icount 1848
slt r7, r4, r5 // icount 1849
sco r4, r4, r3 // icount 1850
slt r1, r2, r7 // icount 1851
sub r6, r4, r4 // icount 1852
rol r1, r6, r4 // icount 1853
seq r5, r7, r5 // icount 1854
add r6, r0, r1 // icount 1855
sra r7, r5, r0 // icount 1856
seq r5, r5, r2 // icount 1857
and r0, r0, r7 // icount 1858
sll r3, r5, r3 // icount 1859
rol r1, r3, r7 // icount 1860
add r2, r0, r1 // icount 1861
rol r3, r2, r2 // icount 1862
sco r1, r5, r4 // icount 1863
ror r4, r0, r7 // icount 1864
ror r7, r7, r5 // icount 1865
sll r1, r1, r0 // icount 1866
and r7, r4, r7 // icount 1867
slt r3, r0, r4 // icount 1868
sra r7, r2, r1 // icount 1869
sra r0, r5, r5 // icount 1870
slt r0, r7, r3 // icount 1871
or r1, r0, r7 // icount 1872
sra r7, r1, r4 // icount 1873
slt r1, r1, r2 // icount 1874
add r1, r5, r2 // icount 1875
or r6, r1, r7 // icount 1876
add r2, r4, r5 // icount 1877
rol r7, r4, r2 // icount 1878
sco r4, r2, r7 // icount 1879
sll r7, r6, r5 // icount 1880
add r5, r7, r5 // icount 1881
and r6, r3, r6 // icount 1882
rol r5, r6, r5 // icount 1883
sco r4, r5, r5 // icount 1884
and r7, r6, r4 // icount 1885
sub r6, r5, r4 // icount 1886
sco r2, r5, r5 // icount 1887
sle r7, r1, r0 // icount 1888
sco r4, r1, r0 // icount 1889
slt r4, r2, r2 // icount 1890
sll r7, r2, r2 // icount 1891
sub r4, r5, r3 // icount 1892
sle r0, r2, r7 // icount 1893
sra r7, r1, r1 // icount 1894
or r7, r1, r3 // icount 1895
and r2, r7, r0 // icount 1896
sra r6, r5, r6 // icount 1897
add r7, r4, r7 // icount 1898
ror r3, r6, r6 // icount 1899
sll r2, r4, r2 // icount 1900
add r1, r2, r3 // icount 1901
slt r6, r1, r3 // icount 1902
slt r6, r3, r3 // icount 1903
sll r3, r4, r5 // icount 1904
ror r6, r4, r4 // icount 1905
sco r5, r6, r6 // icount 1906
slt r7, r7, r4 // icount 1907
ror r6, r7, r4 // icount 1908
add r7, r5, r6 // icount 1909
ror r2, r3, r0 // icount 1910
and r7, r3, r3 // icount 1911
ror r2, r3, r4 // icount 1912
ror r3, r5, r3 // icount 1913
.rlabel_75:
j .rlabel_76 // icount 1914
add r1, r6, r1 // icount 1915
sco r4, r2, r3 // icount 1916
sra r5, r4, r4 // icount 1917
sub r5, r5, r5 // icount 1918
sco r7, r5, r1 // icount 1919
ror r3, r0, r1 // icount 1920
sle r5, r4, r5 // icount 1921
sle r4, r3, r2 // icount 1922
and r6, r7, r1 // icount 1923
add r5, r1, r5 // icount 1924
or r2, r6, r1 // icount 1925
sle r2, r5, r0 // icount 1926
rol r7, r0, r1 // icount 1927
sco r1, r4, r7 // icount 1928
or r1, r7, r0 // icount 1929
sub r5, r2, r1 // icount 1930
slt r7, r6, r3 // icount 1931
add r0, r0, r1 // icount 1932
or r1, r0, r5 // icount 1933
sle r1, r6, r0 // icount 1934
rol r4, r7, r1 // icount 1935
sll r5, r2, r7 // icount 1936
and r4, r6, r0 // icount 1937
or r1, r1, r5 // icount 1938
slt r7, r6, r4 // icount 1939
sub r3, r7, r7 // icount 1940
add r1, r3, r0 // icount 1941
slt r4, r2, r3 // icount 1942
slt r4, r7, r0 // icount 1943
ror r5, r5, r2 // icount 1944
and r0, r2, r5 // icount 1945
or r0, r4, r2 // icount 1946
sub r1, r3, r6 // icount 1947
sco r3, r4, r3 // icount 1948
sco r1, r1, r6 // icount 1949
slt r5, r1, r3 // icount 1950
seq r4, r0, r1 // icount 1951
add r4, r5, r0 // icount 1952
sle r6, r6, r0 // icount 1953
add r5, r3, r6 // icount 1954
sub r7, r0, r0 // icount 1955
sll r0, r2, r1 // icount 1956
sle r7, r2, r2 // icount 1957
sra r5, r7, r7 // icount 1958
seq r5, r7, r5 // icount 1959
sle r6, r0, r5 // icount 1960
sra r2, r0, r3 // icount 1961
sub r2, r6, r7 // icount 1962
sle r1, r2, r3 // icount 1963
sle r0, r5, r4 // icount 1964
ror r4, r2, r7 // icount 1965
ror r3, r6, r5 // icount 1966
sle r0, r1, r3 // icount 1967
rol r5, r5, r6 // icount 1968
seq r5, r4, r1 // icount 1969
slt r5, r7, r0 // icount 1970
sll r3, r2, r6 // icount 1971
and r7, r3, r5 // icount 1972
seq r7, r7, r4 // icount 1973
ror r3, r0, r2 // icount 1974
ror r0, r6, r7 // icount 1975
and r2, r7, r2 // icount 1976
rol r0, r0, r4 // icount 1977
sub r2, r1, r3 // icount 1978
sra r6, r2, r5 // icount 1979
seq r7, r4, r3 // icount 1980
seq r1, r2, r6 // icount 1981
sco r1, r0, r2 // icount 1982
seq r4, r1, r5 // icount 1983
ror r4, r6, r4 // icount 1984
rol r6, r0, r3 // icount 1985
sra r1, r0, r4 // icount 1986
sub r0, r2, r7 // icount 1987
add r5, r7, r3 // icount 1988
sle r7, r6, r2 // icount 1989
sco r5, r3, r6 // icount 1990
or r3, r4, r3 // icount 1991
sra r0, r7, r3 // icount 1992
sle r4, r1, r6 // icount 1993
and r4, r2, r5 // icount 1994
sco r4, r5, r1 // icount 1995
or r4, r1, r0 // icount 1996
add r5, r2, r1 // icount 1997
ror r0, r1, r3 // icount 1998
sub r5, r3, r2 // icount 1999
ror r5, r1, r0 // icount 2000
sub r3, r3, r6 // icount 2001
or r1, r3, r5 // icount 2002
sub r1, r2, r5 // icount 2003
or r0, r7, r7 // icount 2004
sco r3, r1, r3 // icount 2005
ror r4, r2, r5 // icount 2006
sle r1, r6, r2 // icount 2007
.rlabel_76:
beqz r0, .rlabel_77 // icount 2008
seq r5, r7, r7 // icount 2009
.rlabel_77:
st r7, r6, 12
addi r6, r6, 12
jal .rlabel_78 // icount 2010
sll r3, r1, r0 // icount 2011
sra r6, r2, r0 // icount 2012
sco r7, r3, r7 // icount 2013
sra r1, r7, r0 // icount 2014
ror r4, r5, r7 // icount 2015
seq r5, r5, r6 // icount 2016
sco r0, r1, r3 // icount 2017
.rlabel_78:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_79 // icount 2018
rol r7, r7, r3 // icount 2019
sub r4, r6, r7 // icount 2020
ror r0, r7, r6 // icount 2021
sll r7, r0, r1 // icount 2022
sra r2, r7, r1 // icount 2023
seq r1, r6, r5 // icount 2024
add r7, r1, r6 // icount 2025
ror r6, r7, r1 // icount 2026
rol r0, r2, r3 // icount 2027
sco r4, r4, r3 // icount 2028
seq r4, r6, r4 // icount 2029
rol r7, r7, r2 // icount 2030
add r1, r7, r3 // icount 2031
add r2, r0, r7 // icount 2032
sle r2, r4, r2 // icount 2033
seq r1, r6, r1 // icount 2034
sra r5, r6, r4 // icount 2035
sll r0, r3, r6 // icount 2036
sll r4, r4, r6 // icount 2037
sra r1, r2, r3 // icount 2038
sll r3, r3, r5 // icount 2039
sll r3, r2, r2 // icount 2040
and r7, r3, r3 // icount 2041
sle r1, r5, r4 // icount 2042
sll r2, r0, r5 // icount 2043
sle r7, r0, r5 // icount 2044
or r2, r2, r7 // icount 2045
sra r2, r1, r7 // icount 2046
sra r4, r4, r4 // icount 2047
seq r3, r7, r0 // icount 2048
sco r6, r6, r3 // icount 2049
and r2, r2, r6 // icount 2050
rol r0, r7, r4 // icount 2051
or r6, r6, r3 // icount 2052
sra r4, r4, r1 // icount 2053
sll r0, r3, r1 // icount 2054
ror r1, r2, r7 // icount 2055
or r7, r1, r6 // icount 2056
slt r2, r1, r0 // icount 2057
ror r5, r5, r3 // icount 2058
add r0, r1, r6 // icount 2059
sll r0, r3, r5 // icount 2060
sra r7, r6, r1 // icount 2061
slt r4, r3, r3 // icount 2062
and r0, r7, r1 // icount 2063
sll r0, r7, r6 // icount 2064
sle r1, r7, r6 // icount 2065
sco r2, r4, r7 // icount 2066
rol r3, r6, r6 // icount 2067
sco r2, r7, r0 // icount 2068
ror r0, r5, r6 // icount 2069
sle r4, r1, r1 // icount 2070
sub r6, r0, r2 // icount 2071
sll r6, r3, r3 // icount 2072
add r7, r4, r4 // icount 2073
add r1, r2, r5 // icount 2074
slt r7, r2, r6 // icount 2075
add r2, r1, r1 // icount 2076
sra r1, r7, r5 // icount 2077
add r6, r5, r7 // icount 2078
and r1, r3, r6 // icount 2079
add r2, r6, r4 // icount 2080
and r3, r6, r0 // icount 2081
sco r3, r7, r4 // icount 2082
ror r6, r1, r6 // icount 2083
sco r3, r0, r5 // icount 2084
slt r1, r6, r7 // icount 2085
slt r1, r1, r7 // icount 2086
sll r0, r2, r1 // icount 2087
seq r5, r1, r5 // icount 2088
seq r7, r1, r3 // icount 2089
sll r6, r6, r2 // icount 2090
add r1, r6, r0 // icount 2091
.rlabel_79:
st r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_80 // icount 2092
.rlabel_80:
beqz r0, .rlabel_81 // icount 2093
.rlabel_81:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_82 // icount 2094
seq r3, r0, r7 // icount 2095
sra r4, r5, r3 // icount 2096
sll r4, r0, r5 // icount 2097
add r7, r6, r2 // icount 2098
add r5, r0, r1 // icount 2099
sll r0, r1, r5 // icount 2100
sub r3, r5, r6 // icount 2101
rol r0, r4, r7 // icount 2102
sub r5, r4, r1 // icount 2103
add r7, r2, r4 // icount 2104
sra r5, r1, r2 // icount 2105
rol r7, r5, r1 // icount 2106
or r0, r2, r3 // icount 2107
and r7, r0, r1 // icount 2108
sub r4, r5, r5 // icount 2109
sle r0, r4, r4 // icount 2110
slt r2, r2, r4 // icount 2111
and r1, r3, r7 // icount 2112
sra r1, r7, r2 // icount 2113
seq r0, r1, r6 // icount 2114
sra r4, r1, r6 // icount 2115
add r5, r5, r0 // icount 2116
slt r3, r5, r3 // icount 2117
sle r7, r6, r0 // icount 2118
or r3, r5, r4 // icount 2119
sub r1, r6, r7 // icount 2120
seq r2, r2, r7 // icount 2121
sll r6, r6, r7 // icount 2122
slt r2, r3, r6 // icount 2123
sle r6, r3, r2 // icount 2124
rol r4, r3, r0 // icount 2125
ror r2, r0, r1 // icount 2126
sco r2, r5, r3 // icount 2127
rol r6, r7, r3 // icount 2128
seq r5, r4, r1 // icount 2129
sub r3, r4, r7 // icount 2130
add r0, r6, r3 // icount 2131
and r4, r7, r7 // icount 2132
and r6, r2, r5 // icount 2133
rol r2, r0, r0 // icount 2134
sub r7, r4, r2 // icount 2135
sco r1, r2, r5 // icount 2136
sll r1, r1, r2 // icount 2137
sco r1, r7, r7 // icount 2138
and r3, r5, r2 // icount 2139
sub r1, r1, r6 // icount 2140
sco r1, r2, r7 // icount 2141
rol r1, r0, r1 // icount 2142
slt r3, r6, r6 // icount 2143
sle r6, r6, r0 // icount 2144
ror r2, r7, r1 // icount 2145
sle r6, r0, r7 // icount 2146
seq r3, r1, r1 // icount 2147
sco r3, r3, r2 // icount 2148
sle r6, r6, r0 // icount 2149
sle r6, r0, r2 // icount 2150
and r6, r5, r3 // icount 2151
sub r3, r0, r7 // icount 2152
and r4, r0, r0 // icount 2153
sco r0, r0, r5 // icount 2154
sll r0, r1, r7 // icount 2155
or r7, r7, r0 // icount 2156
add r6, r1, r1 // icount 2157
sle r2, r6, r1 // icount 2158
sll r0, r0, r2 // icount 2159
seq r7, r6, r1 // icount 2160
or r7, r2, r4 // icount 2161
sll r7, r3, r7 // icount 2162
add r4, r3, r4 // icount 2163
sle r5, r2, r7 // icount 2164
rol r0, r1, r6 // icount 2165
add r1, r5, r1 // icount 2166
sll r5, r4, r3 // icount 2167
sco r1, r6, r6 // icount 2168
rol r2, r5, r3 // icount 2169
rol r5, r6, r2 // icount 2170
or r7, r4, r0 // icount 2171
or r4, r6, r6 // icount 2172
sra r5, r7, r2 // icount 2173
sra r2, r2, r4 // icount 2174
add r2, r7, r7 // icount 2175
sco r1, r5, r7 // icount 2176
sle r3, r3, r6 // icount 2177
slt r3, r4, r5 // icount 2178
sle r5, r7, r2 // icount 2179
sll r7, r2, r4 // icount 2180
seq r0, r6, r5 // icount 2181
rol r6, r2, r0 // icount 2182
seq r4, r4, r6 // icount 2183
sub r5, r3, r3 // icount 2184
seq r5, r5, r4 // icount 2185
sub r2, r6, r6 // icount 2186
add r5, r6, r1 // icount 2187
sco r6, r0, r1 // icount 2188
sco r6, r7, r3 // icount 2189
add r7, r5, r0 // icount 2190
sle r1, r7, r0 // icount 2191
sco r4, r2, r1 // icount 2192
sll r3, r4, r4 // icount 2193
sle r4, r6, r6 // icount 2194
seq r3, r7, r3 // icount 2195
sll r4, r1, r4 // icount 2196
sco r2, r5, r1 // icount 2197
and r3, r0, r3 // icount 2198
sco r5, r4, r2 // icount 2199
or r3, r4, r4 // icount 2200
sll r5, r6, r0 // icount 2201
add r4, r3, r2 // icount 2202
or r4, r3, r5 // icount 2203
sll r2, r4, r2 // icount 2204
rol r3, r0, r5 // icount 2205
and r0, r3, r7 // icount 2206
sra r7, r5, r1 // icount 2207
and r0, r7, r2 // icount 2208
slt r0, r1, r5 // icount 2209
rol r6, r7, r0 // icount 2210
.rlabel_82:
st r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_83 // icount 2211
sll r1, r3, r6 // icount 2212
sub r1, r5, r2 // icount 2213
ror r6, r6, r5 // icount 2214
sll r3, r0, r3 // icount 2215
add r4, r2, r0 // icount 2216
slt r4, r7, r4 // icount 2217
seq r7, r7, r2 // icount 2218
or r4, r7, r7 // icount 2219
and r4, r5, r0 // icount 2220
slt r3, r4, r5 // icount 2221
sub r6, r1, r5 // icount 2222
.rlabel_83:
beqz r0, .rlabel_84 // icount 2223
seq r5, r7, r1 // icount 2224
ror r6, r2, r4 // icount 2225
or r6, r7, r4 // icount 2226
slt r3, r2, r5 // icount 2227
sco r3, r3, r5 // icount 2228
and r1, r5, r2 // icount 2229
or r5, r6, r2 // icount 2230
rol r5, r4, r6 // icount 2231
sub r6, r1, r4 // icount 2232
rol r7, r3, r4 // icount 2233
seq r1, r0, r2 // icount 2234
.rlabel_84:
jal .rlabel_85 // icount 2235
sll r2, r3, r3 // icount 2236
sco r1, r0, r6 // icount 2237
sle r1, r1, r0 // icount 2238
add r1, r6, r6 // icount 2239
add r3, r5, r2 // icount 2240
sll r3, r5, r2 // icount 2241
sra r6, r1, r5 // icount 2242
sub r3, r7, r2 // icount 2243
add r1, r0, r0 // icount 2244
rol r3, r6, r6 // icount 2245
sco r6, r6, r7 // icount 2246
ror r5, r3, r6 // icount 2247
seq r1, r6, r2 // icount 2248
and r4, r5, r7 // icount 2249
sll r4, r4, r3 // icount 2250
and r5, r6, r2 // icount 2251
sra r1, r7, r4 // icount 2252
sll r5, r7, r4 // icount 2253
or r4, r3, r2 // icount 2254
or r1, r5, r6 // icount 2255
or r0, r7, r1 // icount 2256
ror r2, r2, r7 // icount 2257
sub r3, r7, r5 // icount 2258
ror r6, r3, r7 // icount 2259
seq r3, r6, r2 // icount 2260
sle r4, r2, r2 // icount 2261
seq r7, r2, r4 // icount 2262
.rlabel_85:
beqz r0, .rlabel_86 // icount 2263
sll r2, r1, r7 // icount 2264
seq r6, r3, r2 // icount 2265
sra r4, r3, r2 // icount 2266
sll r5, r2, r3 // icount 2267
sub r5, r3, r1 // icount 2268
and r4, r2, r7 // icount 2269
seq r4, r7, r7 // icount 2270
.rlabel_86:
bnez r1, .rlabel_87 // icount 2271
ror r1, r6, r5 // icount 2272
.rlabel_87:
beqz r0, .rlabel_88 // icount 2273
sco r4, r6, r7 // icount 2274
sra r5, r3, r1 // icount 2275
slt r4, r5, r7 // icount 2276
or r7, r0, r4 // icount 2277
or r7, r5, r1 // icount 2278
or r6, r4, r7 // icount 2279
slt r6, r6, r5 // icount 2280
.rlabel_88:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_89 // icount 2281
sll r7, r5, r3 // icount 2282
sco r1, r4, r5 // icount 2283
slt r2, r3, r7 // icount 2284
sle r5, r2, r2 // icount 2285
and r7, r6, r6 // icount 2286
seq r6, r4, r4 // icount 2287
seq r5, r4, r4 // icount 2288
ror r3, r0, r2 // icount 2289
and r6, r4, r6 // icount 2290
sub r2, r7, r3 // icount 2291
sll r7, r4, r3 // icount 2292
sco r4, r6, r2 // icount 2293
sll r3, r4, r0 // icount 2294
ror r0, r1, r3 // icount 2295
slt r6, r7, r0 // icount 2296
or r1, r0, r3 // icount 2297
sll r3, r2, r5 // icount 2298
sll r2, r2, r3 // icount 2299
sll r6, r2, r4 // icount 2300
sll r3, r5, r5 // icount 2301
sub r1, r3, r4 // icount 2302
ror r4, r0, r0 // icount 2303
ror r2, r2, r4 // icount 2304
sub r6, r5, r4 // icount 2305
rol r2, r0, r7 // icount 2306
add r7, r0, r1 // icount 2307
sco r2, r7, r7 // icount 2308
seq r2, r6, r6 // icount 2309
or r7, r7, r3 // icount 2310
sub r0, r4, r7 // icount 2311
add r5, r0, r5 // icount 2312
seq r3, r2, r5 // icount 2313
ror r6, r4, r4 // icount 2314
sra r4, r2, r4 // icount 2315
ror r0, r3, r2 // icount 2316
sco r0, r4, r1 // icount 2317
and r7, r6, r7 // icount 2318
sub r3, r5, r1 // icount 2319
and r2, r2, r0 // icount 2320
and r4, r4, r7 // icount 2321
seq r3, r2, r3 // icount 2322
sle r2, r5, r5 // icount 2323
sle r6, r4, r3 // icount 2324
or r2, r5, r0 // icount 2325
sle r4, r1, r0 // icount 2326
seq r4, r5, r0 // icount 2327
sle r0, r6, r5 // icount 2328
add r0, r4, r3 // icount 2329
add r2, r0, r4 // icount 2330
sra r0, r1, r5 // icount 2331
ror r1, r7, r3 // icount 2332
and r7, r3, r1 // icount 2333
slt r3, r3, r1 // icount 2334
sle r0, r4, r1 // icount 2335
sra r7, r5, r6 // icount 2336
seq r2, r2, r7 // icount 2337
sco r1, r3, r1 // icount 2338
sll r6, r6, r0 // icount 2339
ror r6, r5, r4 // icount 2340
sco r1, r0, r2 // icount 2341
rol r0, r7, r4 // icount 2342
sco r1, r7, r7 // icount 2343
.rlabel_89:
beqz r0, .rlabel_90 // icount 2344
rol r7, r2, r7 // icount 2345
sle r5, r0, r1 // icount 2346
ror r4, r0, r4 // icount 2347
ror r3, r7, r0 // icount 2348
sle r4, r6, r0 // icount 2349
seq r7, r0, r0 // icount 2350
or r6, r4, r3 // icount 2351
sll r1, r7, r7 // icount 2352
.rlabel_90:
ld r7, r6, 8
addi r6, r6, 8
j .rlabel_91 // icount 2353
and r0, r2, r5 // icount 2354
or r6, r6, r7 // icount 2355
and r6, r6, r1 // icount 2356
sll r0, r2, r4 // icount 2357
rol r1, r7, r5 // icount 2358
sub r1, r4, r5 // icount 2359
slt r6, r5, r4 // icount 2360
or r7, r0, r3 // icount 2361
rol r2, r2, r6 // icount 2362
sub r4, r4, r5 // icount 2363
sco r5, r2, r6 // icount 2364
or r2, r2, r4 // icount 2365
ror r2, r4, r5 // icount 2366
or r1, r6, r6 // icount 2367
sub r0, r4, r5 // icount 2368
sra r1, r5, r7 // icount 2369
sle r5, r6, r2 // icount 2370
seq r4, r4, r0 // icount 2371
ror r6, r3, r4 // icount 2372
and r7, r0, r7 // icount 2373
add r1, r3, r5 // icount 2374
sle r1, r1, r6 // icount 2375
rol r3, r4, r4 // icount 2376
or r0, r5, r3 // icount 2377
sub r0, r7, r2 // icount 2378
seq r1, r0, r5 // icount 2379
and r7, r2, r3 // icount 2380
sra r5, r5, r6 // icount 2381
slt r3, r6, r1 // icount 2382
sco r4, r6, r0 // icount 2383
slt r3, r6, r0 // icount 2384
slt r0, r6, r1 // icount 2385
or r3, r3, r7 // icount 2386
slt r7, r7, r6 // icount 2387
sll r0, r1, r7 // icount 2388
and r7, r2, r0 // icount 2389
seq r4, r6, r5 // icount 2390
sll r1, r3, r6 // icount 2391
sll r5, r6, r6 // icount 2392
add r0, r7, r3 // icount 2393
sle r3, r4, r1 // icount 2394
sra r3, r6, r7 // icount 2395
rol r2, r7, r0 // icount 2396
sll r0, r5, r4 // icount 2397
sra r7, r4, r0 // icount 2398
sco r2, r6, r3 // icount 2399
and r0, r2, r6 // icount 2400
ror r0, r2, r0 // icount 2401
sco r0, r4, r4 // icount 2402
ror r3, r2, r6 // icount 2403
add r7, r7, r7 // icount 2404
and r0, r6, r6 // icount 2405
and r7, r3, r7 // icount 2406
rol r7, r6, r1 // icount 2407
sco r1, r4, r0 // icount 2408
add r0, r7, r0 // icount 2409
sra r5, r7, r3 // icount 2410
and r6, r0, r6 // icount 2411
sll r0, r1, r3 // icount 2412
sco r7, r2, r7 // icount 2413
or r4, r1, r5 // icount 2414
or r4, r1, r4 // icount 2415
add r3, r2, r6 // icount 2416
and r0, r7, r4 // icount 2417
rol r7, r6, r1 // icount 2418
rol r7, r5, r5 // icount 2419
seq r7, r7, r1 // icount 2420
add r1, r5, r6 // icount 2421
rol r4, r1, r2 // icount 2422
sco r0, r5, r1 // icount 2423
or r3, r1, r3 // icount 2424
add r5, r3, r5 // icount 2425
and r2, r5, r2 // icount 2426
sco r7, r7, r6 // icount 2427
sll r1, r0, r2 // icount 2428
add r4, r7, r3 // icount 2429
sco r4, r1, r5 // icount 2430
or r1, r1, r7 // icount 2431
ror r2, r1, r6 // icount 2432
sle r2, r6, r5 // icount 2433
sub r1, r6, r4 // icount 2434
sra r5, r1, r0 // icount 2435
sco r0, r2, r2 // icount 2436
sra r6, r5, r3 // icount 2437
.rlabel_91:
bnez r1, .rlabel_92 // icount 2438
sle r6, r0, r6 // icount 2439
or r7, r1, r6 // icount 2440
or r7, r1, r2 // icount 2441
or r6, r4, r6 // icount 2442
sll r6, r7, r4 // icount 2443
.rlabel_92:
ld r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_93 // icount 2444
add r5, r7, r5 // icount 2445
rol r6, r1, r4 // icount 2446
sco r7, r2, r6 // icount 2447
sra r4, r3, r5 // icount 2448
and r2, r5, r2 // icount 2449
slt r5, r1, r5 // icount 2450
.rlabel_93:
jal .rlabel_94 // icount 2451
rol r4, r4, r5 // icount 2452
and r3, r6, r6 // icount 2453
sco r1, r5, r1 // icount 2454
sll r7, r5, r5 // icount 2455
sll r1, r1, r3 // icount 2456
sub r3, r4, r2 // icount 2457
sra r3, r7, r1 // icount 2458
seq r7, r4, r2 // icount 2459
slt r6, r2, r2 // icount 2460
add r5, r6, r0 // icount 2461
sra r1, r7, r6 // icount 2462
sll r6, r7, r6 // icount 2463
or r4, r0, r4 // icount 2464
add r2, r1, r4 // icount 2465
seq r2, r0, r3 // icount 2466
and r3, r6, r3 // icount 2467
sub r6, r5, r4 // icount 2468
or r3, r3, r6 // icount 2469
slt r6, r0, r0 // icount 2470
rol r1, r4, r6 // icount 2471
and r3, r3, r7 // icount 2472
rol r7, r0, r2 // icount 2473
sco r1, r4, r6 // icount 2474
sub r2, r3, r3 // icount 2475
ror r7, r1, r4 // icount 2476
and r6, r0, r2 // icount 2477
ror r3, r3, r4 // icount 2478
sub r1, r6, r6 // icount 2479
and r4, r6, r7 // icount 2480
sco r7, r6, r6 // icount 2481
.rlabel_94:
beqz r0, .rlabel_95 // icount 2482
and r7, r2, r5 // icount 2483
and r2, r2, r3 // icount 2484
sub r2, r3, r7 // icount 2485
sle r2, r0, r6 // icount 2486
sub r3, r0, r4 // icount 2487
sco r6, r7, r4 // icount 2488
.rlabel_95:
ld r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_96 // icount 2489
sco r0, r5, r0 // icount 2490
add r2, r5, r0 // icount 2491
sle r1, r6, r1 // icount 2492
or r3, r2, r5 // icount 2493
sle r7, r2, r4 // icount 2494
rol r1, r7, r0 // icount 2495
sle r5, r0, r7 // icount 2496
sra r2, r5, r4 // icount 2497
rol r4, r0, r7 // icount 2498
slt r4, r1, r3 // icount 2499
sle r6, r2, r5 // icount 2500
rol r7, r6, r0 // icount 2501
or r5, r0, r7 // icount 2502
.rlabel_96:
jal .rlabel_97 // icount 2503
and r5, r0, r0 // icount 2504
sll r0, r7, r0 // icount 2505
sra r5, r0, r4 // icount 2506
rol r7, r5, r1 // icount 2507
rol r3, r0, r4 // icount 2508
sco r6, r1, r1 // icount 2509
sco r5, r2, r6 // icount 2510
ror r4, r0, r5 // icount 2511
and r3, r3, r3 // icount 2512
sub r2, r2, r0 // icount 2513
ror r5, r5, r6 // icount 2514
sub r3, r3, r5 // icount 2515
sub r5, r6, r3 // icount 2516
sco r2, r4, r6 // icount 2517
or r3, r0, r6 // icount 2518
ror r3, r5, r2 // icount 2519
sle r1, r0, r4 // icount 2520
rol r6, r7, r7 // icount 2521
or r3, r1, r2 // icount 2522
sll r6, r4, r4 // icount 2523
ror r6, r6, r3 // icount 2524
slt r2, r6, r5 // icount 2525
seq r1, r3, r6 // icount 2526
slt r3, r6, r6 // icount 2527
sub r5, r2, r6 // icount 2528
sub r4, r2, r5 // icount 2529
sub r3, r1, r6 // icount 2530
sub r3, r5, r7 // icount 2531
sub r2, r0, r4 // icount 2532
or r4, r6, r3 // icount 2533
sco r3, r5, r3 // icount 2534
.rlabel_97:
bnez r1, .rlabel_98 // icount 2535
sll r3, r5, r4 // icount 2536
or r4, r4, r4 // icount 2537
sco r2, r6, r2 // icount 2538
sra r6, r2, r4 // icount 2539
ror r0, r4, r5 // icount 2540
sra r1, r3, r1 // icount 2541
sub r7, r6, r1 // icount 2542
rol r2, r1, r7 // icount 2543
sra r5, r4, r0 // icount 2544
.rlabel_98:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_99 // icount 2545
sco r0, r3, r7 // icount 2546
seq r3, r0, r5 // icount 2547
sle r2, r7, r2 // icount 2548
ror r1, r7, r6 // icount 2549
and r4, r1, r5 // icount 2550
or r1, r2, r3 // icount 2551
sll r7, r4, r5 // icount 2552
slt r6, r6, r3 // icount 2553
add r5, r7, r6 // icount 2554
rol r2, r4, r0 // icount 2555
sle r4, r1, r5 // icount 2556
ror r3, r2, r6 // icount 2557
ror r7, r2, r1 // icount 2558
sub r2, r2, r1 // icount 2559
sle r3, r7, r0 // icount 2560
.rlabel_99:
addi r3, r3, -1 // icount 2561
beqz r3, .done // icount 2562
jr r5, 0 // icount 2563
.done:
halt // icount 2564
halt // icount 2565
