// seed 6
lbi r0, 101 // icount 0
slbi r0, 250 // icount 1
lbi r1, 134 // icount 2
slbi r1, 169 // icount 3
lbi r2, 129 // icount 4
slbi r2, 20 // icount 5
lbi r3, 170 // icount 6
slbi r3, 25 // icount 7
lbi r4, 34 // icount 8
slbi r4, 120 // icount 9
lbi r5, 224 // icount 10
slbi r5, 171 // icount 11
lbi r6, 33 // icount 12
slbi r6, 21 // icount 13
lbi r7, 187 // icount 14
slbi r7, 9 // icount 15
lbi r0, 0 // icount 16
lbi r1, 1 // icount 17
lbi r2, -1 // icount 18
lbi r3, 1 // icount 19
andi r6, r6, 0xfe // icount 20
lbi r3, 3 // icount 21
lbi r5, 44 // icount 22
beqz r0, .rlabel_0 // icount 23
and r5, r3, r3 // icount 24
and r1, r3, r6 // icount 25
add r0, r5, r7 // icount 26
ror r3, r1, r6 // icount 27
and r5, r4, r4 // icount 28
sle r4, r0, r7 // icount 29
.rlabel_0:
st r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_1 // icount 30
sub r6, r0, r3 // icount 31
and r4, r6, r0 // icount 32
slt r4, r7, r5 // icount 33
slt r5, r3, r7 // icount 34
seq r2, r2, r3 // icount 35
.rlabel_1:
st r7, r6, 12
addi r6, r6, 12
jal .rlabel_2 // icount 36
sub r3, r3, r1 // icount 37
.rlabel_2:
bnez r1, .rlabel_3 // icount 38
and r6, r1, r5 // icount 39
slt r4, r2, r7 // icount 40
seq r4, r6, r5 // icount 41
sra r6, r2, r0 // icount 42
add r6, r6, r5 // icount 43
or r5, r5, r3 // icount 44
sra r7, r1, r4 // icount 45
add r1, r3, r0 // icount 46
add r4, r6, r5 // icount 47
sra r4, r4, r7 // icount 48
.rlabel_3:
st r7, r6, 10
addi r6, r6, 10
j .rlabel_4 // icount 49
sll r2, r3, r7 // icount 50
and r0, r1, r6 // icount 51
sra r2, r5, r7 // icount 52
sll r1, r2, r5 // icount 53
.rlabel_4:
jal .rlabel_5 // icount 54
slt r2, r2, r4 // icount 55
and r0, r1, r4 // icount 56
sub r3, r6, r0 // icount 57
sle r6, r2, r0 // icount 58
rol r1, r2, r2 // icount 59
sra r5, r7, r2 // icount 60
sll r0, r7, r3 // icount 61
seq r2, r3, r1 // icount 62
sle r7, r0, r3 // icount 63
add r1, r4, r5 // icount 64
ror r6, r6, r5 // icount 65
sra r6, r6, r5 // icount 66
add r1, r4, r6 // icount 67
ror r5, r4, r6 // icount 68
sra r3, r1, r4 // icount 69
sra r5, r0, r5 // icount 70
ror r2, r5, r2 // icount 71
rol r1, r6, r3 // icount 72
sco r4, r4, r2 // icount 73
.rlabel_5:
beqz r0, .rlabel_6 // icount 74
sle r4, r6, r1 // icount 75
or r5, r7, r2 // icount 76
slt r0, r6, r7 // icount 77
.rlabel_6:
j .rlabel_7 // icount 78
sco r1, r4, r3 // icount 79
sub r6, r7, r3 // icount 80
slt r3, r4, r2 // icount 81
sco r1, r7, r4 // icount 82
sco r0, r7, r7 // icount 83
add r5, r3, r7 // icount 84
slt r7, r5, r5 // icount 85
ror r5, r0, r6 // icount 86
ror r1, r1, r1 // icount 87
rol r3, r3, r3 // icount 88
or r3, r7, r1 // icount 89
and r7, r5, r7 // icount 90
or r7, r2, r3 // icount 91
seq r1, r7, r4 // icount 92
seq r2, r1, r4 // icount 93
sra r1, r2, r2 // icount 94
seq r6, r4, r0 // icount 95
ror r7, r7, r5 // icount 96
sub r7, r0, r2 // icount 97
and r1, r5, r0 // icount 98
seq r6, r0, r2 // icount 99
and r6, r3, r5 // icount 100
ror r2, r5, r3 // icount 101
sle r7, r2, r4 // icount 102
sco r7, r1, r5 // icount 103
ror r1, r3, r5 // icount 104
rol r3, r3, r4 // icount 105
and r0, r3, r0 // icount 106
rol r3, r6, r0 // icount 107
ror r7, r0, r6 // icount 108
seq r0, r5, r4 // icount 109
rol r0, r6, r3 // icount 110
slt r0, r0, r5 // icount 111
sra r6, r0, r6 // icount 112
sco r5, r3, r0 // icount 113
and r0, r1, r7 // icount 114
slt r0, r0, r1 // icount 115
seq r5, r3, r3 // icount 116
ror r5, r4, r7 // icount 117
sco r3, r7, r6 // icount 118
.rlabel_7:
st r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_8 // icount 119
and r7, r5, r7 // icount 120
or r3, r4, r0 // icount 121
.rlabel_8:
j .rlabel_9 // icount 122
sll r5, r2, r6 // icount 123
sll r3, r7, r1 // icount 124
seq r0, r3, r3 // icount 125
sll r0, r6, r3 // icount 126
or r1, r5, r3 // icount 127
sco r3, r3, r4 // icount 128
sll r7, r2, r5 // icount 129
add r0, r5, r4 // icount 130
sra r6, r4, r4 // icount 131
ror r1, r2, r1 // icount 132
sle r5, r4, r6 // icount 133
and r0, r2, r4 // icount 134
sub r5, r6, r6 // icount 135
ror r5, r1, r0 // icount 136
sll r6, r7, r1 // icount 137
add r0, r7, r6 // icount 138
sco r4, r6, r2 // icount 139
sub r1, r5, r3 // icount 140
or r3, r6, r4 // icount 141
sll r2, r5, r7 // icount 142
ror r5, r3, r3 // icount 143
sll r4, r6, r5 // icount 144
seq r1, r3, r4 // icount 145
or r7, r6, r6 // icount 146
slt r1, r4, r4 // icount 147
sra r1, r7, r5 // icount 148
sub r0, r0, r7 // icount 149
sco r7, r1, r7 // icount 150
sco r3, r4, r4 // icount 151
sra r7, r0, r5 // icount 152
ror r1, r2, r2 // icount 153
rol r7, r7, r5 // icount 154
sco r4, r5, r6 // icount 155
sle r6, r6, r5 // icount 156
sra r3, r0, r5 // icount 157
sub r5, r3, r3 // icount 158
or r4, r4, r3 // icount 159
or r3, r5, r0 // icount 160
sco r7, r1, r2 // icount 161
seq r1, r4, r2 // icount 162
sco r0, r3, r0 // icount 163
sra r1, r0, r5 // icount 164
and r3, r1, r0 // icount 165
rol r5, r6, r2 // icount 166
sco r5, r0, r6 // icount 167
.rlabel_9:
st r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_10 // icount 168
ror r0, r5, r3 // icount 169
sra r7, r2, r5 // icount 170
and r6, r4, r6 // icount 171
slt r4, r2, r5 // icount 172
.rlabel_10:
st r7, r6, 2
addi r6, r6, 2
j .rlabel_11 // icount 173
seq r4, r7, r6 // icount 174
sub r2, r7, r0 // icount 175
ror r2, r2, r0 // icount 176
seq r7, r7, r5 // icount 177
add r3, r7, r0 // icount 178
slt r6, r5, r1 // icount 179
slt r1, r2, r1 // icount 180
and r5, r7, r6 // icount 181
rol r7, r0, r1 // icount 182
sco r4, r7, r7 // icount 183
sra r3, r7, r0 // icount 184
or r0, r6, r2 // icount 185
or r4, r6, r6 // icount 186
add r1, r6, r3 // icount 187
and r0, r0, r5 // icount 188
slt r3, r3, r7 // icount 189
rol r6, r4, r1 // icount 190
add r4, r4, r2 // icount 191
rol r4, r1, r3 // icount 192
sco r2, r0, r1 // icount 193
sco r0, r6, r3 // icount 194
sll r4, r3, r3 // icount 195
sll r3, r3, r2 // icount 196
and r5, r5, r6 // icount 197
sco r3, r2, r3 // icount 198
sra r1, r0, r6 // icount 199
slt r1, r1, r2 // icount 200
sle r4, r0, r4 // icount 201
sco r5, r5, r0 // icount 202
slt r6, r3, r2 // icount 203
slt r1, r7, r1 // icount 204
or r1, r6, r2 // icount 205
sle r3, r6, r4 // icount 206
sra r6, r6, r3 // icount 207
sll r6, r7, r6 // icount 208
sle r5, r4, r0 // icount 209
sub r0, r7, r2 // icount 210
rol r7, r5, r6 // icount 211
ror r3, r5, r2 // icount 212
seq r7, r2, r1 // icount 213
slt r1, r4, r0 // icount 214
sle r1, r4, r6 // icount 215
sra r3, r6, r2 // icount 216
seq r3, r4, r1 // icount 217
sle r7, r5, r0 // icount 218
seq r5, r4, r0 // icount 219
seq r0, r5, r2 // icount 220
sll r0, r3, r4 // icount 221
slt r4, r2, r4 // icount 222
sco r3, r2, r6 // icount 223
ror r4, r3, r4 // icount 224
sle r6, r1, r2 // icount 225
and r7, r0, r2 // icount 226
rol r6, r0, r1 // icount 227
sle r1, r2, r7 // icount 228
and r1, r6, r7 // icount 229
sco r4, r0, r7 // icount 230
sub r3, r0, r6 // icount 231
sle r5, r4, r6 // icount 232
slt r1, r5, r5 // icount 233
or r6, r4, r4 // icount 234
seq r6, r2, r7 // icount 235
sle r5, r2, r2 // icount 236
sle r6, r3, r0 // icount 237
sra r0, r4, r4 // icount 238
rol r6, r2, r2 // icount 239
sll r1, r0, r2 // icount 240
sle r1, r1, r1 // icount 241
rol r7, r6, r2 // icount 242
add r7, r3, r5 // icount 243
seq r0, r1, r2 // icount 244
or r6, r1, r0 // icount 245
sle r5, r2, r5 // icount 246
slt r4, r3, r3 // icount 247
or r3, r3, r4 // icount 248
or r5, r0, r7 // icount 249
sll r1, r0, r7 // icount 250
sco r0, r3, r1 // icount 251
sco r4, r4, r7 // icount 252
add r1, r4, r1 // icount 253
seq r1, r3, r7 // icount 254
rol r4, r5, r0 // icount 255
slt r6, r7, r6 // icount 256
sra r5, r6, r3 // icount 257
slt r0, r7, r1 // icount 258
slt r3, r4, r7 // icount 259
rol r3, r5, r0 // icount 260
slt r4, r2, r6 // icount 261
ror r2, r0, r1 // icount 262
slt r1, r4, r3 // icount 263
seq r0, r6, r2 // icount 264
sco r1, r4, r7 // icount 265
ror r1, r0, r2 // icount 266
sco r4, r7, r3 // icount 267
rol r2, r0, r7 // icount 268
ror r6, r2, r6 // icount 269
sra r4, r4, r7 // icount 270
seq r6, r5, r4 // icount 271
add r3, r0, r2 // icount 272
seq r3, r0, r7 // icount 273
sll r1, r6, r5 // icount 274
and r7, r1, r3 // icount 275
sle r1, r1, r0 // icount 276
sll r1, r2, r4 // icount 277
sra r4, r1, r7 // icount 278
sub r2, r6, r4 // icount 279
.rlabel_11:
j .rlabel_12 // icount 280
and r1, r4, r3 // icount 281
add r0, r3, r2 // icount 282
seq r0, r3, r5 // icount 283
sra r3, r1, r2 // icount 284
rol r5, r6, r0 // icount 285
sle r5, r5, r7 // icount 286
seq r2, r7, r0 // icount 287
seq r6, r1, r7 // icount 288
sub r0, r3, r6 // icount 289
sll r3, r5, r7 // icount 290
seq r6, r0, r4 // icount 291
seq r3, r5, r6 // icount 292
rol r3, r3, r4 // icount 293
seq r6, r5, r2 // icount 294
or r2, r2, r3 // icount 295
add r1, r0, r6 // icount 296
slt r4, r4, r5 // icount 297
seq r2, r7, r5 // icount 298
add r6, r4, r7 // icount 299
sco r3, r4, r0 // icount 300
seq r2, r4, r7 // icount 301
sle r3, r6, r2 // icount 302
seq r5, r2, r4 // icount 303
rol r0, r4, r2 // icount 304
sco r0, r5, r0 // icount 305
sra r0, r0, r4 // icount 306
rol r1, r7, r7 // icount 307
sll r2, r2, r0 // icount 308
slt r5, r1, r6 // icount 309
ror r1, r7, r2 // icount 310
sle r1, r4, r2 // icount 311
ror r1, r2, r2 // icount 312
seq r7, r1, r0 // icount 313
seq r0, r2, r6 // icount 314
add r0, r6, r2 // icount 315
sll r5, r1, r6 // icount 316
slt r1, r7, r4 // icount 317
add r7, r5, r1 // icount 318
sub r3, r1, r5 // icount 319
sle r5, r7, r0 // icount 320
sle r3, r2, r3 // icount 321
sub r0, r4, r3 // icount 322
rol r2, r2, r6 // icount 323
sra r4, r6, r2 // icount 324
sle r2, r1, r4 // icount 325
or r2, r1, r7 // icount 326
ror r7, r4, r5 // icount 327
or r5, r7, r3 // icount 328
slt r0, r1, r1 // icount 329
add r6, r0, r2 // icount 330
slt r3, r4, r5 // icount 331
sra r7, r7, r3 // icount 332
sco r4, r0, r2 // icount 333
sll r1, r5, r2 // icount 334
sub r6, r0, r1 // icount 335
sco r6, r1, r7 // icount 336
sll r1, r7, r4 // icount 337
seq r5, r5, r1 // icount 338
and r1, r1, r1 // icount 339
sle r6, r0, r6 // icount 340
sra r5, r3, r5 // icount 341
and r2, r4, r0 // icount 342
sll r2, r4, r0 // icount 343
sll r4, r0, r7 // icount 344
seq r1, r0, r1 // icount 345
add r6, r1, r1 // icount 346
rol r0, r7, r5 // icount 347
rol r3, r2, r4 // icount 348
rol r3, r5, r7 // icount 349
rol r6, r1, r6 // icount 350
seq r1, r2, r1 // icount 351
add r6, r2, r7 // icount 352
slt r5, r4, r5 // icount 353
seq r0, r4, r4 // icount 354
or r3, r2, r0 // icount 355
sco r5, r3, r6 // icount 356
ror r4, r5, r3 // icount 357
add r7, r2, r2 // icount 358
seq r2, r7, r4 // icount 359
add r7, r5, r6 // icount 360
sra r4, r6, r2 // icount 361
sco r1, r7, r7 // icount 362
sco r2, r6, r6 // icount 363
slt r5, r2, r2 // icount 364
sub r6, r3, r7 // icount 365
or r3, r5, r6 // icount 366
sle r2, r0, r5 // icount 367
seq r0, r5, r4 // icount 368
sub r7, r3, r4 // icount 369
sle r5, r2, r1 // icount 370
.rlabel_12:
jal .rlabel_13 // icount 371
seq r1, r2, r5 // icount 372
slt r5, r1, r4 // icount 373
slt r4, r1, r2 // icount 374
sra r7, r2, r5 // icount 375
sle r6, r3, r4 // icount 376
seq r6, r3, r1 // icount 377
or r0, r3, r6 // icount 378
add r7, r3, r6 // icount 379
sll r3, r7, r2 // icount 380
seq r3, r7, r0 // icount 381
or r5, r1, r7 // icount 382
sub r5, r6, r4 // icount 383
sub r7, r3, r7 // icount 384
add r1, r7, r6 // icount 385
and r3, r5, r4 // icount 386
seq r7, r1, r7 // icount 387
sra r1, r0, r0 // icount 388
or r5, r4, r4 // icount 389
sco r2, r3, r4 // icount 390
add r2, r6, r5 // icount 391
sra r3, r4, r4 // icount 392
ror r4, r6, r5 // icount 393
sco r3, r2, r7 // icount 394
rol r2, r0, r7 // icount 395
sra r4, r0, r4 // icount 396
.rlabel_13:
st r7, r6, 4
addi r6, r6, 4
j .rlabel_14 // icount 397
sco r1, r5, r7 // icount 398
ror r6, r5, r7 // icount 399
sub r4, r6, r6 // icount 400
sll r1, r2, r3 // icount 401
sra r7, r7, r6 // icount 402
seq r2, r6, r2 // icount 403
sub r1, r6, r1 // icount 404
sra r6, r4, r2 // icount 405
slt r6, r7, r6 // icount 406
add r4, r6, r2 // icount 407
sra r5, r0, r7 // icount 408
sle r5, r3, r4 // icount 409
sco r5, r1, r2 // icount 410
sco r1, r2, r3 // icount 411
or r5, r2, r2 // icount 412
and r0, r1, r6 // icount 413
or r2, r4, r6 // icount 414
sub r0, r4, r6 // icount 415
seq r3, r5, r0 // icount 416
sra r6, r3, r0 // icount 417
slt r1, r1, r7 // icount 418
sle r4, r2, r7 // icount 419
sle r5, r5, r6 // icount 420
sra r5, r6, r6 // icount 421
sub r6, r5, r6 // icount 422
or r5, r5, r2 // icount 423
sra r2, r7, r3 // icount 424
seq r2, r0, r5 // icount 425
sco r2, r2, r1 // icount 426
sra r3, r6, r4 // icount 427
ror r0, r1, r1 // icount 428
sll r0, r2, r2 // icount 429
and r7, r0, r4 // icount 430
sub r4, r4, r0 // icount 431
.rlabel_14:
jal .rlabel_15 // icount 432
and r7, r7, r4 // icount 433
and r6, r5, r3 // icount 434
sco r4, r3, r5 // icount 435
ror r4, r2, r0 // icount 436
add r7, r4, r1 // icount 437
sub r3, r0, r7 // icount 438
sub r6, r1, r4 // icount 439
sra r5, r0, r5 // icount 440
sle r7, r4, r1 // icount 441
sle r0, r3, r4 // icount 442
slt r7, r3, r5 // icount 443
and r5, r6, r2 // icount 444
add r5, r1, r0 // icount 445
and r7, r7, r6 // icount 446
sub r6, r4, r2 // icount 447
seq r0, r2, r7 // icount 448
or r6, r3, r5 // icount 449
seq r0, r3, r5 // icount 450
or r2, r6, r5 // icount 451
sle r5, r4, r6 // icount 452
sub r6, r7, r3 // icount 453
.rlabel_15:
ld r7, r6, 8
addi r6, r6, 8
beqz r0, .rlabel_16 // icount 454
or r6, r3, r3 // icount 455
sub r7, r3, r4 // icount 456
.rlabel_16:
ld r7, r6, 4
addi r6, r6, 4
jal .rlabel_17 // icount 457
and r6, r3, r7 // icount 458
sco r7, r4, r3 // icount 459
and r1, r2, r3 // icount 460
sll r4, r3, r7 // icount 461
sll r6, r3, r4 // icount 462
sub r2, r1, r1 // icount 463
.rlabel_17:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_18 // icount 464
add r3, r3, r2 // icount 465
sll r0, r2, r5 // icount 466
sll r4, r7, r4 // icount 467
.rlabel_18:
j .rlabel_19 // icount 468
seq r7, r4, r5 // icount 469
sra r6, r2, r5 // icount 470
sub r6, r4, r2 // icount 471
sub r5, r0, r1 // icount 472
and r3, r7, r6 // icount 473
seq r2, r5, r7 // icount 474
sco r1, r0, r1 // icount 475
rol r0, r3, r0 // icount 476
sll r7, r3, r1 // icount 477
add r0, r5, r7 // icount 478
.rlabel_19:
bnez r1, .rlabel_20 // icount 479
sle r2, r0, r2 // icount 480
ror r6, r1, r4 // icount 481
sle r0, r0, r5 // icount 482
sle r6, r3, r2 // icount 483
sll r0, r0, r7 // icount 484
sle r6, r7, r0 // icount 485
and r5, r5, r6 // icount 486
.rlabel_20:
ld r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_21 // icount 487
and r4, r5, r6 // icount 488
sra r4, r5, r1 // icount 489
ror r5, r3, r2 // icount 490
or r4, r2, r7 // icount 491
sub r1, r6, r4 // icount 492
add r6, r2, r5 // icount 493
.rlabel_21:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_22 // icount 494
sra r6, r2, r1 // icount 495
sco r2, r4, r5 // icount 496
ror r3, r3, r3 // icount 497
or r7, r6, r0 // icount 498
rol r7, r2, r1 // icount 499
rol r0, r0, r1 // icount 500
seq r2, r1, r4 // icount 501
and r5, r7, r7 // icount 502
sra r0, r7, r5 // icount 503
and r0, r4, r7 // icount 504
.rlabel_22:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_23 // icount 505
sra r5, r2, r5 // icount 506
sco r3, r6, r5 // icount 507
or r7, r5, r2 // icount 508
sle r5, r1, r3 // icount 509
ror r6, r4, r7 // icount 510
and r6, r1, r6 // icount 511
slt r0, r3, r2 // icount 512
sra r4, r4, r0 // icount 513
or r5, r0, r5 // icount 514
sco r0, r2, r6 // icount 515
seq r6, r5, r4 // icount 516
sll r5, r4, r7 // icount 517
sco r5, r1, r7 // icount 518
or r6, r5, r3 // icount 519
sll r2, r4, r4 // icount 520
slt r6, r6, r7 // icount 521
or r1, r2, r6 // icount 522
add r0, r4, r7 // icount 523
sll r6, r7, r6 // icount 524
or r6, r6, r7 // icount 525
or r4, r5, r5 // icount 526
ror r3, r5, r2 // icount 527
slt r0, r4, r5 // icount 528
add r6, r5, r2 // icount 529
sll r0, r2, r5 // icount 530
slt r7, r5, r0 // icount 531
ror r4, r1, r0 // icount 532
sle r4, r0, r2 // icount 533
.rlabel_23:
bnez r1, .rlabel_24 // icount 534
seq r0, r7, r1 // icount 535
or r0, r2, r2 // icount 536
.rlabel_24:
ld r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_25 // icount 537
slt r1, r1, r5 // icount 538
slt r3, r6, r1 // icount 539
sra r6, r5, r3 // icount 540
rol r0, r3, r3 // icount 541
.rlabel_25:
bnez r1, .rlabel_26 // icount 542
slt r1, r1, r1 // icount 543
sll r3, r6, r3 // icount 544
seq r0, r6, r7 // icount 545
.rlabel_26:
ld r7, r6, 8
addi r6, r6, 8
jal .rlabel_27 // icount 546
slt r2, r1, r1 // icount 547
sle r2, r1, r1 // icount 548
or r0, r2, r2 // icount 549
rol r4, r0, r5 // icount 550
sub r0, r5, r5 // icount 551
sub r2, r1, r3 // icount 552
.rlabel_27:
bnez r1, .rlabel_28 // icount 553
sle r7, r7, r0 // icount 554
or r1, r0, r6 // icount 555
.rlabel_28:
st r7, r6, 8
addi r6, r6, 8
beqz r0, .rlabel_29 // icount 556
sll r1, r6, r3 // icount 557
sll r2, r6, r1 // icount 558
sle r7, r5, r4 // icount 559
sco r4, r4, r0 // icount 560
sco r7, r5, r3 // icount 561
slt r1, r2, r3 // icount 562
seq r4, r7, r6 // icount 563
rol r4, r6, r4 // icount 564
add r0, r5, r7 // icount 565
sll r2, r3, r4 // icount 566
add r1, r0, r2 // icount 567
slt r7, r1, r7 // icount 568
sco r3, r3, r2 // icount 569
sle r0, r6, r5 // icount 570
.rlabel_29:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_30 // icount 571
or r7, r5, r2 // icount 572
sll r6, r5, r3 // icount 573
or r5, r2, r6 // icount 574
sle r2, r3, r5 // icount 575
sco r4, r1, r3 // icount 576
.rlabel_30:
beqz r0, .rlabel_31 // icount 577
ror r6, r3, r0 // icount 578
slt r7, r3, r3 // icount 579
slt r7, r4, r4 // icount 580
sle r4, r2, r4 // icount 581
sco r5, r4, r0 // icount 582
ror r5, r5, r1 // icount 583
rol r1, r5, r6 // icount 584
and r7, r3, r1 // icount 585
sco r6, r3, r7 // icount 586
slt r5, r7, r6 // icount 587
sle r4, r0, r3 // icount 588
or r1, r6, r3 // icount 589
add r6, r2, r4 // icount 590
rol r3, r3, r7 // icount 591
sra r6, r1, r6 // icount 592
.rlabel_31:
jal .rlabel_32 // icount 593
rol r5, r3, r7 // icount 594
sle r5, r2, r7 // icount 595
slt r5, r3, r4 // icount 596
rol r5, r4, r0 // icount 597
sub r5, r5, r6 // icount 598
sra r4, r3, r2 // icount 599
slt r5, r0, r4 // icount 600
and r2, r7, r1 // icount 601
sco r7, r3, r1 // icount 602
sll r3, r0, r7 // icount 603
and r6, r1, r4 // icount 604
sll r3, r7, r0 // icount 605
sra r6, r5, r6 // icount 606
sll r4, r1, r0 // icount 607
and r0, r1, r5 // icount 608
rol r0, r1, r6 // icount 609
add r1, r7, r0 // icount 610
sub r1, r1, r5 // icount 611
seq r5, r0, r2 // icount 612
sco r0, r5, r7 // icount 613
rol r6, r0, r7 // icount 614
ror r3, r5, r4 // icount 615
or r1, r5, r1 // icount 616
and r5, r7, r7 // icount 617
slt r2, r6, r1 // icount 618
sll r6, r5, r6 // icount 619
and r7, r0, r5 // icount 620
sra r0, r3, r2 // icount 621
.rlabel_32:
bnez r1, .rlabel_33 // icount 622
.rlabel_33:
beqz r0, .rlabel_34 // icount 623
or r0, r2, r4 // icount 624
ror r7, r1, r2 // icount 625
and r6, r1, r6 // icount 626
sra r7, r2, r0 // icount 627
slt r5, r5, r6 // icount 628
or r1, r6, r4 // icount 629
sub r5, r3, r0 // icount 630
slt r1, r0, r1 // icount 631
seq r5, r0, r3 // icount 632
rol r7, r5, r1 // icount 633
seq r1, r3, r0 // icount 634
or r4, r2, r3 // icount 635
seq r7, r0, r6 // icount 636
sra r5, r0, r4 // icount 637
sub r7, r2, r3 // icount 638
.rlabel_34:
j .rlabel_35 // icount 639
or r5, r0, r4 // icount 640
sll r7, r6, r1 // icount 641
sra r4, r4, r4 // icount 642
sle r4, r5, r6 // icount 643
ror r2, r6, r2 // icount 644
or r4, r2, r5 // icount 645
slt r0, r2, r6 // icount 646
sle r3, r3, r4 // icount 647
sco r0, r6, r6 // icount 648
add r3, r1, r6 // icount 649
and r7, r3, r4 // icount 650
or r1, r2, r6 // icount 651
seq r4, r6, r2 // icount 652
sco r4, r3, r5 // icount 653
or r3, r3, r3 // icount 654
or r0, r3, r0 // icount 655
sco r2, r1, r3 // icount 656
or r5, r2, r2 // icount 657
sra r7, r7, r0 // icount 658
ror r0, r3, r3 // icount 659
sub r3, r0, r6 // icount 660
sub r6, r5, r1 // icount 661
sra r2, r6, r0 // icount 662
and r6, r2, r7 // icount 663
sub r2, r7, r5 // icount 664
and r2, r4, r3 // icount 665
sra r0, r1, r1 // icount 666
sll r4, r1, r5 // icount 667
or r3, r2, r7 // icount 668
sle r2, r2, r0 // icount 669
sco r7, r4, r7 // icount 670
rol r5, r6, r4 // icount 671
ror r1, r2, r6 // icount 672
seq r7, r2, r6 // icount 673
slt r1, r1, r4 // icount 674
or r0, r0, r7 // icount 675
sub r6, r1, r0 // icount 676
sub r1, r3, r6 // icount 677
sub r7, r2, r6 // icount 678
ror r0, r4, r2 // icount 679
and r3, r4, r2 // icount 680
sub r2, r3, r0 // icount 681
ror r3, r5, r2 // icount 682
add r1, r6, r7 // icount 683
slt r5, r6, r3 // icount 684
ror r2, r3, r2 // icount 685
sco r5, r0, r0 // icount 686
add r3, r4, r4 // icount 687
rol r2, r4, r5 // icount 688
slt r3, r4, r0 // icount 689
and r7, r0, r2 // icount 690
ror r0, r5, r1 // icount 691
sle r5, r7, r2 // icount 692
sub r3, r5, r2 // icount 693
sra r3, r6, r6 // icount 694
ror r0, r0, r0 // icount 695
rol r5, r6, r4 // icount 696
sll r1, r2, r2 // icount 697
rol r3, r1, r5 // icount 698
sle r4, r4, r5 // icount 699
sub r2, r5, r4 // icount 700
sll r0, r6, r4 // icount 701
sle r0, r3, r1 // icount 702
and r5, r4, r5 // icount 703
sll r7, r1, r3 // icount 704
sco r3, r7, r4 // icount 705
rol r6, r2, r4 // icount 706
sco r5, r3, r6 // icount 707
sra r2, r7, r2 // icount 708
rol r3, r6, r2 // icount 709
seq r0, r0, r7 // icount 710
slt r7, r4, r0 // icount 711
or r0, r6, r6 // icount 712
sub r6, r0, r0 // icount 713
rol r6, r7, r6 // icount 714
sra r2, r3, r3 // icount 715
seq r5, r2, r7 // icount 716
sra r7, r7, r7 // icount 717
ror r4, r3, r3 // icount 718
sra r2, r7, r3 // icount 719
ror r1, r6, r5 // icount 720
add r5, r1, r7 // icount 721
sra r2, r2, r3 // icount 722
slt r0, r3, r0 // icount 723
sle r7, r0, r0 // icount 724
sll r1, r1, r6 // icount 725
sco r3, r2, r6 // icount 726
sll r6, r2, r7 // icount 727
slt r4, r6, r0 // icount 728
sra r1, r4, r6 // icount 729
seq r7, r4, r5 // icount 730
ror r3, r3, r2 // icount 731
sra r0, r2, r0 // icount 732
sub r1, r6, r7 // icount 733
.rlabel_35:
beqz r0, .rlabel_36 // icount 734
rol r7, r7, r3 // icount 735
ror r7, r2, r3 // icount 736
sra r2, r1, r3 // icount 737
ror r3, r1, r6 // icount 738
.rlabel_36:
bnez r1, .rlabel_37 // icount 739
rol r0, r0, r7 // icount 740
add r5, r3, r2 // icount 741
slt r4, r3, r1 // icount 742
slt r0, r2, r6 // icount 743
add r1, r5, r6 // icount 744
sra r2, r0, r1 // icount 745
and r6, r0, r3 // icount 746
sra r4, r4, r4 // icount 747
ror r7, r3, r6 // icount 748
add r7, r6, r5 // icount 749
sll r2, r5, r3 // icount 750
sco r0, r6, r5 // icount 751
add r6, r7, r7 // icount 752
or r4, r1, r2 // icount 753
and r1, r7, r5 // icount 754
.rlabel_37:
bnez r1, .rlabel_38 // icount 755
sco r5, r1, r7 // icount 756
sco r0, r0, r3 // icount 757
sle r7, r7, r4 // icount 758
sle r3, r6, r2 // icount 759
sle r6, r6, r1 // icount 760
sll r3, r6, r6 // icount 761
sra r4, r0, r4 // icount 762
rol r1, r3, r4 // icount 763
or r3, r7, r0 // icount 764
rol r1, r7, r7 // icount 765
sll r5, r2, r7 // icount 766
sll r0, r0, r4 // icount 767
rol r3, r0, r3 // icount 768
.rlabel_38:
j .rlabel_39 // icount 769
sle r6, r7, r5 // icount 770
sco r6, r0, r7 // icount 771
or r4, r1, r2 // icount 772
sco r4, r5, r3 // icount 773
sll r4, r4, r6 // icount 774
sco r3, r4, r5 // icount 775
or r5, r4, r2 // icount 776
ror r1, r1, r1 // icount 777
sub r1, r2, r3 // icount 778
sco r5, r6, r4 // icount 779
sle r2, r0, r2 // icount 780
ror r5, r4, r6 // icount 781
slt r1, r0, r6 // icount 782
ror r2, r7, r1 // icount 783
sra r2, r3, r6 // icount 784
seq r3, r2, r3 // icount 785
sll r2, r1, r3 // icount 786
or r2, r7, r0 // icount 787
sle r1, r5, r0 // icount 788
or r0, r3, r5 // icount 789
or r3, r7, r2 // icount 790
seq r1, r0, r4 // icount 791
sub r5, r4, r7 // icount 792
add r6, r4, r6 // icount 793
add r6, r4, r5 // icount 794
slt r5, r1, r1 // icount 795
add r1, r0, r2 // icount 796
add r4, r3, r5 // icount 797
sle r7, r7, r1 // icount 798
sll r7, r5, r7 // icount 799
sle r7, r7, r7 // icount 800
and r7, r1, r5 // icount 801
sco r2, r0, r7 // icount 802
and r7, r1, r7 // icount 803
sub r2, r1, r3 // icount 804
slt r0, r6, r1 // icount 805
sub r5, r2, r6 // icount 806
sco r7, r3, r0 // icount 807
sco r6, r1, r2 // icount 808
seq r5, r4, r4 // icount 809
and r5, r2, r4 // icount 810
slt r1, r1, r3 // icount 811
sll r5, r4, r5 // icount 812
add r6, r0, r1 // icount 813
ror r2, r1, r1 // icount 814
sub r5, r5, r6 // icount 815
ror r5, r1, r4 // icount 816
or r6, r7, r0 // icount 817
and r5, r3, r5 // icount 818
sle r0, r1, r7 // icount 819
ror r6, r1, r2 // icount 820
or r5, r3, r6 // icount 821
and r6, r1, r5 // icount 822
sra r6, r7, r7 // icount 823
sco r7, r2, r5 // icount 824
sco r3, r2, r3 // icount 825
sco r7, r6, r1 // icount 826
rol r5, r5, r4 // icount 827
sra r7, r6, r0 // icount 828
add r2, r1, r5 // icount 829
add r2, r6, r5 // icount 830
seq r1, r2, r4 // icount 831
sco r6, r6, r1 // icount 832
sle r7, r0, r0 // icount 833
sra r0, r5, r4 // icount 834
sra r6, r5, r3 // icount 835
sub r5, r6, r3 // icount 836
sra r7, r7, r1 // icount 837
ror r0, r7, r3 // icount 838
sra r2, r6, r5 // icount 839
sll r3, r1, r0 // icount 840
sll r3, r2, r2 // icount 841
ror r2, r7, r2 // icount 842
and r5, r6, r0 // icount 843
sll r2, r6, r4 // icount 844
slt r0, r6, r0 // icount 845
add r1, r2, r6 // icount 846
rol r4, r2, r3 // icount 847
sub r5, r5, r0 // icount 848
ror r6, r7, r4 // icount 849
add r3, r6, r5 // icount 850
sle r4, r7, r7 // icount 851
sle r2, r3, r1 // icount 852
sll r6, r7, r7 // icount 853
seq r6, r3, r2 // icount 854
sub r6, r3, r1 // icount 855
ror r6, r5, r4 // icount 856
sco r2, r6, r1 // icount 857
sle r4, r3, r7 // icount 858
or r3, r4, r5 // icount 859
sll r3, r1, r4 // icount 860
add r7, r7, r5 // icount 861
or r7, r7, r3 // icount 862
sll r2, r1, r3 // icount 863
sub r4, r6, r7 // icount 864
or r7, r1, r4 // icount 865
sra r6, r4, r5 // icount 866
sle r6, r1, r5 // icount 867
add r4, r0, r4 // icount 868
sub r2, r7, r2 // icount 869
ror r2, r1, r4 // icount 870
seq r2, r5, r2 // icount 871
sle r3, r6, r7 // icount 872
ror r7, r2, r7 // icount 873
or r7, r7, r0 // icount 874
add r5, r7, r3 // icount 875
slt r7, r2, r7 // icount 876
add r1, r4, r6 // icount 877
sll r1, r4, r4 // icount 878
sco r3, r6, r6 // icount 879
sra r7, r6, r1 // icount 880
ror r1, r1, r1 // icount 881
sra r3, r1, r2 // icount 882
sll r4, r0, r5 // icount 883
.rlabel_39:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_40 // icount 884
ror r1, r5, r7 // icount 885
sra r6, r7, r1 // icount 886
sub r0, r5, r6 // icount 887
add r6, r7, r6 // icount 888
seq r3, r1, r1 // icount 889
rol r5, r3, r1 // icount 890
add r3, r2, r5 // icount 891
seq r4, r6, r4 // icount 892
.rlabel_40:
beqz r0, .rlabel_41 // icount 893
sub r5, r3, r2 // icount 894
sub r2, r6, r5 // icount 895
seq r3, r4, r6 // icount 896
sub r5, r7, r0 // icount 897
add r0, r5, r7 // icount 898
seq r3, r5, r0 // icount 899
or r1, r3, r2 // icount 900
.rlabel_41:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_42 // icount 901
slt r3, r5, r3 // icount 902
sra r4, r3, r3 // icount 903
or r2, r6, r5 // icount 904
ror r0, r5, r0 // icount 905
add r1, r5, r3 // icount 906
add r3, r1, r6 // icount 907
sra r3, r3, r6 // icount 908
rol r7, r4, r6 // icount 909
or r6, r3, r3 // icount 910
rol r6, r1, r2 // icount 911
slt r6, r4, r1 // icount 912
and r3, r3, r0 // icount 913
sll r2, r0, r7 // icount 914
ror r0, r5, r3 // icount 915
ror r0, r1, r2 // icount 916
rol r1, r5, r5 // icount 917
sle r7, r2, r1 // icount 918
ror r7, r4, r6 // icount 919
and r7, r6, r3 // icount 920
sll r6, r0, r7 // icount 921
seq r4, r2, r7 // icount 922
sle r6, r2, r5 // icount 923
seq r1, r0, r7 // icount 924
sco r2, r7, r0 // icount 925
slt r0, r0, r4 // icount 926
sle r0, r0, r5 // icount 927
.rlabel_42:
bnez r1, .rlabel_43 // icount 928
rol r5, r6, r0 // icount 929
sub r7, r5, r7 // icount 930
sll r4, r1, r0 // icount 931
or r3, r1, r6 // icount 932
seq r0, r5, r0 // icount 933
rol r4, r1, r0 // icount 934
sub r4, r6, r0 // icount 935
rol r1, r4, r4 // icount 936
and r6, r7, r5 // icount 937
and r5, r6, r6 // icount 938
sle r5, r0, r5 // icount 939
sco r3, r6, r7 // icount 940
add r2, r5, r7 // icount 941
sra r1, r0, r5 // icount 942
slt r7, r7, r6 // icount 943
.rlabel_43:
st r7, r6, 0
addi r6, r6, 0
jal .rlabel_44 // icount 944
and r6, r1, r1 // icount 945
sll r1, r7, r0 // icount 946
slt r1, r1, r5 // icount 947
seq r7, r7, r3 // icount 948
sco r5, r3, r6 // icount 949
sra r3, r4, r3 // icount 950
sub r0, r6, r7 // icount 951
sll r7, r1, r4 // icount 952
sll r1, r1, r5 // icount 953
ror r5, r5, r1 // icount 954
sub r7, r4, r0 // icount 955
.rlabel_44:
jal .rlabel_45 // icount 956
sub r3, r7, r1 // icount 957
add r6, r2, r1 // icount 958
sub r0, r4, r7 // icount 959
slt r2, r3, r4 // icount 960
add r3, r2, r5 // icount 961
seq r7, r6, r7 // icount 962
ror r3, r5, r2 // icount 963
sll r4, r1, r0 // icount 964
slt r5, r4, r7 // icount 965
seq r1, r4, r2 // icount 966
sll r0, r1, r1 // icount 967
sle r4, r7, r7 // icount 968
seq r1, r2, r4 // icount 969
slt r3, r2, r3 // icount 970
sle r0, r7, r1 // icount 971
rol r6, r6, r2 // icount 972
rol r3, r1, r6 // icount 973
add r7, r3, r3 // icount 974
rol r7, r4, r5 // icount 975
rol r7, r3, r4 // icount 976
rol r2, r3, r0 // icount 977
sll r0, r2, r0 // icount 978
ror r3, r0, r5 // icount 979
and r4, r1, r7 // icount 980
slt r3, r4, r0 // icount 981
.rlabel_45:
jal .rlabel_46 // icount 982
sra r0, r2, r4 // icount 983
sll r5, r3, r0 // icount 984
sra r1, r6, r4 // icount 985
rol r2, r0, r0 // icount 986
sra r3, r6, r4 // icount 987
add r5, r2, r3 // icount 988
rol r6, r0, r6 // icount 989
add r3, r6, r7 // icount 990
add r4, r6, r2 // icount 991
slt r6, r7, r6 // icount 992
sle r0, r0, r4 // icount 993
.rlabel_46:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_47 // icount 994
sco r4, r2, r4 // icount 995
ror r3, r5, r4 // icount 996
sco r1, r2, r7 // icount 997
seq r5, r4, r6 // icount 998
slt r3, r2, r1 // icount 999
add r7, r4, r6 // icount 1000
seq r7, r6, r5 // icount 1001
sle r3, r4, r5 // icount 1002
ror r4, r3, r1 // icount 1003
sll r4, r1, r2 // icount 1004
sra r7, r4, r2 // icount 1005
sra r4, r7, r2 // icount 1006
seq r5, r1, r1 // icount 1007
sle r2, r4, r0 // icount 1008
sle r7, r5, r5 // icount 1009
or r0, r3, r1 // icount 1010
sub r7, r7, r1 // icount 1011
seq r0, r3, r0 // icount 1012
rol r2, r2, r3 // icount 1013
sll r6, r2, r1 // icount 1014
slt r4, r4, r6 // icount 1015
sra r5, r6, r5 // icount 1016
sle r7, r2, r5 // icount 1017
ror r7, r7, r0 // icount 1018
sra r1, r7, r6 // icount 1019
sll r5, r0, r0 // icount 1020
ror r7, r3, r0 // icount 1021
rol r2, r0, r7 // icount 1022
ror r0, r4, r0 // icount 1023
sra r0, r4, r1 // icount 1024
.rlabel_47:
beqz r0, .rlabel_48 // icount 1025
sll r2, r6, r3 // icount 1026
seq r4, r2, r0 // icount 1027
sub r3, r2, r2 // icount 1028
sle r1, r4, r7 // icount 1029
sle r4, r6, r7 // icount 1030
.rlabel_48:
ld r7, r6, 10
addi r6, r6, 10
jal .rlabel_49 // icount 1031
and r1, r1, r2 // icount 1032
and r2, r6, r6 // icount 1033
sra r2, r0, r4 // icount 1034
ror r0, r7, r6 // icount 1035
rol r6, r1, r6 // icount 1036
sll r7, r0, r3 // icount 1037
rol r4, r4, r3 // icount 1038
seq r2, r6, r0 // icount 1039
sra r2, r7, r7 // icount 1040
rol r2, r6, r6 // icount 1041
sle r0, r7, r6 // icount 1042
ror r4, r0, r6 // icount 1043
seq r0, r5, r5 // icount 1044
or r6, r1, r2 // icount 1045
sll r2, r1, r3 // icount 1046
sle r4, r5, r5 // icount 1047
seq r2, r3, r1 // icount 1048
or r3, r4, r5 // icount 1049
sle r1, r3, r3 // icount 1050
sle r0, r1, r3 // icount 1051
add r2, r5, r5 // icount 1052
sle r3, r4, r5 // icount 1053
sub r6, r1, r2 // icount 1054
slt r3, r6, r2 // icount 1055
sub r5, r6, r0 // icount 1056
seq r7, r4, r2 // icount 1057
and r4, r6, r5 // icount 1058
sle r3, r5, r5 // icount 1059
.rlabel_49:
bnez r1, .rlabel_50 // icount 1060
.rlabel_50:
bnez r1, .rlabel_51 // icount 1061
add r0, r5, r5 // icount 1062
sub r1, r0, r3 // icount 1063
add r7, r0, r5 // icount 1064
sll r1, r2, r7 // icount 1065
sra r7, r5, r5 // icount 1066
sll r1, r6, r5 // icount 1067
sco r0, r4, r5 // icount 1068
seq r4, r2, r2 // icount 1069
sle r3, r4, r7 // icount 1070
seq r2, r1, r5 // icount 1071
sle r6, r2, r6 // icount 1072
slt r2, r1, r5 // icount 1073
add r4, r2, r6 // icount 1074
.rlabel_51:
jal .rlabel_52 // icount 1075
seq r5, r7, r7 // icount 1076
and r0, r2, r2 // icount 1077
and r2, r7, r0 // icount 1078
add r3, r0, r7 // icount 1079
sle r5, r0, r3 // icount 1080
add r3, r7, r1 // icount 1081
sub r0, r1, r4 // icount 1082
sco r1, r1, r5 // icount 1083
ror r0, r7, r3 // icount 1084
ror r4, r4, r5 // icount 1085
or r3, r6, r0 // icount 1086
seq r6, r1, r6 // icount 1087
sle r5, r4, r7 // icount 1088
sle r5, r6, r5 // icount 1089
sra r2, r3, r2 // icount 1090
and r5, r7, r0 // icount 1091
sle r1, r2, r5 // icount 1092
rol r1, r2, r5 // icount 1093
and r1, r2, r5 // icount 1094
sub r2, r2, r7 // icount 1095
ror r4, r5, r7 // icount 1096
or r6, r0, r0 // icount 1097
sra r1, r3, r7 // icount 1098
sco r2, r6, r6 // icount 1099
sra r3, r3, r6 // icount 1100
add r3, r3, r6 // icount 1101
ror r3, r0, r6 // icount 1102
.rlabel_52:
j .rlabel_53 // icount 1103
or r6, r1, r6 // icount 1104
sub r4, r7, r2 // icount 1105
sll r1, r2, r5 // icount 1106
sra r5, r2, r2 // icount 1107
ror r4, r4, r2 // icount 1108
ror r2, r7, r4 // icount 1109
sle r5, r3, r1 // icount 1110
seq r0, r6, r6 // icount 1111
ror r0, r4, r1 // icount 1112
rol r1, r7, r1 // icount 1113
sle r5, r2, r1 // icount 1114
sub r2, r3, r6 // icount 1115
slt r2, r3, r1 // icount 1116
slt r2, r0, r6 // icount 1117
slt r4, r7, r7 // icount 1118
rol r7, r2, r3 // icount 1119
sub r5, r7, r6 // icount 1120
sco r4, r0, r7 // icount 1121
add r1, r5, r7 // icount 1122
ror r3, r7, r6 // icount 1123
or r4, r5, r1 // icount 1124
add r2, r5, r0 // icount 1125
and r0, r1, r7 // icount 1126
and r2, r2, r1 // icount 1127
slt r1, r2, r4 // icount 1128
and r3, r4, r1 // icount 1129
and r7, r2, r5 // icount 1130
slt r0, r2, r1 // icount 1131
sub r5, r4, r1 // icount 1132
slt r7, r4, r7 // icount 1133
sco r0, r0, r6 // icount 1134
.rlabel_53:
ld r7, r6, 6
addi r6, r6, 6
j .rlabel_54 // icount 1135
add r6, r0, r3 // icount 1136
seq r0, r5, r7 // icount 1137
sub r3, r4, r1 // icount 1138
sub r6, r0, r4 // icount 1139
or r0, r1, r3 // icount 1140
sra r3, r2, r5 // icount 1141
sub r5, r1, r7 // icount 1142
sll r3, r2, r3 // icount 1143
and r6, r0, r2 // icount 1144
sub r0, r5, r2 // icount 1145
add r6, r7, r3 // icount 1146
sra r7, r4, r1 // icount 1147
rol r7, r1, r6 // icount 1148
add r0, r1, r0 // icount 1149
or r1, r3, r3 // icount 1150
sub r1, r1, r6 // icount 1151
seq r7, r5, r2 // icount 1152
sra r3, r4, r5 // icount 1153
add r3, r0, r2 // icount 1154
sle r1, r2, r3 // icount 1155
sll r3, r0, r5 // icount 1156
sra r6, r1, r2 // icount 1157
sco r3, r6, r1 // icount 1158
slt r5, r0, r7 // icount 1159
sle r4, r5, r7 // icount 1160
rol r7, r1, r5 // icount 1161
.rlabel_54:
j .rlabel_55 // icount 1162
slt r7, r2, r2 // icount 1163
sll r6, r2, r2 // icount 1164
rol r3, r6, r2 // icount 1165
or r6, r3, r3 // icount 1166
add r4, r6, r1 // icount 1167
and r0, r4, r6 // icount 1168
sco r7, r6, r1 // icount 1169
and r3, r1, r6 // icount 1170
sub r7, r2, r7 // icount 1171
or r4, r6, r3 // icount 1172
rol r0, r2, r1 // icount 1173
sll r2, r2, r1 // icount 1174
sll r2, r0, r1 // icount 1175
sco r1, r7, r6 // icount 1176
sub r3, r6, r6 // icount 1177
sco r1, r7, r7 // icount 1178
or r7, r1, r5 // icount 1179
or r0, r7, r0 // icount 1180
ror r0, r7, r0 // icount 1181
sub r2, r0, r6 // icount 1182
sra r7, r2, r5 // icount 1183
sco r5, r6, r5 // icount 1184
add r7, r5, r0 // icount 1185
sle r2, r0, r2 // icount 1186
sra r2, r0, r6 // icount 1187
and r6, r5, r3 // icount 1188
sle r7, r2, r2 // icount 1189
and r7, r2, r4 // icount 1190
or r4, r2, r0 // icount 1191
sll r2, r6, r5 // icount 1192
sub r4, r5, r5 // icount 1193
add r4, r1, r6 // icount 1194
ror r3, r1, r0 // icount 1195
and r0, r2, r0 // icount 1196
sub r4, r6, r6 // icount 1197
ror r2, r2, r0 // icount 1198
sll r6, r0, r2 // icount 1199
sll r5, r3, r7 // icount 1200
or r1, r7, r2 // icount 1201
or r2, r4, r7 // icount 1202
sra r0, r6, r3 // icount 1203
rol r3, r2, r0 // icount 1204
sco r7, r7, r7 // icount 1205
seq r7, r2, r6 // icount 1206
add r3, r3, r0 // icount 1207
sco r5, r0, r0 // icount 1208
sll r6, r5, r5 // icount 1209
rol r6, r4, r6 // icount 1210
ror r3, r5, r0 // icount 1211
sra r6, r6, r4 // icount 1212
seq r5, r7, r4 // icount 1213
sle r3, r2, r2 // icount 1214
add r6, r1, r7 // icount 1215
slt r3, r1, r0 // icount 1216
seq r3, r4, r3 // icount 1217
rol r0, r0, r6 // icount 1218
sco r5, r4, r3 // icount 1219
rol r0, r4, r2 // icount 1220
rol r5, r7, r1 // icount 1221
slt r5, r1, r0 // icount 1222
seq r4, r6, r3 // icount 1223
add r1, r1, r6 // icount 1224
and r0, r0, r1 // icount 1225
sub r5, r3, r2 // icount 1226
slt r3, r1, r2 // icount 1227
sll r1, r1, r0 // icount 1228
sle r6, r1, r7 // icount 1229
sub r5, r4, r3 // icount 1230
seq r4, r5, r7 // icount 1231
ror r0, r6, r0 // icount 1232
seq r5, r3, r2 // icount 1233
sco r3, r3, r4 // icount 1234
ror r3, r7, r1 // icount 1235
and r5, r6, r0 // icount 1236
sra r1, r0, r4 // icount 1237
sco r5, r7, r4 // icount 1238
rol r1, r7, r3 // icount 1239
and r1, r1, r0 // icount 1240
sco r1, r6, r5 // icount 1241
seq r6, r3, r3 // icount 1242
or r3, r2, r2 // icount 1243
slt r1, r6, r2 // icount 1244
sco r6, r7, r3 // icount 1245
sco r7, r4, r2 // icount 1246
and r3, r5, r0 // icount 1247
.rlabel_55:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_56 // icount 1248
and r4, r1, r2 // icount 1249
and r1, r0, r2 // icount 1250
sco r1, r5, r7 // icount 1251
ror r4, r3, r5 // icount 1252
and r5, r5, r1 // icount 1253
seq r6, r0, r6 // icount 1254
seq r5, r4, r2 // icount 1255
sll r4, r3, r2 // icount 1256
rol r5, r1, r6 // icount 1257
and r7, r7, r0 // icount 1258
and r1, r3, r1 // icount 1259
rol r6, r3, r1 // icount 1260
sco r1, r2, r3 // icount 1261
ror r3, r7, r3 // icount 1262
and r7, r2, r7 // icount 1263
ror r0, r2, r7 // icount 1264
sra r2, r2, r2 // icount 1265
rol r7, r3, r5 // icount 1266
sle r1, r2, r0 // icount 1267
slt r1, r7, r6 // icount 1268
rol r7, r6, r3 // icount 1269
.rlabel_56:
st r7, r6, 0
addi r6, r6, 0
j .rlabel_57 // icount 1270
rol r0, r3, r4 // icount 1271
or r2, r2, r7 // icount 1272
sle r5, r5, r6 // icount 1273
.rlabel_57:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_58 // icount 1274
rol r6, r0, r0 // icount 1275
sle r0, r2, r0 // icount 1276
sra r3, r0, r1 // icount 1277
sle r1, r7, r3 // icount 1278
rol r3, r4, r2 // icount 1279
or r6, r6, r6 // icount 1280
ror r3, r7, r4 // icount 1281
.rlabel_58:
j .rlabel_59 // icount 1282
sra r3, r1, r5 // icount 1283
seq r2, r5, r5 // icount 1284
sco r4, r2, r7 // icount 1285
sll r2, r6, r1 // icount 1286
and r3, r6, r0 // icount 1287
and r7, r4, r6 // icount 1288
sub r0, r2, r6 // icount 1289
sll r7, r2, r3 // icount 1290
sub r6, r7, r4 // icount 1291
slt r1, r3, r0 // icount 1292
seq r4, r6, r7 // icount 1293
rol r0, r0, r6 // icount 1294
sco r0, r7, r6 // icount 1295
rol r5, r5, r1 // icount 1296
seq r3, r7, r5 // icount 1297
sub r2, r5, r3 // icount 1298
ror r5, r7, r3 // icount 1299
sub r1, r3, r2 // icount 1300
ror r4, r6, r7 // icount 1301
seq r0, r1, r0 // icount 1302
sub r7, r7, r4 // icount 1303
and r2, r0, r7 // icount 1304
sco r4, r3, r4 // icount 1305
sll r1, r7, r6 // icount 1306
sll r6, r1, r5 // icount 1307
sll r1, r7, r2 // icount 1308
and r6, r2, r2 // icount 1309
sll r7, r3, r6 // icount 1310
sra r1, r7, r7 // icount 1311
seq r2, r2, r0 // icount 1312
sle r5, r1, r5 // icount 1313
ror r2, r0, r2 // icount 1314
rol r5, r5, r2 // icount 1315
sle r2, r7, r2 // icount 1316
and r5, r1, r2 // icount 1317
sra r5, r3, r5 // icount 1318
or r7, r3, r1 // icount 1319
or r5, r6, r3 // icount 1320
sra r3, r1, r1 // icount 1321
add r4, r0, r0 // icount 1322
add r2, r6, r0 // icount 1323
sll r1, r1, r4 // icount 1324
sra r4, r3, r7 // icount 1325
and r5, r7, r4 // icount 1326
sub r3, r7, r7 // icount 1327
seq r1, r4, r0 // icount 1328
slt r4, r0, r6 // icount 1329
ror r7, r2, r5 // icount 1330
add r5, r1, r3 // icount 1331
ror r0, r1, r7 // icount 1332
ror r5, r5, r7 // icount 1333
sco r2, r2, r6 // icount 1334
sle r7, r3, r2 // icount 1335
sco r4, r5, r0 // icount 1336
sco r1, r1, r1 // icount 1337
slt r6, r6, r7 // icount 1338
sle r0, r0, r6 // icount 1339
and r6, r1, r2 // icount 1340
rol r7, r4, r5 // icount 1341
ror r7, r7, r6 // icount 1342
.rlabel_59:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_60 // icount 1343
or r5, r5, r0 // icount 1344
and r1, r7, r7 // icount 1345
and r0, r4, r6 // icount 1346
sco r6, r1, r7 // icount 1347
.rlabel_60:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_61 // icount 1348
sco r7, r0, r7 // icount 1349
sra r7, r1, r3 // icount 1350
sle r3, r4, r1 // icount 1351
sub r2, r0, r5 // icount 1352
.rlabel_61:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_62 // icount 1353
rol r2, r5, r3 // icount 1354
sle r3, r2, r4 // icount 1355
sle r5, r7, r1 // icount 1356
sle r4, r1, r4 // icount 1357
sle r3, r0, r7 // icount 1358
and r5, r6, r3 // icount 1359
sll r3, r3, r3 // icount 1360
slt r2, r1, r3 // icount 1361
.rlabel_62:
st r7, r6, 0
addi r6, r6, 0
j .rlabel_63 // icount 1362
sub r3, r4, r0 // icount 1363
and r1, r6, r3 // icount 1364
seq r5, r1, r3 // icount 1365
slt r4, r2, r1 // icount 1366
sco r1, r3, r4 // icount 1367
rol r5, r5, r7 // icount 1368
seq r2, r2, r2 // icount 1369
seq r5, r1, r0 // icount 1370
or r0, r2, r7 // icount 1371
sll r0, r0, r1 // icount 1372
sub r5, r5, r0 // icount 1373
sra r4, r7, r7 // icount 1374
slt r4, r2, r1 // icount 1375
.rlabel_63:
st r7, r6, 2
addi r6, r6, 2
j .rlabel_64 // icount 1376
slt r0, r4, r4 // icount 1377
rol r3, r2, r4 // icount 1378
slt r0, r5, r2 // icount 1379
sll r4, r5, r4 // icount 1380
add r2, r6, r1 // icount 1381
sll r3, r7, r7 // icount 1382
or r2, r6, r4 // icount 1383
seq r0, r0, r6 // icount 1384
slt r5, r2, r5 // icount 1385
ror r1, r4, r4 // icount 1386
and r6, r0, r4 // icount 1387
rol r7, r5, r4 // icount 1388
seq r5, r3, r0 // icount 1389
add r6, r5, r1 // icount 1390
sco r7, r7, r7 // icount 1391
rol r7, r0, r0 // icount 1392
sra r5, r4, r3 // icount 1393
sra r2, r0, r5 // icount 1394
or r1, r1, r6 // icount 1395
slt r6, r5, r2 // icount 1396
or r5, r5, r1 // icount 1397
sle r1, r3, r7 // icount 1398
sll r6, r4, r5 // icount 1399
sll r6, r1, r5 // icount 1400
or r6, r2, r7 // icount 1401
sll r7, r4, r4 // icount 1402
sll r6, r0, r1 // icount 1403
ror r3, r2, r6 // icount 1404
sll r2, r3, r5 // icount 1405
sub r2, r6, r2 // icount 1406
and r3, r4, r3 // icount 1407
rol r0, r0, r4 // icount 1408
rol r7, r7, r2 // icount 1409
slt r3, r2, r6 // icount 1410
sll r6, r3, r3 // icount 1411
add r6, r3, r5 // icount 1412
sll r5, r7, r0 // icount 1413
seq r1, r2, r5 // icount 1414
and r6, r6, r4 // icount 1415
sub r7, r7, r7 // icount 1416
sra r1, r6, r5 // icount 1417
sra r0, r4, r7 // icount 1418
sub r5, r4, r7 // icount 1419
.rlabel_64:
jal .rlabel_65 // icount 1420
and r3, r0, r0 // icount 1421
sco r4, r7, r1 // icount 1422
sra r2, r5, r3 // icount 1423
and r5, r3, r3 // icount 1424
rol r2, r2, r4 // icount 1425
seq r1, r3, r0 // icount 1426
slt r7, r1, r2 // icount 1427
ror r6, r4, r3 // icount 1428
sra r4, r3, r1 // icount 1429
or r3, r2, r3 // icount 1430
.rlabel_65:
beqz r0, .rlabel_66 // icount 1431
sra r2, r5, r5 // icount 1432
or r5, r5, r5 // icount 1433
and r3, r7, r7 // icount 1434
sra r7, r2, r3 // icount 1435
slt r4, r5, r2 // icount 1436
ror r0, r7, r1 // icount 1437
or r7, r4, r0 // icount 1438
seq r2, r3, r4 // icount 1439
add r5, r4, r5 // icount 1440
add r6, r2, r3 // icount 1441
sll r0, r6, r3 // icount 1442
.rlabel_66:
ld r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_67 // icount 1443
sub r5, r5, r0 // icount 1444
sra r6, r5, r4 // icount 1445
slt r2, r5, r0 // icount 1446
or r3, r6, r0 // icount 1447
ror r3, r2, r0 // icount 1448
sco r1, r6, r4 // icount 1449
slt r3, r7, r0 // icount 1450
ror r7, r4, r2 // icount 1451
.rlabel_67:
bnez r1, .rlabel_68 // icount 1452
rol r3, r1, r2 // icount 1453
ror r5, r4, r6 // icount 1454
rol r5, r1, r0 // icount 1455
sra r2, r3, r0 // icount 1456
add r7, r2, r5 // icount 1457
ror r3, r6, r2 // icount 1458
sll r2, r6, r7 // icount 1459
ror r1, r3, r7 // icount 1460
slt r1, r4, r3 // icount 1461
ror r0, r4, r4 // icount 1462
sub r4, r0, r5 // icount 1463
sco r6, r2, r4 // icount 1464
and r4, r1, r0 // icount 1465
sle r6, r0, r0 // icount 1466
.rlabel_68:
j .rlabel_69 // icount 1467
sll r6, r0, r6 // icount 1468
and r0, r6, r2 // icount 1469
sco r0, r0, r1 // icount 1470
seq r5, r3, r2 // icount 1471
sle r3, r1, r2 // icount 1472
add r5, r0, r0 // icount 1473
ror r2, r7, r7 // icount 1474
sco r2, r3, r1 // icount 1475
rol r1, r1, r3 // icount 1476
sle r4, r4, r7 // icount 1477
or r1, r7, r3 // icount 1478
or r5, r6, r5 // icount 1479
sco r5, r3, r5 // icount 1480
and r2, r5, r7 // icount 1481
seq r2, r1, r4 // icount 1482
or r4, r3, r0 // icount 1483
rol r4, r7, r4 // icount 1484
seq r5, r7, r2 // icount 1485
sco r2, r0, r7 // icount 1486
add r2, r6, r1 // icount 1487
seq r7, r5, r3 // icount 1488
or r4, r0, r1 // icount 1489
rol r2, r5, r1 // icount 1490
add r5, r6, r2 // icount 1491
seq r7, r7, r1 // icount 1492
sra r5, r7, r4 // icount 1493
slt r1, r1, r7 // icount 1494
and r5, r6, r0 // icount 1495
sco r4, r2, r3 // icount 1496
sra r7, r3, r3 // icount 1497
slt r5, r1, r7 // icount 1498
slt r7, r6, r5 // icount 1499
rol r4, r6, r1 // icount 1500
sle r5, r7, r7 // icount 1501
sle r5, r6, r7 // icount 1502
sra r6, r6, r3 // icount 1503
ror r7, r2, r3 // icount 1504
add r1, r1, r6 // icount 1505
sub r0, r3, r2 // icount 1506
ror r1, r0, r3 // icount 1507
sra r4, r0, r4 // icount 1508
sco r2, r1, r1 // icount 1509
sle r5, r0, r0 // icount 1510
.rlabel_69:
st r7, r6, 8
addi r6, r6, 8
bnez r1, .rlabel_70 // icount 1511
and r2, r3, r3 // icount 1512
sra r7, r6, r4 // icount 1513
.rlabel_70:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_71 // icount 1514
or r3, r7, r4 // icount 1515
rol r3, r6, r0 // icount 1516
rol r0, r2, r7 // icount 1517
sll r3, r4, r3 // icount 1518
sub r6, r4, r2 // icount 1519
slt r0, r3, r3 // icount 1520
add r7, r5, r7 // icount 1521
sco r1, r3, r1 // icount 1522
sra r3, r5, r1 // icount 1523
sra r6, r1, r7 // icount 1524
seq r2, r0, r3 // icount 1525
seq r6, r7, r1 // icount 1526
and r0, r7, r6 // icount 1527
add r1, r2, r1 // icount 1528
sle r3, r6, r7 // icount 1529
or r7, r2, r4 // icount 1530
add r6, r1, r4 // icount 1531
or r5, r3, r7 // icount 1532
slt r4, r0, r7 // icount 1533
or r1, r5, r6 // icount 1534
.rlabel_71:
bnez r1, .rlabel_72 // icount 1535
rol r3, r7, r4 // icount 1536
seq r3, r3, r5 // icount 1537
.rlabel_72:
ld r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_73 // icount 1538
or r3, r6, r4 // icount 1539
.rlabel_73:
st r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_74 // icount 1540
or r4, r4, r4 // icount 1541
sco r6, r2, r0 // icount 1542
sub r6, r0, r3 // icount 1543
add r6, r2, r0 // icount 1544
add r1, r4, r7 // icount 1545
rol r0, r3, r3 // icount 1546
or r6, r4, r3 // icount 1547
rol r6, r4, r1 // icount 1548
sub r4, r1, r3 // icount 1549
.rlabel_74:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_75 // icount 1550
add r7, r3, r4 // icount 1551
sle r5, r0, r7 // icount 1552
add r0, r5, r6 // icount 1553
and r6, r2, r0 // icount 1554
sub r2, r0, r1 // icount 1555
sll r0, r5, r7 // icount 1556
ror r1, r4, r5 // icount 1557
.rlabel_75:
j .rlabel_76 // icount 1558
sle r1, r1, r4 // icount 1559
sll r1, r6, r1 // icount 1560
sle r3, r4, r7 // icount 1561
rol r3, r4, r7 // icount 1562
add r3, r3, r2 // icount 1563
sll r3, r4, r5 // icount 1564
sco r2, r1, r7 // icount 1565
seq r5, r0, r3 // icount 1566
ror r2, r2, r1 // icount 1567
add r5, r5, r0 // icount 1568
rol r5, r0, r2 // icount 1569
ror r6, r3, r4 // icount 1570
rol r1, r5, r2 // icount 1571
sub r7, r2, r0 // icount 1572
slt r7, r6, r0 // icount 1573
seq r4, r7, r5 // icount 1574
sub r5, r3, r1 // icount 1575
add r0, r5, r4 // icount 1576
ror r2, r7, r3 // icount 1577
and r1, r1, r0 // icount 1578
and r5, r7, r3 // icount 1579
or r1, r0, r4 // icount 1580
sll r1, r6, r1 // icount 1581
sco r6, r3, r1 // icount 1582
and r1, r4, r2 // icount 1583
slt r7, r5, r4 // icount 1584
sco r7, r5, r0 // icount 1585
seq r6, r2, r2 // icount 1586
add r6, r6, r7 // icount 1587
rol r5, r1, r0 // icount 1588
or r5, r7, r0 // icount 1589
ror r6, r4, r2 // icount 1590
sub r4, r2, r7 // icount 1591
or r4, r1, r6 // icount 1592
sll r5, r4, r4 // icount 1593
slt r7, r0, r1 // icount 1594
sle r7, r1, r3 // icount 1595
sra r4, r4, r4 // icount 1596
ror r1, r0, r3 // icount 1597
and r2, r1, r4 // icount 1598
or r4, r3, r7 // icount 1599
.rlabel_76:
jal .rlabel_77 // icount 1600
sle r3, r1, r1 // icount 1601
sub r6, r5, r3 // icount 1602
rol r5, r0, r5 // icount 1603
seq r3, r2, r2 // icount 1604
or r4, r6, r7 // icount 1605
sub r4, r0, r5 // icount 1606
seq r1, r0, r6 // icount 1607
add r1, r2, r7 // icount 1608
slt r2, r7, r1 // icount 1609
add r4, r3, r2 // icount 1610
add r4, r7, r6 // icount 1611
sle r5, r6, r5 // icount 1612
and r5, r3, r5 // icount 1613
sub r1, r3, r0 // icount 1614
and r2, r5, r7 // icount 1615
sra r7, r0, r3 // icount 1616
slt r7, r0, r7 // icount 1617
.rlabel_77:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_78 // icount 1618
seq r7, r7, r3 // icount 1619
or r7, r5, r4 // icount 1620
sco r2, r5, r0 // icount 1621
sco r0, r4, r2 // icount 1622
slt r7, r0, r7 // icount 1623
sll r5, r4, r6 // icount 1624
or r5, r7, r7 // icount 1625
add r1, r0, r5 // icount 1626
and r2, r1, r6 // icount 1627
sco r6, r3, r0 // icount 1628
.rlabel_78:
beqz r0, .rlabel_79 // icount 1629
sco r0, r6, r5 // icount 1630
slt r4, r3, r7 // icount 1631
seq r1, r6, r7 // icount 1632
sub r0, r0, r0 // icount 1633
or r6, r4, r3 // icount 1634
sco r2, r7, r7 // icount 1635
sco r0, r6, r3 // icount 1636
sra r4, r0, r2 // icount 1637
.rlabel_79:
st r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_80 // icount 1638
slt r7, r3, r3 // icount 1639
sll r6, r3, r7 // icount 1640
add r3, r0, r7 // icount 1641
slt r4, r2, r3 // icount 1642
seq r1, r3, r1 // icount 1643
sle r0, r5, r3 // icount 1644
slt r5, r4, r6 // icount 1645
ror r7, r2, r3 // icount 1646
rol r4, r3, r2 // icount 1647
sle r4, r3, r6 // icount 1648
and r1, r2, r7 // icount 1649
rol r4, r0, r3 // icount 1650
.rlabel_80:
st r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_81 // icount 1651
sle r5, r1, r1 // icount 1652
seq r4, r5, r0 // icount 1653
slt r0, r4, r2 // icount 1654
seq r7, r6, r6 // icount 1655
ror r0, r1, r6 // icount 1656
seq r7, r7, r7 // icount 1657
and r5, r5, r2 // icount 1658
add r5, r4, r2 // icount 1659
rol r6, r0, r4 // icount 1660
sle r3, r5, r2 // icount 1661
.rlabel_81:
j .rlabel_82 // icount 1662
seq r0, r0, r1 // icount 1663
ror r6, r5, r7 // icount 1664
sll r7, r6, r7 // icount 1665
sub r0, r6, r6 // icount 1666
sle r5, r4, r3 // icount 1667
and r3, r7, r0 // icount 1668
seq r1, r2, r2 // icount 1669
add r3, r6, r2 // icount 1670
ror r5, r1, r0 // icount 1671
sle r5, r0, r7 // icount 1672
add r0, r3, r1 // icount 1673
sle r7, r2, r3 // icount 1674
sll r4, r0, r3 // icount 1675
add r5, r7, r7 // icount 1676
sle r6, r2, r2 // icount 1677
sle r7, r0, r4 // icount 1678
sll r3, r1, r0 // icount 1679
ror r4, r4, r0 // icount 1680
slt r1, r7, r5 // icount 1681
or r3, r0, r4 // icount 1682
seq r4, r7, r2 // icount 1683
and r5, r3, r4 // icount 1684
sle r3, r3, r7 // icount 1685
slt r1, r3, r6 // icount 1686
sll r0, r5, r6 // icount 1687
seq r5, r4, r3 // icount 1688
rol r3, r0, r2 // icount 1689
add r7, r0, r3 // icount 1690
sle r2, r1, r0 // icount 1691
sle r0, r6, r0 // icount 1692
sco r1, r1, r4 // icount 1693
sco r1, r2, r2 // icount 1694
sle r4, r7, r1 // icount 1695
sll r3, r3, r1 // icount 1696
rol r0, r1, r1 // icount 1697
add r5, r0, r7 // icount 1698
ror r7, r6, r1 // icount 1699
or r4, r3, r2 // icount 1700
slt r5, r3, r3 // icount 1701
add r1, r6, r7 // icount 1702
ror r6, r0, r2 // icount 1703
seq r7, r2, r0 // icount 1704
sco r5, r7, r4 // icount 1705
or r0, r6, r3 // icount 1706
sra r4, r6, r5 // icount 1707
sle r5, r5, r5 // icount 1708
sll r3, r7, r3 // icount 1709
sco r2, r7, r4 // icount 1710
sll r0, r6, r4 // icount 1711
sll r2, r4, r0 // icount 1712
sra r3, r1, r7 // icount 1713
rol r6, r5, r4 // icount 1714
seq r6, r5, r6 // icount 1715
and r6, r7, r1 // icount 1716
sll r4, r3, r6 // icount 1717
sle r2, r5, r2 // icount 1718
or r0, r6, r7 // icount 1719
rol r5, r5, r2 // icount 1720
sub r0, r5, r4 // icount 1721
sll r2, r2, r6 // icount 1722
ror r4, r3, r0 // icount 1723
ror r5, r1, r2 // icount 1724
sub r5, r1, r7 // icount 1725
sll r5, r5, r0 // icount 1726
slt r5, r5, r4 // icount 1727
sco r2, r2, r6 // icount 1728
or r5, r6, r3 // icount 1729
add r4, r2, r1 // icount 1730
and r7, r3, r5 // icount 1731
and r1, r3, r3 // icount 1732
add r2, r1, r6 // icount 1733
ror r6, r3, r7 // icount 1734
seq r6, r4, r7 // icount 1735
sle r4, r7, r7 // icount 1736
rol r7, r4, r3 // icount 1737
and r6, r6, r5 // icount 1738
sco r2, r5, r7 // icount 1739
sra r5, r0, r5 // icount 1740
sco r4, r0, r1 // icount 1741
ror r1, r6, r7 // icount 1742
or r5, r1, r2 // icount 1743
sub r0, r2, r3 // icount 1744
ror r7, r0, r0 // icount 1745
and r3, r5, r1 // icount 1746
rol r1, r7, r0 // icount 1747
sle r6, r0, r3 // icount 1748
slt r6, r5, r7 // icount 1749
and r4, r3, r5 // icount 1750
add r4, r1, r3 // icount 1751
sra r6, r1, r6 // icount 1752
.rlabel_82:
beqz r0, .rlabel_83 // icount 1753
slt r4, r4, r4 // icount 1754
or r1, r5, r5 // icount 1755
rol r6, r2, r6 // icount 1756
rol r6, r3, r5 // icount 1757
sll r4, r3, r0 // icount 1758
add r4, r4, r4 // icount 1759
slt r6, r7, r5 // icount 1760
slt r4, r2, r4 // icount 1761
or r4, r5, r2 // icount 1762
slt r3, r0, r2 // icount 1763
sub r7, r2, r3 // icount 1764
add r7, r3, r5 // icount 1765
sco r1, r5, r3 // icount 1766
.rlabel_83:
bnez r1, .rlabel_84 // icount 1767
sra r5, r1, r4 // icount 1768
.rlabel_84:
beqz r0, .rlabel_85 // icount 1769
slt r3, r0, r3 // icount 1770
sco r3, r0, r7 // icount 1771
sra r0, r3, r7 // icount 1772
sll r6, r4, r3 // icount 1773
or r4, r1, r0 // icount 1774
add r0, r5, r1 // icount 1775
rol r6, r7, r3 // icount 1776
sra r7, r4, r3 // icount 1777
add r6, r1, r1 // icount 1778
or r6, r6, r0 // icount 1779
sll r1, r3, r3 // icount 1780
sra r0, r1, r7 // icount 1781
sub r6, r5, r5 // icount 1782
.rlabel_85:
j .rlabel_86 // icount 1783
seq r5, r5, r5 // icount 1784
slt r0, r6, r1 // icount 1785
sle r0, r3, r6 // icount 1786
sle r3, r4, r1 // icount 1787
sub r1, r6, r6 // icount 1788
sco r5, r1, r1 // icount 1789
sle r4, r0, r4 // icount 1790
ror r6, r7, r4 // icount 1791
rol r0, r0, r6 // icount 1792
rol r5, r2, r1 // icount 1793
add r1, r1, r6 // icount 1794
seq r4, r5, r2 // icount 1795
or r7, r6, r5 // icount 1796
rol r3, r5, r5 // icount 1797
sub r6, r5, r3 // icount 1798
sll r2, r2, r7 // icount 1799
rol r5, r0, r0 // icount 1800
or r2, r0, r6 // icount 1801
sco r1, r7, r2 // icount 1802
sle r7, r7, r7 // icount 1803
sco r3, r4, r1 // icount 1804
sco r6, r4, r3 // icount 1805
add r5, r2, r5 // icount 1806
seq r6, r5, r7 // icount 1807
sco r2, r6, r2 // icount 1808
sra r3, r1, r3 // icount 1809
sco r2, r3, r3 // icount 1810
seq r5, r0, r0 // icount 1811
sco r6, r5, r7 // icount 1812
sub r1, r3, r6 // icount 1813
or r7, r4, r4 // icount 1814
sle r1, r2, r1 // icount 1815
ror r2, r1, r5 // icount 1816
rol r7, r4, r0 // icount 1817
sub r0, r3, r6 // icount 1818
add r1, r7, r5 // icount 1819
and r4, r7, r3 // icount 1820
sll r0, r3, r1 // icount 1821
add r7, r6, r7 // icount 1822
and r6, r2, r2 // icount 1823
or r5, r3, r6 // icount 1824
sra r5, r5, r4 // icount 1825
sle r2, r6, r0 // icount 1826
sra r1, r7, r7 // icount 1827
rol r7, r4, r4 // icount 1828
and r4, r0, r4 // icount 1829
add r4, r4, r3 // icount 1830
add r6, r7, r7 // icount 1831
add r2, r5, r2 // icount 1832
sco r0, r7, r0 // icount 1833
sle r1, r2, r1 // icount 1834
and r6, r1, r1 // icount 1835
sll r4, r0, r0 // icount 1836
or r3, r0, r7 // icount 1837
sco r5, r3, r4 // icount 1838
sco r4, r2, r4 // icount 1839
sll r6, r7, r3 // icount 1840
add r2, r4, r2 // icount 1841
and r4, r7, r3 // icount 1842
or r6, r0, r1 // icount 1843
sco r3, r2, r1 // icount 1844
ror r3, r1, r5 // icount 1845
add r3, r3, r3 // icount 1846
add r1, r4, r2 // icount 1847
seq r5, r6, r7 // icount 1848
rol r0, r2, r7 // icount 1849
slt r4, r7, r1 // icount 1850
seq r0, r7, r5 // icount 1851
and r1, r0, r0 // icount 1852
slt r6, r0, r4 // icount 1853
or r4, r3, r4 // icount 1854
and r6, r4, r5 // icount 1855
sco r6, r1, r4 // icount 1856
sco r1, r1, r1 // icount 1857
sco r5, r1, r0 // icount 1858
and r5, r2, r6 // icount 1859
sra r1, r2, r0 // icount 1860
seq r4, r7, r1 // icount 1861
sub r0, r0, r4 // icount 1862
or r3, r4, r2 // icount 1863
add r2, r0, r5 // icount 1864
seq r5, r7, r5 // icount 1865
seq r1, r3, r6 // icount 1866
slt r6, r6, r5 // icount 1867
seq r0, r3, r4 // icount 1868
ror r6, r2, r1 // icount 1869
sub r5, r0, r0 // icount 1870
seq r3, r3, r7 // icount 1871
rol r3, r5, r2 // icount 1872
rol r7, r6, r3 // icount 1873
sub r7, r6, r3 // icount 1874
sub r4, r0, r4 // icount 1875
sle r1, r1, r4 // icount 1876
sub r6, r7, r0 // icount 1877
seq r2, r5, r3 // icount 1878
ror r4, r5, r2 // icount 1879
seq r0, r0, r4 // icount 1880
slt r2, r5, r5 // icount 1881
or r6, r3, r6 // icount 1882
sll r0, r2, r0 // icount 1883
slt r0, r0, r6 // icount 1884
.rlabel_86:
j .rlabel_87 // icount 1885
sll r3, r5, r2 // icount 1886
seq r1, r4, r7 // icount 1887
ror r7, r1, r5 // icount 1888
sra r6, r3, r0 // icount 1889
sra r6, r1, r5 // icount 1890
ror r1, r2, r2 // icount 1891
seq r2, r6, r3 // icount 1892
sra r2, r4, r2 // icount 1893
seq r1, r1, r6 // icount 1894
sle r1, r5, r2 // icount 1895
sle r2, r7, r3 // icount 1896
sra r0, r7, r3 // icount 1897
and r2, r0, r4 // icount 1898
or r5, r6, r1 // icount 1899
seq r5, r0, r2 // icount 1900
slt r4, r6, r5 // icount 1901
seq r0, r1, r3 // icount 1902
sco r3, r3, r4 // icount 1903
sle r3, r1, r4 // icount 1904
or r1, r7, r2 // icount 1905
sco r7, r2, r4 // icount 1906
sle r5, r1, r5 // icount 1907
add r3, r4, r0 // icount 1908
add r2, r7, r0 // icount 1909
add r1, r1, r2 // icount 1910
slt r4, r3, r2 // icount 1911
ror r7, r7, r4 // icount 1912
add r3, r7, r7 // icount 1913
add r7, r7, r0 // icount 1914
slt r4, r6, r7 // icount 1915
or r6, r6, r1 // icount 1916
rol r4, r5, r1 // icount 1917
add r6, r4, r1 // icount 1918
sco r2, r1, r5 // icount 1919
sub r7, r7, r2 // icount 1920
and r6, r1, r4 // icount 1921
sco r0, r1, r5 // icount 1922
ror r7, r1, r5 // icount 1923
ror r6, r7, r0 // icount 1924
sra r5, r1, r1 // icount 1925
sco r1, r4, r2 // icount 1926
sco r6, r5, r7 // icount 1927
sco r5, r1, r5 // icount 1928
rol r5, r6, r0 // icount 1929
rol r4, r7, r0 // icount 1930
sll r4, r3, r4 // icount 1931
ror r4, r3, r3 // icount 1932
and r1, r3, r4 // icount 1933
ror r0, r0, r3 // icount 1934
ror r0, r0, r7 // icount 1935
sub r2, r4, r4 // icount 1936
add r4, r5, r4 // icount 1937
add r0, r5, r2 // icount 1938
sra r4, r0, r2 // icount 1939
rol r1, r3, r5 // icount 1940
and r1, r6, r7 // icount 1941
sco r0, r2, r4 // icount 1942
rol r2, r3, r0 // icount 1943
sle r1, r5, r6 // icount 1944
sle r0, r0, r3 // icount 1945
slt r0, r6, r2 // icount 1946
and r0, r6, r7 // icount 1947
or r5, r5, r7 // icount 1948
sll r5, r4, r7 // icount 1949
sco r7, r0, r0 // icount 1950
sra r5, r4, r4 // icount 1951
seq r0, r5, r7 // icount 1952
or r4, r6, r2 // icount 1953
and r1, r1, r0 // icount 1954
sll r1, r6, r1 // icount 1955
sle r3, r0, r2 // icount 1956
sub r6, r3, r6 // icount 1957
sll r7, r2, r6 // icount 1958
sle r0, r2, r1 // icount 1959
.rlabel_87:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_88 // icount 1960
rol r5, r7, r0 // icount 1961
slt r7, r7, r6 // icount 1962
add r1, r2, r5 // icount 1963
sle r3, r4, r2 // icount 1964
ror r1, r7, r5 // icount 1965
slt r6, r1, r3 // icount 1966
sle r2, r1, r3 // icount 1967
sub r2, r4, r4 // icount 1968
slt r2, r3, r0 // icount 1969
sll r0, r6, r3 // icount 1970
ror r5, r6, r2 // icount 1971
sco r3, r7, r6 // icount 1972
slt r7, r5, r1 // icount 1973
sll r0, r7, r0 // icount 1974
sco r7, r3, r5 // icount 1975
and r5, r1, r7 // icount 1976
slt r7, r2, r6 // icount 1977
seq r0, r3, r5 // icount 1978
seq r0, r2, r7 // icount 1979
or r7, r1, r6 // icount 1980
sco r5, r6, r0 // icount 1981
ror r1, r4, r3 // icount 1982
sle r6, r6, r5 // icount 1983
seq r6, r5, r6 // icount 1984
.rlabel_88:
bnez r1, .rlabel_89 // icount 1985
and r1, r3, r4 // icount 1986
and r0, r5, r1 // icount 1987
.rlabel_89:
j .rlabel_90 // icount 1988
.rlabel_90:
bnez r1, .rlabel_91 // icount 1989
or r2, r7, r1 // icount 1990
sco r4, r0, r5 // icount 1991
sle r4, r4, r2 // icount 1992
sco r4, r3, r7 // icount 1993
and r6, r7, r2 // icount 1994
sco r1, r7, r2 // icount 1995
sra r3, r3, r3 // icount 1996
rol r0, r3, r4 // icount 1997
sle r1, r5, r1 // icount 1998
ror r2, r1, r5 // icount 1999
sra r3, r0, r5 // icount 2000
sle r7, r1, r2 // icount 2001
and r5, r7, r4 // icount 2002
or r0, r3, r0 // icount 2003
.rlabel_91:
beqz r0, .rlabel_92 // icount 2004
sll r3, r5, r5 // icount 2005
slt r0, r1, r5 // icount 2006
sll r2, r5, r5 // icount 2007
sra r3, r2, r4 // icount 2008
.rlabel_92:
st r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_93 // icount 2009
sra r3, r4, r3 // icount 2010
and r1, r0, r3 // icount 2011
sub r6, r4, r3 // icount 2012
.rlabel_93:
j .rlabel_94 // icount 2013
rol r0, r0, r0 // icount 2014
and r0, r0, r3 // icount 2015
sra r4, r7, r1 // icount 2016
sle r0, r4, r1 // icount 2017
ror r0, r2, r2 // icount 2018
and r4, r3, r5 // icount 2019
sra r4, r4, r2 // icount 2020
sll r4, r6, r1 // icount 2021
and r6, r2, r3 // icount 2022
ror r6, r6, r4 // icount 2023
add r2, r5, r7 // icount 2024
sll r2, r1, r6 // icount 2025
and r5, r7, r7 // icount 2026
or r5, r0, r7 // icount 2027
seq r4, r5, r3 // icount 2028
sll r3, r0, r1 // icount 2029
or r7, r7, r6 // icount 2030
rol r0, r2, r1 // icount 2031
seq r7, r6, r7 // icount 2032
sll r7, r3, r6 // icount 2033
and r5, r2, r2 // icount 2034
rol r1, r1, r2 // icount 2035
sco r0, r0, r5 // icount 2036
or r4, r3, r6 // icount 2037
sco r6, r0, r7 // icount 2038
or r6, r7, r2 // icount 2039
sub r5, r7, r5 // icount 2040
sco r6, r2, r3 // icount 2041
or r4, r0, r5 // icount 2042
sco r4, r4, r1 // icount 2043
sco r0, r5, r3 // icount 2044
rol r4, r7, r5 // icount 2045
sle r4, r0, r5 // icount 2046
or r7, r1, r0 // icount 2047
sra r3, r7, r4 // icount 2048
sll r5, r1, r6 // icount 2049
slt r0, r5, r4 // icount 2050
ror r6, r7, r3 // icount 2051
and r5, r4, r0 // icount 2052
rol r7, r7, r6 // icount 2053
sco r3, r4, r3 // icount 2054
add r6, r2, r3 // icount 2055
sub r0, r3, r5 // icount 2056
slt r1, r1, r0 // icount 2057
slt r2, r3, r4 // icount 2058
sra r6, r7, r1 // icount 2059
or r4, r1, r5 // icount 2060
slt r5, r1, r5 // icount 2061
rol r4, r0, r4 // icount 2062
rol r6, r7, r2 // icount 2063
sle r0, r1, r3 // icount 2064
and r5, r0, r1 // icount 2065
.rlabel_94:
ld r7, r6, 8
addi r6, r6, 8
j .rlabel_95 // icount 2066
and r6, r0, r6 // icount 2067
sra r4, r0, r5 // icount 2068
ror r4, r3, r7 // icount 2069
sub r3, r5, r7 // icount 2070
sra r4, r0, r5 // icount 2071
.rlabel_95:
jal .rlabel_96 // icount 2072
add r4, r3, r3 // icount 2073
add r0, r5, r3 // icount 2074
seq r5, r0, r6 // icount 2075
sll r6, r0, r7 // icount 2076
sra r1, r7, r1 // icount 2077
seq r1, r6, r5 // icount 2078
slt r5, r3, r3 // icount 2079
sub r6, r2, r0 // icount 2080
sll r1, r0, r5 // icount 2081
or r3, r5, r6 // icount 2082
rol r4, r0, r6 // icount 2083
seq r3, r0, r7 // icount 2084
add r5, r1, r3 // icount 2085
and r2, r3, r4 // icount 2086
rol r1, r7, r0 // icount 2087
sra r3, r4, r6 // icount 2088
sll r1, r2, r5 // icount 2089
ror r4, r2, r7 // icount 2090
ror r5, r7, r0 // icount 2091
seq r0, r0, r5 // icount 2092
sra r4, r5, r5 // icount 2093
slt r2, r3, r5 // icount 2094
sll r4, r5, r0 // icount 2095
or r1, r2, r4 // icount 2096
sco r7, r3, r2 // icount 2097
or r6, r2, r0 // icount 2098
.rlabel_96:
j .rlabel_97 // icount 2099
sub r3, r1, r7 // icount 2100
add r3, r0, r2 // icount 2101
slt r3, r3, r3 // icount 2102
add r0, r0, r0 // icount 2103
seq r1, r5, r3 // icount 2104
add r5, r2, r5 // icount 2105
or r0, r4, r3 // icount 2106
ror r1, r4, r4 // icount 2107
sle r6, r5, r6 // icount 2108
rol r6, r0, r7 // icount 2109
or r0, r2, r7 // icount 2110
ror r3, r0, r1 // icount 2111
sra r3, r0, r5 // icount 2112
add r4, r0, r4 // icount 2113
sub r6, r2, r4 // icount 2114
sle r0, r7, r6 // icount 2115
ror r5, r2, r5 // icount 2116
ror r2, r5, r6 // icount 2117
sco r7, r2, r2 // icount 2118
ror r7, r4, r6 // icount 2119
and r1, r3, r0 // icount 2120
rol r0, r3, r0 // icount 2121
sco r7, r4, r2 // icount 2122
ror r5, r7, r5 // icount 2123
sle r4, r1, r6 // icount 2124
and r2, r1, r1 // icount 2125
sra r0, r0, r1 // icount 2126
or r5, r0, r5 // icount 2127
sub r5, r5, r7 // icount 2128
sra r6, r5, r4 // icount 2129
and r2, r5, r6 // icount 2130
seq r7, r7, r7 // icount 2131
rol r2, r5, r2 // icount 2132
sle r4, r6, r1 // icount 2133
rol r5, r2, r1 // icount 2134
or r3, r1, r6 // icount 2135
add r7, r4, r3 // icount 2136
seq r0, r1, r1 // icount 2137
add r2, r1, r1 // icount 2138
sll r0, r7, r7 // icount 2139
sle r5, r5, r1 // icount 2140
ror r3, r5, r5 // icount 2141
add r0, r2, r0 // icount 2142
sco r3, r7, r2 // icount 2143
ror r3, r1, r7 // icount 2144
or r3, r2, r1 // icount 2145
sub r0, r0, r5 // icount 2146
or r4, r7, r2 // icount 2147
sco r3, r2, r1 // icount 2148
sle r7, r4, r1 // icount 2149
sub r2, r7, r1 // icount 2150
sub r4, r0, r2 // icount 2151
seq r6, r5, r6 // icount 2152
sle r4, r1, r7 // icount 2153
sle r4, r2, r6 // icount 2154
sle r5, r0, r3 // icount 2155
sra r3, r2, r4 // icount 2156
or r1, r5, r0 // icount 2157
sra r6, r5, r0 // icount 2158
sub r2, r5, r7 // icount 2159
rol r3, r7, r4 // icount 2160
sub r2, r3, r6 // icount 2161
seq r4, r6, r2 // icount 2162
and r5, r2, r1 // icount 2163
slt r2, r4, r2 // icount 2164
sll r4, r6, r7 // icount 2165
seq r2, r1, r6 // icount 2166
sub r7, r5, r3 // icount 2167
or r4, r2, r6 // icount 2168
add r4, r6, r0 // icount 2169
sub r7, r3, r2 // icount 2170
ror r6, r2, r1 // icount 2171
sub r7, r7, r1 // icount 2172
sco r4, r4, r6 // icount 2173
seq r4, r3, r2 // icount 2174
sll r2, r2, r2 // icount 2175
slt r2, r6, r1 // icount 2176
sra r4, r7, r2 // icount 2177
sco r1, r1, r7 // icount 2178
slt r2, r2, r2 // icount 2179
sub r1, r7, r5 // icount 2180
sle r6, r7, r2 // icount 2181
and r0, r3, r3 // icount 2182
sll r0, r0, r6 // icount 2183
add r7, r7, r3 // icount 2184
or r3, r0, r1 // icount 2185
sle r3, r2, r1 // icount 2186
slt r4, r1, r0 // icount 2187
sle r0, r3, r0 // icount 2188
sra r0, r4, r3 // icount 2189
sll r4, r6, r6 // icount 2190
rol r1, r6, r0 // icount 2191
rol r7, r1, r1 // icount 2192
sle r2, r3, r0 // icount 2193
slt r2, r5, r1 // icount 2194
rol r7, r4, r0 // icount 2195
sra r3, r6, r1 // icount 2196
sle r1, r0, r1 // icount 2197
slt r6, r4, r2 // icount 2198
sll r3, r1, r0 // icount 2199
add r1, r0, r4 // icount 2200
rol r1, r0, r0 // icount 2201
seq r3, r5, r5 // icount 2202
sle r0, r7, r1 // icount 2203
sle r0, r7, r5 // icount 2204
or r0, r7, r7 // icount 2205
slt r1, r7, r2 // icount 2206
rol r4, r1, r2 // icount 2207
and r5, r4, r7 // icount 2208
sle r3, r7, r3 // icount 2209
sra r3, r2, r2 // icount 2210
sco r4, r6, r2 // icount 2211
.rlabel_97:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_98 // icount 2212
sco r2, r2, r2 // icount 2213
or r2, r1, r6 // icount 2214
sco r6, r1, r6 // icount 2215
sco r0, r4, r7 // icount 2216
sll r6, r1, r0 // icount 2217
and r0, r2, r6 // icount 2218
rol r2, r0, r4 // icount 2219
.rlabel_98:
st r7, r6, 0
addi r6, r6, 0
j .rlabel_99 // icount 2220
sll r3, r5, r3 // icount 2221
or r5, r2, r3 // icount 2222
slt r3, r7, r2 // icount 2223
sco r7, r6, r4 // icount 2224
slt r0, r4, r1 // icount 2225
slt r0, r0, r6 // icount 2226
sub r1, r3, r2 // icount 2227
or r6, r4, r1 // icount 2228
or r2, r7, r0 // icount 2229
ror r2, r1, r0 // icount 2230
rol r0, r6, r3 // icount 2231
rol r4, r0, r3 // icount 2232
sll r4, r5, r5 // icount 2233
sco r3, r2, r3 // icount 2234
sra r1, r0, r4 // icount 2235
rol r2, r0, r4 // icount 2236
slt r5, r0, r6 // icount 2237
ror r1, r4, r5 // icount 2238
seq r7, r1, r7 // icount 2239
rol r2, r5, r2 // icount 2240
sle r1, r6, r4 // icount 2241
and r6, r2, r7 // icount 2242
sle r4, r7, r2 // icount 2243
slt r5, r0, r3 // icount 2244
and r5, r2, r5 // icount 2245
sub r4, r5, r1 // icount 2246
rol r1, r7, r0 // icount 2247
.rlabel_99:
addi r3, r3, -1 // icount 2248
beqz r3, .done // icount 2249
jr r5, 0 // icount 2250
.done:
halt // icount 2251
halt // icount 2252
