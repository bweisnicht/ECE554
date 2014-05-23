// seed 3
lbi r0, 200 // icount 0
slbi r0, 221 // icount 1
lbi r1, 79 // icount 2
slbi r1, 68 // icount 3
lbi r2, 138 // icount 4
slbi r2, 111 // icount 5
lbi r3, 45 // icount 6
slbi r3, 59 // icount 7
lbi r4, 128 // icount 8
slbi r4, 155 // icount 9
lbi r5, 41 // icount 10
slbi r5, 3 // icount 11
lbi r6, 238 // icount 12
slbi r6, 172 // icount 13
lbi r7, 16 // icount 14
slbi r7, 232 // icount 15
lbi r0, 0 // icount 16
lbi r1, 1 // icount 17
lbi r2, -1 // icount 18
lbi r3, 1 // icount 19
andi r6, r6, 0xfe // icount 20
lbi r3, 3 // icount 21
lbi r5, 44 // icount 22
jal .rlabel_0 // icount 23
sco r3, r2, r7 // icount 24
sco r0, r7, r5 // icount 25
sco r1, r3, r5 // icount 26
or r6, r6, r2 // icount 27
or r7, r6, r2 // icount 28
sub r5, r5, r1 // icount 29
add r4, r6, r2 // icount 30
sub r4, r7, r4 // icount 31
ror r1, r5, r2 // icount 32
sub r4, r2, r4 // icount 33
sra r5, r4, r5 // icount 34
sll r2, r4, r2 // icount 35
or r1, r1, r4 // icount 36
sra r4, r1, r4 // icount 37
or r3, r4, r6 // icount 38
.rlabel_0:
jal .rlabel_1 // icount 39
and r3, r0, r2 // icount 40
slt r7, r5, r0 // icount 41
and r2, r5, r7 // icount 42
slt r2, r5, r5 // icount 43
sra r1, r6, r4 // icount 44
rol r2, r2, r6 // icount 45
or r5, r4, r4 // icount 46
sub r7, r2, r1 // icount 47
ror r0, r3, r4 // icount 48
sle r7, r0, r4 // icount 49
sra r3, r6, r7 // icount 50
add r7, r0, r7 // icount 51
seq r0, r5, r0 // icount 52
sub r4, r1, r0 // icount 53
sub r4, r4, r4 // icount 54
sco r6, r5, r3 // icount 55
sub r7, r2, r6 // icount 56
sco r2, r6, r4 // icount 57
ror r0, r0, r4 // icount 58
seq r0, r0, r3 // icount 59
sco r2, r4, r4 // icount 60
sle r7, r1, r3 // icount 61
sll r1, r3, r3 // icount 62
and r2, r6, r4 // icount 63
add r4, r7, r7 // icount 64
sll r1, r5, r7 // icount 65
rol r0, r1, r4 // icount 66
.rlabel_1:
st r7, r6, 10
addi r6, r6, 10
jal .rlabel_2 // icount 67
sub r4, r6, r5 // icount 68
and r7, r2, r3 // icount 69
sle r4, r0, r7 // icount 70
seq r3, r5, r4 // icount 71
sco r4, r4, r1 // icount 72
.rlabel_2:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_3 // icount 73
sra r5, r1, r5 // icount 74
sll r6, r0, r0 // icount 75
ror r1, r0, r0 // icount 76
seq r3, r2, r7 // icount 77
sle r4, r1, r0 // icount 78
and r4, r3, r4 // icount 79
ror r5, r2, r6 // icount 80
or r2, r7, r2 // icount 81
sra r1, r6, r7 // icount 82
sub r6, r2, r5 // icount 83
sra r7, r0, r3 // icount 84
sco r0, r4, r7 // icount 85
seq r7, r1, r6 // icount 86
sra r4, r6, r0 // icount 87
.rlabel_3:
bnez r1, .rlabel_4 // icount 88
seq r3, r4, r2 // icount 89
ror r3, r1, r5 // icount 90
slt r2, r4, r1 // icount 91
sra r2, r2, r5 // icount 92
sco r5, r3, r0 // icount 93
sco r6, r4, r2 // icount 94
and r6, r2, r0 // icount 95
seq r2, r7, r5 // icount 96
sll r7, r2, r6 // icount 97
.rlabel_4:
jal .rlabel_5 // icount 98
slt r3, r2, r0 // icount 99
sub r1, r1, r7 // icount 100
.rlabel_5:
st r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_6 // icount 101
sll r6, r6, r6 // icount 102
or r0, r6, r6 // icount 103
and r7, r3, r7 // icount 104
ror r6, r2, r0 // icount 105
add r2, r3, r6 // icount 106
slt r2, r4, r2 // icount 107
sra r1, r4, r6 // icount 108
sub r5, r0, r0 // icount 109
rol r4, r6, r2 // icount 110
or r6, r3, r6 // icount 111
ror r6, r2, r3 // icount 112
.rlabel_6:
st r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_7 // icount 113
and r4, r3, r0 // icount 114
ror r2, r0, r5 // icount 115
.rlabel_7:
ld r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_8 // icount 116
rol r3, r4, r5 // icount 117
or r3, r2, r7 // icount 118
sle r5, r2, r5 // icount 119
seq r1, r0, r5 // icount 120
sle r1, r5, r6 // icount 121
.rlabel_8:
st r7, r6, 8
addi r6, r6, 8
j .rlabel_9 // icount 122
ror r0, r2, r6 // icount 123
or r3, r3, r1 // icount 124
sll r4, r2, r6 // icount 125
rol r7, r1, r1 // icount 126
sle r5, r1, r4 // icount 127
sra r2, r5, r4 // icount 128
or r6, r6, r7 // icount 129
add r1, r7, r1 // icount 130
sra r0, r6, r6 // icount 131
and r1, r2, r5 // icount 132
seq r7, r3, r1 // icount 133
sra r6, r0, r2 // icount 134
sco r5, r2, r5 // icount 135
sra r6, r2, r5 // icount 136
sle r0, r1, r7 // icount 137
sco r7, r5, r2 // icount 138
sco r6, r6, r2 // icount 139
sll r7, r6, r3 // icount 140
ror r2, r3, r2 // icount 141
sra r6, r6, r5 // icount 142
add r3, r1, r7 // icount 143
sll r2, r3, r1 // icount 144
ror r2, r1, r3 // icount 145
sll r3, r5, r2 // icount 146
sco r7, r1, r3 // icount 147
slt r0, r0, r4 // icount 148
sll r5, r7, r7 // icount 149
add r3, r6, r1 // icount 150
sll r4, r3, r5 // icount 151
sra r6, r1, r2 // icount 152
rol r2, r3, r3 // icount 153
sll r1, r6, r3 // icount 154
slt r5, r2, r4 // icount 155
sub r0, r4, r6 // icount 156
sra r3, r7, r7 // icount 157
sll r2, r7, r7 // icount 158
slt r0, r5, r1 // icount 159
sub r6, r6, r3 // icount 160
sle r5, r6, r3 // icount 161
seq r3, r3, r5 // icount 162
sub r5, r6, r6 // icount 163
slt r0, r0, r5 // icount 164
sub r3, r6, r7 // icount 165
sra r5, r5, r5 // icount 166
sra r0, r2, r4 // icount 167
sra r4, r4, r6 // icount 168
sll r1, r6, r7 // icount 169
sra r0, r6, r7 // icount 170
slt r1, r0, r0 // icount 171
sll r5, r6, r1 // icount 172
sco r3, r6, r4 // icount 173
add r5, r0, r3 // icount 174
or r7, r6, r0 // icount 175
add r0, r3, r0 // icount 176
add r1, r0, r6 // icount 177
sco r4, r4, r0 // icount 178
or r0, r1, r7 // icount 179
rol r6, r2, r1 // icount 180
sra r3, r5, r4 // icount 181
rol r0, r3, r0 // icount 182
slt r5, r1, r2 // icount 183
sco r0, r3, r7 // icount 184
sll r0, r5, r6 // icount 185
and r1, r3, r3 // icount 186
sll r1, r4, r4 // icount 187
and r2, r7, r6 // icount 188
ror r6, r3, r2 // icount 189
sll r4, r1, r5 // icount 190
slt r4, r6, r0 // icount 191
seq r0, r3, r3 // icount 192
sco r4, r7, r3 // icount 193
or r5, r0, r2 // icount 194
or r2, r1, r7 // icount 195
seq r5, r7, r0 // icount 196
or r3, r5, r2 // icount 197
sle r2, r0, r0 // icount 198
sco r2, r2, r1 // icount 199
sra r3, r3, r6 // icount 200
sra r6, r7, r3 // icount 201
sra r7, r1, r7 // icount 202
rol r0, r1, r4 // icount 203
seq r1, r7, r2 // icount 204
sra r6, r4, r0 // icount 205
add r3, r3, r0 // icount 206
or r5, r4, r6 // icount 207
slt r1, r1, r7 // icount 208
sra r0, r3, r0 // icount 209
slt r2, r7, r1 // icount 210
or r7, r2, r3 // icount 211
sub r3, r1, r3 // icount 212
and r7, r0, r0 // icount 213
.rlabel_9:
st r7, r6, 12
addi r6, r6, 12
j .rlabel_10 // icount 214
and r3, r2, r1 // icount 215
sub r1, r1, r4 // icount 216
seq r7, r5, r3 // icount 217
add r4, r5, r3 // icount 218
sle r5, r2, r0 // icount 219
rol r5, r0, r2 // icount 220
or r1, r1, r0 // icount 221
slt r0, r5, r4 // icount 222
ror r0, r2, r1 // icount 223
sub r7, r7, r4 // icount 224
and r3, r4, r4 // icount 225
ror r0, r4, r2 // icount 226
sra r3, r1, r1 // icount 227
sra r6, r3, r3 // icount 228
or r2, r5, r4 // icount 229
and r1, r0, r1 // icount 230
sle r0, r3, r0 // icount 231
rol r6, r7, r0 // icount 232
seq r5, r6, r5 // icount 233
sub r3, r6, r7 // icount 234
sub r6, r4, r7 // icount 235
sub r0, r5, r2 // icount 236
ror r2, r7, r7 // icount 237
add r3, r3, r0 // icount 238
or r1, r7, r5 // icount 239
sll r1, r4, r3 // icount 240
ror r3, r2, r1 // icount 241
sub r2, r6, r1 // icount 242
sll r5, r4, r1 // icount 243
add r5, r5, r7 // icount 244
rol r7, r0, r3 // icount 245
sle r7, r1, r4 // icount 246
ror r7, r2, r4 // icount 247
sra r7, r2, r1 // icount 248
rol r5, r2, r4 // icount 249
sll r3, r6, r1 // icount 250
sle r5, r7, r3 // icount 251
rol r3, r0, r6 // icount 252
sco r6, r6, r6 // icount 253
sll r3, r2, r6 // icount 254
sra r1, r7, r5 // icount 255
and r6, r0, r5 // icount 256
sub r1, r2, r3 // icount 257
seq r6, r4, r3 // icount 258
sub r7, r5, r5 // icount 259
sll r5, r2, r7 // icount 260
sll r4, r5, r1 // icount 261
seq r0, r4, r2 // icount 262
sra r5, r4, r5 // icount 263
sub r3, r3, r6 // icount 264
sub r2, r6, r4 // icount 265
add r0, r2, r2 // icount 266
sle r6, r7, r7 // icount 267
and r6, r6, r4 // icount 268
sll r2, r1, r1 // icount 269
sll r4, r5, r3 // icount 270
sco r0, r5, r7 // icount 271
sra r2, r1, r3 // icount 272
sco r7, r3, r4 // icount 273
and r5, r5, r5 // icount 274
seq r3, r4, r2 // icount 275
seq r0, r0, r2 // icount 276
rol r6, r3, r7 // icount 277
sra r0, r2, r4 // icount 278
or r1, r5, r2 // icount 279
rol r5, r5, r4 // icount 280
or r0, r6, r3 // icount 281
and r0, r0, r4 // icount 282
seq r5, r3, r0 // icount 283
slt r6, r1, r2 // icount 284
or r5, r4, r4 // icount 285
ror r0, r4, r1 // icount 286
or r4, r2, r0 // icount 287
ror r0, r2, r7 // icount 288
seq r3, r4, r6 // icount 289
sll r1, r0, r2 // icount 290
sle r5, r5, r2 // icount 291
sco r6, r1, r0 // icount 292
rol r2, r2, r6 // icount 293
rol r7, r3, r1 // icount 294
sra r1, r3, r1 // icount 295
ror r1, r1, r3 // icount 296
or r3, r7, r2 // icount 297
sub r0, r1, r2 // icount 298
sra r5, r2, r1 // icount 299
and r7, r4, r4 // icount 300
add r5, r0, r3 // icount 301
sco r7, r4, r7 // icount 302
or r1, r2, r0 // icount 303
and r6, r5, r0 // icount 304
sle r2, r1, r0 // icount 305
sle r0, r4, r0 // icount 306
or r4, r4, r1 // icount 307
ror r4, r1, r2 // icount 308
or r5, r6, r0 // icount 309
sub r6, r4, r4 // icount 310
sll r7, r3, r1 // icount 311
sub r1, r2, r7 // icount 312
sll r5, r0, r4 // icount 313
sll r7, r4, r6 // icount 314
add r0, r7, r2 // icount 315
or r0, r4, r6 // icount 316
add r4, r2, r4 // icount 317
slt r4, r6, r7 // icount 318
sll r0, r4, r1 // icount 319
ror r6, r5, r3 // icount 320
sco r1, r2, r3 // icount 321
sra r5, r0, r4 // icount 322
seq r3, r4, r6 // icount 323
sub r6, r4, r7 // icount 324
and r1, r3, r2 // icount 325
seq r5, r5, r3 // icount 326
seq r7, r1, r1 // icount 327
seq r5, r6, r2 // icount 328
sll r0, r3, r0 // icount 329
sco r6, r4, r6 // icount 330
add r4, r1, r4 // icount 331
sco r1, r1, r2 // icount 332
ror r1, r7, r3 // icount 333
and r7, r1, r1 // icount 334
sll r6, r1, r6 // icount 335
sub r1, r4, r3 // icount 336
add r6, r4, r5 // icount 337
.rlabel_10:
beqz r0, .rlabel_11 // icount 338
sle r5, r4, r0 // icount 339
sub r5, r4, r0 // icount 340
sco r0, r3, r5 // icount 341
sra r5, r7, r1 // icount 342
sco r3, r6, r0 // icount 343
ror r1, r2, r4 // icount 344
add r5, r1, r6 // icount 345
rol r6, r6, r6 // icount 346
sll r7, r7, r3 // icount 347
sra r5, r1, r0 // icount 348
sco r0, r3, r6 // icount 349
.rlabel_11:
ld r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_12 // icount 350
slt r3, r0, r4 // icount 351
sra r1, r3, r1 // icount 352
slt r0, r6, r6 // icount 353
ror r1, r7, r0 // icount 354
add r0, r4, r7 // icount 355
or r6, r6, r2 // icount 356
sll r5, r6, r7 // icount 357
sll r3, r2, r2 // icount 358
sle r1, r6, r1 // icount 359
and r2, r3, r0 // icount 360
and r1, r3, r3 // icount 361
seq r4, r7, r3 // icount 362
sra r3, r2, r0 // icount 363
sco r0, r7, r4 // icount 364
sll r6, r4, r5 // icount 365
.rlabel_12:
ld r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_13 // icount 366
sll r0, r6, r6 // icount 367
sle r2, r4, r3 // icount 368
sub r6, r1, r5 // icount 369
sra r2, r0, r4 // icount 370
.rlabel_13:
ld r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_14 // icount 371
ror r6, r2, r7 // icount 372
slt r6, r4, r6 // icount 373
slt r2, r7, r6 // icount 374
sub r7, r6, r7 // icount 375
ror r2, r2, r2 // icount 376
add r7, r6, r1 // icount 377
sub r5, r3, r0 // icount 378
.rlabel_14:
beqz r0, .rlabel_15 // icount 379
sco r0, r2, r1 // icount 380
slt r3, r3, r2 // icount 381
slt r1, r2, r7 // icount 382
sle r5, r3, r0 // icount 383
add r4, r5, r5 // icount 384
sra r2, r5, r6 // icount 385
sco r6, r7, r1 // icount 386
.rlabel_15:
j .rlabel_16 // icount 387
or r1, r0, r7 // icount 388
ror r5, r4, r1 // icount 389
add r2, r5, r3 // icount 390
sra r4, r3, r7 // icount 391
ror r7, r7, r1 // icount 392
or r0, r5, r1 // icount 393
sll r2, r4, r1 // icount 394
add r6, r7, r1 // icount 395
and r4, r7, r0 // icount 396
sll r7, r2, r4 // icount 397
seq r7, r4, r6 // icount 398
seq r5, r6, r5 // icount 399
sco r4, r3, r7 // icount 400
or r6, r1, r4 // icount 401
rol r4, r6, r1 // icount 402
sll r0, r6, r4 // icount 403
sub r1, r0, r7 // icount 404
sub r1, r2, r6 // icount 405
sle r7, r4, r2 // icount 406
or r7, r1, r7 // icount 407
ror r0, r1, r4 // icount 408
sra r5, r2, r7 // icount 409
slt r3, r7, r3 // icount 410
add r7, r1, r5 // icount 411
or r5, r7, r6 // icount 412
sle r3, r6, r1 // icount 413
sub r7, r0, r7 // icount 414
seq r6, r2, r0 // icount 415
slt r2, r3, r1 // icount 416
sll r7, r7, r6 // icount 417
or r7, r5, r7 // icount 418
sra r6, r1, r0 // icount 419
add r2, r1, r2 // icount 420
rol r4, r5, r1 // icount 421
.rlabel_16:
st r7, r6, 8
addi r6, r6, 8
beqz r0, .rlabel_17 // icount 422
.rlabel_17:
jal .rlabel_18 // icount 423
seq r4, r2, r5 // icount 424
add r4, r3, r7 // icount 425
sub r5, r7, r4 // icount 426
and r6, r2, r6 // icount 427
seq r7, r7, r7 // icount 428
sle r5, r5, r4 // icount 429
or r3, r3, r5 // icount 430
ror r6, r4, r7 // icount 431
.rlabel_18:
st r7, r6, 14
addi r6, r6, 14
jal .rlabel_19 // icount 432
sco r0, r7, r4 // icount 433
sll r1, r2, r4 // icount 434
sle r4, r0, r3 // icount 435
slt r6, r3, r6 // icount 436
sra r6, r7, r2 // icount 437
sub r1, r3, r7 // icount 438
add r6, r4, r1 // icount 439
sll r5, r3, r7 // icount 440
slt r3, r4, r4 // icount 441
sra r2, r5, r0 // icount 442
sub r0, r7, r0 // icount 443
seq r1, r4, r7 // icount 444
and r5, r6, r2 // icount 445
ror r1, r3, r6 // icount 446
slt r0, r4, r5 // icount 447
sco r1, r5, r5 // icount 448
seq r0, r5, r2 // icount 449
ror r0, r5, r2 // icount 450
or r3, r2, r0 // icount 451
sle r3, r5, r7 // icount 452
slt r0, r4, r7 // icount 453
.rlabel_19:
st r7, r6, 12
addi r6, r6, 12
j .rlabel_20 // icount 454
add r1, r5, r1 // icount 455
ror r4, r0, r3 // icount 456
and r5, r2, r6 // icount 457
slt r4, r5, r7 // icount 458
add r1, r0, r7 // icount 459
ror r4, r1, r0 // icount 460
seq r7, r0, r0 // icount 461
sub r4, r5, r2 // icount 462
slt r4, r5, r4 // icount 463
add r5, r0, r0 // icount 464
rol r0, r5, r1 // icount 465
sra r1, r6, r2 // icount 466
rol r5, r3, r0 // icount 467
.rlabel_20:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_21 // icount 468
add r2, r4, r0 // icount 469
sra r2, r7, r4 // icount 470
sub r1, r6, r3 // icount 471
ror r3, r6, r2 // icount 472
or r5, r1, r5 // icount 473
or r5, r7, r1 // icount 474
.rlabel_21:
jal .rlabel_22 // icount 475
rol r6, r3, r3 // icount 476
seq r5, r5, r7 // icount 477
sub r3, r3, r3 // icount 478
sub r4, r0, r1 // icount 479
seq r1, r0, r6 // icount 480
add r6, r6, r0 // icount 481
rol r4, r3, r7 // icount 482
rol r4, r6, r3 // icount 483
rol r0, r6, r4 // icount 484
sub r0, r1, r3 // icount 485
ror r2, r4, r4 // icount 486
sub r2, r5, r5 // icount 487
rol r3, r6, r1 // icount 488
seq r7, r6, r1 // icount 489
sll r2, r3, r0 // icount 490
sco r2, r3, r0 // icount 491
sra r1, r5, r0 // icount 492
sub r3, r0, r0 // icount 493
rol r1, r7, r3 // icount 494
sle r3, r3, r1 // icount 495
sub r5, r3, r6 // icount 496
sle r5, r6, r3 // icount 497
.rlabel_22:
bnez r1, .rlabel_23 // icount 498
or r0, r2, r3 // icount 499
and r2, r4, r1 // icount 500
seq r0, r3, r3 // icount 501
add r5, r5, r5 // icount 502
sra r7, r7, r4 // icount 503
sle r0, r2, r4 // icount 504
or r4, r5, r1 // icount 505
slt r6, r7, r7 // icount 506
or r7, r1, r0 // icount 507
seq r4, r0, r6 // icount 508
.rlabel_23:
ld r7, r6, 10
addi r6, r6, 10
jal .rlabel_24 // icount 509
rol r1, r7, r5 // icount 510
sra r4, r1, r4 // icount 511
sco r4, r2, r4 // icount 512
seq r2, r6, r2 // icount 513
rol r6, r2, r0 // icount 514
add r5, r6, r5 // icount 515
sle r1, r4, r3 // icount 516
sle r2, r1, r3 // icount 517
ror r5, r5, r3 // icount 518
slt r0, r7, r2 // icount 519
sll r7, r6, r6 // icount 520
sco r0, r7, r2 // icount 521
sra r7, r0, r5 // icount 522
or r4, r5, r7 // icount 523
sll r1, r6, r7 // icount 524
.rlabel_24:
ld r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_25 // icount 525
seq r5, r1, r6 // icount 526
.rlabel_25:
beqz r0, .rlabel_26 // icount 527
rol r2, r0, r3 // icount 528
and r6, r7, r3 // icount 529
sub r3, r0, r1 // icount 530
add r3, r5, r6 // icount 531
sco r7, r1, r2 // icount 532
seq r5, r3, r6 // icount 533
rol r1, r6, r6 // icount 534
sub r7, r7, r5 // icount 535
sle r5, r6, r2 // icount 536
.rlabel_26:
st r7, r6, 10
addi r6, r6, 10
j .rlabel_27 // icount 537
seq r7, r5, r3 // icount 538
slt r1, r7, r5 // icount 539
rol r3, r5, r7 // icount 540
ror r0, r3, r3 // icount 541
sco r1, r2, r6 // icount 542
and r6, r4, r1 // icount 543
seq r6, r6, r5 // icount 544
ror r1, r2, r0 // icount 545
sco r1, r4, r5 // icount 546
sra r7, r0, r3 // icount 547
and r1, r0, r1 // icount 548
and r4, r2, r2 // icount 549
slt r2, r7, r3 // icount 550
add r0, r3, r6 // icount 551
add r1, r5, r2 // icount 552
slt r4, r1, r7 // icount 553
or r4, r6, r2 // icount 554
sle r2, r7, r1 // icount 555
sll r5, r2, r0 // icount 556
sra r2, r2, r4 // icount 557
or r7, r0, r7 // icount 558
sub r6, r2, r4 // icount 559
seq r6, r1, r7 // icount 560
seq r0, r3, r2 // icount 561
and r1, r1, r0 // icount 562
seq r3, r3, r3 // icount 563
sub r0, r5, r3 // icount 564
add r4, r3, r2 // icount 565
ror r7, r1, r5 // icount 566
sle r5, r7, r2 // icount 567
rol r1, r4, r3 // icount 568
sll r3, r7, r0 // icount 569
or r1, r6, r5 // icount 570
or r5, r2, r7 // icount 571
sub r1, r2, r3 // icount 572
and r0, r2, r2 // icount 573
.rlabel_27:
ld r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_28 // icount 574
and r6, r5, r5 // icount 575
sra r4, r6, r5 // icount 576
sco r2, r2, r2 // icount 577
or r4, r0, r4 // icount 578
sle r1, r7, r5 // icount 579
seq r3, r5, r6 // icount 580
sra r1, r6, r4 // icount 581
sll r3, r5, r3 // icount 582
seq r2, r2, r2 // icount 583
slt r2, r0, r5 // icount 584
sle r4, r6, r5 // icount 585
.rlabel_28:
st r7, r6, 14
addi r6, r6, 14
jal .rlabel_29 // icount 586
and r7, r5, r2 // icount 587
sco r0, r2, r0 // icount 588
ror r2, r5, r6 // icount 589
slt r2, r2, r4 // icount 590
slt r7, r5, r5 // icount 591
ror r6, r5, r6 // icount 592
sll r4, r3, r6 // icount 593
rol r5, r6, r1 // icount 594
sll r5, r0, r7 // icount 595
or r6, r0, r6 // icount 596
sra r7, r5, r7 // icount 597
slt r1, r6, r6 // icount 598
sll r0, r5, r6 // icount 599
.rlabel_29:
bnez r1, .rlabel_30 // icount 600
rol r7, r0, r4 // icount 601
or r5, r2, r2 // icount 602
ror r3, r1, r1 // icount 603
or r5, r5, r5 // icount 604
slt r5, r5, r5 // icount 605
slt r7, r2, r5 // icount 606
and r1, r0, r7 // icount 607
.rlabel_30:
ld r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_31 // icount 608
and r3, r1, r2 // icount 609
sco r4, r7, r5 // icount 610
sco r6, r5, r1 // icount 611
.rlabel_31:
bnez r1, .rlabel_32 // icount 612
ror r6, r6, r4 // icount 613
or r7, r6, r0 // icount 614
seq r3, r3, r3 // icount 615
sra r7, r2, r0 // icount 616
sra r2, r0, r7 // icount 617
sco r3, r4, r2 // icount 618
ror r3, r6, r1 // icount 619
add r6, r7, r6 // icount 620
.rlabel_32:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_33 // icount 621
or r0, r7, r0 // icount 622
sra r5, r6, r6 // icount 623
rol r5, r2, r0 // icount 624
rol r2, r3, r5 // icount 625
and r6, r7, r1 // icount 626
sra r6, r5, r3 // icount 627
ror r1, r1, r3 // icount 628
add r4, r0, r2 // icount 629
sub r6, r7, r1 // icount 630
sll r4, r5, r1 // icount 631
ror r2, r0, r6 // icount 632
add r4, r6, r6 // icount 633
sll r4, r4, r5 // icount 634
slt r2, r6, r7 // icount 635
add r6, r6, r5 // icount 636
add r1, r7, r4 // icount 637
sra r5, r7, r1 // icount 638
sle r7, r7, r0 // icount 639
add r3, r3, r1 // icount 640
and r5, r6, r0 // icount 641
sle r2, r1, r4 // icount 642
slt r2, r2, r2 // icount 643
or r6, r2, r2 // icount 644
or r6, r1, r6 // icount 645
or r1, r0, r0 // icount 646
add r7, r0, r4 // icount 647
sra r3, r4, r1 // icount 648
sle r7, r7, r2 // icount 649
seq r7, r3, r3 // icount 650
sle r4, r6, r6 // icount 651
ror r7, r7, r7 // icount 652
sll r2, r4, r5 // icount 653
or r2, r4, r1 // icount 654
sll r2, r3, r5 // icount 655
sll r5, r5, r1 // icount 656
or r4, r1, r6 // icount 657
sub r5, r1, r7 // icount 658
sll r4, r1, r5 // icount 659
slt r5, r1, r3 // icount 660
seq r7, r6, r5 // icount 661
rol r4, r6, r5 // icount 662
ror r3, r3, r1 // icount 663
sub r3, r3, r0 // icount 664
or r5, r7, r3 // icount 665
and r3, r1, r6 // icount 666
add r0, r4, r6 // icount 667
and r2, r7, r1 // icount 668
sle r5, r6, r5 // icount 669
ror r5, r1, r5 // icount 670
sll r1, r0, r6 // icount 671
seq r3, r4, r6 // icount 672
ror r4, r6, r4 // icount 673
sle r1, r6, r6 // icount 674
add r3, r0, r6 // icount 675
slt r3, r1, r5 // icount 676
seq r6, r6, r2 // icount 677
sle r2, r0, r6 // icount 678
and r5, r7, r6 // icount 679
slt r2, r1, r7 // icount 680
add r0, r0, r1 // icount 681
slt r3, r6, r6 // icount 682
sub r5, r7, r0 // icount 683
sll r5, r2, r4 // icount 684
seq r0, r4, r4 // icount 685
slt r2, r5, r6 // icount 686
rol r7, r3, r6 // icount 687
sub r5, r0, r5 // icount 688
seq r2, r3, r7 // icount 689
sle r5, r6, r5 // icount 690
rol r5, r2, r3 // icount 691
and r7, r4, r3 // icount 692
sco r1, r3, r4 // icount 693
seq r7, r6, r0 // icount 694
add r3, r6, r1 // icount 695
sco r6, r1, r2 // icount 696
sle r4, r4, r5 // icount 697
seq r4, r1, r2 // icount 698
sra r1, r3, r2 // icount 699
ror r2, r4, r0 // icount 700
sra r6, r3, r4 // icount 701
.rlabel_33:
bnez r1, .rlabel_34 // icount 702
sub r4, r6, r6 // icount 703
sra r4, r0, r4 // icount 704
sra r5, r6, r4 // icount 705
rol r6, r7, r3 // icount 706
and r4, r7, r1 // icount 707
sco r0, r7, r5 // icount 708
sub r6, r6, r7 // icount 709
ror r2, r6, r1 // icount 710
or r2, r7, r7 // icount 711
and r4, r6, r0 // icount 712
sle r5, r4, r1 // icount 713
.rlabel_34:
ld r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_35 // icount 714
sle r7, r4, r1 // icount 715
sll r7, r3, r7 // icount 716
and r6, r7, r2 // icount 717
sub r6, r6, r7 // icount 718
sub r3, r5, r2 // icount 719
sco r4, r1, r2 // icount 720
sll r7, r2, r5 // icount 721
seq r1, r2, r4 // icount 722
or r4, r1, r3 // icount 723
sco r7, r7, r6 // icount 724
add r0, r4, r2 // icount 725
sle r4, r0, r3 // icount 726
or r5, r0, r7 // icount 727
rol r6, r1, r2 // icount 728
.rlabel_35:
j .rlabel_36 // icount 729
sra r3, r0, r5 // icount 730
sco r0, r5, r3 // icount 731
add r5, r3, r1 // icount 732
slt r5, r4, r2 // icount 733
sll r6, r0, r6 // icount 734
sub r1, r3, r7 // icount 735
or r5, r5, r3 // icount 736
sra r0, r4, r0 // icount 737
and r0, r7, r2 // icount 738
add r5, r4, r3 // icount 739
sub r2, r5, r3 // icount 740
seq r4, r0, r4 // icount 741
sll r4, r6, r0 // icount 742
or r1, r5, r1 // icount 743
sll r5, r5, r2 // icount 744
sub r0, r4, r6 // icount 745
ror r3, r7, r2 // icount 746
ror r7, r2, r3 // icount 747
sle r5, r1, r4 // icount 748
sub r0, r0, r3 // icount 749
and r7, r0, r7 // icount 750
sub r4, r6, r0 // icount 751
sub r5, r6, r2 // icount 752
seq r7, r2, r5 // icount 753
ror r0, r4, r5 // icount 754
sle r0, r6, r6 // icount 755
add r0, r6, r2 // icount 756
sra r5, r5, r2 // icount 757
sra r4, r1, r5 // icount 758
add r1, r7, r6 // icount 759
or r7, r6, r7 // icount 760
seq r0, r7, r5 // icount 761
sub r3, r3, r1 // icount 762
sle r6, r5, r5 // icount 763
and r2, r4, r6 // icount 764
sco r2, r1, r5 // icount 765
add r3, r7, r4 // icount 766
sra r0, r2, r4 // icount 767
or r5, r5, r4 // icount 768
and r7, r6, r6 // icount 769
rol r0, r0, r0 // icount 770
add r0, r0, r3 // icount 771
add r4, r4, r1 // icount 772
ror r4, r4, r3 // icount 773
sub r3, r5, r2 // icount 774
seq r5, r7, r2 // icount 775
sle r0, r1, r1 // icount 776
sll r6, r6, r3 // icount 777
slt r5, r3, r5 // icount 778
sll r2, r4, r4 // icount 779
sco r6, r0, r0 // icount 780
sll r5, r3, r2 // icount 781
rol r2, r0, r7 // icount 782
sra r3, r6, r2 // icount 783
sra r0, r6, r0 // icount 784
or r1, r3, r1 // icount 785
.rlabel_36:
j .rlabel_37 // icount 786
sll r2, r7, r0 // icount 787
or r2, r2, r7 // icount 788
sco r4, r2, r1 // icount 789
ror r3, r7, r3 // icount 790
add r2, r0, r5 // icount 791
seq r2, r1, r1 // icount 792
sle r5, r5, r3 // icount 793
rol r7, r1, r6 // icount 794
ror r6, r2, r0 // icount 795
ror r1, r2, r2 // icount 796
ror r0, r7, r0 // icount 797
sco r5, r4, r2 // icount 798
seq r4, r2, r3 // icount 799
ror r1, r5, r6 // icount 800
ror r4, r6, r1 // icount 801
slt r1, r2, r2 // icount 802
or r2, r3, r5 // icount 803
slt r0, r4, r6 // icount 804
sll r3, r6, r3 // icount 805
sra r1, r5, r5 // icount 806
add r7, r2, r5 // icount 807
slt r5, r0, r3 // icount 808
and r1, r7, r5 // icount 809
sll r3, r2, r7 // icount 810
sll r3, r5, r6 // icount 811
ror r2, r6, r1 // icount 812
seq r3, r6, r4 // icount 813
slt r6, r2, r3 // icount 814
rol r7, r0, r6 // icount 815
sle r0, r6, r4 // icount 816
ror r4, r2, r2 // icount 817
slt r7, r5, r2 // icount 818
and r1, r5, r7 // icount 819
sco r7, r4, r3 // icount 820
sco r0, r6, r3 // icount 821
sco r6, r3, r7 // icount 822
sll r5, r1, r4 // icount 823
sle r7, r6, r3 // icount 824
or r2, r0, r6 // icount 825
ror r0, r5, r0 // icount 826
sra r7, r2, r2 // icount 827
slt r3, r6, r3 // icount 828
rol r4, r1, r7 // icount 829
sub r4, r4, r1 // icount 830
sub r4, r6, r3 // icount 831
or r6, r6, r2 // icount 832
slt r1, r0, r1 // icount 833
seq r5, r6, r6 // icount 834
sll r7, r5, r6 // icount 835
add r5, r0, r5 // icount 836
or r0, r6, r5 // icount 837
sra r6, r3, r4 // icount 838
sra r4, r0, r6 // icount 839
sra r0, r7, r3 // icount 840
slt r3, r3, r0 // icount 841
sle r5, r2, r3 // icount 842
sco r0, r1, r6 // icount 843
sle r1, r4, r1 // icount 844
sll r6, r6, r1 // icount 845
rol r5, r5, r0 // icount 846
add r3, r0, r7 // icount 847
slt r1, r0, r7 // icount 848
ror r3, r6, r6 // icount 849
sll r1, r0, r4 // icount 850
sle r6, r4, r2 // icount 851
sco r6, r3, r4 // icount 852
add r6, r7, r2 // icount 853
seq r5, r5, r5 // icount 854
and r2, r4, r6 // icount 855
add r4, r0, r6 // icount 856
slt r2, r1, r5 // icount 857
or r1, r7, r4 // icount 858
rol r3, r0, r6 // icount 859
rol r6, r5, r2 // icount 860
sub r5, r1, r3 // icount 861
or r0, r1, r0 // icount 862
sle r6, r3, r6 // icount 863
sub r7, r2, r1 // icount 864
add r6, r3, r1 // icount 865
add r1, r3, r0 // icount 866
or r6, r2, r1 // icount 867
sco r3, r1, r4 // icount 868
sco r7, r5, r4 // icount 869
or r1, r6, r5 // icount 870
seq r4, r7, r7 // icount 871
sra r6, r5, r3 // icount 872
add r7, r1, r0 // icount 873
slt r7, r6, r7 // icount 874
sle r2, r3, r4 // icount 875
sub r2, r3, r1 // icount 876
sle r1, r6, r0 // icount 877
sco r5, r7, r1 // icount 878
seq r4, r7, r6 // icount 879
sco r4, r1, r2 // icount 880
sll r7, r2, r6 // icount 881
or r3, r2, r4 // icount 882
or r0, r5, r5 // icount 883
add r0, r7, r6 // icount 884
add r0, r3, r0 // icount 885
sle r2, r1, r2 // icount 886
ror r6, r2, r1 // icount 887
slt r5, r4, r7 // icount 888
ror r5, r4, r4 // icount 889
add r0, r2, r1 // icount 890
rol r7, r2, r6 // icount 891
or r6, r5, r0 // icount 892
sco r5, r6, r0 // icount 893
seq r0, r3, r6 // icount 894
sll r6, r4, r0 // icount 895
ror r5, r7, r2 // icount 896
slt r6, r1, r6 // icount 897
sll r1, r7, r6 // icount 898
and r3, r4, r5 // icount 899
sra r7, r7, r1 // icount 900
slt r4, r0, r0 // icount 901
slt r5, r3, r2 // icount 902
sra r1, r1, r6 // icount 903
sub r3, r6, r0 // icount 904
or r4, r5, r6 // icount 905
seq r5, r6, r4 // icount 906
sll r5, r0, r2 // icount 907
ror r6, r1, r5 // icount 908
slt r1, r4, r3 // icount 909
rol r0, r3, r6 // icount 910
sle r3, r4, r0 // icount 911
sco r2, r2, r2 // icount 912
.rlabel_37:
j .rlabel_38 // icount 913
sco r5, r3, r7 // icount 914
slt r1, r7, r5 // icount 915
seq r2, r4, r3 // icount 916
seq r3, r4, r4 // icount 917
sra r4, r1, r0 // icount 918
sle r1, r5, r7 // icount 919
ror r2, r7, r0 // icount 920
or r0, r4, r0 // icount 921
ror r5, r3, r3 // icount 922
seq r6, r7, r4 // icount 923
sra r1, r2, r3 // icount 924
sub r4, r3, r3 // icount 925
sra r3, r1, r4 // icount 926
.rlabel_38:
beqz r0, .rlabel_39 // icount 927
or r6, r6, r0 // icount 928
sub r6, r1, r3 // icount 929
sco r7, r4, r0 // icount 930
ror r2, r2, r1 // icount 931
add r7, r7, r5 // icount 932
seq r0, r1, r6 // icount 933
sco r3, r4, r2 // icount 934
sub r2, r6, r0 // icount 935
or r3, r5, r0 // icount 936
slt r4, r6, r2 // icount 937
.rlabel_39:
beqz r0, .rlabel_40 // icount 938
slt r4, r6, r4 // icount 939
sub r2, r6, r7 // icount 940
.rlabel_40:
beqz r0, .rlabel_41 // icount 941
sco r2, r3, r1 // icount 942
and r1, r3, r0 // icount 943
seq r4, r3, r3 // icount 944
rol r7, r0, r5 // icount 945
sle r6, r1, r5 // icount 946
sle r5, r6, r2 // icount 947
rol r5, r0, r3 // icount 948
or r5, r5, r4 // icount 949
slt r2, r3, r6 // icount 950
slt r6, r7, r5 // icount 951
rol r5, r4, r7 // icount 952
or r4, r0, r0 // icount 953
add r5, r3, r2 // icount 954
sle r1, r4, r7 // icount 955
.rlabel_41:
ld r7, r6, 8
addi r6, r6, 8
beqz r0, .rlabel_42 // icount 956
sub r2, r5, r1 // icount 957
sle r7, r7, r3 // icount 958
.rlabel_42:
j .rlabel_43 // icount 959
add r3, r6, r0 // icount 960
ror r7, r0, r6 // icount 961
sub r3, r3, r3 // icount 962
sco r5, r3, r6 // icount 963
ror r5, r4, r0 // icount 964
sub r5, r2, r0 // icount 965
rol r5, r2, r3 // icount 966
seq r0, r1, r2 // icount 967
or r5, r7, r4 // icount 968
sco r1, r7, r0 // icount 969
ror r5, r2, r5 // icount 970
rol r3, r2, r2 // icount 971
or r6, r5, r2 // icount 972
ror r6, r0, r6 // icount 973
add r7, r7, r6 // icount 974
sco r1, r4, r7 // icount 975
ror r2, r0, r3 // icount 976
and r2, r5, r0 // icount 977
seq r3, r2, r6 // icount 978
sle r6, r6, r5 // icount 979
add r3, r5, r6 // icount 980
and r5, r2, r2 // icount 981
slt r7, r0, r6 // icount 982
seq r2, r3, r3 // icount 983
sle r3, r7, r3 // icount 984
sle r4, r6, r3 // icount 985
sll r3, r2, r5 // icount 986
sll r0, r5, r2 // icount 987
or r7, r3, r3 // icount 988
sco r3, r0, r3 // icount 989
sll r3, r3, r4 // icount 990
sll r2, r6, r4 // icount 991
and r2, r3, r1 // icount 992
add r6, r0, r6 // icount 993
sub r7, r0, r7 // icount 994
add r5, r2, r5 // icount 995
add r6, r6, r6 // icount 996
ror r3, r1, r0 // icount 997
sub r2, r3, r1 // icount 998
seq r7, r3, r1 // icount 999
sll r3, r2, r7 // icount 1000
add r2, r2, r0 // icount 1001
sle r7, r0, r7 // icount 1002
sub r3, r5, r0 // icount 1003
rol r2, r5, r6 // icount 1004
sub r2, r2, r2 // icount 1005
ror r4, r2, r6 // icount 1006
sub r0, r7, r1 // icount 1007
sll r4, r6, r5 // icount 1008
slt r4, r4, r2 // icount 1009
sub r7, r5, r3 // icount 1010
sra r6, r7, r0 // icount 1011
sra r0, r6, r4 // icount 1012
sco r6, r4, r2 // icount 1013
or r5, r2, r4 // icount 1014
and r1, r2, r2 // icount 1015
ror r6, r1, r4 // icount 1016
or r0, r1, r0 // icount 1017
rol r4, r5, r4 // icount 1018
sub r1, r1, r3 // icount 1019
rol r4, r3, r6 // icount 1020
ror r1, r6, r0 // icount 1021
slt r7, r6, r2 // icount 1022
or r3, r1, r5 // icount 1023
add r0, r5, r0 // icount 1024
sle r7, r1, r4 // icount 1025
ror r3, r0, r0 // icount 1026
seq r0, r3, r2 // icount 1027
seq r1, r6, r6 // icount 1028
sra r0, r1, r0 // icount 1029
ror r6, r5, r3 // icount 1030
rol r4, r7, r5 // icount 1031
sco r5, r1, r2 // icount 1032
ror r6, r2, r6 // icount 1033
seq r4, r1, r7 // icount 1034
sll r0, r3, r4 // icount 1035
seq r5, r5, r1 // icount 1036
add r7, r2, r2 // icount 1037
and r3, r5, r1 // icount 1038
add r6, r3, r5 // icount 1039
sra r3, r6, r6 // icount 1040
slt r2, r2, r5 // icount 1041
sco r1, r6, r0 // icount 1042
and r6, r3, r4 // icount 1043
add r6, r3, r7 // icount 1044
sra r7, r1, r1 // icount 1045
sra r6, r3, r2 // icount 1046
slt r0, r4, r0 // icount 1047
sle r6, r2, r6 // icount 1048
sra r2, r6, r7 // icount 1049
slt r2, r7, r1 // icount 1050
sco r1, r4, r0 // icount 1051
sll r6, r3, r5 // icount 1052
.rlabel_43:
beqz r0, .rlabel_44 // icount 1053
sle r6, r2, r3 // icount 1054
sll r7, r1, r0 // icount 1055
rol r4, r4, r5 // icount 1056
slt r3, r4, r1 // icount 1057
seq r2, r5, r7 // icount 1058
sra r0, r3, r4 // icount 1059
sll r7, r0, r0 // icount 1060
rol r1, r2, r1 // icount 1061
and r6, r5, r4 // icount 1062
sle r2, r5, r4 // icount 1063
or r3, r2, r4 // icount 1064
.rlabel_44:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_45 // icount 1065
sub r2, r2, r4 // icount 1066
sub r5, r2, r0 // icount 1067
rol r0, r0, r0 // icount 1068
seq r1, r6, r2 // icount 1069
.rlabel_45:
ld r7, r6, 10
addi r6, r6, 10
jal .rlabel_46 // icount 1070
sra r5, r4, r1 // icount 1071
sco r1, r3, r2 // icount 1072
or r7, r5, r6 // icount 1073
seq r7, r1, r5 // icount 1074
rol r2, r0, r0 // icount 1075
or r7, r7, r2 // icount 1076
.rlabel_46:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_47 // icount 1077
sra r7, r1, r1 // icount 1078
slt r6, r4, r4 // icount 1079
rol r4, r6, r0 // icount 1080
slt r3, r5, r6 // icount 1081
and r5, r7, r7 // icount 1082
slt r2, r1, r3 // icount 1083
rol r5, r7, r0 // icount 1084
sub r4, r6, r4 // icount 1085
rol r2, r4, r7 // icount 1086
sco r6, r2, r2 // icount 1087
rol r6, r1, r7 // icount 1088
sco r3, r1, r2 // icount 1089
ror r7, r0, r2 // icount 1090
sco r5, r6, r1 // icount 1091
.rlabel_47:
j .rlabel_48 // icount 1092
sco r1, r2, r7 // icount 1093
add r5, r0, r1 // icount 1094
sle r5, r7, r2 // icount 1095
slt r0, r3, r7 // icount 1096
rol r3, r5, r0 // icount 1097
sle r5, r2, r7 // icount 1098
rol r6, r7, r7 // icount 1099
rol r0, r7, r2 // icount 1100
sra r0, r6, r1 // icount 1101
sle r0, r3, r6 // icount 1102
seq r5, r2, r1 // icount 1103
or r0, r2, r5 // icount 1104
sra r5, r7, r0 // icount 1105
slt r5, r0, r1 // icount 1106
or r0, r5, r7 // icount 1107
and r5, r2, r1 // icount 1108
sco r3, r2, r1 // icount 1109
sra r4, r7, r4 // icount 1110
or r0, r4, r0 // icount 1111
sra r5, r0, r3 // icount 1112
ror r3, r2, r1 // icount 1113
rol r7, r1, r3 // icount 1114
slt r0, r0, r2 // icount 1115
rol r4, r2, r5 // icount 1116
sra r4, r2, r3 // icount 1117
sle r2, r3, r1 // icount 1118
sll r2, r5, r7 // icount 1119
add r0, r6, r7 // icount 1120
sub r4, r2, r7 // icount 1121
sll r0, r1, r3 // icount 1122
seq r3, r1, r0 // icount 1123
and r2, r0, r5 // icount 1124
sco r2, r4, r3 // icount 1125
seq r1, r4, r6 // icount 1126
slt r4, r5, r1 // icount 1127
rol r7, r2, r7 // icount 1128
slt r7, r1, r6 // icount 1129
sra r3, r3, r6 // icount 1130
add r2, r6, r1 // icount 1131
sco r5, r0, r2 // icount 1132
sco r2, r1, r6 // icount 1133
sco r4, r6, r3 // icount 1134
seq r1, r7, r2 // icount 1135
and r4, r4, r7 // icount 1136
sra r4, r5, r4 // icount 1137
seq r5, r2, r0 // icount 1138
slt r2, r0, r2 // icount 1139
sle r0, r3, r7 // icount 1140
and r4, r2, r1 // icount 1141
ror r0, r4, r4 // icount 1142
and r5, r3, r5 // icount 1143
or r2, r2, r6 // icount 1144
sub r3, r2, r6 // icount 1145
sle r2, r7, r0 // icount 1146
sco r7, r4, r4 // icount 1147
sub r5, r6, r3 // icount 1148
rol r5, r0, r4 // icount 1149
rol r5, r6, r3 // icount 1150
sub r1, r5, r6 // icount 1151
and r4, r3, r0 // icount 1152
rol r2, r4, r3 // icount 1153
and r1, r1, r3 // icount 1154
sra r7, r0, r3 // icount 1155
or r2, r6, r7 // icount 1156
add r6, r1, r2 // icount 1157
ror r0, r4, r5 // icount 1158
sub r7, r7, r1 // icount 1159
seq r5, r1, r6 // icount 1160
sra r7, r0, r1 // icount 1161
add r4, r6, r2 // icount 1162
slt r0, r0, r0 // icount 1163
sco r6, r6, r6 // icount 1164
or r7, r6, r2 // icount 1165
sll r0, r7, r3 // icount 1166
slt r5, r3, r3 // icount 1167
rol r2, r1, r5 // icount 1168
slt r5, r2, r6 // icount 1169
seq r0, r2, r7 // icount 1170
sll r2, r0, r5 // icount 1171
.rlabel_48:
ld r7, r6, 12
addi r6, r6, 12
jal .rlabel_49 // icount 1172
sub r7, r3, r0 // icount 1173
or r3, r4, r6 // icount 1174
or r3, r3, r4 // icount 1175
sra r2, r5, r3 // icount 1176
sub r7, r0, r5 // icount 1177
rol r5, r2, r1 // icount 1178
slt r7, r2, r4 // icount 1179
ror r5, r2, r7 // icount 1180
slt r3, r5, r4 // icount 1181
sra r6, r6, r1 // icount 1182
rol r5, r7, r4 // icount 1183
or r7, r4, r1 // icount 1184
ror r7, r2, r2 // icount 1185
ror r7, r1, r5 // icount 1186
slt r1, r4, r4 // icount 1187
add r7, r0, r1 // icount 1188
sub r0, r2, r3 // icount 1189
rol r7, r7, r0 // icount 1190
or r6, r5, r0 // icount 1191
sll r3, r7, r5 // icount 1192
or r6, r6, r1 // icount 1193
sll r0, r3, r0 // icount 1194
.rlabel_49:
ld r7, r6, 8
addi r6, r6, 8
beqz r0, .rlabel_50 // icount 1195
ror r1, r6, r7 // icount 1196
and r2, r2, r4 // icount 1197
slt r5, r3, r4 // icount 1198
rol r1, r6, r1 // icount 1199
sra r6, r2, r5 // icount 1200
and r0, r3, r2 // icount 1201
sll r5, r7, r4 // icount 1202
sra r2, r4, r0 // icount 1203
sle r0, r5, r2 // icount 1204
seq r0, r7, r6 // icount 1205
sle r4, r2, r2 // icount 1206
.rlabel_50:
jal .rlabel_51 // icount 1207
sra r4, r2, r7 // icount 1208
and r3, r3, r0 // icount 1209
sll r5, r3, r4 // icount 1210
sll r4, r5, r4 // icount 1211
ror r6, r1, r0 // icount 1212
seq r4, r4, r1 // icount 1213
sle r2, r6, r7 // icount 1214
seq r0, r5, r5 // icount 1215
sle r7, r7, r3 // icount 1216
and r7, r1, r6 // icount 1217
add r2, r5, r1 // icount 1218
sle r5, r5, r2 // icount 1219
sco r0, r1, r7 // icount 1220
add r1, r0, r1 // icount 1221
seq r5, r0, r4 // icount 1222
and r6, r4, r0 // icount 1223
or r6, r4, r1 // icount 1224
ror r4, r1, r6 // icount 1225
sco r2, r0, r0 // icount 1226
slt r3, r2, r2 // icount 1227
and r2, r2, r7 // icount 1228
sll r1, r0, r7 // icount 1229
and r3, r5, r1 // icount 1230
sra r5, r2, r7 // icount 1231
sco r4, r3, r0 // icount 1232
sra r5, r0, r1 // icount 1233
or r1, r7, r4 // icount 1234
ror r1, r1, r5 // icount 1235
sco r4, r0, r7 // icount 1236
.rlabel_51:
jal .rlabel_52 // icount 1237
sle r2, r0, r7 // icount 1238
sub r6, r2, r3 // icount 1239
sco r1, r7, r1 // icount 1240
sra r6, r7, r0 // icount 1241
and r1, r0, r6 // icount 1242
sll r3, r7, r7 // icount 1243
sco r3, r0, r1 // icount 1244
add r5, r1, r0 // icount 1245
sle r7, r2, r4 // icount 1246
ror r4, r0, r1 // icount 1247
slt r2, r7, r3 // icount 1248
add r4, r3, r4 // icount 1249
or r2, r4, r7 // icount 1250
seq r3, r3, r4 // icount 1251
sra r1, r0, r3 // icount 1252
ror r2, r2, r3 // icount 1253
and r6, r4, r4 // icount 1254
and r3, r4, r6 // icount 1255
or r1, r6, r7 // icount 1256
sle r3, r7, r7 // icount 1257
rol r4, r6, r5 // icount 1258
sra r4, r7, r7 // icount 1259
sub r7, r7, r1 // icount 1260
slt r6, r7, r1 // icount 1261
.rlabel_52:
ld r7, r6, 14
addi r6, r6, 14
jal .rlabel_53 // icount 1262
ror r4, r3, r1 // icount 1263
rol r7, r6, r0 // icount 1264
slt r0, r4, r5 // icount 1265
ror r1, r4, r5 // icount 1266
slt r1, r5, r6 // icount 1267
rol r0, r7, r1 // icount 1268
slt r4, r5, r4 // icount 1269
ror r0, r5, r2 // icount 1270
sco r7, r5, r0 // icount 1271
or r2, r2, r3 // icount 1272
sub r1, r0, r1 // icount 1273
or r3, r0, r7 // icount 1274
sco r5, r1, r5 // icount 1275
add r4, r4, r2 // icount 1276
sle r2, r3, r3 // icount 1277
sle r4, r5, r5 // icount 1278
slt r4, r6, r1 // icount 1279
sra r3, r4, r2 // icount 1280
ror r1, r3, r3 // icount 1281
slt r0, r4, r6 // icount 1282
.rlabel_53:
j .rlabel_54 // icount 1283
or r0, r1, r7 // icount 1284
or r3, r4, r7 // icount 1285
rol r6, r2, r5 // icount 1286
sle r1, r7, r7 // icount 1287
seq r4, r6, r3 // icount 1288
and r3, r1, r6 // icount 1289
ror r0, r7, r6 // icount 1290
and r0, r5, r7 // icount 1291
seq r1, r5, r6 // icount 1292
slt r6, r2, r0 // icount 1293
sco r5, r0, r5 // icount 1294
or r6, r0, r6 // icount 1295
ror r3, r2, r5 // icount 1296
or r0, r7, r3 // icount 1297
sll r4, r3, r0 // icount 1298
slt r0, r3, r3 // icount 1299
sra r1, r0, r3 // icount 1300
sra r6, r0, r6 // icount 1301
or r7, r6, r4 // icount 1302
ror r0, r2, r4 // icount 1303
sub r0, r6, r1 // icount 1304
add r6, r4, r7 // icount 1305
sub r4, r0, r7 // icount 1306
slt r2, r0, r4 // icount 1307
and r6, r3, r5 // icount 1308
sle r4, r3, r1 // icount 1309
and r6, r0, r4 // icount 1310
or r7, r2, r4 // icount 1311
sco r5, r1, r4 // icount 1312
and r0, r4, r6 // icount 1313
and r3, r4, r3 // icount 1314
ror r4, r6, r4 // icount 1315
sub r3, r0, r4 // icount 1316
rol r7, r7, r4 // icount 1317
seq r7, r6, r4 // icount 1318
sco r3, r0, r2 // icount 1319
ror r6, r2, r4 // icount 1320
sll r7, r0, r2 // icount 1321
and r3, r2, r2 // icount 1322
and r2, r6, r2 // icount 1323
and r6, r0, r6 // icount 1324
seq r4, r3, r2 // icount 1325
sll r6, r4, r2 // icount 1326
sco r2, r5, r5 // icount 1327
and r1, r5, r1 // icount 1328
sle r5, r5, r1 // icount 1329
sra r2, r6, r7 // icount 1330
seq r4, r2, r6 // icount 1331
and r5, r4, r5 // icount 1332
seq r2, r1, r2 // icount 1333
sco r0, r4, r2 // icount 1334
add r7, r0, r3 // icount 1335
ror r3, r2, r1 // icount 1336
rol r1, r3, r0 // icount 1337
or r5, r6, r7 // icount 1338
sle r1, r5, r7 // icount 1339
sra r0, r0, r0 // icount 1340
sub r3, r0, r4 // icount 1341
or r2, r6, r7 // icount 1342
slt r2, r5, r1 // icount 1343
sub r6, r1, r5 // icount 1344
slt r7, r0, r2 // icount 1345
rol r4, r2, r0 // icount 1346
slt r5, r1, r1 // icount 1347
seq r3, r1, r1 // icount 1348
sra r0, r5, r7 // icount 1349
add r2, r0, r6 // icount 1350
sll r7, r7, r0 // icount 1351
sra r2, r5, r5 // icount 1352
sll r0, r2, r6 // icount 1353
rol r4, r0, r6 // icount 1354
rol r3, r4, r6 // icount 1355
and r1, r0, r6 // icount 1356
rol r5, r7, r0 // icount 1357
sra r2, r5, r0 // icount 1358
sle r7, r0, r4 // icount 1359
sub r5, r2, r0 // icount 1360
or r2, r2, r7 // icount 1361
rol r0, r3, r6 // icount 1362
sle r1, r3, r2 // icount 1363
and r4, r5, r3 // icount 1364
sra r4, r0, r3 // icount 1365
sle r5, r5, r7 // icount 1366
rol r0, r3, r4 // icount 1367
sco r6, r0, r4 // icount 1368
slt r7, r4, r1 // icount 1369
ror r4, r4, r3 // icount 1370
add r4, r3, r5 // icount 1371
seq r6, r3, r6 // icount 1372
or r6, r2, r4 // icount 1373
add r7, r6, r3 // icount 1374
rol r7, r1, r6 // icount 1375
seq r3, r1, r3 // icount 1376
seq r7, r4, r2 // icount 1377
sub r6, r0, r3 // icount 1378
sub r5, r6, r6 // icount 1379
slt r5, r7, r4 // icount 1380
or r4, r7, r3 // icount 1381
sco r6, r5, r5 // icount 1382
sra r3, r2, r7 // icount 1383
or r1, r0, r1 // icount 1384
rol r6, r4, r2 // icount 1385
slt r3, r5, r1 // icount 1386
add r1, r6, r5 // icount 1387
sll r5, r5, r7 // icount 1388
slt r4, r5, r4 // icount 1389
sub r7, r7, r4 // icount 1390
and r3, r3, r7 // icount 1391
.rlabel_54:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_55 // icount 1392
slt r5, r1, r1 // icount 1393
add r6, r2, r3 // icount 1394
slt r6, r7, r2 // icount 1395
sub r0, r3, r3 // icount 1396
seq r6, r2, r2 // icount 1397
sle r0, r3, r5 // icount 1398
add r6, r5, r6 // icount 1399
slt r0, r3, r7 // icount 1400
ror r4, r2, r4 // icount 1401
.rlabel_55:
ld r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_56 // icount 1402
ror r5, r1, r5 // icount 1403
seq r7, r6, r3 // icount 1404
seq r4, r5, r6 // icount 1405
or r1, r4, r3 // icount 1406
rol r6, r1, r2 // icount 1407
ror r4, r0, r4 // icount 1408
add r0, r3, r6 // icount 1409
seq r3, r3, r0 // icount 1410
.rlabel_56:
jal .rlabel_57 // icount 1411
sco r1, r5, r5 // icount 1412
sco r6, r3, r3 // icount 1413
or r4, r4, r5 // icount 1414
sub r1, r2, r2 // icount 1415
.rlabel_57:
bnez r1, .rlabel_58 // icount 1416
ror r7, r7, r3 // icount 1417
rol r2, r7, r7 // icount 1418
.rlabel_58:
jal .rlabel_59 // icount 1419
ror r7, r1, r6 // icount 1420
sco r7, r7, r2 // icount 1421
sle r6, r2, r1 // icount 1422
sle r5, r5, r0 // icount 1423
seq r2, r7, r1 // icount 1424
and r1, r1, r2 // icount 1425
seq r7, r5, r7 // icount 1426
add r2, r1, r2 // icount 1427
sle r6, r5, r4 // icount 1428
sra r7, r3, r4 // icount 1429
rol r2, r6, r6 // icount 1430
seq r4, r6, r6 // icount 1431
sub r5, r6, r7 // icount 1432
slt r7, r4, r1 // icount 1433
sll r2, r5, r7 // icount 1434
slt r6, r7, r6 // icount 1435
slt r6, r4, r4 // icount 1436
sub r6, r6, r4 // icount 1437
seq r6, r0, r5 // icount 1438
slt r5, r6, r7 // icount 1439
and r2, r6, r5 // icount 1440
sco r0, r4, r1 // icount 1441
sco r2, r0, r2 // icount 1442
ror r1, r6, r3 // icount 1443
rol r2, r7, r6 // icount 1444
.rlabel_59:
jal .rlabel_60 // icount 1445
seq r0, r3, r0 // icount 1446
sll r0, r3, r2 // icount 1447
seq r1, r5, r3 // icount 1448
sll r5, r2, r7 // icount 1449
sco r7, r5, r4 // icount 1450
or r2, r5, r5 // icount 1451
ror r4, r4, r0 // icount 1452
sra r1, r5, r5 // icount 1453
rol r2, r1, r0 // icount 1454
or r7, r1, r7 // icount 1455
rol r5, r3, r0 // icount 1456
sll r0, r5, r4 // icount 1457
sle r1, r0, r1 // icount 1458
sra r4, r7, r7 // icount 1459
sra r2, r2, r1 // icount 1460
sub r6, r3, r6 // icount 1461
sub r5, r4, r2 // icount 1462
slt r7, r3, r0 // icount 1463
seq r2, r5, r1 // icount 1464
or r5, r6, r1 // icount 1465
slt r7, r4, r4 // icount 1466
slt r6, r1, r5 // icount 1467
sra r2, r5, r1 // icount 1468
slt r3, r2, r0 // icount 1469
or r4, r3, r3 // icount 1470
slt r2, r7, r2 // icount 1471
sub r3, r6, r7 // icount 1472
sle r2, r6, r0 // icount 1473
sra r6, r6, r7 // icount 1474
add r7, r3, r0 // icount 1475
.rlabel_60:
bnez r1, .rlabel_61 // icount 1476
rol r5, r7, r2 // icount 1477
and r0, r0, r7 // icount 1478
sll r2, r1, r0 // icount 1479
sll r0, r3, r5 // icount 1480
add r2, r6, r6 // icount 1481
add r5, r6, r6 // icount 1482
and r7, r5, r3 // icount 1483
seq r2, r5, r2 // icount 1484
add r7, r2, r0 // icount 1485
sra r2, r1, r0 // icount 1486
sle r3, r4, r4 // icount 1487
add r7, r6, r7 // icount 1488
sub r7, r7, r1 // icount 1489
seq r0, r4, r2 // icount 1490
rol r5, r0, r0 // icount 1491
.rlabel_61:
j .rlabel_62 // icount 1492
or r0, r7, r2 // icount 1493
add r7, r0, r0 // icount 1494
add r6, r1, r1 // icount 1495
ror r7, r4, r7 // icount 1496
and r3, r7, r0 // icount 1497
sle r1, r3, r1 // icount 1498
ror r1, r1, r3 // icount 1499
sll r6, r4, r4 // icount 1500
sra r6, r4, r3 // icount 1501
sle r3, r4, r5 // icount 1502
sra r0, r1, r5 // icount 1503
sub r0, r6, r5 // icount 1504
.rlabel_62:
j .rlabel_63 // icount 1505
seq r7, r7, r7 // icount 1506
sle r3, r7, r3 // icount 1507
slt r6, r5, r1 // icount 1508
slt r0, r0, r6 // icount 1509
rol r1, r3, r0 // icount 1510
sra r5, r6, r3 // icount 1511
rol r5, r4, r6 // icount 1512
add r2, r1, r5 // icount 1513
sra r4, r6, r4 // icount 1514
sco r0, r4, r2 // icount 1515
sco r3, r3, r2 // icount 1516
add r7, r5, r3 // icount 1517
.rlabel_63:
st r7, r6, 14
addi r6, r6, 14
j .rlabel_64 // icount 1518
ror r4, r7, r0 // icount 1519
add r5, r7, r4 // icount 1520
sub r7, r2, r5 // icount 1521
sco r4, r6, r0 // icount 1522
slt r7, r5, r2 // icount 1523
sll r6, r2, r2 // icount 1524
and r4, r0, r5 // icount 1525
sle r0, r3, r1 // icount 1526
ror r7, r7, r1 // icount 1527
ror r4, r1, r3 // icount 1528
sle r1, r7, r6 // icount 1529
and r4, r4, r0 // icount 1530
sco r6, r3, r1 // icount 1531
ror r2, r7, r6 // icount 1532
ror r3, r7, r4 // icount 1533
sle r6, r3, r1 // icount 1534
sll r1, r4, r7 // icount 1535
ror r5, r4, r0 // icount 1536
slt r4, r5, r3 // icount 1537
or r6, r5, r0 // icount 1538
rol r3, r1, r6 // icount 1539
ror r2, r7, r7 // icount 1540
seq r5, r6, r5 // icount 1541
and r4, r3, r3 // icount 1542
slt r1, r1, r0 // icount 1543
or r6, r1, r6 // icount 1544
sle r1, r0, r3 // icount 1545
add r6, r2, r2 // icount 1546
sle r3, r3, r2 // icount 1547
sco r4, r5, r7 // icount 1548
add r7, r0, r4 // icount 1549
sub r1, r2, r5 // icount 1550
sco r0, r0, r3 // icount 1551
and r0, r2, r7 // icount 1552
ror r2, r5, r0 // icount 1553
add r2, r2, r0 // icount 1554
add r0, r2, r3 // icount 1555
rol r2, r0, r2 // icount 1556
seq r0, r4, r7 // icount 1557
or r0, r4, r1 // icount 1558
sco r2, r0, r3 // icount 1559
sll r7, r7, r6 // icount 1560
slt r3, r4, r4 // icount 1561
sll r1, r6, r3 // icount 1562
rol r7, r7, r2 // icount 1563
sub r7, r3, r6 // icount 1564
sll r6, r4, r2 // icount 1565
sra r1, r3, r7 // icount 1566
seq r3, r5, r5 // icount 1567
add r2, r3, r5 // icount 1568
or r5, r1, r6 // icount 1569
and r1, r6, r7 // icount 1570
and r3, r3, r4 // icount 1571
seq r0, r6, r6 // icount 1572
or r6, r3, r2 // icount 1573
slt r1, r0, r3 // icount 1574
and r7, r3, r1 // icount 1575
sra r3, r1, r1 // icount 1576
sco r2, r7, r2 // icount 1577
seq r4, r4, r1 // icount 1578
sco r7, r7, r7 // icount 1579
or r5, r7, r6 // icount 1580
seq r5, r5, r2 // icount 1581
sra r2, r7, r0 // icount 1582
sll r7, r5, r6 // icount 1583
ror r0, r5, r6 // icount 1584
ror r4, r5, r4 // icount 1585
ror r1, r1, r3 // icount 1586
sle r4, r1, r1 // icount 1587
and r6, r4, r1 // icount 1588
sub r5, r7, r0 // icount 1589
sco r6, r6, r3 // icount 1590
sco r0, r7, r3 // icount 1591
seq r6, r7, r3 // icount 1592
seq r3, r6, r7 // icount 1593
or r1, r6, r7 // icount 1594
sle r5, r5, r1 // icount 1595
sll r5, r3, r6 // icount 1596
add r4, r0, r7 // icount 1597
ror r5, r7, r4 // icount 1598
sle r6, r7, r1 // icount 1599
sll r5, r4, r1 // icount 1600
sll r0, r0, r1 // icount 1601
ror r2, r7, r7 // icount 1602
rol r5, r0, r3 // icount 1603
slt r6, r5, r1 // icount 1604
sco r7, r5, r4 // icount 1605
ror r4, r5, r1 // icount 1606
sle r7, r5, r4 // icount 1607
sra r5, r0, r5 // icount 1608
rol r5, r5, r0 // icount 1609
sll r4, r4, r2 // icount 1610
or r5, r5, r6 // icount 1611
add r5, r1, r4 // icount 1612
add r2, r5, r5 // icount 1613
ror r2, r4, r7 // icount 1614
slt r5, r4, r3 // icount 1615
sle r7, r4, r0 // icount 1616
seq r1, r0, r6 // icount 1617
sco r6, r7, r7 // icount 1618
and r2, r2, r2 // icount 1619
sub r4, r2, r1 // icount 1620
or r0, r5, r4 // icount 1621
or r2, r4, r3 // icount 1622
ror r1, r1, r2 // icount 1623
sra r6, r3, r1 // icount 1624
sco r7, r6, r1 // icount 1625
seq r6, r1, r6 // icount 1626
sco r5, r3, r3 // icount 1627
add r0, r7, r7 // icount 1628
slt r2, r2, r0 // icount 1629
add r5, r7, r2 // icount 1630
sle r7, r6, r7 // icount 1631
add r1, r3, r0 // icount 1632
or r6, r5, r1 // icount 1633
sll r6, r4, r6 // icount 1634
and r7, r1, r7 // icount 1635
slt r7, r5, r6 // icount 1636
sub r1, r6, r5 // icount 1637
sub r2, r7, r5 // icount 1638
rol r6, r1, r1 // icount 1639
sco r3, r7, r1 // icount 1640
.rlabel_64:
bnez r1, .rlabel_65 // icount 1641
add r3, r7, r3 // icount 1642
or r3, r5, r7 // icount 1643
sll r5, r2, r3 // icount 1644
or r1, r1, r2 // icount 1645
ror r2, r1, r2 // icount 1646
slt r1, r5, r2 // icount 1647
.rlabel_65:
st r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_66 // icount 1648
or r7, r4, r4 // icount 1649
sub r6, r0, r6 // icount 1650
sle r7, r2, r5 // icount 1651
ror r6, r4, r2 // icount 1652
sco r4, r5, r5 // icount 1653
slt r5, r0, r4 // icount 1654
or r7, r7, r2 // icount 1655
or r1, r1, r3 // icount 1656
sll r2, r2, r1 // icount 1657
and r4, r0, r5 // icount 1658
.rlabel_66:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_67 // icount 1659
and r0, r4, r0 // icount 1660
ror r7, r5, r3 // icount 1661
sub r0, r4, r5 // icount 1662
and r4, r7, r0 // icount 1663
sra r5, r4, r4 // icount 1664
sra r0, r3, r2 // icount 1665
and r5, r3, r2 // icount 1666
ror r1, r7, r4 // icount 1667
seq r7, r3, r3 // icount 1668
sra r7, r0, r1 // icount 1669
sll r4, r4, r3 // icount 1670
sra r6, r4, r4 // icount 1671
slt r3, r7, r2 // icount 1672
sco r1, r7, r7 // icount 1673
seq r4, r3, r5 // icount 1674
sub r3, r0, r0 // icount 1675
sll r7, r4, r5 // icount 1676
sub r1, r1, r5 // icount 1677
sra r4, r6, r6 // icount 1678
sll r4, r6, r1 // icount 1679
sle r4, r6, r1 // icount 1680
and r2, r3, r1 // icount 1681
slt r3, r0, r5 // icount 1682
.rlabel_67:
j .rlabel_68 // icount 1683
ror r1, r3, r6 // icount 1684
sco r3, r5, r7 // icount 1685
or r3, r5, r0 // icount 1686
sra r6, r6, r7 // icount 1687
and r4, r0, r6 // icount 1688
sll r0, r4, r7 // icount 1689
sra r3, r6, r0 // icount 1690
slt r5, r5, r2 // icount 1691
rol r4, r1, r1 // icount 1692
add r6, r1, r0 // icount 1693
sub r0, r2, r2 // icount 1694
sle r5, r6, r6 // icount 1695
slt r3, r6, r5 // icount 1696
slt r1, r7, r2 // icount 1697
or r7, r2, r7 // icount 1698
sub r0, r0, r1 // icount 1699
rol r2, r6, r1 // icount 1700
or r2, r4, r1 // icount 1701
and r7, r1, r1 // icount 1702
rol r3, r6, r0 // icount 1703
slt r6, r5, r2 // icount 1704
sle r6, r5, r3 // icount 1705
add r7, r5, r2 // icount 1706
slt r0, r4, r6 // icount 1707
add r2, r2, r1 // icount 1708
sco r2, r7, r4 // icount 1709
sle r3, r5, r5 // icount 1710
and r2, r7, r4 // icount 1711
rol r7, r2, r7 // icount 1712
and r7, r4, r3 // icount 1713
sll r1, r3, r7 // icount 1714
sub r3, r6, r2 // icount 1715
and r2, r7, r2 // icount 1716
rol r4, r0, r2 // icount 1717
add r7, r2, r0 // icount 1718
seq r6, r4, r7 // icount 1719
.rlabel_68:
jal .rlabel_69 // icount 1720
sll r5, r2, r2 // icount 1721
sub r5, r7, r4 // icount 1722
seq r6, r7, r3 // icount 1723
.rlabel_69:
beqz r0, .rlabel_70 // icount 1724
sco r4, r3, r1 // icount 1725
.rlabel_70:
j .rlabel_71 // icount 1726
and r7, r0, r6 // icount 1727
add r1, r3, r2 // icount 1728
ror r0, r4, r1 // icount 1729
sle r0, r0, r3 // icount 1730
sle r7, r5, r3 // icount 1731
slt r7, r3, r6 // icount 1732
or r3, r4, r4 // icount 1733
ror r3, r1, r0 // icount 1734
sco r7, r5, r4 // icount 1735
or r3, r3, r7 // icount 1736
sco r4, r0, r4 // icount 1737
sco r5, r1, r2 // icount 1738
slt r3, r4, r2 // icount 1739
or r2, r0, r1 // icount 1740
sll r1, r5, r2 // icount 1741
sub r3, r3, r2 // icount 1742
add r1, r4, r0 // icount 1743
slt r5, r1, r6 // icount 1744
or r6, r5, r2 // icount 1745
rol r1, r0, r1 // icount 1746
ror r1, r5, r7 // icount 1747
sle r7, r1, r7 // icount 1748
sub r6, r1, r5 // icount 1749
sra r3, r1, r4 // icount 1750
sle r0, r5, r2 // icount 1751
or r2, r4, r0 // icount 1752
slt r4, r2, r6 // icount 1753
sco r3, r2, r4 // icount 1754
sub r1, r5, r2 // icount 1755
seq r1, r0, r2 // icount 1756
slt r5, r3, r4 // icount 1757
and r4, r1, r4 // icount 1758
and r6, r7, r3 // icount 1759
sub r5, r0, r1 // icount 1760
seq r3, r5, r1 // icount 1761
slt r0, r5, r0 // icount 1762
rol r1, r7, r3 // icount 1763
and r3, r6, r3 // icount 1764
sll r5, r1, r4 // icount 1765
sco r3, r2, r2 // icount 1766
and r4, r6, r1 // icount 1767
sra r4, r2, r0 // icount 1768
or r3, r0, r1 // icount 1769
slt r3, r4, r2 // icount 1770
rol r6, r6, r7 // icount 1771
sub r6, r6, r2 // icount 1772
or r0, r6, r2 // icount 1773
add r6, r1, r6 // icount 1774
ror r4, r6, r4 // icount 1775
sle r6, r7, r5 // icount 1776
slt r0, r1, r0 // icount 1777
sco r7, r1, r2 // icount 1778
add r0, r0, r1 // icount 1779
and r6, r1, r3 // icount 1780
sco r0, r0, r1 // icount 1781
slt r0, r4, r2 // icount 1782
sub r2, r0, r5 // icount 1783
sco r7, r4, r6 // icount 1784
sle r1, r6, r7 // icount 1785
sle r2, r4, r2 // icount 1786
slt r5, r5, r0 // icount 1787
and r5, r5, r3 // icount 1788
seq r5, r0, r4 // icount 1789
rol r6, r3, r4 // icount 1790
sub r6, r4, r5 // icount 1791
ror r4, r1, r4 // icount 1792
sra r2, r4, r6 // icount 1793
seq r7, r7, r0 // icount 1794
add r7, r4, r4 // icount 1795
slt r4, r1, r5 // icount 1796
sub r2, r2, r3 // icount 1797
sco r0, r1, r4 // icount 1798
sra r2, r5, r3 // icount 1799
add r0, r5, r4 // icount 1800
sco r4, r3, r4 // icount 1801
seq r2, r0, r2 // icount 1802
slt r1, r0, r6 // icount 1803
rol r6, r5, r5 // icount 1804
seq r3, r4, r1 // icount 1805
seq r5, r2, r1 // icount 1806
sra r3, r7, r2 // icount 1807
slt r3, r2, r5 // icount 1808
ror r1, r6, r3 // icount 1809
or r3, r7, r0 // icount 1810
sra r4, r0, r1 // icount 1811
rol r7, r7, r7 // icount 1812
seq r3, r7, r2 // icount 1813
sll r1, r2, r1 // icount 1814
slt r1, r6, r5 // icount 1815
and r0, r6, r5 // icount 1816
ror r5, r4, r7 // icount 1817
sra r2, r1, r6 // icount 1818
ror r6, r0, r3 // icount 1819
sco r5, r4, r3 // icount 1820
sle r1, r6, r3 // icount 1821
and r4, r5, r6 // icount 1822
sco r4, r1, r5 // icount 1823
seq r1, r7, r5 // icount 1824
sco r2, r0, r3 // icount 1825
sll r6, r5, r4 // icount 1826
rol r1, r0, r0 // icount 1827
or r6, r6, r5 // icount 1828
sle r7, r1, r7 // icount 1829
add r7, r3, r3 // icount 1830
sle r0, r0, r6 // icount 1831
seq r7, r7, r2 // icount 1832
sra r6, r4, r6 // icount 1833
seq r0, r5, r7 // icount 1834
sle r5, r3, r4 // icount 1835
.rlabel_71:
j .rlabel_72 // icount 1836
seq r2, r1, r3 // icount 1837
slt r5, r5, r7 // icount 1838
add r4, r6, r0 // icount 1839
seq r5, r6, r2 // icount 1840
sle r1, r2, r4 // icount 1841
rol r3, r0, r3 // icount 1842
add r1, r5, r0 // icount 1843
ror r1, r7, r5 // icount 1844
.rlabel_72:
ld r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_73 // icount 1845
sub r3, r4, r4 // icount 1846
add r0, r6, r7 // icount 1847
or r1, r4, r5 // icount 1848
sub r5, r6, r4 // icount 1849
or r1, r4, r3 // icount 1850
slt r0, r5, r4 // icount 1851
.rlabel_73:
j .rlabel_74 // icount 1852
ror r3, r4, r2 // icount 1853
sub r7, r1, r2 // icount 1854
sra r0, r2, r0 // icount 1855
sle r2, r7, r5 // icount 1856
sll r4, r4, r3 // icount 1857
sll r6, r4, r2 // icount 1858
sra r5, r0, r7 // icount 1859
and r4, r7, r2 // icount 1860
sll r7, r5, r7 // icount 1861
slt r4, r0, r5 // icount 1862
sco r1, r3, r3 // icount 1863
rol r2, r0, r0 // icount 1864
and r4, r7, r1 // icount 1865
and r0, r6, r4 // icount 1866
sll r2, r5, r6 // icount 1867
add r5, r0, r0 // icount 1868
sco r5, r3, r1 // icount 1869
add r3, r1, r5 // icount 1870
and r2, r4, r1 // icount 1871
and r1, r4, r3 // icount 1872
sra r5, r5, r5 // icount 1873
sll r7, r4, r1 // icount 1874
sco r7, r6, r2 // icount 1875
sco r6, r1, r3 // icount 1876
sle r3, r0, r1 // icount 1877
slt r5, r6, r6 // icount 1878
sll r2, r3, r5 // icount 1879
sle r3, r6, r5 // icount 1880
or r7, r0, r3 // icount 1881
sub r6, r3, r7 // icount 1882
or r7, r2, r0 // icount 1883
rol r3, r4, r3 // icount 1884
add r1, r6, r3 // icount 1885
sra r5, r1, r6 // icount 1886
or r4, r7, r7 // icount 1887
slt r5, r1, r1 // icount 1888
sra r0, r0, r7 // icount 1889
and r2, r7, r7 // icount 1890
ror r1, r0, r3 // icount 1891
sra r1, r7, r3 // icount 1892
sle r3, r3, r2 // icount 1893
sra r0, r0, r4 // icount 1894
sra r1, r6, r6 // icount 1895
or r3, r7, r4 // icount 1896
ror r0, r1, r6 // icount 1897
sub r5, r1, r0 // icount 1898
and r2, r7, r7 // icount 1899
sco r4, r7, r7 // icount 1900
or r3, r1, r0 // icount 1901
sle r4, r0, r2 // icount 1902
sco r7, r2, r6 // icount 1903
and r1, r6, r5 // icount 1904
rol r3, r1, r4 // icount 1905
sll r3, r6, r2 // icount 1906
sco r7, r2, r7 // icount 1907
seq r0, r2, r1 // icount 1908
sco r3, r2, r2 // icount 1909
sra r0, r5, r1 // icount 1910
slt r5, r7, r2 // icount 1911
ror r5, r5, r2 // icount 1912
sll r7, r7, r1 // icount 1913
seq r4, r2, r3 // icount 1914
ror r3, r0, r1 // icount 1915
sle r2, r6, r0 // icount 1916
add r2, r1, r1 // icount 1917
add r1, r2, r4 // icount 1918
or r1, r7, r2 // icount 1919
seq r0, r5, r1 // icount 1920
ror r1, r4, r6 // icount 1921
seq r0, r3, r7 // icount 1922
sll r0, r5, r0 // icount 1923
and r6, r5, r3 // icount 1924
seq r3, r6, r5 // icount 1925
sra r4, r5, r7 // icount 1926
and r2, r4, r1 // icount 1927
sub r2, r6, r6 // icount 1928
seq r4, r7, r7 // icount 1929
or r7, r7, r5 // icount 1930
sle r4, r2, r2 // icount 1931
add r1, r1, r4 // icount 1932
sll r4, r1, r0 // icount 1933
and r7, r1, r0 // icount 1934
add r2, r4, r3 // icount 1935
sll r1, r4, r0 // icount 1936
seq r5, r3, r6 // icount 1937
seq r3, r4, r5 // icount 1938
slt r3, r7, r5 // icount 1939
rol r1, r2, r7 // icount 1940
ror r1, r2, r0 // icount 1941
seq r2, r3, r6 // icount 1942
.rlabel_74:
beqz r0, .rlabel_75 // icount 1943
seq r2, r7, r3 // icount 1944
sub r0, r2, r2 // icount 1945
sub r0, r1, r2 // icount 1946
seq r3, r3, r1 // icount 1947
sco r0, r7, r5 // icount 1948
sra r3, r3, r3 // icount 1949
.rlabel_75:
jal .rlabel_76 // icount 1950
and r4, r7, r6 // icount 1951
.rlabel_76:
jal .rlabel_77 // icount 1952
sle r4, r7, r0 // icount 1953
seq r3, r7, r6 // icount 1954
or r0, r5, r2 // icount 1955
or r3, r4, r2 // icount 1956
or r7, r7, r2 // icount 1957
or r3, r3, r7 // icount 1958
sle r2, r5, r3 // icount 1959
sle r0, r7, r4 // icount 1960
sub r5, r2, r5 // icount 1961
seq r3, r6, r3 // icount 1962
sll r4, r0, r2 // icount 1963
or r7, r7, r1 // icount 1964
sll r6, r6, r4 // icount 1965
sra r2, r7, r1 // icount 1966
rol r0, r1, r4 // icount 1967
slt r1, r0, r3 // icount 1968
or r7, r3, r0 // icount 1969
sub r3, r0, r4 // icount 1970
add r6, r4, r0 // icount 1971
rol r7, r7, r4 // icount 1972
ror r1, r5, r5 // icount 1973
.rlabel_77:
st r7, r6, 0
addi r6, r6, 0
j .rlabel_78 // icount 1974
sle r0, r7, r0 // icount 1975
sle r2, r1, r4 // icount 1976
add r6, r3, r7 // icount 1977
ror r7, r5, r0 // icount 1978
and r0, r4, r0 // icount 1979
sll r0, r7, r0 // icount 1980
seq r1, r2, r3 // icount 1981
and r3, r1, r1 // icount 1982
seq r5, r2, r7 // icount 1983
.rlabel_78:
j .rlabel_79 // icount 1984
sle r1, r2, r1 // icount 1985
.rlabel_79:
j .rlabel_80 // icount 1986
sra r3, r4, r0 // icount 1987
sra r7, r4, r2 // icount 1988
seq r0, r3, r0 // icount 1989
slt r4, r3, r5 // icount 1990
add r5, r7, r2 // icount 1991
or r2, r3, r2 // icount 1992
slt r4, r3, r6 // icount 1993
sra r5, r2, r0 // icount 1994
ror r2, r6, r1 // icount 1995
sll r0, r6, r3 // icount 1996
rol r6, r2, r4 // icount 1997
or r3, r3, r6 // icount 1998
seq r6, r5, r5 // icount 1999
and r7, r3, r5 // icount 2000
slt r3, r1, r1 // icount 2001
sub r7, r0, r4 // icount 2002
sco r4, r6, r0 // icount 2003
ror r6, r6, r4 // icount 2004
ror r3, r5, r5 // icount 2005
seq r0, r4, r7 // icount 2006
sra r4, r4, r0 // icount 2007
rol r1, r2, r3 // icount 2008
ror r4, r2, r3 // icount 2009
sra r2, r5, r3 // icount 2010
sra r7, r3, r5 // icount 2011
sra r7, r2, r0 // icount 2012
and r1, r6, r2 // icount 2013
sra r4, r1, r3 // icount 2014
and r2, r4, r4 // icount 2015
sra r2, r3, r1 // icount 2016
sra r6, r2, r7 // icount 2017
seq r0, r4, r4 // icount 2018
add r5, r2, r3 // icount 2019
sll r1, r1, r2 // icount 2020
.rlabel_80:
beqz r0, .rlabel_81 // icount 2021
add r3, r3, r2 // icount 2022
sra r7, r2, r6 // icount 2023
sub r4, r2, r0 // icount 2024
sll r0, r5, r0 // icount 2025
add r4, r5, r0 // icount 2026
slt r0, r4, r7 // icount 2027
.rlabel_81:
beqz r0, .rlabel_82 // icount 2028
sll r1, r1, r0 // icount 2029
slt r5, r3, r5 // icount 2030
.rlabel_82:
j .rlabel_83 // icount 2031
sle r3, r2, r5 // icount 2032
or r3, r5, r2 // icount 2033
sle r4, r1, r5 // icount 2034
sll r6, r3, r7 // icount 2035
rol r0, r7, r3 // icount 2036
and r7, r6, r2 // icount 2037
sll r0, r7, r3 // icount 2038
sco r7, r0, r2 // icount 2039
or r7, r4, r6 // icount 2040
sll r4, r3, r1 // icount 2041
sle r7, r4, r1 // icount 2042
sle r6, r3, r4 // icount 2043
add r4, r4, r3 // icount 2044
add r0, r7, r7 // icount 2045
slt r1, r0, r6 // icount 2046
.rlabel_83:
jal .rlabel_84 // icount 2047
sle r3, r2, r1 // icount 2048
sub r4, r1, r5 // icount 2049
.rlabel_84:
jal .rlabel_85 // icount 2050
slt r1, r1, r3 // icount 2051
or r5, r0, r1 // icount 2052
sle r7, r2, r5 // icount 2053
and r3, r3, r5 // icount 2054
sco r7, r4, r5 // icount 2055
sll r1, r7, r0 // icount 2056
.rlabel_85:
ld r7, r6, 0
addi r6, r6, 0
j .rlabel_86 // icount 2057
sub r7, r2, r4 // icount 2058
sub r7, r6, r1 // icount 2059
sle r0, r0, r6 // icount 2060
seq r1, r3, r1 // icount 2061
sco r2, r5, r3 // icount 2062
ror r6, r0, r1 // icount 2063
slt r0, r6, r1 // icount 2064
and r4, r0, r4 // icount 2065
sub r6, r6, r6 // icount 2066
sll r0, r3, r4 // icount 2067
rol r7, r5, r5 // icount 2068
sra r3, r0, r0 // icount 2069
rol r7, r5, r6 // icount 2070
sle r7, r2, r5 // icount 2071
sco r2, r6, r6 // icount 2072
slt r6, r0, r4 // icount 2073
sco r7, r1, r6 // icount 2074
seq r1, r7, r4 // icount 2075
and r3, r1, r4 // icount 2076
sub r0, r5, r5 // icount 2077
or r0, r1, r5 // icount 2078
slt r5, r3, r6 // icount 2079
ror r2, r0, r5 // icount 2080
sle r4, r4, r4 // icount 2081
sle r4, r1, r5 // icount 2082
sll r2, r5, r3 // icount 2083
or r3, r2, r7 // icount 2084
sco r0, r4, r5 // icount 2085
sra r7, r0, r7 // icount 2086
sco r0, r2, r6 // icount 2087
ror r4, r4, r0 // icount 2088
seq r2, r4, r7 // icount 2089
add r6, r3, r4 // icount 2090
sra r0, r6, r2 // icount 2091
seq r6, r7, r1 // icount 2092
sco r5, r3, r7 // icount 2093
seq r4, r4, r0 // icount 2094
seq r7, r6, r6 // icount 2095
sco r7, r0, r4 // icount 2096
seq r4, r3, r6 // icount 2097
sco r4, r6, r3 // icount 2098
or r6, r1, r1 // icount 2099
add r2, r6, r1 // icount 2100
sub r7, r1, r4 // icount 2101
rol r5, r3, r0 // icount 2102
add r2, r0, r7 // icount 2103
ror r6, r4, r2 // icount 2104
sll r0, r6, r3 // icount 2105
sco r0, r7, r2 // icount 2106
rol r3, r0, r0 // icount 2107
sub r2, r3, r0 // icount 2108
slt r7, r6, r1 // icount 2109
sle r4, r5, r5 // icount 2110
add r6, r4, r0 // icount 2111
sll r6, r5, r4 // icount 2112
sra r3, r6, r1 // icount 2113
sle r3, r5, r6 // icount 2114
sub r4, r3, r5 // icount 2115
sco r1, r1, r5 // icount 2116
add r4, r7, r3 // icount 2117
add r2, r1, r2 // icount 2118
rol r5, r0, r0 // icount 2119
slt r6, r0, r1 // icount 2120
sll r1, r3, r5 // icount 2121
sll r7, r6, r3 // icount 2122
.rlabel_86:
st r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_87 // icount 2123
sco r1, r0, r1 // icount 2124
rol r4, r5, r1 // icount 2125
sll r0, r7, r2 // icount 2126
sra r4, r2, r5 // icount 2127
or r2, r7, r7 // icount 2128
.rlabel_87:
st r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_88 // icount 2129
rol r5, r7, r2 // icount 2130
seq r0, r0, r0 // icount 2131
slt r5, r1, r6 // icount 2132
sra r6, r1, r5 // icount 2133
sra r5, r0, r7 // icount 2134
slt r0, r0, r7 // icount 2135
seq r6, r6, r7 // icount 2136
add r7, r2, r2 // icount 2137
sle r0, r0, r6 // icount 2138
add r2, r7, r5 // icount 2139
.rlabel_88:
st r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_89 // icount 2140
sll r1, r0, r6 // icount 2141
ror r3, r1, r4 // icount 2142
and r1, r0, r7 // icount 2143
ror r1, r5, r6 // icount 2144
or r0, r0, r3 // icount 2145
.rlabel_89:
bnez r1, .rlabel_90 // icount 2146
sra r7, r7, r2 // icount 2147
sub r7, r3, r4 // icount 2148
or r0, r2, r1 // icount 2149
.rlabel_90:
j .rlabel_91 // icount 2150
slt r7, r5, r1 // icount 2151
and r1, r5, r1 // icount 2152
add r2, r4, r2 // icount 2153
sub r3, r6, r1 // icount 2154
sll r1, r0, r3 // icount 2155
and r7, r0, r5 // icount 2156
sle r5, r7, r6 // icount 2157
or r7, r0, r2 // icount 2158
slt r3, r0, r1 // icount 2159
sra r6, r1, r5 // icount 2160
sco r5, r4, r5 // icount 2161
ror r6, r5, r3 // icount 2162
or r2, r1, r3 // icount 2163
slt r4, r6, r5 // icount 2164
slt r6, r2, r5 // icount 2165
add r0, r2, r1 // icount 2166
add r1, r5, r3 // icount 2167
ror r0, r1, r4 // icount 2168
sra r0, r3, r4 // icount 2169
ror r2, r7, r1 // icount 2170
sco r3, r3, r3 // icount 2171
rol r5, r0, r7 // icount 2172
sle r7, r6, r5 // icount 2173
or r6, r5, r7 // icount 2174
slt r4, r0, r2 // icount 2175
rol r1, r5, r6 // icount 2176
sra r7, r1, r5 // icount 2177
and r3, r2, r2 // icount 2178
sub r7, r4, r5 // icount 2179
add r1, r6, r5 // icount 2180
sll r0, r4, r5 // icount 2181
slt r2, r1, r2 // icount 2182
sll r4, r4, r1 // icount 2183
or r6, r6, r0 // icount 2184
add r3, r6, r3 // icount 2185
ror r1, r1, r0 // icount 2186
add r7, r3, r2 // icount 2187
seq r4, r6, r3 // icount 2188
rol r6, r7, r4 // icount 2189
sll r1, r1, r0 // icount 2190
sub r3, r5, r3 // icount 2191
and r7, r6, r2 // icount 2192
sll r3, r2, r0 // icount 2193
ror r7, r6, r6 // icount 2194
seq r2, r4, r6 // icount 2195
seq r2, r5, r5 // icount 2196
sle r0, r1, r7 // icount 2197
slt r1, r4, r0 // icount 2198
seq r6, r3, r5 // icount 2199
add r1, r1, r6 // icount 2200
sle r2, r6, r3 // icount 2201
add r2, r2, r7 // icount 2202
rol r7, r3, r4 // icount 2203
or r3, r6, r0 // icount 2204
slt r3, r0, r6 // icount 2205
seq r6, r7, r6 // icount 2206
sco r4, r1, r7 // icount 2207
seq r3, r3, r7 // icount 2208
sle r1, r0, r1 // icount 2209
seq r2, r0, r2 // icount 2210
sco r0, r3, r2 // icount 2211
and r7, r3, r3 // icount 2212
ror r5, r2, r6 // icount 2213
ror r5, r2, r7 // icount 2214
sle r1, r4, r3 // icount 2215
sub r1, r5, r3 // icount 2216
and r5, r6, r5 // icount 2217
or r5, r5, r7 // icount 2218
sll r5, r0, r7 // icount 2219
and r6, r5, r7 // icount 2220
or r1, r3, r0 // icount 2221
sra r4, r1, r6 // icount 2222
and r4, r7, r5 // icount 2223
sub r1, r6, r1 // icount 2224
sco r0, r6, r4 // icount 2225
add r6, r7, r7 // icount 2226
sle r4, r0, r5 // icount 2227
seq r4, r2, r0 // icount 2228
add r7, r2, r4 // icount 2229
seq r1, r2, r6 // icount 2230
sub r6, r7, r0 // icount 2231
rol r3, r4, r1 // icount 2232
.rlabel_91:
st r7, r6, 14
addi r6, r6, 14
jal .rlabel_92 // icount 2233
rol r5, r0, r3 // icount 2234
sle r4, r3, r2 // icount 2235
and r2, r4, r7 // icount 2236
and r1, r4, r1 // icount 2237
add r1, r6, r7 // icount 2238
sco r5, r4, r1 // icount 2239
sub r2, r7, r3 // icount 2240
ror r5, r5, r7 // icount 2241
ror r4, r1, r7 // icount 2242
or r1, r3, r7 // icount 2243
sra r1, r0, r5 // icount 2244
sle r1, r3, r3 // icount 2245
.rlabel_92:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_93 // icount 2246
seq r0, r1, r2 // icount 2247
and r0, r4, r5 // icount 2248
sll r6, r0, r3 // icount 2249
sle r6, r3, r3 // icount 2250
seq r3, r3, r4 // icount 2251
.rlabel_93:
ld r7, r6, 12
addi r6, r6, 12
jal .rlabel_94 // icount 2252
slt r6, r6, r5 // icount 2253
sra r5, r6, r6 // icount 2254
ror r3, r7, r1 // icount 2255
seq r7, r5, r4 // icount 2256
sle r0, r4, r2 // icount 2257
and r4, r6, r3 // icount 2258
.rlabel_94:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_95 // icount 2259
.rlabel_95:
ld r7, r6, 10
addi r6, r6, 10
jal .rlabel_96 // icount 2260
add r3, r1, r5 // icount 2261
sll r3, r7, r5 // icount 2262
add r7, r1, r1 // icount 2263
sle r4, r5, r4 // icount 2264
.rlabel_96:
ld r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_97 // icount 2265
rol r1, r5, r1 // icount 2266
ror r0, r1, r7 // icount 2267
sll r4, r0, r3 // icount 2268
sco r4, r5, r5 // icount 2269
seq r1, r5, r4 // icount 2270
sle r6, r3, r1 // icount 2271
or r2, r5, r6 // icount 2272
sll r4, r5, r4 // icount 2273
rol r0, r1, r6 // icount 2274
sll r4, r0, r5 // icount 2275
sll r5, r7, r0 // icount 2276
ror r4, r2, r6 // icount 2277
and r1, r7, r4 // icount 2278
.rlabel_97:
st r7, r6, 12
addi r6, r6, 12
jal .rlabel_98 // icount 2279
slt r7, r3, r7 // icount 2280
add r2, r2, r4 // icount 2281
and r3, r1, r3 // icount 2282
or r1, r5, r7 // icount 2283
add r4, r6, r2 // icount 2284
sub r0, r5, r4 // icount 2285
add r4, r7, r4 // icount 2286
sll r7, r7, r1 // icount 2287
sll r2, r7, r0 // icount 2288
slt r1, r5, r0 // icount 2289
sle r6, r7, r4 // icount 2290
.rlabel_98:
beqz r0, .rlabel_99 // icount 2291
or r5, r6, r1 // icount 2292
rol r1, r5, r3 // icount 2293
sle r4, r1, r1 // icount 2294
and r6, r3, r6 // icount 2295
seq r1, r6, r0 // icount 2296
sub r6, r1, r2 // icount 2297
.rlabel_99:
addi r3, r3, -1 // icount 2298
beqz r3, .done // icount 2299
jr r5, 0 // icount 2300
.done:
halt // icount 2301
halt // icount 2302
