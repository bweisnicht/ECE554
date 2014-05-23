// seed 7
lbi r0, 68 // icount 0
slbi r0, 174 // icount 1
lbi r1, 67 // icount 2
slbi r1, 33 // icount 3
lbi r2, 126 // icount 4
slbi r2, 76 // icount 5
lbi r3, 40 // icount 6
slbi r3, 184 // icount 7
lbi r4, 2 // icount 8
slbi r4, 23 // icount 9
lbi r5, 200 // icount 10
slbi r5, 228 // icount 11
lbi r6, 136 // icount 12
slbi r6, 227 // icount 13
lbi r7, 74 // icount 14
slbi r7, 106 // icount 15
lbi r0, 0 // icount 16
lbi r1, 1 // icount 17
lbi r2, -1 // icount 18
lbi r3, 1 // icount 19
andi r6, r6, 0xfe // icount 20
lbi r3, 3 // icount 21
lbi r5, 44 // icount 22
jal .rlabel_0 // icount 23
rol r6, r3, r4 // icount 24
.rlabel_0:
j .rlabel_1 // icount 25
sra r0, r0, r1 // icount 26
seq r0, r2, r7 // icount 27
and r5, r2, r4 // icount 28
and r6, r6, r4 // icount 29
or r5, r4, r3 // icount 30
and r0, r6, r0 // icount 31
ror r1, r1, r4 // icount 32
and r5, r5, r6 // icount 33
and r0, r0, r0 // icount 34
seq r4, r1, r6 // icount 35
sco r1, r0, r1 // icount 36
and r5, r5, r7 // icount 37
rol r7, r3, r5 // icount 38
or r0, r1, r2 // icount 39
.rlabel_1:
j .rlabel_2 // icount 40
seq r7, r2, r1 // icount 41
add r6, r0, r4 // icount 42
add r2, r6, r1 // icount 43
add r0, r5, r4 // icount 44
sub r0, r0, r7 // icount 45
sle r6, r5, r0 // icount 46
sra r1, r5, r4 // icount 47
rol r5, r2, r1 // icount 48
sra r0, r3, r7 // icount 49
rol r7, r2, r5 // icount 50
sco r3, r5, r1 // icount 51
add r2, r2, r3 // icount 52
add r6, r2, r3 // icount 53
add r4, r2, r2 // icount 54
sle r4, r6, r1 // icount 55
sll r5, r6, r4 // icount 56
sle r0, r1, r1 // icount 57
seq r4, r2, r3 // icount 58
slt r1, r4, r3 // icount 59
sll r3, r5, r4 // icount 60
slt r4, r5, r1 // icount 61
sco r5, r5, r6 // icount 62
slt r2, r3, r5 // icount 63
.rlabel_2:
jal .rlabel_3 // icount 64
sra r7, r4, r4 // icount 65
sub r4, r5, r4 // icount 66
or r2, r3, r3 // icount 67
sll r6, r2, r3 // icount 68
rol r4, r7, r1 // icount 69
sll r7, r1, r1 // icount 70
or r1, r1, r2 // icount 71
sle r6, r0, r2 // icount 72
sll r7, r6, r1 // icount 73
rol r4, r4, r1 // icount 74
and r1, r6, r6 // icount 75
and r1, r5, r2 // icount 76
add r5, r2, r7 // icount 77
sco r6, r1, r6 // icount 78
sll r0, r3, r6 // icount 79
sll r2, r0, r7 // icount 80
ror r0, r2, r4 // icount 81
sll r5, r2, r2 // icount 82
or r7, r6, r2 // icount 83
seq r5, r2, r7 // icount 84
add r6, r1, r7 // icount 85
add r5, r0, r0 // icount 86
rol r4, r2, r7 // icount 87
or r5, r3, r6 // icount 88
slt r5, r0, r2 // icount 89
slt r2, r2, r1 // icount 90
sco r1, r5, r2 // icount 91
sll r0, r6, r1 // icount 92
sll r1, r3, r4 // icount 93
sco r3, r0, r1 // icount 94
add r2, r1, r2 // icount 95
.rlabel_3:
st r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_4 // icount 96
seq r3, r2, r4 // icount 97
sra r7, r5, r2 // icount 98
sub r7, r2, r6 // icount 99
sub r0, r3, r1 // icount 100
.rlabel_4:
ld r7, r6, 4
addi r6, r6, 4
j .rlabel_5 // icount 101
ror r7, r0, r7 // icount 102
ror r5, r0, r2 // icount 103
ror r1, r0, r2 // icount 104
rol r3, r0, r1 // icount 105
or r0, r4, r0 // icount 106
or r2, r1, r5 // icount 107
slt r7, r7, r2 // icount 108
ror r2, r5, r7 // icount 109
sra r1, r5, r2 // icount 110
seq r4, r6, r6 // icount 111
sle r0, r5, r4 // icount 112
sub r5, r2, r6 // icount 113
ror r4, r0, r5 // icount 114
or r3, r4, r6 // icount 115
add r2, r4, r3 // icount 116
ror r1, r0, r7 // icount 117
sle r1, r7, r7 // icount 118
add r4, r1, r5 // icount 119
rol r7, r1, r2 // icount 120
sub r0, r1, r0 // icount 121
add r1, r5, r5 // icount 122
or r7, r6, r2 // icount 123
sra r0, r0, r4 // icount 124
rol r6, r2, r2 // icount 125
seq r5, r5, r4 // icount 126
seq r6, r2, r0 // icount 127
sub r1, r3, r6 // icount 128
or r7, r5, r5 // icount 129
sub r2, r6, r3 // icount 130
ror r0, r3, r3 // icount 131
sub r2, r4, r7 // icount 132
sle r6, r6, r2 // icount 133
sra r3, r5, r0 // icount 134
add r7, r3, r1 // icount 135
slt r2, r3, r0 // icount 136
ror r4, r2, r5 // icount 137
seq r2, r6, r3 // icount 138
add r4, r6, r5 // icount 139
sub r0, r5, r0 // icount 140
and r0, r3, r0 // icount 141
sra r0, r3, r3 // icount 142
sle r5, r1, r7 // icount 143
sub r1, r1, r4 // icount 144
sle r2, r7, r4 // icount 145
or r2, r5, r1 // icount 146
sll r4, r7, r7 // icount 147
and r5, r4, r2 // icount 148
sll r5, r0, r2 // icount 149
ror r2, r5, r4 // icount 150
sle r4, r2, r4 // icount 151
sll r3, r1, r5 // icount 152
sra r3, r2, r0 // icount 153
seq r4, r5, r0 // icount 154
sub r1, r2, r7 // icount 155
slt r5, r6, r6 // icount 156
slt r6, r5, r1 // icount 157
add r0, r5, r7 // icount 158
add r1, r3, r7 // icount 159
add r2, r2, r0 // icount 160
seq r1, r7, r3 // icount 161
sub r3, r5, r5 // icount 162
and r7, r0, r7 // icount 163
rol r4, r4, r4 // icount 164
sub r7, r5, r6 // icount 165
and r4, r5, r5 // icount 166
ror r1, r3, r2 // icount 167
add r0, r1, r6 // icount 168
sll r2, r7, r3 // icount 169
seq r0, r0, r0 // icount 170
slt r2, r5, r5 // icount 171
add r6, r4, r2 // icount 172
and r1, r4, r3 // icount 173
sll r5, r5, r5 // icount 174
seq r5, r0, r0 // icount 175
add r7, r5, r7 // icount 176
slt r1, r7, r0 // icount 177
seq r6, r0, r3 // icount 178
sco r5, r3, r3 // icount 179
sub r0, r3, r5 // icount 180
sle r2, r5, r7 // icount 181
or r4, r0, r5 // icount 182
add r0, r5, r3 // icount 183
seq r1, r4, r4 // icount 184
seq r0, r7, r0 // icount 185
.rlabel_5:
ld r7, r6, 14
addi r6, r6, 14
j .rlabel_6 // icount 186
sub r6, r1, r7 // icount 187
sll r1, r5, r0 // icount 188
seq r6, r5, r6 // icount 189
sll r2, r6, r1 // icount 190
or r5, r1, r0 // icount 191
sra r1, r2, r6 // icount 192
add r6, r6, r1 // icount 193
sub r5, r3, r3 // icount 194
sle r1, r2, r0 // icount 195
sle r3, r4, r7 // icount 196
sco r7, r3, r6 // icount 197
or r7, r2, r1 // icount 198
sle r0, r1, r5 // icount 199
sll r1, r0, r6 // icount 200
sra r7, r3, r6 // icount 201
sco r2, r1, r5 // icount 202
ror r6, r5, r4 // icount 203
add r2, r7, r3 // icount 204
sra r5, r1, r4 // icount 205
seq r1, r5, r5 // icount 206
slt r5, r4, r5 // icount 207
or r5, r5, r6 // icount 208
sra r4, r2, r1 // icount 209
or r6, r0, r3 // icount 210
seq r5, r4, r4 // icount 211
seq r5, r3, r1 // icount 212
or r6, r4, r2 // icount 213
seq r3, r5, r4 // icount 214
add r4, r3, r0 // icount 215
seq r0, r2, r0 // icount 216
add r7, r7, r3 // icount 217
sll r7, r3, r1 // icount 218
slt r2, r5, r4 // icount 219
rol r6, r6, r4 // icount 220
sub r7, r2, r0 // icount 221
ror r3, r1, r3 // icount 222
or r4, r0, r2 // icount 223
seq r1, r1, r2 // icount 224
add r5, r4, r6 // icount 225
sub r0, r0, r0 // icount 226
seq r5, r2, r0 // icount 227
.rlabel_6:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_7 // icount 228
sle r7, r3, r6 // icount 229
ror r2, r5, r3 // icount 230
add r5, r3, r6 // icount 231
or r0, r5, r5 // icount 232
rol r6, r4, r2 // icount 233
sra r2, r1, r5 // icount 234
sle r7, r4, r3 // icount 235
add r7, r4, r0 // icount 236
sra r2, r1, r4 // icount 237
slt r1, r7, r1 // icount 238
rol r5, r5, r5 // icount 239
ror r6, r5, r0 // icount 240
slt r1, r6, r0 // icount 241
sub r6, r0, r7 // icount 242
.rlabel_7:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_8 // icount 243
add r0, r6, r4 // icount 244
sra r6, r3, r5 // icount 245
or r2, r7, r4 // icount 246
sll r0, r5, r6 // icount 247
.rlabel_8:
ld r7, r6, 4
addi r6, r6, 4
jal .rlabel_9 // icount 248
sub r3, r6, r5 // icount 249
rol r0, r1, r6 // icount 250
add r7, r1, r3 // icount 251
ror r1, r5, r3 // icount 252
.rlabel_9:
bnez r1, .rlabel_10 // icount 253
.rlabel_10:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_11 // icount 254
slt r1, r4, r3 // icount 255
sub r4, r2, r3 // icount 256
ror r1, r7, r1 // icount 257
sle r4, r3, r1 // icount 258
or r2, r7, r3 // icount 259
or r6, r1, r1 // icount 260
.rlabel_11:
ld r7, r6, 14
addi r6, r6, 14
jal .rlabel_12 // icount 261
sle r7, r0, r4 // icount 262
sra r3, r3, r5 // icount 263
or r0, r3, r2 // icount 264
ror r6, r1, r2 // icount 265
sle r6, r0, r6 // icount 266
and r3, r5, r6 // icount 267
seq r7, r5, r0 // icount 268
slt r6, r0, r3 // icount 269
.rlabel_12:
st r7, r6, 8
addi r6, r6, 8
jal .rlabel_13 // icount 270
sll r0, r3, r6 // icount 271
sco r4, r6, r7 // icount 272
add r0, r4, r5 // icount 273
.rlabel_13:
beqz r0, .rlabel_14 // icount 274
ror r5, r2, r0 // icount 275
.rlabel_14:
ld r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_15 // icount 276
sle r6, r3, r5 // icount 277
sll r4, r0, r3 // icount 278
sco r4, r5, r3 // icount 279
ror r1, r1, r6 // icount 280
sco r1, r7, r6 // icount 281
sub r4, r0, r2 // icount 282
slt r0, r4, r1 // icount 283
or r5, r6, r4 // icount 284
rol r2, r3, r3 // icount 285
seq r6, r5, r3 // icount 286
and r4, r1, r5 // icount 287
sub r0, r6, r7 // icount 288
sle r5, r0, r3 // icount 289
.rlabel_15:
ld r7, r6, 12
addi r6, r6, 12
j .rlabel_16 // icount 290
rol r2, r0, r6 // icount 291
slt r1, r1, r7 // icount 292
or r3, r1, r4 // icount 293
sco r3, r4, r1 // icount 294
sll r1, r1, r4 // icount 295
sra r4, r2, r0 // icount 296
sle r2, r4, r5 // icount 297
seq r5, r6, r6 // icount 298
and r6, r1, r1 // icount 299
and r0, r4, r3 // icount 300
and r1, r7, r6 // icount 301
sra r3, r1, r1 // icount 302
sll r0, r5, r6 // icount 303
sra r5, r0, r7 // icount 304
sra r0, r3, r0 // icount 305
sll r7, r5, r6 // icount 306
sle r6, r6, r6 // icount 307
sco r5, r2, r5 // icount 308
ror r6, r1, r3 // icount 309
or r2, r3, r1 // icount 310
sra r7, r6, r0 // icount 311
rol r1, r0, r6 // icount 312
seq r7, r2, r3 // icount 313
sll r7, r6, r4 // icount 314
sll r2, r6, r0 // icount 315
sub r1, r0, r3 // icount 316
and r7, r2, r1 // icount 317
seq r1, r3, r2 // icount 318
add r0, r0, r6 // icount 319
or r4, r6, r3 // icount 320
and r0, r5, r2 // icount 321
.rlabel_16:
jal .rlabel_17 // icount 322
slt r2, r4, r6 // icount 323
add r5, r0, r7 // icount 324
add r2, r2, r1 // icount 325
sll r4, r0, r2 // icount 326
slt r3, r4, r3 // icount 327
sle r2, r1, r7 // icount 328
.rlabel_17:
ld r7, r6, 4
addi r6, r6, 4
j .rlabel_18 // icount 329
ror r6, r2, r0 // icount 330
sub r2, r0, r7 // icount 331
sub r7, r7, r0 // icount 332
sle r1, r2, r6 // icount 333
sra r1, r1, r3 // icount 334
rol r7, r0, r7 // icount 335
sll r0, r2, r5 // icount 336
add r1, r4, r0 // icount 337
sll r0, r0, r7 // icount 338
seq r3, r3, r2 // icount 339
sll r6, r1, r5 // icount 340
or r6, r5, r7 // icount 341
sll r3, r1, r4 // icount 342
slt r7, r7, r0 // icount 343
ror r5, r4, r7 // icount 344
rol r1, r3, r7 // icount 345
sub r7, r5, r3 // icount 346
sra r5, r7, r3 // icount 347
and r4, r0, r7 // icount 348
sle r5, r5, r2 // icount 349
and r7, r7, r5 // icount 350
and r7, r5, r5 // icount 351
ror r7, r7, r6 // icount 352
add r5, r0, r4 // icount 353
seq r3, r5, r2 // icount 354
or r3, r7, r5 // icount 355
seq r4, r4, r0 // icount 356
sra r1, r4, r6 // icount 357
rol r6, r4, r0 // icount 358
or r0, r0, r6 // icount 359
sra r1, r6, r7 // icount 360
sll r2, r5, r4 // icount 361
ror r2, r0, r5 // icount 362
add r7, r1, r4 // icount 363
rol r1, r7, r3 // icount 364
sra r6, r4, r0 // icount 365
add r1, r1, r5 // icount 366
seq r3, r7, r4 // icount 367
add r2, r1, r4 // icount 368
and r6, r0, r0 // icount 369
sra r5, r3, r5 // icount 370
slt r2, r6, r7 // icount 371
seq r4, r0, r0 // icount 372
add r7, r6, r4 // icount 373
and r1, r3, r1 // icount 374
sll r6, r3, r6 // icount 375
sra r6, r0, r7 // icount 376
sub r4, r0, r0 // icount 377
slt r4, r5, r2 // icount 378
ror r7, r1, r1 // icount 379
sll r4, r3, r1 // icount 380
sra r1, r3, r6 // icount 381
sub r1, r5, r1 // icount 382
rol r6, r6, r3 // icount 383
sco r1, r5, r7 // icount 384
sll r3, r6, r0 // icount 385
sle r4, r6, r2 // icount 386
seq r0, r5, r5 // icount 387
rol r6, r1, r2 // icount 388
or r0, r7, r7 // icount 389
or r1, r2, r4 // icount 390
sco r2, r0, r0 // icount 391
and r5, r3, r7 // icount 392
and r7, r5, r2 // icount 393
sra r0, r0, r3 // icount 394
sub r7, r1, r2 // icount 395
sco r3, r3, r3 // icount 396
slt r7, r5, r6 // icount 397
.rlabel_18:
bnez r1, .rlabel_19 // icount 398
rol r3, r2, r7 // icount 399
sra r6, r3, r5 // icount 400
sub r0, r0, r7 // icount 401
ror r1, r0, r1 // icount 402
.rlabel_19:
bnez r1, .rlabel_20 // icount 403
sll r1, r1, r0 // icount 404
and r4, r0, r2 // icount 405
sle r4, r7, r4 // icount 406
and r5, r0, r5 // icount 407
add r4, r1, r1 // icount 408
and r7, r3, r0 // icount 409
sco r4, r0, r0 // icount 410
slt r2, r6, r0 // icount 411
.rlabel_20:
beqz r0, .rlabel_21 // icount 412
seq r2, r7, r1 // icount 413
sll r2, r2, r3 // icount 414
and r7, r3, r6 // icount 415
add r5, r6, r2 // icount 416
sco r1, r6, r0 // icount 417
slt r2, r1, r2 // icount 418
.rlabel_21:
beqz r0, .rlabel_22 // icount 419
or r4, r2, r3 // icount 420
sll r5, r2, r6 // icount 421
.rlabel_22:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_23 // icount 422
slt r1, r4, r7 // icount 423
slt r7, r1, r3 // icount 424
sll r1, r2, r4 // icount 425
and r4, r1, r2 // icount 426
slt r0, r5, r6 // icount 427
add r3, r6, r7 // icount 428
and r0, r4, r6 // icount 429
slt r0, r1, r1 // icount 430
rol r2, r1, r6 // icount 431
and r3, r3, r3 // icount 432
seq r1, r2, r6 // icount 433
seq r0, r5, r2 // icount 434
sub r7, r1, r7 // icount 435
sle r1, r4, r4 // icount 436
sco r1, r0, r3 // icount 437
sle r5, r3, r7 // icount 438
sll r4, r2, r0 // icount 439
or r5, r7, r7 // icount 440
sll r6, r6, r5 // icount 441
slt r5, r5, r0 // icount 442
sll r1, r5, r2 // icount 443
sle r3, r1, r2 // icount 444
sra r0, r0, r7 // icount 445
sub r2, r3, r6 // icount 446
sco r3, r4, r5 // icount 447
or r0, r1, r2 // icount 448
rol r3, r6, r7 // icount 449
seq r0, r2, r4 // icount 450
sco r3, r2, r4 // icount 451
or r4, r5, r0 // icount 452
slt r7, r7, r2 // icount 453
sub r0, r5, r1 // icount 454
seq r4, r2, r1 // icount 455
sll r2, r2, r6 // icount 456
rol r0, r5, r5 // icount 457
rol r2, r5, r3 // icount 458
sra r6, r6, r0 // icount 459
and r2, r2, r0 // icount 460
or r7, r7, r0 // icount 461
sub r7, r3, r5 // icount 462
slt r5, r3, r0 // icount 463
and r2, r2, r7 // icount 464
slt r3, r3, r6 // icount 465
or r7, r1, r7 // icount 466
sra r1, r7, r6 // icount 467
sra r1, r0, r5 // icount 468
add r7, r2, r2 // icount 469
slt r2, r3, r7 // icount 470
sub r5, r7, r4 // icount 471
ror r2, r2, r5 // icount 472
rol r5, r2, r0 // icount 473
or r1, r5, r0 // icount 474
seq r1, r7, r4 // icount 475
sco r5, r2, r6 // icount 476
sle r0, r5, r0 // icount 477
sra r5, r6, r1 // icount 478
ror r7, r2, r6 // icount 479
rol r5, r6, r1 // icount 480
add r0, r0, r3 // icount 481
sll r4, r4, r3 // icount 482
ror r0, r5, r7 // icount 483
slt r3, r2, r0 // icount 484
and r0, r4, r2 // icount 485
ror r5, r7, r1 // icount 486
sle r5, r1, r7 // icount 487
sle r4, r1, r4 // icount 488
slt r5, r6, r2 // icount 489
sra r6, r1, r1 // icount 490
sco r1, r1, r4 // icount 491
sub r5, r2, r4 // icount 492
sra r1, r4, r1 // icount 493
sco r1, r1, r0 // icount 494
rol r1, r3, r2 // icount 495
or r2, r2, r4 // icount 496
slt r0, r0, r1 // icount 497
sub r5, r2, r4 // icount 498
sco r5, r5, r6 // icount 499
sub r5, r4, r0 // icount 500
sle r2, r5, r5 // icount 501
rol r2, r2, r0 // icount 502
or r6, r2, r2 // icount 503
sll r6, r0, r7 // icount 504
sra r1, r6, r3 // icount 505
sco r7, r4, r7 // icount 506
add r7, r3, r4 // icount 507
sra r4, r2, r6 // icount 508
and r7, r7, r4 // icount 509
ror r3, r2, r4 // icount 510
add r6, r2, r5 // icount 511
or r7, r7, r2 // icount 512
sra r7, r4, r6 // icount 513
slt r1, r4, r0 // icount 514
seq r4, r3, r6 // icount 515
rol r2, r2, r6 // icount 516
and r1, r6, r2 // icount 517
or r6, r2, r5 // icount 518
seq r7, r2, r1 // icount 519
ror r6, r2, r1 // icount 520
add r7, r0, r7 // icount 521
sle r6, r7, r3 // icount 522
sub r6, r5, r0 // icount 523
sll r6, r6, r3 // icount 524
ror r2, r5, r1 // icount 525
and r6, r6, r1 // icount 526
sle r3, r3, r7 // icount 527
sco r2, r3, r0 // icount 528
and r3, r4, r7 // icount 529
sle r1, r1, r1 // icount 530
add r1, r0, r4 // icount 531
add r6, r3, r7 // icount 532
sco r1, r7, r4 // icount 533
and r4, r7, r4 // icount 534
or r4, r1, r4 // icount 535
sll r2, r4, r4 // icount 536
slt r7, r3, r1 // icount 537
sra r3, r7, r3 // icount 538
sub r3, r1, r0 // icount 539
sub r5, r0, r4 // icount 540
sub r6, r5, r4 // icount 541
or r3, r7, r0 // icount 542
ror r3, r5, r6 // icount 543
sub r0, r7, r0 // icount 544
rol r1, r2, r4 // icount 545
slt r1, r0, r1 // icount 546
rol r7, r3, r3 // icount 547
sle r5, r7, r1 // icount 548
.rlabel_23:
j .rlabel_24 // icount 549
ror r2, r2, r4 // icount 550
sub r4, r7, r7 // icount 551
slt r0, r2, r4 // icount 552
sco r7, r7, r6 // icount 553
ror r5, r6, r7 // icount 554
and r5, r5, r2 // icount 555
sra r0, r5, r7 // icount 556
add r4, r5, r1 // icount 557
or r1, r4, r1 // icount 558
sll r3, r4, r1 // icount 559
slt r4, r3, r1 // icount 560
seq r2, r7, r4 // icount 561
sra r6, r6, r4 // icount 562
sco r5, r1, r5 // icount 563
sra r6, r0, r6 // icount 564
or r3, r3, r6 // icount 565
sra r1, r2, r0 // icount 566
seq r6, r0, r0 // icount 567
sco r3, r6, r0 // icount 568
and r5, r6, r1 // icount 569
add r7, r2, r3 // icount 570
seq r2, r1, r1 // icount 571
sub r1, r6, r1 // icount 572
sub r7, r7, r6 // icount 573
sco r2, r2, r3 // icount 574
seq r5, r1, r2 // icount 575
rol r7, r6, r1 // icount 576
sub r4, r0, r7 // icount 577
sra r2, r2, r7 // icount 578
add r4, r3, r4 // icount 579
slt r1, r2, r7 // icount 580
sco r4, r6, r6 // icount 581
slt r3, r1, r7 // icount 582
sub r5, r4, r1 // icount 583
seq r7, r1, r3 // icount 584
sll r0, r2, r7 // icount 585
slt r0, r5, r3 // icount 586
slt r6, r3, r6 // icount 587
sub r4, r7, r7 // icount 588
slt r4, r6, r6 // icount 589
and r6, r1, r4 // icount 590
add r0, r7, r0 // icount 591
sll r4, r7, r6 // icount 592
sra r4, r6, r5 // icount 593
sra r7, r7, r4 // icount 594
sle r2, r6, r3 // icount 595
ror r4, r2, r0 // icount 596
or r2, r3, r0 // icount 597
ror r1, r2, r3 // icount 598
sra r5, r7, r0 // icount 599
seq r6, r3, r5 // icount 600
sub r6, r2, r0 // icount 601
sub r6, r0, r3 // icount 602
slt r4, r6, r3 // icount 603
.rlabel_24:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_25 // icount 604
sco r1, r2, r7 // icount 605
sra r2, r4, r4 // icount 606
or r7, r4, r7 // icount 607
sco r3, r6, r2 // icount 608
sra r2, r6, r7 // icount 609
slt r5, r7, r0 // icount 610
add r0, r7, r2 // icount 611
seq r5, r5, r0 // icount 612
or r3, r6, r5 // icount 613
slt r4, r1, r0 // icount 614
ror r0, r5, r0 // icount 615
sco r5, r1, r2 // icount 616
rol r3, r3, r6 // icount 617
add r7, r3, r5 // icount 618
sub r6, r0, r0 // icount 619
sll r5, r2, r3 // icount 620
sub r0, r3, r6 // icount 621
sll r7, r4, r4 // icount 622
ror r6, r0, r6 // icount 623
seq r3, r7, r3 // icount 624
or r5, r4, r0 // icount 625
rol r2, r4, r0 // icount 626
slt r3, r6, r5 // icount 627
add r2, r6, r0 // icount 628
add r5, r3, r1 // icount 629
and r1, r6, r2 // icount 630
seq r0, r7, r7 // icount 631
ror r2, r7, r6 // icount 632
ror r2, r0, r3 // icount 633
rol r0, r1, r3 // icount 634
ror r0, r7, r5 // icount 635
sle r5, r6, r7 // icount 636
sra r1, r6, r2 // icount 637
sra r1, r4, r4 // icount 638
and r7, r4, r3 // icount 639
sll r2, r4, r1 // icount 640
sll r0, r1, r7 // icount 641
sco r6, r4, r2 // icount 642
sco r0, r4, r2 // icount 643
seq r0, r4, r5 // icount 644
add r5, r1, r7 // icount 645
sle r2, r2, r3 // icount 646
rol r2, r4, r0 // icount 647
sub r0, r5, r3 // icount 648
rol r6, r4, r1 // icount 649
sub r6, r3, r4 // icount 650
sll r6, r2, r5 // icount 651
sll r5, r4, r7 // icount 652
seq r7, r5, r3 // icount 653
sco r6, r6, r3 // icount 654
or r7, r5, r2 // icount 655
sll r0, r1, r5 // icount 656
sub r4, r3, r5 // icount 657
slt r5, r6, r6 // icount 658
sle r2, r5, r2 // icount 659
rol r1, r5, r3 // icount 660
ror r1, r4, r3 // icount 661
sub r0, r4, r3 // icount 662
rol r2, r5, r2 // icount 663
sco r1, r3, r3 // icount 664
add r3, r3, r7 // icount 665
sll r3, r5, r2 // icount 666
seq r2, r4, r5 // icount 667
sll r2, r6, r2 // icount 668
seq r7, r4, r4 // icount 669
slt r1, r3, r6 // icount 670
and r4, r5, r3 // icount 671
sll r5, r6, r2 // icount 672
sra r5, r3, r1 // icount 673
slt r3, r4, r1 // icount 674
sll r0, r7, r6 // icount 675
sle r6, r7, r0 // icount 676
add r3, r5, r5 // icount 677
seq r7, r3, r0 // icount 678
or r3, r1, r0 // icount 679
seq r1, r5, r5 // icount 680
ror r5, r7, r2 // icount 681
.rlabel_25:
jal .rlabel_26 // icount 682
and r2, r2, r0 // icount 683
sco r0, r5, r3 // icount 684
ror r2, r0, r1 // icount 685
or r2, r5, r1 // icount 686
or r0, r2, r1 // icount 687
and r6, r7, r6 // icount 688
sll r4, r5, r0 // icount 689
and r7, r3, r7 // icount 690
and r6, r1, r2 // icount 691
add r1, r5, r7 // icount 692
sub r0, r3, r1 // icount 693
or r3, r3, r6 // icount 694
add r7, r0, r4 // icount 695
rol r0, r1, r2 // icount 696
or r6, r5, r7 // icount 697
add r0, r5, r5 // icount 698
sle r0, r7, r6 // icount 699
sco r3, r7, r6 // icount 700
seq r3, r1, r7 // icount 701
sub r7, r2, r5 // icount 702
rol r0, r5, r3 // icount 703
rol r4, r5, r5 // icount 704
or r3, r2, r3 // icount 705
add r6, r1, r7 // icount 706
slt r3, r5, r2 // icount 707
sub r5, r5, r7 // icount 708
rol r7, r3, r3 // icount 709
.rlabel_26:
st r7, r6, 8
addi r6, r6, 8
bnez r1, .rlabel_27 // icount 710
slt r7, r0, r5 // icount 711
sle r4, r3, r2 // icount 712
sco r7, r0, r7 // icount 713
ror r3, r2, r2 // icount 714
rol r6, r7, r4 // icount 715
sll r4, r7, r5 // icount 716
sco r4, r4, r1 // icount 717
sco r5, r1, r1 // icount 718
add r5, r4, r2 // icount 719
sll r5, r1, r7 // icount 720
slt r7, r6, r0 // icount 721
and r2, r4, r5 // icount 722
sra r2, r3, r3 // icount 723
sub r0, r5, r5 // icount 724
ror r6, r0, r2 // icount 725
.rlabel_27:
beqz r0, .rlabel_28 // icount 726
add r4, r1, r0 // icount 727
or r2, r0, r3 // icount 728
sll r1, r5, r2 // icount 729
sra r7, r6, r0 // icount 730
or r6, r4, r0 // icount 731
sco r4, r1, r2 // icount 732
and r3, r4, r1 // icount 733
slt r5, r5, r6 // icount 734
sll r4, r1, r3 // icount 735
.rlabel_28:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_29 // icount 736
.rlabel_29:
ld r7, r6, 12
addi r6, r6, 12
bnez r1, .rlabel_30 // icount 737
and r4, r2, r2 // icount 738
or r5, r2, r4 // icount 739
add r3, r4, r1 // icount 740
sub r4, r3, r4 // icount 741
sll r4, r0, r5 // icount 742
add r6, r3, r2 // icount 743
ror r1, r5, r0 // icount 744
ror r4, r4, r2 // icount 745
ror r5, r5, r6 // icount 746
.rlabel_30:
j .rlabel_31 // icount 747
sco r2, r4, r0 // icount 748
and r3, r5, r6 // icount 749
sub r2, r0, r5 // icount 750
sub r3, r4, r4 // icount 751
add r2, r6, r4 // icount 752
seq r3, r3, r3 // icount 753
sra r4, r0, r5 // icount 754
sco r2, r3, r0 // icount 755
and r2, r1, r6 // icount 756
sco r7, r7, r4 // icount 757
seq r3, r0, r4 // icount 758
and r5, r5, r1 // icount 759
sub r6, r1, r0 // icount 760
ror r3, r6, r0 // icount 761
sra r2, r0, r1 // icount 762
sco r5, r7, r4 // icount 763
sll r6, r0, r0 // icount 764
ror r4, r1, r0 // icount 765
slt r1, r1, r2 // icount 766
add r4, r3, r0 // icount 767
sub r1, r7, r5 // icount 768
sle r5, r6, r7 // icount 769
ror r5, r7, r0 // icount 770
sra r0, r4, r3 // icount 771
and r2, r4, r0 // icount 772
slt r2, r6, r1 // icount 773
or r3, r3, r0 // icount 774
ror r0, r5, r6 // icount 775
sle r6, r2, r4 // icount 776
slt r7, r0, r1 // icount 777
sra r6, r4, r6 // icount 778
or r6, r6, r1 // icount 779
sub r2, r6, r6 // icount 780
sco r4, r1, r0 // icount 781
sco r7, r7, r6 // icount 782
seq r3, r3, r3 // icount 783
add r3, r4, r6 // icount 784
sle r5, r6, r2 // icount 785
ror r6, r5, r6 // icount 786
sra r5, r6, r3 // icount 787
or r5, r1, r5 // icount 788
sll r0, r3, r4 // icount 789
sle r1, r1, r0 // icount 790
add r3, r1, r4 // icount 791
add r3, r2, r1 // icount 792
sle r3, r6, r0 // icount 793
sco r5, r0, r5 // icount 794
ror r4, r7, r7 // icount 795
seq r5, r1, r2 // icount 796
sra r7, r7, r2 // icount 797
sra r5, r3, r5 // icount 798
and r2, r3, r3 // icount 799
seq r4, r1, r6 // icount 800
slt r7, r4, r5 // icount 801
rol r0, r6, r6 // icount 802
and r3, r7, r3 // icount 803
sco r6, r4, r5 // icount 804
rol r4, r4, r0 // icount 805
add r2, r5, r5 // icount 806
sll r5, r4, r3 // icount 807
add r5, r2, r3 // icount 808
add r0, r5, r1 // icount 809
ror r1, r3, r1 // icount 810
sll r7, r4, r5 // icount 811
sub r3, r6, r3 // icount 812
and r0, r1, r7 // icount 813
sra r1, r5, r6 // icount 814
and r5, r2, r6 // icount 815
slt r0, r0, r4 // icount 816
rol r0, r1, r5 // icount 817
sub r0, r6, r1 // icount 818
seq r7, r7, r0 // icount 819
sle r0, r5, r1 // icount 820
sra r5, r3, r4 // icount 821
slt r5, r5, r2 // icount 822
or r5, r7, r2 // icount 823
rol r1, r4, r4 // icount 824
ror r1, r7, r5 // icount 825
ror r2, r0, r0 // icount 826
sra r3, r5, r2 // icount 827
sub r7, r2, r3 // icount 828
sle r1, r4, r7 // icount 829
rol r0, r7, r3 // icount 830
sra r4, r2, r4 // icount 831
or r0, r4, r1 // icount 832
ror r4, r1, r6 // icount 833
.rlabel_31:
st r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_32 // icount 834
sle r2, r5, r4 // icount 835
seq r5, r2, r2 // icount 836
ror r2, r4, r2 // icount 837
sub r5, r6, r1 // icount 838
sco r3, r7, r1 // icount 839
slt r3, r3, r0 // icount 840
ror r4, r0, r5 // icount 841
.rlabel_32:
st r7, r6, 2
addi r6, r6, 2
jal .rlabel_33 // icount 842
add r1, r1, r6 // icount 843
sle r5, r3, r3 // icount 844
.rlabel_33:
st r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_34 // icount 845
or r1, r4, r4 // icount 846
add r1, r2, r2 // icount 847
add r2, r1, r0 // icount 848
sra r4, r5, r6 // icount 849
or r4, r0, r6 // icount 850
sub r5, r4, r4 // icount 851
sll r6, r0, r6 // icount 852
slt r6, r0, r2 // icount 853
slt r5, r4, r4 // icount 854
.rlabel_34:
beqz r0, .rlabel_35 // icount 855
add r5, r3, r4 // icount 856
sll r4, r4, r1 // icount 857
.rlabel_35:
bnez r1, .rlabel_36 // icount 858
.rlabel_36:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_37 // icount 859
slt r7, r3, r5 // icount 860
and r6, r1, r4 // icount 861
add r1, r4, r3 // icount 862
ror r4, r3, r1 // icount 863
sll r2, r2, r0 // icount 864
sra r3, r3, r0 // icount 865
sco r2, r7, r4 // icount 866
seq r6, r5, r3 // icount 867
or r2, r5, r7 // icount 868
ror r0, r2, r2 // icount 869
sub r4, r0, r1 // icount 870
ror r3, r7, r6 // icount 871
sub r0, r7, r0 // icount 872
sll r4, r4, r0 // icount 873
.rlabel_37:
st r7, r6, 0
addi r6, r6, 0
j .rlabel_38 // icount 874
add r4, r2, r1 // icount 875
add r7, r4, r0 // icount 876
and r0, r2, r5 // icount 877
and r5, r1, r6 // icount 878
sra r1, r5, r0 // icount 879
slt r1, r5, r3 // icount 880
.rlabel_38:
ld r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_39 // icount 881
sra r6, r0, r4 // icount 882
.rlabel_39:
beqz r0, .rlabel_40 // icount 883
rol r6, r4, r1 // icount 884
sco r2, r1, r6 // icount 885
sra r5, r6, r3 // icount 886
slt r3, r7, r1 // icount 887
sub r5, r5, r0 // icount 888
sco r6, r5, r0 // icount 889
sle r6, r7, r4 // icount 890
rol r3, r2, r4 // icount 891
.rlabel_40:
bnez r1, .rlabel_41 // icount 892
and r4, r2, r0 // icount 893
sle r7, r1, r6 // icount 894
seq r5, r0, r1 // icount 895
seq r6, r7, r0 // icount 896
sra r2, r3, r6 // icount 897
or r1, r6, r2 // icount 898
.rlabel_41:
st r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_42 // icount 899
seq r6, r2, r1 // icount 900
add r7, r3, r5 // icount 901
sub r5, r4, r4 // icount 902
sra r6, r1, r1 // icount 903
sle r5, r6, r0 // icount 904
sle r2, r7, r0 // icount 905
seq r7, r4, r3 // icount 906
sco r3, r1, r0 // icount 907
.rlabel_42:
st r7, r6, 6
addi r6, r6, 6
j .rlabel_43 // icount 908
or r7, r5, r4 // icount 909
add r4, r2, r2 // icount 910
sra r1, r2, r0 // icount 911
seq r7, r5, r0 // icount 912
seq r6, r0, r1 // icount 913
and r2, r3, r3 // icount 914
sra r6, r2, r3 // icount 915
rol r5, r4, r5 // icount 916
sle r4, r3, r0 // icount 917
or r4, r7, r3 // icount 918
sll r5, r0, r0 // icount 919
rol r5, r3, r4 // icount 920
rol r2, r1, r0 // icount 921
sco r3, r6, r7 // icount 922
sra r2, r5, r0 // icount 923
seq r5, r6, r4 // icount 924
sle r5, r0, r7 // icount 925
or r6, r6, r4 // icount 926
sle r6, r6, r7 // icount 927
ror r1, r4, r2 // icount 928
ror r1, r4, r4 // icount 929
or r2, r3, r6 // icount 930
rol r4, r1, r1 // icount 931
and r5, r0, r4 // icount 932
sll r6, r1, r3 // icount 933
rol r0, r3, r0 // icount 934
rol r1, r4, r1 // icount 935
sub r5, r2, r0 // icount 936
sco r7, r5, r7 // icount 937
slt r7, r0, r2 // icount 938
add r0, r2, r1 // icount 939
or r0, r1, r3 // icount 940
sll r4, r2, r0 // icount 941
seq r5, r1, r2 // icount 942
or r6, r3, r7 // icount 943
sub r6, r6, r6 // icount 944
add r5, r5, r3 // icount 945
sll r0, r7, r2 // icount 946
sra r6, r1, r0 // icount 947
slt r0, r6, r2 // icount 948
sco r6, r3, r5 // icount 949
sub r2, r4, r3 // icount 950
sll r2, r5, r7 // icount 951
add r6, r7, r6 // icount 952
sle r2, r5, r5 // icount 953
and r0, r3, r6 // icount 954
sle r4, r1, r6 // icount 955
sra r3, r1, r7 // icount 956
sco r1, r6, r2 // icount 957
slt r6, r7, r2 // icount 958
sub r4, r3, r3 // icount 959
ror r4, r6, r4 // icount 960
.rlabel_43:
ld r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_44 // icount 961
ror r7, r1, r7 // icount 962
or r5, r1, r7 // icount 963
and r1, r5, r3 // icount 964
ror r1, r5, r3 // icount 965
sra r6, r5, r7 // icount 966
rol r5, r4, r5 // icount 967
rol r5, r1, r3 // icount 968
ror r3, r0, r6 // icount 969
sle r0, r1, r0 // icount 970
.rlabel_44:
ld r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_45 // icount 971
sub r2, r1, r3 // icount 972
and r7, r7, r0 // icount 973
.rlabel_45:
st r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_46 // icount 974
and r6, r6, r1 // icount 975
sle r6, r7, r2 // icount 976
seq r6, r7, r1 // icount 977
and r5, r4, r1 // icount 978
.rlabel_46:
j .rlabel_47 // icount 979
slt r1, r2, r4 // icount 980
seq r6, r3, r6 // icount 981
seq r1, r2, r2 // icount 982
slt r1, r5, r5 // icount 983
and r4, r2, r5 // icount 984
slt r1, r2, r7 // icount 985
seq r3, r4, r7 // icount 986
seq r4, r5, r7 // icount 987
ror r7, r2, r5 // icount 988
sra r7, r1, r7 // icount 989
and r7, r3, r6 // icount 990
ror r4, r7, r5 // icount 991
and r4, r6, r1 // icount 992
sra r3, r4, r0 // icount 993
sub r2, r0, r0 // icount 994
or r4, r6, r1 // icount 995
rol r1, r2, r1 // icount 996
ror r1, r5, r7 // icount 997
sll r3, r4, r2 // icount 998
sub r0, r1, r3 // icount 999
slt r7, r4, r0 // icount 1000
add r1, r3, r1 // icount 1001
slt r0, r2, r2 // icount 1002
ror r2, r1, r6 // icount 1003
sra r2, r4, r1 // icount 1004
seq r3, r7, r1 // icount 1005
seq r5, r4, r1 // icount 1006
sll r6, r0, r1 // icount 1007
sco r2, r5, r0 // icount 1008
sra r3, r3, r2 // icount 1009
sco r1, r6, r7 // icount 1010
add r0, r6, r0 // icount 1011
sle r5, r1, r3 // icount 1012
ror r0, r5, r0 // icount 1013
rol r6, r5, r2 // icount 1014
sub r5, r5, r5 // icount 1015
ror r4, r6, r7 // icount 1016
sub r4, r3, r2 // icount 1017
add r7, r0, r4 // icount 1018
sle r4, r4, r4 // icount 1019
rol r2, r3, r2 // icount 1020
sle r3, r3, r0 // icount 1021
slt r6, r0, r5 // icount 1022
sco r6, r2, r5 // icount 1023
add r3, r6, r1 // icount 1024
sle r4, r4, r0 // icount 1025
sll r5, r7, r7 // icount 1026
seq r3, r2, r4 // icount 1027
ror r7, r3, r6 // icount 1028
sll r2, r6, r7 // icount 1029
sub r1, r6, r1 // icount 1030
slt r0, r4, r7 // icount 1031
slt r6, r0, r0 // icount 1032
and r6, r7, r6 // icount 1033
slt r1, r4, r6 // icount 1034
sle r7, r6, r7 // icount 1035
sra r0, r5, r5 // icount 1036
sle r4, r5, r1 // icount 1037
seq r2, r7, r6 // icount 1038
rol r1, r1, r6 // icount 1039
and r1, r5, r4 // icount 1040
sco r6, r4, r0 // icount 1041
seq r2, r1, r1 // icount 1042
sll r0, r3, r3 // icount 1043
slt r1, r4, r2 // icount 1044
slt r7, r1, r1 // icount 1045
sle r6, r0, r2 // icount 1046
seq r1, r3, r4 // icount 1047
rol r3, r0, r5 // icount 1048
ror r7, r7, r4 // icount 1049
add r0, r4, r6 // icount 1050
sco r3, r2, r4 // icount 1051
and r3, r2, r1 // icount 1052
sll r4, r4, r3 // icount 1053
rol r4, r6, r2 // icount 1054
sle r0, r2, r7 // icount 1055
sub r1, r1, r0 // icount 1056
add r5, r3, r2 // icount 1057
sub r7, r2, r6 // icount 1058
sll r5, r0, r1 // icount 1059
sco r7, r6, r0 // icount 1060
sub r3, r4, r4 // icount 1061
add r4, r5, r5 // icount 1062
add r1, r0, r3 // icount 1063
sll r2, r0, r4 // icount 1064
and r2, r3, r4 // icount 1065
sll r0, r5, r4 // icount 1066
sll r2, r4, r3 // icount 1067
sra r0, r7, r0 // icount 1068
slt r0, r2, r0 // icount 1069
sra r0, r3, r4 // icount 1070
or r1, r6, r3 // icount 1071
and r7, r0, r7 // icount 1072
ror r4, r4, r0 // icount 1073
rol r0, r6, r4 // icount 1074
slt r0, r4, r4 // icount 1075
rol r2, r3, r7 // icount 1076
ror r7, r1, r1 // icount 1077
sub r5, r0, r7 // icount 1078
add r3, r6, r0 // icount 1079
seq r2, r6, r2 // icount 1080
or r0, r4, r6 // icount 1081
seq r4, r6, r0 // icount 1082
ror r0, r4, r5 // icount 1083
.rlabel_47:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_48 // icount 1084
sco r3, r2, r2 // icount 1085
ror r6, r3, r5 // icount 1086
sll r2, r2, r0 // icount 1087
sub r5, r5, r1 // icount 1088
ror r1, r5, r4 // icount 1089
or r2, r1, r0 // icount 1090
sub r3, r1, r3 // icount 1091
sra r5, r1, r0 // icount 1092
seq r6, r0, r7 // icount 1093
sle r7, r2, r6 // icount 1094
or r2, r4, r5 // icount 1095
sra r3, r3, r4 // icount 1096
sco r6, r7, r4 // icount 1097
.rlabel_48:
beqz r0, .rlabel_49 // icount 1098
slt r0, r7, r2 // icount 1099
sle r2, r1, r6 // icount 1100
ror r7, r5, r5 // icount 1101
or r4, r1, r6 // icount 1102
add r6, r3, r4 // icount 1103
rol r2, r6, r1 // icount 1104
slt r1, r1, r6 // icount 1105
sco r4, r4, r7 // icount 1106
rol r6, r3, r6 // icount 1107
ror r7, r0, r3 // icount 1108
add r7, r2, r4 // icount 1109
sra r3, r0, r1 // icount 1110
sco r1, r6, r4 // icount 1111
slt r5, r7, r5 // icount 1112
sra r4, r4, r6 // icount 1113
.rlabel_49:
st r7, r6, 2
addi r6, r6, 2
jal .rlabel_50 // icount 1114
sle r3, r0, r0 // icount 1115
sub r0, r2, r1 // icount 1116
sub r4, r0, r4 // icount 1117
and r2, r4, r1 // icount 1118
rol r2, r7, r4 // icount 1119
or r5, r5, r1 // icount 1120
sle r4, r2, r6 // icount 1121
and r5, r3, r5 // icount 1122
seq r6, r7, r4 // icount 1123
sra r3, r4, r0 // icount 1124
or r1, r1, r1 // icount 1125
add r6, r5, r3 // icount 1126
sle r6, r7, r4 // icount 1127
and r6, r6, r3 // icount 1128
sub r0, r1, r1 // icount 1129
add r7, r4, r7 // icount 1130
ror r2, r6, r5 // icount 1131
sco r7, r2, r2 // icount 1132
seq r4, r2, r5 // icount 1133
sle r5, r3, r3 // icount 1134
and r0, r5, r0 // icount 1135
sle r6, r2, r1 // icount 1136
sle r1, r6, r2 // icount 1137
seq r1, r1, r3 // icount 1138
.rlabel_50:
st r7, r6, 2
addi r6, r6, 2
jal .rlabel_51 // icount 1139
and r1, r4, r4 // icount 1140
slt r1, r1, r2 // icount 1141
or r7, r3, r1 // icount 1142
sll r1, r6, r6 // icount 1143
or r4, r3, r5 // icount 1144
seq r5, r3, r4 // icount 1145
sle r1, r4, r5 // icount 1146
sra r7, r1, r4 // icount 1147
slt r6, r4, r0 // icount 1148
seq r0, r7, r6 // icount 1149
sub r2, r4, r5 // icount 1150
sco r4, r7, r1 // icount 1151
sra r3, r5, r2 // icount 1152
seq r1, r1, r2 // icount 1153
sub r5, r0, r5 // icount 1154
sco r2, r4, r7 // icount 1155
sra r3, r2, r0 // icount 1156
sle r3, r1, r6 // icount 1157
ror r2, r6, r3 // icount 1158
sub r3, r6, r4 // icount 1159
sub r6, r4, r4 // icount 1160
sle r3, r3, r2 // icount 1161
add r7, r7, r6 // icount 1162
and r4, r7, r7 // icount 1163
.rlabel_51:
ld r7, r6, 14
addi r6, r6, 14
jal .rlabel_52 // icount 1164
sco r0, r3, r2 // icount 1165
slt r5, r3, r5 // icount 1166
sle r4, r7, r2 // icount 1167
sle r3, r4, r1 // icount 1168
.rlabel_52:
bnez r1, .rlabel_53 // icount 1169
add r3, r3, r5 // icount 1170
sub r2, r2, r1 // icount 1171
sco r6, r5, r1 // icount 1172
sle r3, r7, r0 // icount 1173
rol r5, r1, r1 // icount 1174
slt r2, r0, r3 // icount 1175
seq r1, r6, r4 // icount 1176
sra r7, r2, r7 // icount 1177
rol r4, r7, r2 // icount 1178
rol r4, r7, r6 // icount 1179
.rlabel_53:
st r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_54 // icount 1180
seq r0, r0, r4 // icount 1181
sco r5, r2, r5 // icount 1182
seq r5, r2, r1 // icount 1183
or r4, r6, r3 // icount 1184
.rlabel_54:
j .rlabel_55 // icount 1185
and r2, r0, r1 // icount 1186
sle r5, r0, r3 // icount 1187
seq r0, r1, r7 // icount 1188
add r0, r2, r1 // icount 1189
rol r6, r3, r3 // icount 1190
sub r0, r3, r5 // icount 1191
sra r1, r3, r6 // icount 1192
sco r3, r7, r2 // icount 1193
or r3, r7, r1 // icount 1194
seq r7, r3, r1 // icount 1195
sco r2, r1, r7 // icount 1196
rol r0, r5, r5 // icount 1197
and r2, r5, r6 // icount 1198
sra r2, r7, r1 // icount 1199
sub r1, r5, r5 // icount 1200
or r5, r0, r0 // icount 1201
and r0, r7, r5 // icount 1202
and r2, r2, r6 // icount 1203
slt r4, r6, r5 // icount 1204
sle r2, r2, r0 // icount 1205
slt r2, r6, r7 // icount 1206
and r6, r1, r4 // icount 1207
rol r6, r5, r1 // icount 1208
sra r7, r2, r5 // icount 1209
sle r5, r4, r0 // icount 1210
sle r6, r0, r0 // icount 1211
add r0, r7, r3 // icount 1212
sub r5, r7, r1 // icount 1213
or r6, r1, r4 // icount 1214
add r6, r7, r4 // icount 1215
seq r3, r7, r0 // icount 1216
or r5, r4, r4 // icount 1217
.rlabel_55:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_56 // icount 1218
.rlabel_56:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_57 // icount 1219
sco r6, r4, r5 // icount 1220
and r4, r2, r7 // icount 1221
rol r5, r3, r0 // icount 1222
.rlabel_57:
bnez r1, .rlabel_58 // icount 1223
slt r6, r4, r3 // icount 1224
add r6, r5, r7 // icount 1225
sra r0, r6, r2 // icount 1226
and r0, r3, r7 // icount 1227
.rlabel_58:
j .rlabel_59 // icount 1228
slt r6, r5, r1 // icount 1229
and r0, r5, r1 // icount 1230
slt r2, r2, r5 // icount 1231
seq r3, r2, r4 // icount 1232
ror r6, r7, r4 // icount 1233
sll r1, r5, r5 // icount 1234
sub r0, r4, r3 // icount 1235
sle r1, r4, r0 // icount 1236
sco r5, r6, r2 // icount 1237
rol r3, r2, r3 // icount 1238
and r7, r4, r3 // icount 1239
sra r3, r7, r1 // icount 1240
seq r2, r3, r5 // icount 1241
sra r1, r3, r7 // icount 1242
ror r2, r4, r4 // icount 1243
sra r3, r2, r0 // icount 1244
sll r5, r7, r5 // icount 1245
seq r4, r7, r3 // icount 1246
sle r7, r7, r5 // icount 1247
sub r6, r0, r7 // icount 1248
ror r0, r3, r7 // icount 1249
add r7, r0, r2 // icount 1250
sle r0, r6, r6 // icount 1251
slt r2, r7, r7 // icount 1252
rol r3, r2, r0 // icount 1253
sle r6, r6, r4 // icount 1254
seq r3, r3, r3 // icount 1255
and r1, r7, r6 // icount 1256
slt r0, r1, r7 // icount 1257
add r4, r4, r3 // icount 1258
sub r5, r5, r1 // icount 1259
seq r7, r2, r0 // icount 1260
sub r5, r6, r4 // icount 1261
add r1, r7, r1 // icount 1262
add r4, r2, r0 // icount 1263
seq r6, r5, r4 // icount 1264
ror r2, r4, r4 // icount 1265
sub r7, r2, r1 // icount 1266
ror r0, r1, r7 // icount 1267
.rlabel_59:
beqz r0, .rlabel_60 // icount 1268
seq r4, r4, r5 // icount 1269
sra r0, r6, r7 // icount 1270
rol r3, r4, r2 // icount 1271
or r5, r5, r6 // icount 1272
sco r2, r4, r0 // icount 1273
.rlabel_60:
bnez r1, .rlabel_61 // icount 1274
add r5, r4, r4 // icount 1275
.rlabel_61:
beqz r0, .rlabel_62 // icount 1276
sra r1, r6, r1 // icount 1277
sra r5, r5, r3 // icount 1278
ror r0, r3, r7 // icount 1279
add r0, r5, r2 // icount 1280
sle r0, r4, r2 // icount 1281
seq r3, r3, r1 // icount 1282
add r1, r1, r7 // icount 1283
sco r3, r4, r4 // icount 1284
sra r6, r5, r0 // icount 1285
sub r7, r0, r7 // icount 1286
sle r0, r2, r6 // icount 1287
slt r0, r7, r5 // icount 1288
rol r3, r6, r6 // icount 1289
.rlabel_62:
jal .rlabel_63 // icount 1290
sco r1, r6, r4 // icount 1291
ror r2, r1, r3 // icount 1292
sco r0, r3, r4 // icount 1293
ror r6, r0, r0 // icount 1294
ror r7, r5, r2 // icount 1295
and r0, r7, r0 // icount 1296
sle r7, r5, r4 // icount 1297
sco r0, r0, r6 // icount 1298
or r3, r5, r0 // icount 1299
ror r3, r4, r2 // icount 1300
ror r5, r7, r0 // icount 1301
sub r2, r3, r2 // icount 1302
seq r0, r7, r0 // icount 1303
slt r1, r4, r6 // icount 1304
and r7, r7, r4 // icount 1305
sll r2, r1, r0 // icount 1306
ror r1, r1, r5 // icount 1307
seq r1, r7, r2 // icount 1308
.rlabel_63:
st r7, r6, 2
addi r6, r6, 2
j .rlabel_64 // icount 1309
rol r1, r1, r3 // icount 1310
rol r5, r7, r1 // icount 1311
sle r0, r6, r5 // icount 1312
rol r0, r1, r1 // icount 1313
sll r5, r7, r2 // icount 1314
add r4, r7, r4 // icount 1315
ror r3, r6, r7 // icount 1316
sll r0, r3, r1 // icount 1317
and r5, r5, r7 // icount 1318
or r7, r2, r2 // icount 1319
or r1, r5, r0 // icount 1320
sco r4, r4, r6 // icount 1321
add r4, r0, r0 // icount 1322
rol r3, r7, r0 // icount 1323
and r5, r3, r2 // icount 1324
or r7, r0, r1 // icount 1325
sub r0, r1, r3 // icount 1326
sco r3, r4, r7 // icount 1327
slt r7, r4, r4 // icount 1328
sle r0, r7, r7 // icount 1329
add r4, r4, r2 // icount 1330
sra r1, r7, r7 // icount 1331
sle r1, r4, r3 // icount 1332
or r4, r6, r4 // icount 1333
sub r7, r0, r1 // icount 1334
slt r7, r7, r3 // icount 1335
sra r2, r6, r7 // icount 1336
seq r5, r1, r7 // icount 1337
sco r0, r3, r5 // icount 1338
sra r7, r3, r4 // icount 1339
ror r3, r0, r2 // icount 1340
or r2, r5, r2 // icount 1341
sub r6, r2, r6 // icount 1342
seq r1, r3, r5 // icount 1343
seq r2, r3, r1 // icount 1344
sll r7, r6, r5 // icount 1345
or r0, r7, r6 // icount 1346
rol r5, r5, r5 // icount 1347
rol r1, r3, r0 // icount 1348
sub r4, r3, r5 // icount 1349
sll r4, r1, r2 // icount 1350
slt r4, r0, r7 // icount 1351
add r7, r4, r3 // icount 1352
and r2, r2, r7 // icount 1353
seq r6, r1, r1 // icount 1354
or r0, r5, r0 // icount 1355
seq r6, r3, r2 // icount 1356
sub r4, r2, r6 // icount 1357
rol r0, r4, r0 // icount 1358
seq r6, r4, r6 // icount 1359
sco r7, r2, r5 // icount 1360
and r3, r3, r4 // icount 1361
sra r4, r3, r3 // icount 1362
sco r7, r7, r1 // icount 1363
sll r5, r0, r1 // icount 1364
slt r6, r0, r2 // icount 1365
sco r6, r7, r6 // icount 1366
sra r6, r2, r5 // icount 1367
sle r2, r4, r6 // icount 1368
sco r5, r7, r2 // icount 1369
or r0, r6, r3 // icount 1370
slt r1, r1, r2 // icount 1371
sub r7, r4, r3 // icount 1372
add r5, r4, r3 // icount 1373
sra r4, r5, r0 // icount 1374
sle r2, r5, r3 // icount 1375
rol r7, r6, r3 // icount 1376
and r1, r4, r6 // icount 1377
sll r1, r2, r3 // icount 1378
and r7, r2, r6 // icount 1379
sub r0, r7, r4 // icount 1380
sra r7, r5, r5 // icount 1381
sub r7, r7, r4 // icount 1382
sle r1, r1, r0 // icount 1383
add r0, r2, r3 // icount 1384
sco r2, r0, r7 // icount 1385
slt r4, r0, r1 // icount 1386
slt r7, r5, r3 // icount 1387
sco r4, r2, r4 // icount 1388
add r0, r4, r3 // icount 1389
sra r4, r6, r3 // icount 1390
or r2, r4, r7 // icount 1391
sra r0, r2, r3 // icount 1392
sco r7, r4, r6 // icount 1393
sle r6, r0, r5 // icount 1394
seq r5, r4, r6 // icount 1395
seq r3, r4, r7 // icount 1396
add r5, r5, r1 // icount 1397
sco r7, r3, r3 // icount 1398
sub r2, r3, r5 // icount 1399
or r5, r5, r1 // icount 1400
sco r3, r6, r4 // icount 1401
rol r1, r3, r4 // icount 1402
rol r3, r3, r0 // icount 1403
sub r7, r4, r1 // icount 1404
sub r3, r4, r1 // icount 1405
sle r5, r5, r5 // icount 1406
and r5, r2, r4 // icount 1407
sra r7, r2, r2 // icount 1408
slt r4, r6, r6 // icount 1409
or r3, r7, r5 // icount 1410
slt r7, r6, r7 // icount 1411
and r3, r7, r4 // icount 1412
sle r4, r6, r4 // icount 1413
sra r2, r6, r2 // icount 1414
add r5, r3, r4 // icount 1415
seq r3, r1, r5 // icount 1416
rol r5, r3, r0 // icount 1417
add r2, r1, r2 // icount 1418
slt r3, r0, r2 // icount 1419
.rlabel_64:
st r7, r6, 4
addi r6, r6, 4
j .rlabel_65 // icount 1420
sco r2, r3, r6 // icount 1421
sco r2, r2, r5 // icount 1422
ror r7, r4, r6 // icount 1423
sub r3, r3, r7 // icount 1424
seq r1, r3, r5 // icount 1425
slt r3, r2, r5 // icount 1426
and r1, r2, r0 // icount 1427
rol r7, r6, r3 // icount 1428
sub r3, r3, r1 // icount 1429
or r6, r2, r3 // icount 1430
sll r1, r2, r7 // icount 1431
sle r3, r0, r5 // icount 1432
seq r1, r2, r7 // icount 1433
seq r7, r1, r4 // icount 1434
or r0, r5, r5 // icount 1435
sle r4, r6, r4 // icount 1436
sub r1, r5, r0 // icount 1437
or r5, r3, r3 // icount 1438
add r2, r0, r3 // icount 1439
sco r1, r0, r6 // icount 1440
rol r5, r6, r3 // icount 1441
rol r0, r3, r3 // icount 1442
seq r3, r7, r3 // icount 1443
or r0, r5, r0 // icount 1444
and r0, r5, r5 // icount 1445
slt r1, r0, r0 // icount 1446
rol r3, r6, r5 // icount 1447
sra r7, r1, r1 // icount 1448
sll r1, r6, r7 // icount 1449
and r3, r1, r4 // icount 1450
sra r6, r5, r4 // icount 1451
sle r0, r0, r1 // icount 1452
sco r1, r2, r2 // icount 1453
sll r2, r7, r3 // icount 1454
sco r6, r0, r7 // icount 1455
sco r0, r3, r1 // icount 1456
add r5, r4, r7 // icount 1457
sco r2, r1, r1 // icount 1458
rol r5, r0, r3 // icount 1459
and r5, r0, r7 // icount 1460
add r0, r6, r5 // icount 1461
sll r0, r0, r1 // icount 1462
ror r1, r1, r5 // icount 1463
.rlabel_65:
st r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_66 // icount 1464
.rlabel_66:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_67 // icount 1465
.rlabel_67:
bnez r1, .rlabel_68 // icount 1466
or r1, r5, r3 // icount 1467
sub r2, r3, r2 // icount 1468
add r5, r6, r2 // icount 1469
rol r0, r0, r0 // icount 1470
ror r0, r2, r7 // icount 1471
and r6, r2, r4 // icount 1472
and r2, r5, r7 // icount 1473
ror r2, r2, r5 // icount 1474
sub r3, r5, r2 // icount 1475
sra r6, r2, r6 // icount 1476
sra r1, r2, r5 // icount 1477
ror r5, r2, r4 // icount 1478
.rlabel_68:
bnez r1, .rlabel_69 // icount 1479
sle r5, r0, r5 // icount 1480
sll r7, r5, r7 // icount 1481
slt r1, r4, r2 // icount 1482
rol r1, r3, r3 // icount 1483
sco r0, r3, r0 // icount 1484
sll r4, r5, r0 // icount 1485
or r4, r7, r2 // icount 1486
or r3, r6, r6 // icount 1487
seq r2, r4, r7 // icount 1488
rol r6, r3, r0 // icount 1489
and r1, r3, r3 // icount 1490
sle r1, r3, r6 // icount 1491
.rlabel_69:
ld r7, r6, 14
addi r6, r6, 14
j .rlabel_70 // icount 1492
or r3, r2, r5 // icount 1493
sra r2, r2, r6 // icount 1494
rol r0, r6, r0 // icount 1495
slt r7, r0, r4 // icount 1496
sle r4, r3, r7 // icount 1497
slt r2, r1, r0 // icount 1498
seq r6, r0, r1 // icount 1499
add r0, r2, r3 // icount 1500
rol r2, r0, r6 // icount 1501
ror r2, r1, r5 // icount 1502
ror r3, r6, r6 // icount 1503
and r3, r4, r4 // icount 1504
or r2, r5, r4 // icount 1505
or r3, r1, r3 // icount 1506
sra r5, r3, r7 // icount 1507
rol r3, r7, r0 // icount 1508
sra r4, r5, r6 // icount 1509
sle r4, r5, r5 // icount 1510
add r2, r2, r7 // icount 1511
rol r6, r1, r0 // icount 1512
sco r3, r7, r5 // icount 1513
slt r6, r5, r1 // icount 1514
rol r6, r6, r4 // icount 1515
sra r2, r6, r0 // icount 1516
add r2, r1, r5 // icount 1517
rol r7, r0, r1 // icount 1518
slt r4, r4, r7 // icount 1519
seq r3, r0, r4 // icount 1520
add r0, r6, r4 // icount 1521
sco r7, r7, r5 // icount 1522
add r3, r5, r1 // icount 1523
rol r5, r5, r6 // icount 1524
sub r7, r7, r7 // icount 1525
rol r7, r5, r3 // icount 1526
ror r1, r4, r2 // icount 1527
slt r0, r1, r4 // icount 1528
seq r6, r5, r1 // icount 1529
sco r3, r0, r2 // icount 1530
or r2, r3, r2 // icount 1531
slt r3, r3, r7 // icount 1532
slt r6, r4, r2 // icount 1533
slt r3, r2, r5 // icount 1534
sra r5, r4, r3 // icount 1535
sll r6, r5, r0 // icount 1536
sub r5, r7, r0 // icount 1537
rol r5, r0, r4 // icount 1538
sco r6, r2, r1 // icount 1539
sco r1, r2, r4 // icount 1540
sra r5, r1, r4 // icount 1541
and r0, r1, r3 // icount 1542
sra r6, r5, r1 // icount 1543
or r1, r7, r5 // icount 1544
or r2, r0, r4 // icount 1545
seq r7, r1, r2 // icount 1546
seq r3, r0, r7 // icount 1547
sco r5, r4, r1 // icount 1548
sub r1, r2, r3 // icount 1549
.rlabel_70:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_71 // icount 1550
ror r2, r4, r3 // icount 1551
sub r6, r3, r7 // icount 1552
sll r3, r2, r2 // icount 1553
sra r4, r4, r2 // icount 1554
sco r1, r0, r4 // icount 1555
slt r5, r2, r4 // icount 1556
sra r5, r0, r6 // icount 1557
seq r1, r1, r7 // icount 1558
sle r4, r6, r6 // icount 1559
ror r7, r6, r7 // icount 1560
slt r2, r5, r0 // icount 1561
sle r5, r1, r5 // icount 1562
ror r6, r2, r3 // icount 1563
sll r7, r4, r0 // icount 1564
rol r5, r4, r7 // icount 1565
and r7, r3, r4 // icount 1566
slt r7, r4, r4 // icount 1567
seq r5, r7, r4 // icount 1568
seq r2, r4, r6 // icount 1569
sub r4, r5, r3 // icount 1570
and r2, r7, r0 // icount 1571
rol r2, r4, r7 // icount 1572
slt r5, r4, r5 // icount 1573
rol r2, r2, r2 // icount 1574
or r2, r1, r6 // icount 1575
sle r0, r1, r7 // icount 1576
or r0, r3, r5 // icount 1577
add r5, r2, r6 // icount 1578
ror r2, r1, r1 // icount 1579
sco r6, r5, r1 // icount 1580
rol r0, r1, r5 // icount 1581
sra r0, r2, r2 // icount 1582
seq r0, r6, r0 // icount 1583
sub r1, r0, r1 // icount 1584
ror r6, r2, r7 // icount 1585
sll r3, r5, r5 // icount 1586
sll r3, r4, r6 // icount 1587
sco r4, r4, r2 // icount 1588
seq r3, r5, r5 // icount 1589
ror r4, r6, r3 // icount 1590
sra r2, r3, r2 // icount 1591
.rlabel_71:
ld r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_72 // icount 1592
or r4, r1, r4 // icount 1593
sll r1, r5, r0 // icount 1594
seq r4, r5, r4 // icount 1595
sra r2, r1, r7 // icount 1596
ror r1, r2, r6 // icount 1597
sll r5, r3, r6 // icount 1598
ror r6, r7, r5 // icount 1599
sll r5, r4, r7 // icount 1600
.rlabel_72:
ld r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_73 // icount 1601
sub r3, r5, r3 // icount 1602
sub r1, r4, r4 // icount 1603
.rlabel_73:
beqz r0, .rlabel_74 // icount 1604
sco r4, r4, r2 // icount 1605
sub r3, r6, r5 // icount 1606
sll r4, r5, r0 // icount 1607
ror r2, r7, r1 // icount 1608
rol r5, r0, r6 // icount 1609
or r2, r4, r5 // icount 1610
and r0, r0, r5 // icount 1611
slt r5, r4, r0 // icount 1612
seq r2, r4, r4 // icount 1613
.rlabel_74:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_75 // icount 1614
slt r5, r1, r7 // icount 1615
ror r3, r2, r2 // icount 1616
and r4, r5, r6 // icount 1617
sle r1, r0, r3 // icount 1618
slt r4, r7, r2 // icount 1619
seq r5, r5, r7 // icount 1620
or r4, r3, r2 // icount 1621
ror r6, r0, r5 // icount 1622
sub r6, r3, r1 // icount 1623
sco r0, r4, r7 // icount 1624
add r0, r7, r0 // icount 1625
and r5, r4, r1 // icount 1626
ror r0, r1, r3 // icount 1627
.rlabel_75:
ld r7, r6, 14
addi r6, r6, 14
j .rlabel_76 // icount 1628
rol r1, r6, r4 // icount 1629
and r0, r4, r7 // icount 1630
sll r5, r6, r0 // icount 1631
sub r4, r5, r7 // icount 1632
rol r7, r0, r0 // icount 1633
sco r5, r6, r7 // icount 1634
sra r3, r5, r3 // icount 1635
and r2, r6, r3 // icount 1636
and r4, r6, r4 // icount 1637
sra r4, r2, r5 // icount 1638
sub r6, r1, r6 // icount 1639
sra r0, r5, r0 // icount 1640
sle r5, r2, r1 // icount 1641
sle r3, r4, r7 // icount 1642
sle r2, r3, r1 // icount 1643
slt r4, r2, r3 // icount 1644
add r1, r5, r7 // icount 1645
add r6, r0, r3 // icount 1646
rol r7, r4, r2 // icount 1647
sra r6, r1, r5 // icount 1648
add r5, r4, r3 // icount 1649
sco r5, r2, r2 // icount 1650
slt r1, r1, r6 // icount 1651
sco r6, r4, r0 // icount 1652
sll r6, r6, r6 // icount 1653
sco r4, r1, r4 // icount 1654
sub r7, r7, r2 // icount 1655
seq r0, r1, r4 // icount 1656
and r6, r4, r0 // icount 1657
or r4, r4, r4 // icount 1658
sub r7, r0, r7 // icount 1659
sco r7, r5, r3 // icount 1660
seq r5, r6, r2 // icount 1661
ror r7, r4, r2 // icount 1662
and r7, r2, r6 // icount 1663
sll r0, r2, r1 // icount 1664
or r2, r7, r6 // icount 1665
or r6, r0, r1 // icount 1666
add r7, r4, r1 // icount 1667
slt r7, r0, r5 // icount 1668
slt r0, r4, r4 // icount 1669
add r0, r7, r0 // icount 1670
sco r1, r7, r6 // icount 1671
sll r1, r3, r0 // icount 1672
add r5, r2, r7 // icount 1673
seq r5, r5, r0 // icount 1674
sub r7, r0, r2 // icount 1675
rol r2, r2, r7 // icount 1676
slt r0, r5, r7 // icount 1677
sub r4, r1, r1 // icount 1678
sub r4, r6, r4 // icount 1679
sle r1, r3, r6 // icount 1680
sra r7, r2, r0 // icount 1681
add r3, r7, r1 // icount 1682
ror r3, r4, r1 // icount 1683
sub r6, r4, r5 // icount 1684
sco r7, r1, r1 // icount 1685
rol r4, r2, r6 // icount 1686
rol r4, r5, r3 // icount 1687
sub r3, r5, r0 // icount 1688
sll r6, r7, r1 // icount 1689
sle r2, r2, r6 // icount 1690
seq r2, r3, r7 // icount 1691
sra r4, r3, r6 // icount 1692
ror r4, r7, r1 // icount 1693
sle r7, r4, r5 // icount 1694
sle r5, r6, r4 // icount 1695
rol r6, r5, r1 // icount 1696
ror r3, r6, r4 // icount 1697
add r1, r0, r2 // icount 1698
ror r1, r4, r3 // icount 1699
slt r5, r5, r3 // icount 1700
or r0, r1, r5 // icount 1701
or r0, r6, r7 // icount 1702
slt r4, r5, r1 // icount 1703
sll r2, r4, r6 // icount 1704
sub r4, r3, r2 // icount 1705
and r5, r5, r0 // icount 1706
sco r0, r5, r4 // icount 1707
and r3, r7, r0 // icount 1708
seq r1, r3, r4 // icount 1709
rol r0, r0, r7 // icount 1710
sll r3, r3, r1 // icount 1711
add r5, r1, r0 // icount 1712
add r2, r7, r6 // icount 1713
sco r0, r1, r7 // icount 1714
rol r3, r2, r4 // icount 1715
sra r4, r3, r3 // icount 1716
ror r1, r0, r0 // icount 1717
sle r3, r1, r0 // icount 1718
or r0, r7, r6 // icount 1719
.rlabel_76:
ld r7, r6, 12
addi r6, r6, 12
j .rlabel_77 // icount 1720
rol r7, r5, r0 // icount 1721
rol r7, r1, r6 // icount 1722
slt r5, r0, r4 // icount 1723
sub r3, r5, r5 // icount 1724
sub r0, r7, r5 // icount 1725
or r6, r2, r0 // icount 1726
ror r6, r5, r1 // icount 1727
and r2, r2, r0 // icount 1728
rol r5, r7, r7 // icount 1729
sll r1, r0, r5 // icount 1730
ror r3, r6, r3 // icount 1731
sle r6, r1, r4 // icount 1732
rol r0, r2, r5 // icount 1733
and r5, r4, r0 // icount 1734
sra r1, r4, r3 // icount 1735
sco r1, r3, r5 // icount 1736
sle r0, r7, r0 // icount 1737
add r5, r4, r0 // icount 1738
sco r5, r7, r4 // icount 1739
ror r2, r1, r4 // icount 1740
add r5, r5, r3 // icount 1741
slt r0, r5, r3 // icount 1742
rol r2, r1, r6 // icount 1743
ror r0, r7, r1 // icount 1744
slt r7, r6, r4 // icount 1745
rol r0, r7, r7 // icount 1746
rol r6, r3, r2 // icount 1747
sra r1, r3, r4 // icount 1748
sle r6, r2, r7 // icount 1749
ror r4, r6, r7 // icount 1750
rol r2, r2, r0 // icount 1751
and r6, r5, r2 // icount 1752
rol r3, r4, r0 // icount 1753
seq r3, r6, r7 // icount 1754
slt r2, r3, r3 // icount 1755
or r5, r6, r0 // icount 1756
ror r6, r0, r0 // icount 1757
sco r0, r6, r7 // icount 1758
or r3, r6, r7 // icount 1759
sra r5, r4, r0 // icount 1760
or r6, r2, r5 // icount 1761
or r2, r7, r1 // icount 1762
ror r7, r3, r0 // icount 1763
sra r0, r7, r6 // icount 1764
ror r1, r2, r1 // icount 1765
rol r2, r1, r1 // icount 1766
sco r5, r0, r1 // icount 1767
sle r5, r5, r7 // icount 1768
sll r4, r5, r6 // icount 1769
or r0, r1, r7 // icount 1770
sco r2, r0, r7 // icount 1771
seq r1, r1, r6 // icount 1772
sco r4, r1, r2 // icount 1773
and r4, r1, r6 // icount 1774
sub r0, r0, r5 // icount 1775
add r6, r3, r2 // icount 1776
ror r4, r1, r1 // icount 1777
slt r1, r0, r5 // icount 1778
sub r0, r3, r1 // icount 1779
sco r0, r7, r0 // icount 1780
slt r6, r2, r3 // icount 1781
sle r4, r3, r2 // icount 1782
or r2, r4, r0 // icount 1783
or r4, r3, r5 // icount 1784
.rlabel_77:
st r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_78 // icount 1785
sle r7, r7, r2 // icount 1786
ror r0, r4, r2 // icount 1787
sco r7, r7, r5 // icount 1788
sle r0, r1, r3 // icount 1789
rol r0, r0, r5 // icount 1790
rol r4, r5, r7 // icount 1791
sle r2, r3, r3 // icount 1792
sco r3, r1, r2 // icount 1793
add r6, r1, r7 // icount 1794
.rlabel_78:
bnez r1, .rlabel_79 // icount 1795
or r0, r7, r0 // icount 1796
sco r6, r0, r5 // icount 1797
sll r2, r1, r1 // icount 1798
ror r2, r2, r4 // icount 1799
sle r1, r0, r0 // icount 1800
sle r1, r3, r4 // icount 1801
and r1, r6, r3 // icount 1802
sco r5, r3, r7 // icount 1803
sll r7, r7, r1 // icount 1804
sco r0, r7, r7 // icount 1805
.rlabel_79:
st r7, r6, 2
addi r6, r6, 2
j .rlabel_80 // icount 1806
sle r4, r4, r1 // icount 1807
sll r4, r0, r1 // icount 1808
sco r3, r0, r2 // icount 1809
sra r4, r3, r0 // icount 1810
rol r6, r6, r1 // icount 1811
sra r5, r4, r7 // icount 1812
sub r3, r7, r6 // icount 1813
sub r1, r3, r0 // icount 1814
ror r3, r4, r2 // icount 1815
sll r0, r2, r0 // icount 1816
or r1, r1, r3 // icount 1817
sll r5, r4, r6 // icount 1818
sub r1, r6, r6 // icount 1819
sle r3, r2, r4 // icount 1820
sra r7, r7, r0 // icount 1821
sco r7, r2, r3 // icount 1822
sll r2, r3, r3 // icount 1823
sle r1, r3, r3 // icount 1824
or r1, r0, r3 // icount 1825
sll r0, r2, r5 // icount 1826
add r2, r0, r0 // icount 1827
sll r1, r1, r0 // icount 1828
ror r4, r6, r5 // icount 1829
add r0, r3, r0 // icount 1830
rol r0, r7, r5 // icount 1831
seq r3, r6, r0 // icount 1832
sra r5, r3, r4 // icount 1833
rol r5, r5, r0 // icount 1834
ror r2, r1, r5 // icount 1835
and r5, r7, r5 // icount 1836
ror r0, r4, r6 // icount 1837
sra r2, r4, r1 // icount 1838
or r2, r6, r5 // icount 1839
rol r7, r2, r1 // icount 1840
sle r0, r3, r0 // icount 1841
or r4, r4, r4 // icount 1842
seq r0, r4, r1 // icount 1843
sra r4, r5, r1 // icount 1844
seq r1, r4, r6 // icount 1845
ror r3, r0, r2 // icount 1846
sra r2, r0, r4 // icount 1847
seq r4, r2, r5 // icount 1848
ror r6, r7, r6 // icount 1849
and r2, r3, r2 // icount 1850
sll r2, r1, r1 // icount 1851
slt r4, r2, r1 // icount 1852
rol r1, r6, r6 // icount 1853
or r6, r5, r2 // icount 1854
sco r7, r3, r7 // icount 1855
sub r5, r6, r7 // icount 1856
or r2, r3, r7 // icount 1857
add r4, r5, r7 // icount 1858
or r0, r7, r2 // icount 1859
sll r6, r5, r5 // icount 1860
sco r0, r0, r3 // icount 1861
sco r7, r0, r7 // icount 1862
sra r5, r6, r0 // icount 1863
slt r5, r4, r0 // icount 1864
add r1, r7, r6 // icount 1865
ror r0, r6, r3 // icount 1866
sll r3, r7, r6 // icount 1867
seq r5, r6, r0 // icount 1868
sco r5, r6, r0 // icount 1869
sll r4, r6, r7 // icount 1870
slt r6, r5, r4 // icount 1871
sll r1, r2, r7 // icount 1872
slt r1, r2, r2 // icount 1873
seq r0, r3, r2 // icount 1874
add r6, r5, r0 // icount 1875
sco r3, r6, r7 // icount 1876
sco r0, r2, r4 // icount 1877
sll r7, r1, r0 // icount 1878
sle r4, r5, r7 // icount 1879
sll r6, r2, r1 // icount 1880
sle r4, r3, r4 // icount 1881
sll r7, r0, r2 // icount 1882
add r1, r7, r6 // icount 1883
.rlabel_80:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_81 // icount 1884
and r3, r3, r7 // icount 1885
slt r1, r7, r4 // icount 1886
ror r3, r1, r6 // icount 1887
or r5, r6, r5 // icount 1888
rol r1, r5, r6 // icount 1889
rol r7, r2, r2 // icount 1890
slt r2, r1, r3 // icount 1891
ror r6, r4, r1 // icount 1892
and r5, r2, r5 // icount 1893
slt r2, r4, r5 // icount 1894
sra r4, r0, r0 // icount 1895
sll r7, r4, r7 // icount 1896
and r4, r4, r1 // icount 1897
rol r2, r7, r7 // icount 1898
sle r5, r4, r7 // icount 1899
rol r0, r4, r4 // icount 1900
rol r0, r5, r1 // icount 1901
add r3, r1, r0 // icount 1902
and r5, r3, r7 // icount 1903
seq r3, r1, r0 // icount 1904
sub r0, r2, r1 // icount 1905
or r4, r1, r6 // icount 1906
sco r7, r5, r7 // icount 1907
and r5, r1, r2 // icount 1908
sco r3, r5, r4 // icount 1909
rol r5, r1, r2 // icount 1910
rol r1, r2, r1 // icount 1911
sle r3, r0, r5 // icount 1912
sle r1, r4, r4 // icount 1913
sco r7, r0, r7 // icount 1914
sco r6, r2, r6 // icount 1915
add r6, r1, r0 // icount 1916
or r7, r4, r4 // icount 1917
slt r1, r2, r2 // icount 1918
seq r4, r1, r5 // icount 1919
or r6, r1, r3 // icount 1920
sub r2, r0, r2 // icount 1921
sra r7, r6, r6 // icount 1922
sra r5, r6, r5 // icount 1923
or r1, r0, r6 // icount 1924
sub r0, r3, r4 // icount 1925
ror r0, r6, r3 // icount 1926
sco r1, r5, r7 // icount 1927
sle r5, r7, r5 // icount 1928
rol r5, r6, r1 // icount 1929
and r5, r0, r7 // icount 1930
add r1, r7, r0 // icount 1931
sle r1, r3, r3 // icount 1932
sll r7, r5, r3 // icount 1933
sra r5, r4, r0 // icount 1934
rol r3, r7, r2 // icount 1935
ror r5, r5, r6 // icount 1936
add r3, r6, r5 // icount 1937
sll r0, r6, r5 // icount 1938
sra r0, r5, r3 // icount 1939
and r1, r7, r1 // icount 1940
slt r6, r0, r1 // icount 1941
ror r2, r0, r6 // icount 1942
rol r1, r2, r2 // icount 1943
add r4, r1, r6 // icount 1944
and r0, r6, r5 // icount 1945
and r6, r7, r4 // icount 1946
and r1, r3, r7 // icount 1947
sub r3, r5, r1 // icount 1948
ror r2, r5, r4 // icount 1949
ror r0, r3, r4 // icount 1950
sle r2, r0, r6 // icount 1951
seq r6, r5, r5 // icount 1952
sub r3, r1, r6 // icount 1953
sra r3, r3, r2 // icount 1954
sle r0, r6, r3 // icount 1955
add r2, r6, r0 // icount 1956
sle r3, r0, r7 // icount 1957
slt r7, r5, r7 // icount 1958
sco r7, r3, r3 // icount 1959
sub r5, r5, r1 // icount 1960
rol r7, r1, r4 // icount 1961
sub r2, r6, r6 // icount 1962
sra r7, r1, r0 // icount 1963
sco r2, r6, r1 // icount 1964
and r6, r5, r5 // icount 1965
seq r0, r4, r0 // icount 1966
sll r3, r3, r0 // icount 1967
slt r3, r0, r7 // icount 1968
and r4, r0, r1 // icount 1969
rol r4, r5, r3 // icount 1970
sub r7, r2, r0 // icount 1971
sco r4, r7, r2 // icount 1972
sle r5, r0, r6 // icount 1973
seq r0, r1, r7 // icount 1974
slt r3, r7, r4 // icount 1975
.rlabel_81:
st r7, r6, 2
addi r6, r6, 2
jal .rlabel_82 // icount 1976
ror r4, r1, r1 // icount 1977
ror r3, r2, r4 // icount 1978
ror r4, r1, r2 // icount 1979
and r2, r3, r3 // icount 1980
ror r4, r5, r5 // icount 1981
add r7, r2, r2 // icount 1982
add r5, r7, r2 // icount 1983
sco r6, r5, r7 // icount 1984
slt r7, r5, r1 // icount 1985
.rlabel_82:
beqz r0, .rlabel_83 // icount 1986
seq r7, r5, r2 // icount 1987
sco r3, r5, r0 // icount 1988
sco r7, r1, r0 // icount 1989
sll r0, r0, r7 // icount 1990
sll r1, r3, r3 // icount 1991
sub r3, r3, r5 // icount 1992
sub r7, r5, r1 // icount 1993
or r6, r6, r1 // icount 1994
and r7, r6, r5 // icount 1995
sco r4, r5, r3 // icount 1996
add r1, r5, r6 // icount 1997
sra r1, r3, r7 // icount 1998
seq r2, r3, r0 // icount 1999
seq r6, r0, r5 // icount 2000
.rlabel_83:
bnez r1, .rlabel_84 // icount 2001
add r5, r5, r6 // icount 2002
and r2, r3, r3 // icount 2003
rol r3, r5, r2 // icount 2004
sll r3, r7, r6 // icount 2005
and r2, r4, r6 // icount 2006
or r1, r5, r6 // icount 2007
and r1, r1, r3 // icount 2008
.rlabel_84:
j .rlabel_85 // icount 2009
sco r7, r0, r6 // icount 2010
sle r2, r5, r2 // icount 2011
sra r0, r2, r2 // icount 2012
or r3, r3, r0 // icount 2013
sco r6, r6, r5 // icount 2014
add r1, r4, r4 // icount 2015
sco r7, r2, r0 // icount 2016
rol r1, r2, r3 // icount 2017
seq r7, r3, r5 // icount 2018
sle r4, r2, r0 // icount 2019
sll r4, r1, r4 // icount 2020
and r7, r3, r5 // icount 2021
sle r5, r6, r0 // icount 2022
sll r3, r1, r1 // icount 2023
and r3, r7, r0 // icount 2024
add r7, r1, r1 // icount 2025
ror r6, r2, r7 // icount 2026
sco r6, r7, r5 // icount 2027
sle r4, r2, r2 // icount 2028
sle r4, r2, r0 // icount 2029
seq r5, r1, r0 // icount 2030
or r1, r5, r0 // icount 2031
ror r5, r1, r5 // icount 2032
or r1, r3, r7 // icount 2033
and r7, r3, r0 // icount 2034
rol r7, r5, r4 // icount 2035
and r1, r3, r6 // icount 2036
and r7, r3, r3 // icount 2037
ror r3, r6, r6 // icount 2038
seq r5, r0, r5 // icount 2039
sle r7, r2, r1 // icount 2040
or r2, r5, r6 // icount 2041
sco r4, r4, r5 // icount 2042
rol r1, r3, r7 // icount 2043
ror r2, r1, r5 // icount 2044
or r0, r5, r0 // icount 2045
.rlabel_85:
j .rlabel_86 // icount 2046
rol r0, r7, r7 // icount 2047
sra r4, r2, r5 // icount 2048
sll r4, r3, r6 // icount 2049
sll r6, r1, r2 // icount 2050
sle r5, r6, r3 // icount 2051
sra r4, r3, r2 // icount 2052
sub r2, r6, r0 // icount 2053
add r2, r3, r2 // icount 2054
sub r5, r6, r4 // icount 2055
seq r6, r1, r2 // icount 2056
add r4, r5, r7 // icount 2057
sra r0, r0, r2 // icount 2058
and r3, r3, r0 // icount 2059
sub r0, r3, r5 // icount 2060
seq r6, r5, r7 // icount 2061
sra r0, r2, r7 // icount 2062
sub r4, r1, r6 // icount 2063
and r7, r2, r4 // icount 2064
sub r7, r2, r6 // icount 2065
slt r3, r4, r1 // icount 2066
or r6, r0, r1 // icount 2067
slt r1, r5, r6 // icount 2068
sco r3, r5, r0 // icount 2069
sub r5, r5, r6 // icount 2070
seq r0, r0, r7 // icount 2071
sub r3, r3, r0 // icount 2072
slt r1, r0, r6 // icount 2073
sle r5, r7, r4 // icount 2074
sle r6, r5, r2 // icount 2075
sco r6, r1, r6 // icount 2076
add r5, r5, r3 // icount 2077
add r4, r2, r0 // icount 2078
sco r1, r6, r5 // icount 2079
slt r5, r0, r5 // icount 2080
ror r0, r7, r5 // icount 2081
sll r7, r6, r5 // icount 2082
sco r7, r1, r4 // icount 2083
rol r5, r5, r6 // icount 2084
sco r6, r2, r3 // icount 2085
and r0, r5, r0 // icount 2086
add r6, r7, r5 // icount 2087
ror r1, r0, r6 // icount 2088
sco r6, r4, r6 // icount 2089
seq r5, r5, r3 // icount 2090
add r2, r5, r2 // icount 2091
add r7, r4, r1 // icount 2092
sco r5, r6, r6 // icount 2093
seq r1, r1, r2 // icount 2094
sll r6, r2, r4 // icount 2095
sco r0, r1, r3 // icount 2096
sle r7, r4, r5 // icount 2097
sle r4, r5, r3 // icount 2098
sle r1, r3, r3 // icount 2099
or r1, r4, r5 // icount 2100
sra r6, r4, r2 // icount 2101
or r1, r7, r2 // icount 2102
slt r6, r6, r6 // icount 2103
and r5, r3, r0 // icount 2104
add r4, r2, r4 // icount 2105
seq r5, r6, r1 // icount 2106
rol r0, r6, r2 // icount 2107
slt r2, r1, r3 // icount 2108
ror r6, r3, r1 // icount 2109
.rlabel_86:
ld r7, r6, 4
addi r6, r6, 4
j .rlabel_87 // icount 2110
or r0, r1, r7 // icount 2111
ror r4, r0, r6 // icount 2112
and r1, r6, r6 // icount 2113
ror r0, r1, r4 // icount 2114
add r1, r6, r7 // icount 2115
and r7, r6, r1 // icount 2116
sll r7, r7, r7 // icount 2117
sle r5, r3, r5 // icount 2118
seq r6, r3, r4 // icount 2119
and r7, r1, r2 // icount 2120
ror r2, r6, r3 // icount 2121
sub r2, r3, r0 // icount 2122
sco r0, r1, r4 // icount 2123
sll r6, r2, r5 // icount 2124
add r3, r4, r2 // icount 2125
add r3, r1, r0 // icount 2126
sco r5, r3, r7 // icount 2127
add r4, r3, r1 // icount 2128
sle r3, r0, r1 // icount 2129
sll r7, r0, r2 // icount 2130
seq r7, r0, r4 // icount 2131
ror r7, r2, r4 // icount 2132
rol r1, r1, r6 // icount 2133
slt r7, r2, r7 // icount 2134
sra r7, r3, r3 // icount 2135
rol r4, r7, r7 // icount 2136
sll r1, r0, r7 // icount 2137
rol r5, r6, r4 // icount 2138
rol r4, r7, r7 // icount 2139
sll r1, r7, r1 // icount 2140
sll r2, r4, r0 // icount 2141
ror r7, r2, r7 // icount 2142
slt r1, r0, r0 // icount 2143
ror r2, r4, r3 // icount 2144
sll r0, r6, r3 // icount 2145
or r1, r2, r6 // icount 2146
and r4, r6, r0 // icount 2147
slt r4, r5, r7 // icount 2148
sle r2, r5, r0 // icount 2149
add r0, r5, r7 // icount 2150
slt r1, r3, r6 // icount 2151
add r2, r6, r7 // icount 2152
add r0, r4, r1 // icount 2153
slt r0, r5, r1 // icount 2154
sle r6, r3, r6 // icount 2155
sco r0, r5, r3 // icount 2156
slt r0, r3, r1 // icount 2157
sll r6, r7, r4 // icount 2158
seq r7, r1, r4 // icount 2159
and r1, r1, r7 // icount 2160
rol r3, r0, r4 // icount 2161
or r4, r0, r6 // icount 2162
ror r2, r7, r5 // icount 2163
and r3, r1, r0 // icount 2164
and r3, r6, r0 // icount 2165
sco r5, r3, r3 // icount 2166
sll r2, r6, r0 // icount 2167
slt r6, r3, r4 // icount 2168
sle r5, r5, r5 // icount 2169
sub r3, r0, r0 // icount 2170
seq r0, r5, r0 // icount 2171
rol r2, r2, r4 // icount 2172
rol r2, r4, r3 // icount 2173
add r5, r4, r2 // icount 2174
add r0, r5, r7 // icount 2175
sco r7, r3, r1 // icount 2176
add r0, r7, r1 // icount 2177
sle r4, r5, r1 // icount 2178
and r0, r5, r1 // icount 2179
add r5, r1, r2 // icount 2180
sco r0, r7, r7 // icount 2181
slt r1, r0, r0 // icount 2182
slt r1, r5, r0 // icount 2183
sll r6, r4, r4 // icount 2184
add r4, r2, r4 // icount 2185
slt r6, r0, r0 // icount 2186
add r3, r2, r7 // icount 2187
sll r6, r3, r7 // icount 2188
rol r4, r4, r5 // icount 2189
rol r0, r4, r4 // icount 2190
slt r0, r4, r5 // icount 2191
slt r1, r2, r1 // icount 2192
.rlabel_87:
beqz r0, .rlabel_88 // icount 2193
.rlabel_88:
beqz r0, .rlabel_89 // icount 2194
sll r2, r6, r0 // icount 2195
ror r2, r2, r4 // icount 2196
.rlabel_89:
beqz r0, .rlabel_90 // icount 2197
sco r6, r0, r3 // icount 2198
ror r5, r0, r4 // icount 2199
sra r4, r2, r2 // icount 2200
sco r3, r5, r7 // icount 2201
slt r2, r0, r5 // icount 2202
slt r1, r1, r7 // icount 2203
seq r5, r2, r6 // icount 2204
seq r3, r2, r5 // icount 2205
add r0, r1, r0 // icount 2206
sra r5, r6, r3 // icount 2207
seq r2, r6, r2 // icount 2208
sub r6, r5, r2 // icount 2209
ror r0, r3, r5 // icount 2210
and r1, r1, r7 // icount 2211
seq r0, r5, r6 // icount 2212
.rlabel_90:
bnez r1, .rlabel_91 // icount 2213
rol r1, r7, r6 // icount 2214
sll r0, r5, r2 // icount 2215
sle r5, r4, r0 // icount 2216
or r4, r6, r2 // icount 2217
sco r2, r3, r3 // icount 2218
slt r5, r2, r7 // icount 2219
sle r6, r6, r2 // icount 2220
sra r7, r1, r1 // icount 2221
sub r7, r2, r6 // icount 2222
sco r7, r3, r4 // icount 2223
ror r7, r4, r7 // icount 2224
.rlabel_91:
bnez r1, .rlabel_92 // icount 2225
sco r2, r5, r5 // icount 2226
sco r5, r3, r1 // icount 2227
.rlabel_92:
ld r7, r6, 10
addi r6, r6, 10
jal .rlabel_93 // icount 2228
sll r6, r5, r7 // icount 2229
sll r3, r1, r2 // icount 2230
sub r1, r1, r0 // icount 2231
sco r2, r3, r5 // icount 2232
sra r6, r4, r4 // icount 2233
or r7, r2, r1 // icount 2234
rol r0, r4, r7 // icount 2235
sco r5, r3, r7 // icount 2236
ror r3, r4, r5 // icount 2237
seq r6, r7, r3 // icount 2238
slt r0, r5, r4 // icount 2239
seq r7, r1, r5 // icount 2240
slt r3, r4, r5 // icount 2241
slt r2, r3, r3 // icount 2242
sub r5, r6, r0 // icount 2243
seq r3, r0, r7 // icount 2244
or r0, r6, r4 // icount 2245
.rlabel_93:
jal .rlabel_94 // icount 2246
slt r3, r1, r4 // icount 2247
and r7, r2, r5 // icount 2248
slt r7, r1, r5 // icount 2249
add r6, r0, r0 // icount 2250
sle r4, r7, r4 // icount 2251
sco r3, r2, r4 // icount 2252
sco r6, r7, r7 // icount 2253
or r4, r1, r0 // icount 2254
sra r1, r3, r2 // icount 2255
add r3, r7, r4 // icount 2256
sll r0, r5, r4 // icount 2257
sle r0, r4, r5 // icount 2258
slt r7, r0, r2 // icount 2259
seq r6, r6, r2 // icount 2260
and r3, r3, r2 // icount 2261
sle r4, r5, r2 // icount 2262
rol r0, r7, r1 // icount 2263
sub r3, r3, r1 // icount 2264
ror r3, r6, r1 // icount 2265
ror r5, r5, r2 // icount 2266
.rlabel_94:
jal .rlabel_95 // icount 2267
add r3, r6, r6 // icount 2268
seq r4, r3, r7 // icount 2269
slt r0, r1, r2 // icount 2270
ror r7, r4, r4 // icount 2271
sco r2, r1, r1 // icount 2272
sll r3, r7, r7 // icount 2273
sra r6, r2, r6 // icount 2274
slt r3, r2, r3 // icount 2275
slt r6, r4, r3 // icount 2276
sra r0, r0, r4 // icount 2277
add r6, r7, r0 // icount 2278
ror r0, r1, r0 // icount 2279
rol r3, r3, r1 // icount 2280
seq r4, r1, r3 // icount 2281
slt r5, r0, r7 // icount 2282
or r7, r7, r3 // icount 2283
ror r0, r6, r0 // icount 2284
sle r6, r5, r3 // icount 2285
sll r7, r3, r1 // icount 2286
sle r7, r6, r0 // icount 2287
.rlabel_95:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_96 // icount 2288
sll r4, r6, r6 // icount 2289
slt r3, r1, r0 // icount 2290
sle r0, r3, r7 // icount 2291
seq r2, r5, r1 // icount 2292
seq r2, r0, r2 // icount 2293
sub r6, r1, r0 // icount 2294
add r7, r2, r0 // icount 2295
add r2, r2, r4 // icount 2296
sco r7, r2, r4 // icount 2297
sle r7, r0, r1 // icount 2298
ror r7, r5, r2 // icount 2299
or r0, r2, r2 // icount 2300
sra r2, r1, r6 // icount 2301
sle r4, r5, r5 // icount 2302
ror r7, r0, r6 // icount 2303
.rlabel_96:
ld r7, r6, 8
addi r6, r6, 8
j .rlabel_97 // icount 2304
sco r6, r2, r5 // icount 2305
sll r4, r3, r1 // icount 2306
ror r7, r1, r6 // icount 2307
slt r4, r5, r7 // icount 2308
or r7, r7, r7 // icount 2309
or r5, r2, r6 // icount 2310
sco r4, r4, r4 // icount 2311
slt r3, r3, r1 // icount 2312
rol r7, r7, r6 // icount 2313
add r2, r5, r0 // icount 2314
add r1, r5, r5 // icount 2315
slt r6, r1, r0 // icount 2316
or r5, r2, r5 // icount 2317
add r1, r7, r7 // icount 2318
sle r7, r6, r6 // icount 2319
add r4, r6, r7 // icount 2320
rol r4, r5, r2 // icount 2321
rol r5, r3, r5 // icount 2322
sco r3, r7, r6 // icount 2323
sra r4, r6, r4 // icount 2324
sco r1, r1, r6 // icount 2325
seq r3, r3, r6 // icount 2326
sco r4, r7, r3 // icount 2327
and r0, r7, r4 // icount 2328
add r2, r3, r2 // icount 2329
sco r2, r7, r6 // icount 2330
or r2, r6, r2 // icount 2331
or r7, r7, r1 // icount 2332
seq r7, r3, r3 // icount 2333
or r1, r2, r0 // icount 2334
and r4, r1, r3 // icount 2335
sll r1, r1, r5 // icount 2336
sra r2, r4, r2 // icount 2337
add r6, r2, r0 // icount 2338
add r2, r2, r0 // icount 2339
sra r2, r4, r5 // icount 2340
seq r0, r4, r6 // icount 2341
sle r1, r0, r3 // icount 2342
sub r3, r1, r4 // icount 2343
or r6, r2, r6 // icount 2344
add r0, r5, r0 // icount 2345
ror r0, r6, r5 // icount 2346
sra r7, r2, r4 // icount 2347
.rlabel_97:
bnez r1, .rlabel_98 // icount 2348
sle r0, r6, r3 // icount 2349
slt r1, r0, r7 // icount 2350
rol r4, r1, r3 // icount 2351
seq r6, r1, r2 // icount 2352
.rlabel_98:
ld r7, r6, 14
addi r6, r6, 14
j .rlabel_99 // icount 2353
or r7, r3, r4 // icount 2354
add r0, r2, r2 // icount 2355
rol r6, r4, r0 // icount 2356
and r3, r4, r3 // icount 2357
or r2, r5, r7 // icount 2358
sra r4, r0, r2 // icount 2359
and r0, r3, r2 // icount 2360
sle r4, r2, r2 // icount 2361
sll r7, r1, r4 // icount 2362
sra r1, r5, r2 // icount 2363
seq r4, r2, r6 // icount 2364
rol r6, r3, r0 // icount 2365
add r1, r1, r0 // icount 2366
slt r1, r1, r4 // icount 2367
sub r6, r6, r4 // icount 2368
sle r4, r6, r7 // icount 2369
sle r7, r2, r4 // icount 2370
sll r4, r1, r0 // icount 2371
rol r7, r4, r7 // icount 2372
sle r1, r2, r2 // icount 2373
sll r6, r0, r6 // icount 2374
and r4, r0, r3 // icount 2375
sle r4, r6, r3 // icount 2376
sle r7, r6, r4 // icount 2377
sub r2, r4, r4 // icount 2378
sub r2, r7, r4 // icount 2379
ror r5, r7, r7 // icount 2380
sle r4, r6, r3 // icount 2381
sub r3, r1, r3 // icount 2382
or r0, r6, r2 // icount 2383
ror r5, r7, r5 // icount 2384
rol r6, r0, r2 // icount 2385
ror r3, r1, r7 // icount 2386
and r3, r0, r1 // icount 2387
add r5, r2, r7 // icount 2388
sco r6, r4, r3 // icount 2389
and r4, r0, r2 // icount 2390
ror r1, r3, r2 // icount 2391
sub r0, r7, r7 // icount 2392
and r1, r2, r5 // icount 2393
sra r7, r6, r3 // icount 2394
sub r0, r6, r1 // icount 2395
slt r5, r5, r0 // icount 2396
and r7, r5, r4 // icount 2397
sll r4, r5, r7 // icount 2398
sra r0, r0, r2 // icount 2399
sll r5, r2, r6 // icount 2400
or r0, r5, r4 // icount 2401
slt r7, r4, r6 // icount 2402
seq r7, r3, r7 // icount 2403
add r1, r3, r5 // icount 2404
rol r7, r0, r3 // icount 2405
sle r3, r1, r7 // icount 2406
or r4, r3, r4 // icount 2407
sll r4, r5, r2 // icount 2408
sll r0, r4, r4 // icount 2409
sle r7, r5, r3 // icount 2410
seq r6, r1, r1 // icount 2411
sco r4, r5, r7 // icount 2412
or r3, r2, r2 // icount 2413
sle r4, r1, r0 // icount 2414
seq r3, r3, r2 // icount 2415
sle r4, r2, r0 // icount 2416
seq r1, r4, r7 // icount 2417
and r4, r3, r3 // icount 2418
or r7, r3, r4 // icount 2419
sub r7, r2, r7 // icount 2420
sle r2, r0, r7 // icount 2421
seq r6, r6, r1 // icount 2422
sle r2, r2, r1 // icount 2423
sub r2, r7, r3 // icount 2424
rol r3, r2, r5 // icount 2425
seq r4, r5, r6 // icount 2426
and r3, r3, r7 // icount 2427
rol r6, r1, r6 // icount 2428
ror r7, r6, r4 // icount 2429
rol r7, r4, r2 // icount 2430
add r2, r4, r1 // icount 2431
sra r3, r6, r5 // icount 2432
rol r2, r2, r2 // icount 2433
sle r6, r2, r4 // icount 2434
ror r6, r0, r4 // icount 2435
ror r2, r5, r4 // icount 2436
slt r6, r7, r5 // icount 2437
sle r6, r4, r6 // icount 2438
ror r4, r1, r0 // icount 2439
ror r2, r7, r3 // icount 2440
sll r7, r7, r7 // icount 2441
sub r4, r7, r3 // icount 2442
seq r3, r6, r0 // icount 2443
rol r7, r3, r3 // icount 2444
sra r1, r2, r5 // icount 2445
sll r5, r7, r3 // icount 2446
rol r1, r1, r3 // icount 2447
slt r0, r6, r2 // icount 2448
slt r3, r4, r2 // icount 2449
sle r0, r2, r7 // icount 2450
and r3, r5, r2 // icount 2451
slt r4, r0, r5 // icount 2452
seq r6, r0, r3 // icount 2453
sra r3, r4, r5 // icount 2454
sle r3, r5, r4 // icount 2455
ror r5, r6, r5 // icount 2456
seq r6, r2, r3 // icount 2457
sll r4, r4, r5 // icount 2458
sco r1, r1, r1 // icount 2459
sra r1, r3, r6 // icount 2460
sco r6, r4, r1 // icount 2461
sra r3, r4, r3 // icount 2462
add r6, r0, r5 // icount 2463
sle r7, r7, r1 // icount 2464
seq r4, r2, r1 // icount 2465
ror r2, r5, r4 // icount 2466
add r5, r5, r3 // icount 2467
ror r0, r2, r5 // icount 2468
.rlabel_99:
addi r3, r3, -1 // icount 2469
beqz r3, .done // icount 2470
jr r5, 0 // icount 2471
.done:
halt // icount 2472
halt // icount 2473
