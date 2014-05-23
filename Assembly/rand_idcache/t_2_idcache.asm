// seed 2
lbi r0, 233 // icount 0
slbi r0, 40 // icount 1
lbi r1, 146 // icount 2
slbi r1, 205 // icount 3
lbi r2, 141 // icount 4
slbi r2, 55 // icount 5
lbi r3, 174 // icount 6
slbi r3, 156 // icount 7
lbi r4, 160 // icount 8
slbi r4, 252 // icount 9
lbi r5, 65 // icount 10
slbi r5, 202 // icount 11
lbi r6, 136 // icount 12
slbi r6, 222 // icount 13
lbi r7, 129 // icount 14
slbi r7, 135 // icount 15
lbi r0, 0 // icount 16
lbi r1, 1 // icount 17
lbi r2, -1 // icount 18
lbi r3, 1 // icount 19
andi r6, r6, 0xfe // icount 20
lbi r3, 3 // icount 21
lbi r5, 44 // icount 22
beqz r0, .rlabel_0 // icount 23
sle r2, r1, r6 // icount 24
sll r5, r6, r2 // icount 25
sle r4, r0, r4 // icount 26
sll r7, r0, r1 // icount 27
sub r2, r6, r1 // icount 28
or r1, r1, r2 // icount 29
or r5, r4, r0 // icount 30
sll r5, r6, r7 // icount 31
sra r3, r7, r0 // icount 32
and r7, r3, r4 // icount 33
and r5, r7, r4 // icount 34
add r5, r0, r2 // icount 35
or r7, r3, r1 // icount 36
.rlabel_0:
jal .rlabel_1 // icount 37
ror r3, r3, r5 // icount 38
.rlabel_1:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_2 // icount 39
sub r3, r5, r0 // icount 40
or r3, r2, r6 // icount 41
slt r0, r3, r1 // icount 42
add r0, r1, r7 // icount 43
sub r5, r7, r0 // icount 44
sco r3, r4, r1 // icount 45
sra r1, r7, r6 // icount 46
sll r0, r3, r4 // icount 47
sle r7, r6, r6 // icount 48
.rlabel_2:
beqz r0, .rlabel_3 // icount 49
sra r7, r5, r4 // icount 50
slt r2, r5, r7 // icount 51
sle r5, r0, r7 // icount 52
.rlabel_3:
st r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_4 // icount 53
sra r4, r0, r7 // icount 54
ror r1, r4, r0 // icount 55
sra r1, r3, r2 // icount 56
or r7, r4, r6 // icount 57
ror r6, r4, r5 // icount 58
sra r3, r4, r0 // icount 59
sub r7, r2, r2 // icount 60
sco r6, r1, r2 // icount 61
sra r0, r0, r7 // icount 62
rol r1, r7, r4 // icount 63
and r4, r7, r5 // icount 64
ror r4, r5, r3 // icount 65
sub r1, r5, r2 // icount 66
seq r3, r2, r7 // icount 67
.rlabel_4:
st r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_5 // icount 68
sub r2, r2, r2 // icount 69
rol r2, r6, r6 // icount 70
slt r7, r0, r7 // icount 71
slt r6, r2, r2 // icount 72
seq r2, r0, r3 // icount 73
seq r1, r2, r6 // icount 74
seq r7, r7, r3 // icount 75
add r6, r4, r4 // icount 76
sra r7, r5, r5 // icount 77
and r2, r2, r2 // icount 78
ror r1, r5, r4 // icount 79
sco r7, r3, r6 // icount 80
seq r5, r0, r7 // icount 81
ror r5, r3, r0 // icount 82
.rlabel_5:
beqz r0, .rlabel_6 // icount 83
sll r1, r2, r2 // icount 84
sco r1, r3, r7 // icount 85
sle r0, r6, r3 // icount 86
seq r4, r6, r6 // icount 87
and r2, r4, r3 // icount 88
slt r7, r6, r4 // icount 89
.rlabel_6:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_7 // icount 90
seq r5, r5, r1 // icount 91
slt r3, r2, r2 // icount 92
sco r4, r0, r1 // icount 93
add r4, r1, r5 // icount 94
and r2, r0, r6 // icount 95
sll r4, r0, r4 // icount 96
slt r5, r4, r5 // icount 97
sco r7, r4, r5 // icount 98
seq r6, r2, r0 // icount 99
.rlabel_7:
st r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_8 // icount 100
sra r7, r4, r0 // icount 101
sub r5, r2, r5 // icount 102
sco r7, r4, r3 // icount 103
or r0, r7, r7 // icount 104
sra r5, r7, r1 // icount 105
and r5, r6, r6 // icount 106
sll r4, r3, r7 // icount 107
slt r7, r3, r3 // icount 108
and r6, r7, r0 // icount 109
ror r1, r4, r0 // icount 110
sra r7, r3, r1 // icount 111
.rlabel_8:
st r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_9 // icount 112
slt r6, r2, r1 // icount 113
sco r6, r2, r2 // icount 114
and r3, r5, r7 // icount 115
slt r4, r7, r2 // icount 116
and r2, r3, r2 // icount 117
rol r6, r1, r3 // icount 118
add r4, r1, r1 // icount 119
add r3, r6, r2 // icount 120
and r0, r5, r1 // icount 121
sra r6, r7, r1 // icount 122
sub r0, r2, r7 // icount 123
sle r6, r6, r3 // icount 124
.rlabel_9:
ld r7, r6, 12
addi r6, r6, 12
bnez r1, .rlabel_10 // icount 125
sco r7, r4, r6 // icount 126
sra r3, r1, r3 // icount 127
add r3, r6, r1 // icount 128
seq r4, r0, r1 // icount 129
ror r3, r1, r3 // icount 130
seq r2, r0, r7 // icount 131
and r2, r0, r4 // icount 132
.rlabel_10:
st r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_11 // icount 133
sra r1, r3, r3 // icount 134
seq r6, r4, r0 // icount 135
slt r3, r4, r0 // icount 136
sll r3, r5, r1 // icount 137
add r2, r7, r6 // icount 138
or r7, r4, r5 // icount 139
slt r4, r3, r4 // icount 140
.rlabel_11:
st r7, r6, 10
addi r6, r6, 10
j .rlabel_12 // icount 141
sle r1, r5, r6 // icount 142
ror r4, r6, r3 // icount 143
add r4, r6, r3 // icount 144
or r6, r4, r1 // icount 145
add r6, r7, r7 // icount 146
sub r1, r3, r0 // icount 147
sub r3, r5, r3 // icount 148
sco r1, r6, r4 // icount 149
rol r6, r0, r4 // icount 150
sub r7, r3, r5 // icount 151
sle r4, r7, r1 // icount 152
add r6, r2, r5 // icount 153
sll r2, r0, r1 // icount 154
sll r1, r3, r4 // icount 155
sco r3, r4, r3 // icount 156
ror r0, r5, r6 // icount 157
slt r6, r7, r1 // icount 158
or r3, r6, r3 // icount 159
sub r5, r7, r2 // icount 160
rol r0, r6, r5 // icount 161
slt r3, r6, r7 // icount 162
slt r6, r6, r4 // icount 163
sub r5, r5, r3 // icount 164
sub r2, r4, r4 // icount 165
seq r2, r4, r7 // icount 166
sle r2, r4, r5 // icount 167
add r1, r5, r4 // icount 168
rol r1, r7, r0 // icount 169
sra r4, r5, r0 // icount 170
slt r1, r1, r1 // icount 171
add r2, r6, r5 // icount 172
sco r2, r0, r6 // icount 173
sll r6, r7, r7 // icount 174
sra r3, r7, r4 // icount 175
add r1, r0, r7 // icount 176
sle r6, r1, r5 // icount 177
and r4, r6, r3 // icount 178
ror r5, r5, r2 // icount 179
rol r6, r7, r6 // icount 180
sra r2, r5, r0 // icount 181
rol r3, r2, r3 // icount 182
slt r4, r0, r3 // icount 183
or r6, r3, r4 // icount 184
sub r6, r6, r0 // icount 185
or r5, r6, r4 // icount 186
seq r4, r5, r0 // icount 187
sll r4, r2, r3 // icount 188
slt r3, r1, r0 // icount 189
or r6, r2, r5 // icount 190
sco r0, r1, r2 // icount 191
ror r0, r5, r4 // icount 192
or r3, r3, r1 // icount 193
sll r3, r5, r2 // icount 194
sle r5, r2, r3 // icount 195
sub r0, r5, r3 // icount 196
sco r6, r7, r3 // icount 197
add r3, r1, r3 // icount 198
sco r3, r2, r2 // icount 199
rol r1, r4, r6 // icount 200
sra r4, r0, r4 // icount 201
sle r0, r5, r0 // icount 202
sub r1, r2, r7 // icount 203
sle r5, r1, r0 // icount 204
rol r6, r4, r3 // icount 205
sle r0, r0, r7 // icount 206
slt r7, r6, r4 // icount 207
rol r0, r2, r0 // icount 208
sub r3, r6, r7 // icount 209
sle r1, r7, r1 // icount 210
and r7, r5, r2 // icount 211
seq r1, r1, r7 // icount 212
rol r5, r3, r4 // icount 213
and r0, r5, r0 // icount 214
sub r4, r0, r5 // icount 215
seq r6, r2, r1 // icount 216
slt r5, r1, r7 // icount 217
sra r2, r1, r7 // icount 218
sub r0, r2, r1 // icount 219
rol r3, r3, r2 // icount 220
seq r4, r6, r6 // icount 221
sle r7, r0, r0 // icount 222
sub r7, r4, r2 // icount 223
sco r6, r2, r0 // icount 224
sra r7, r6, r7 // icount 225
sra r7, r3, r4 // icount 226
sub r0, r5, r7 // icount 227
sub r6, r3, r6 // icount 228
and r3, r4, r5 // icount 229
seq r6, r7, r6 // icount 230
sra r7, r3, r0 // icount 231
sco r4, r7, r0 // icount 232
add r3, r3, r4 // icount 233
sco r3, r3, r7 // icount 234
or r1, r6, r2 // icount 235
sll r4, r6, r0 // icount 236
add r4, r4, r7 // icount 237
slt r4, r4, r2 // icount 238
sub r5, r0, r4 // icount 239
sub r3, r0, r2 // icount 240
sco r0, r5, r4 // icount 241
rol r7, r6, r2 // icount 242
seq r4, r1, r0 // icount 243
and r6, r6, r3 // icount 244
sle r3, r3, r5 // icount 245
and r1, r0, r6 // icount 246
ror r2, r1, r0 // icount 247
add r6, r5, r1 // icount 248
sub r2, r2, r2 // icount 249
sco r6, r5, r1 // icount 250
add r2, r7, r7 // icount 251
sle r6, r6, r2 // icount 252
ror r2, r0, r3 // icount 253
sco r2, r0, r0 // icount 254
.rlabel_12:
ld r7, r6, 4
addi r6, r6, 4
jal .rlabel_13 // icount 255
slt r0, r4, r6 // icount 256
sra r1, r6, r0 // icount 257
sll r1, r3, r5 // icount 258
sub r2, r5, r5 // icount 259
and r6, r5, r7 // icount 260
add r5, r2, r3 // icount 261
sle r7, r2, r1 // icount 262
seq r2, r0, r0 // icount 263
add r2, r1, r6 // icount 264
slt r3, r5, r2 // icount 265
and r5, r4, r3 // icount 266
sra r0, r6, r6 // icount 267
rol r2, r0, r1 // icount 268
and r7, r5, r0 // icount 269
add r6, r5, r0 // icount 270
sub r1, r5, r7 // icount 271
add r2, r5, r4 // icount 272
and r2, r0, r6 // icount 273
or r3, r6, r3 // icount 274
sub r4, r6, r6 // icount 275
sle r0, r3, r7 // icount 276
and r7, r6, r0 // icount 277
or r1, r2, r5 // icount 278
rol r7, r3, r5 // icount 279
and r1, r6, r1 // icount 280
ror r2, r5, r5 // icount 281
sco r1, r2, r1 // icount 282
sra r0, r7, r0 // icount 283
ror r3, r6, r5 // icount 284
rol r7, r1, r3 // icount 285
sle r7, r3, r7 // icount 286
.rlabel_13:
st r7, r6, 0
addi r6, r6, 0
j .rlabel_14 // icount 287
rol r5, r3, r4 // icount 288
and r2, r1, r4 // icount 289
sub r5, r4, r0 // icount 290
sle r2, r0, r2 // icount 291
sll r2, r4, r2 // icount 292
rol r0, r4, r3 // icount 293
sco r1, r1, r1 // icount 294
rol r5, r1, r5 // icount 295
sra r2, r2, r0 // icount 296
add r3, r2, r3 // icount 297
sra r6, r4, r4 // icount 298
or r1, r2, r3 // icount 299
and r7, r0, r7 // icount 300
sra r6, r6, r5 // icount 301
sub r5, r6, r5 // icount 302
add r4, r4, r7 // icount 303
and r3, r7, r1 // icount 304
slt r1, r5, r6 // icount 305
sub r0, r7, r1 // icount 306
sra r2, r2, r4 // icount 307
or r1, r2, r7 // icount 308
rol r4, r4, r6 // icount 309
sub r2, r1, r3 // icount 310
ror r0, r0, r0 // icount 311
sll r6, r6, r3 // icount 312
sco r5, r6, r2 // icount 313
sco r4, r5, r1 // icount 314
add r6, r1, r2 // icount 315
sll r2, r1, r3 // icount 316
sco r2, r3, r4 // icount 317
sll r1, r5, r0 // icount 318
add r3, r3, r7 // icount 319
sle r5, r7, r4 // icount 320
sub r0, r3, r6 // icount 321
ror r5, r4, r2 // icount 322
slt r6, r1, r3 // icount 323
sco r1, r3, r6 // icount 324
and r6, r1, r3 // icount 325
sll r7, r3, r3 // icount 326
or r3, r3, r7 // icount 327
add r4, r5, r2 // icount 328
sco r2, r7, r6 // icount 329
add r3, r1, r1 // icount 330
and r7, r6, r4 // icount 331
sco r5, r2, r0 // icount 332
sle r0, r6, r7 // icount 333
and r1, r6, r1 // icount 334
and r0, r5, r5 // icount 335
sco r6, r7, r7 // icount 336
sco r0, r6, r3 // icount 337
add r5, r3, r4 // icount 338
rol r2, r3, r4 // icount 339
ror r6, r4, r3 // icount 340
sll r1, r3, r4 // icount 341
slt r7, r6, r2 // icount 342
or r3, r7, r7 // icount 343
or r2, r6, r7 // icount 344
or r0, r5, r1 // icount 345
slt r5, r4, r6 // icount 346
sub r2, r3, r0 // icount 347
add r4, r5, r5 // icount 348
sub r4, r0, r2 // icount 349
sle r2, r4, r4 // icount 350
sll r6, r1, r6 // icount 351
and r6, r7, r5 // icount 352
slt r6, r6, r7 // icount 353
ror r3, r0, r3 // icount 354
sra r7, r2, r7 // icount 355
sle r0, r2, r7 // icount 356
or r6, r4, r4 // icount 357
sll r5, r6, r2 // icount 358
sco r1, r4, r7 // icount 359
and r7, r1, r4 // icount 360
slt r7, r6, r0 // icount 361
slt r6, r2, r0 // icount 362
sra r6, r3, r6 // icount 363
sll r2, r0, r6 // icount 364
sll r3, r7, r1 // icount 365
sll r5, r1, r2 // icount 366
seq r7, r3, r4 // icount 367
rol r5, r1, r5 // icount 368
or r0, r7, r5 // icount 369
sub r3, r7, r3 // icount 370
sll r5, r7, r0 // icount 371
rol r6, r1, r4 // icount 372
sll r1, r5, r4 // icount 373
sll r2, r4, r4 // icount 374
sle r3, r6, r3 // icount 375
sub r6, r4, r3 // icount 376
sll r6, r6, r7 // icount 377
sle r2, r7, r2 // icount 378
and r4, r7, r6 // icount 379
and r0, r3, r3 // icount 380
rol r6, r3, r0 // icount 381
slt r4, r4, r5 // icount 382
rol r4, r1, r3 // icount 383
sra r6, r0, r4 // icount 384
seq r1, r1, r5 // icount 385
rol r6, r2, r1 // icount 386
slt r7, r7, r0 // icount 387
sll r0, r6, r1 // icount 388
ror r1, r2, r0 // icount 389
sub r1, r4, r7 // icount 390
sle r5, r6, r7 // icount 391
seq r2, r5, r4 // icount 392
.rlabel_14:
ld r7, r6, 6
addi r6, r6, 6
jal .rlabel_15 // icount 393
sra r1, r7, r4 // icount 394
ror r1, r3, r0 // icount 395
add r0, r1, r7 // icount 396
sco r5, r5, r5 // icount 397
add r0, r0, r5 // icount 398
and r5, r2, r4 // icount 399
.rlabel_15:
j .rlabel_16 // icount 400
sra r4, r6, r1 // icount 401
sle r5, r4, r3 // icount 402
rol r0, r0, r7 // icount 403
sle r7, r6, r2 // icount 404
sle r5, r0, r1 // icount 405
sle r6, r7, r3 // icount 406
sll r5, r2, r3 // icount 407
sco r6, r3, r7 // icount 408
seq r6, r4, r0 // icount 409
rol r2, r4, r2 // icount 410
ror r4, r0, r1 // icount 411
ror r1, r6, r5 // icount 412
sle r4, r1, r2 // icount 413
slt r0, r1, r3 // icount 414
sll r4, r1, r6 // icount 415
sle r1, r6, r6 // icount 416
sll r1, r3, r1 // icount 417
sll r7, r5, r5 // icount 418
and r4, r1, r1 // icount 419
or r3, r1, r1 // icount 420
sra r5, r6, r1 // icount 421
sll r6, r7, r7 // icount 422
sll r5, r2, r6 // icount 423
or r3, r4, r2 // icount 424
ror r0, r3, r3 // icount 425
sub r4, r6, r0 // icount 426
and r4, r5, r6 // icount 427
or r4, r2, r1 // icount 428
sra r0, r3, r1 // icount 429
sra r4, r2, r7 // icount 430
sle r2, r6, r1 // icount 431
sub r6, r5, r5 // icount 432
sco r1, r0, r5 // icount 433
or r3, r2, r6 // icount 434
sra r1, r7, r4 // icount 435
rol r6, r7, r1 // icount 436
sub r1, r4, r7 // icount 437
sub r0, r5, r7 // icount 438
sll r5, r7, r5 // icount 439
sco r6, r4, r7 // icount 440
and r3, r2, r6 // icount 441
slt r6, r2, r5 // icount 442
sco r4, r0, r2 // icount 443
and r4, r2, r5 // icount 444
sub r0, r1, r2 // icount 445
sra r2, r6, r5 // icount 446
sll r6, r1, r1 // icount 447
ror r6, r6, r5 // icount 448
and r0, r7, r3 // icount 449
sra r4, r5, r7 // icount 450
rol r6, r0, r5 // icount 451
or r7, r6, r7 // icount 452
or r5, r6, r1 // icount 453
add r4, r7, r5 // icount 454
sll r5, r4, r2 // icount 455
sco r2, r2, r2 // icount 456
ror r7, r6, r7 // icount 457
ror r5, r6, r2 // icount 458
rol r2, r5, r2 // icount 459
sco r1, r1, r5 // icount 460
slt r6, r4, r3 // icount 461
seq r5, r2, r4 // icount 462
slt r6, r7, r5 // icount 463
sle r3, r2, r6 // icount 464
ror r2, r0, r7 // icount 465
slt r5, r1, r3 // icount 466
sco r4, r6, r1 // icount 467
sll r2, r6, r6 // icount 468
sra r5, r7, r5 // icount 469
and r1, r5, r0 // icount 470
sra r2, r2, r1 // icount 471
or r4, r2, r3 // icount 472
and r2, r7, r3 // icount 473
and r6, r0, r1 // icount 474
sco r5, r7, r5 // icount 475
sub r7, r7, r2 // icount 476
sra r5, r4, r6 // icount 477
and r6, r5, r4 // icount 478
sle r1, r5, r2 // icount 479
or r2, r3, r3 // icount 480
sra r1, r7, r1 // icount 481
slt r2, r3, r0 // icount 482
or r3, r3, r0 // icount 483
slt r6, r7, r1 // icount 484
or r0, r4, r1 // icount 485
or r6, r3, r1 // icount 486
sra r2, r7, r7 // icount 487
ror r1, r4, r0 // icount 488
ror r2, r2, r3 // icount 489
and r6, r6, r0 // icount 490
seq r7, r1, r3 // icount 491
sra r1, r6, r2 // icount 492
or r0, r3, r5 // icount 493
seq r5, r7, r7 // icount 494
or r0, r3, r4 // icount 495
add r1, r2, r4 // icount 496
or r6, r0, r0 // icount 497
seq r6, r5, r2 // icount 498
.rlabel_16:
st r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_17 // icount 499
rol r5, r4, r0 // icount 500
sra r1, r0, r0 // icount 501
rol r2, r6, r6 // icount 502
rol r6, r6, r4 // icount 503
.rlabel_17:
j .rlabel_18 // icount 504
sra r6, r5, r5 // icount 505
sra r3, r2, r5 // icount 506
add r1, r5, r1 // icount 507
rol r3, r6, r3 // icount 508
sra r3, r2, r7 // icount 509
sll r1, r2, r3 // icount 510
sll r4, r2, r5 // icount 511
slt r5, r0, r7 // icount 512
slt r0, r6, r4 // icount 513
sco r7, r6, r1 // icount 514
and r3, r1, r7 // icount 515
sra r1, r7, r7 // icount 516
and r1, r7, r3 // icount 517
sub r7, r1, r0 // icount 518
slt r5, r1, r2 // icount 519
seq r2, r7, r1 // icount 520
sub r6, r3, r1 // icount 521
sub r5, r4, r1 // icount 522
sra r6, r0, r7 // icount 523
sll r0, r7, r7 // icount 524
seq r2, r5, r4 // icount 525
ror r2, r2, r5 // icount 526
or r0, r7, r0 // icount 527
sub r5, r6, r1 // icount 528
and r6, r5, r1 // icount 529
rol r3, r2, r2 // icount 530
slt r5, r3, r5 // icount 531
sll r5, r4, r0 // icount 532
slt r7, r3, r3 // icount 533
sco r6, r1, r3 // icount 534
seq r0, r6, r0 // icount 535
rol r2, r6, r0 // icount 536
.rlabel_18:
ld r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_19 // icount 537
sle r7, r0, r2 // icount 538
add r7, r2, r0 // icount 539
add r5, r7, r7 // icount 540
sra r7, r4, r6 // icount 541
sco r0, r5, r1 // icount 542
rol r0, r2, r4 // icount 543
add r6, r5, r1 // icount 544
.rlabel_19:
st r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_20 // icount 545
sle r5, r7, r1 // icount 546
rol r4, r1, r6 // icount 547
seq r1, r1, r0 // icount 548
add r6, r2, r7 // icount 549
sra r1, r2, r2 // icount 550
sll r0, r6, r1 // icount 551
or r2, r7, r0 // icount 552
.rlabel_20:
jal .rlabel_21 // icount 553
sll r1, r0, r6 // icount 554
sra r0, r7, r5 // icount 555
sub r3, r4, r6 // icount 556
sle r0, r5, r2 // icount 557
ror r0, r1, r5 // icount 558
.rlabel_21:
j .rlabel_22 // icount 559
ror r2, r5, r4 // icount 560
sle r1, r5, r3 // icount 561
sco r5, r0, r1 // icount 562
sll r2, r5, r6 // icount 563
slt r1, r5, r0 // icount 564
ror r4, r4, r2 // icount 565
sll r5, r0, r5 // icount 566
.rlabel_22:
bnez r1, .rlabel_23 // icount 567
ror r5, r1, r0 // icount 568
sub r3, r0, r7 // icount 569
sle r2, r3, r1 // icount 570
and r4, r6, r1 // icount 571
sco r6, r3, r0 // icount 572
seq r5, r6, r7 // icount 573
slt r2, r5, r2 // icount 574
.rlabel_23:
jal .rlabel_24 // icount 575
sco r3, r3, r3 // icount 576
sco r5, r6, r3 // icount 577
ror r1, r5, r2 // icount 578
sco r2, r5, r1 // icount 579
sub r6, r1, r7 // icount 580
ror r6, r0, r7 // icount 581
rol r4, r1, r0 // icount 582
sle r7, r3, r6 // icount 583
sco r4, r7, r6 // icount 584
rol r2, r5, r3 // icount 585
slt r6, r5, r2 // icount 586
.rlabel_24:
j .rlabel_25 // icount 587
and r3, r1, r7 // icount 588
seq r6, r1, r7 // icount 589
sco r5, r1, r5 // icount 590
sll r2, r6, r2 // icount 591
seq r4, r4, r0 // icount 592
sub r5, r5, r6 // icount 593
seq r4, r1, r7 // icount 594
sub r4, r1, r2 // icount 595
sll r5, r0, r7 // icount 596
sle r0, r3, r3 // icount 597
sle r3, r5, r1 // icount 598
sra r4, r1, r6 // icount 599
or r1, r4, r6 // icount 600
and r4, r5, r7 // icount 601
and r7, r5, r2 // icount 602
sra r6, r2, r5 // icount 603
sra r4, r4, r3 // icount 604
sco r4, r4, r2 // icount 605
sco r2, r1, r0 // icount 606
seq r0, r5, r1 // icount 607
sll r5, r3, r7 // icount 608
and r1, r3, r1 // icount 609
or r5, r2, r0 // icount 610
sle r6, r0, r3 // icount 611
sll r7, r3, r7 // icount 612
slt r5, r0, r5 // icount 613
ror r0, r2, r3 // icount 614
rol r5, r3, r6 // icount 615
seq r3, r4, r4 // icount 616
and r7, r4, r6 // icount 617
ror r7, r4, r3 // icount 618
or r0, r7, r0 // icount 619
sco r5, r5, r2 // icount 620
slt r0, r6, r4 // icount 621
rol r6, r5, r7 // icount 622
slt r7, r3, r5 // icount 623
sub r0, r4, r0 // icount 624
sco r4, r6, r7 // icount 625
ror r5, r4, r7 // icount 626
and r6, r3, r6 // icount 627
slt r1, r2, r1 // icount 628
ror r7, r0, r3 // icount 629
ror r3, r1, r1 // icount 630
add r6, r0, r1 // icount 631
seq r3, r1, r2 // icount 632
sco r5, r3, r3 // icount 633
add r0, r6, r5 // icount 634
sco r4, r1, r0 // icount 635
sra r6, r7, r5 // icount 636
seq r0, r7, r7 // icount 637
.rlabel_25:
ld r7, r6, 4
addi r6, r6, 4
j .rlabel_26 // icount 638
sle r6, r2, r2 // icount 639
and r6, r6, r4 // icount 640
sle r6, r3, r4 // icount 641
ror r5, r6, r2 // icount 642
add r1, r2, r6 // icount 643
ror r1, r2, r0 // icount 644
ror r4, r1, r0 // icount 645
slt r6, r4, r4 // icount 646
sub r6, r0, r1 // icount 647
sle r4, r3, r2 // icount 648
sub r3, r0, r5 // icount 649
seq r7, r1, r3 // icount 650
sll r0, r2, r3 // icount 651
sra r2, r4, r0 // icount 652
or r5, r2, r1 // icount 653
or r3, r0, r0 // icount 654
sub r7, r2, r6 // icount 655
seq r0, r6, r2 // icount 656
sle r4, r2, r0 // icount 657
and r6, r7, r5 // icount 658
sub r4, r7, r5 // icount 659
rol r5, r7, r4 // icount 660
sll r3, r6, r1 // icount 661
and r3, r1, r1 // icount 662
sle r6, r5, r2 // icount 663
sub r6, r1, r1 // icount 664
rol r2, r6, r4 // icount 665
rol r2, r3, r3 // icount 666
sub r6, r5, r0 // icount 667
and r0, r4, r3 // icount 668
sll r0, r0, r1 // icount 669
slt r7, r1, r0 // icount 670
slt r0, r0, r0 // icount 671
slt r2, r1, r3 // icount 672
rol r0, r2, r1 // icount 673
and r3, r1, r5 // icount 674
sco r3, r0, r3 // icount 675
sle r5, r6, r5 // icount 676
or r3, r4, r6 // icount 677
sra r1, r6, r4 // icount 678
seq r6, r0, r3 // icount 679
seq r7, r1, r2 // icount 680
or r0, r4, r0 // icount 681
sle r3, r3, r2 // icount 682
sra r0, r6, r6 // icount 683
sub r1, r5, r2 // icount 684
rol r3, r2, r1 // icount 685
sco r3, r3, r7 // icount 686
sll r4, r3, r6 // icount 687
sub r5, r6, r3 // icount 688
.rlabel_26:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_27 // icount 689
sra r6, r4, r3 // icount 690
sub r2, r4, r5 // icount 691
add r3, r5, r5 // icount 692
slt r2, r1, r4 // icount 693
sra r3, r2, r4 // icount 694
.rlabel_27:
jal .rlabel_28 // icount 695
sub r2, r2, r7 // icount 696
or r3, r4, r2 // icount 697
add r2, r5, r2 // icount 698
sle r1, r7, r7 // icount 699
seq r0, r1, r2 // icount 700
or r0, r0, r7 // icount 701
add r6, r4, r3 // icount 702
sub r2, r0, r4 // icount 703
and r2, r1, r2 // icount 704
add r4, r2, r2 // icount 705
sco r4, r4, r3 // icount 706
sle r0, r5, r2 // icount 707
rol r3, r7, r3 // icount 708
ror r2, r0, r1 // icount 709
sra r0, r7, r0 // icount 710
sle r0, r6, r3 // icount 711
sll r3, r4, r1 // icount 712
add r7, r2, r6 // icount 713
and r1, r2, r5 // icount 714
add r7, r0, r5 // icount 715
sco r3, r5, r1 // icount 716
and r2, r1, r4 // icount 717
add r3, r2, r1 // icount 718
sco r5, r2, r3 // icount 719
sle r6, r1, r1 // icount 720
or r0, r5, r0 // icount 721
add r5, r2, r7 // icount 722
.rlabel_28:
j .rlabel_29 // icount 723
seq r2, r2, r2 // icount 724
sle r3, r5, r2 // icount 725
seq r0, r2, r6 // icount 726
sco r5, r3, r5 // icount 727
sco r0, r0, r0 // icount 728
seq r6, r7, r7 // icount 729
or r6, r6, r5 // icount 730
sle r2, r0, r3 // icount 731
sco r6, r3, r4 // icount 732
add r5, r6, r7 // icount 733
add r2, r4, r5 // icount 734
sra r3, r3, r6 // icount 735
sll r6, r7, r5 // icount 736
and r4, r7, r5 // icount 737
rol r3, r6, r3 // icount 738
and r3, r3, r6 // icount 739
sra r3, r5, r4 // icount 740
slt r3, r1, r5 // icount 741
add r6, r4, r3 // icount 742
sll r4, r6, r7 // icount 743
sco r6, r4, r2 // icount 744
sco r0, r1, r4 // icount 745
or r3, r1, r5 // icount 746
sra r5, r0, r4 // icount 747
sle r5, r7, r2 // icount 748
ror r1, r4, r6 // icount 749
and r0, r4, r7 // icount 750
sra r4, r2, r2 // icount 751
add r7, r2, r5 // icount 752
slt r3, r2, r6 // icount 753
or r3, r3, r4 // icount 754
seq r4, r2, r6 // icount 755
sll r5, r2, r4 // icount 756
sll r0, r0, r2 // icount 757
add r5, r2, r3 // icount 758
ror r2, r2, r3 // icount 759
sle r4, r5, r6 // icount 760
add r4, r1, r5 // icount 761
sle r1, r2, r3 // icount 762
add r7, r1, r7 // icount 763
sco r3, r2, r0 // icount 764
sra r1, r2, r2 // icount 765
rol r6, r6, r0 // icount 766
sll r4, r3, r7 // icount 767
ror r7, r2, r3 // icount 768
slt r2, r7, r0 // icount 769
and r1, r7, r3 // icount 770
sll r4, r4, r1 // icount 771
add r2, r6, r5 // icount 772
sco r5, r4, r0 // icount 773
sra r4, r5, r6 // icount 774
sra r0, r6, r1 // icount 775
add r3, r3, r5 // icount 776
slt r7, r4, r0 // icount 777
sub r2, r1, r6 // icount 778
sub r3, r0, r5 // icount 779
sub r2, r5, r0 // icount 780
sll r4, r3, r0 // icount 781
add r4, r5, r5 // icount 782
or r2, r2, r7 // icount 783
seq r4, r7, r4 // icount 784
sco r7, r6, r2 // icount 785
and r4, r6, r3 // icount 786
sll r4, r4, r2 // icount 787
sco r7, r6, r4 // icount 788
sra r6, r5, r1 // icount 789
and r0, r4, r0 // icount 790
ror r2, r7, r1 // icount 791
sle r6, r2, r4 // icount 792
slt r5, r5, r2 // icount 793
sll r4, r0, r6 // icount 794
ror r0, r4, r3 // icount 795
sub r6, r5, r6 // icount 796
slt r6, r7, r5 // icount 797
add r1, r7, r2 // icount 798
sle r6, r0, r7 // icount 799
or r6, r2, r2 // icount 800
slt r4, r6, r0 // icount 801
slt r5, r4, r7 // icount 802
add r4, r2, r5 // icount 803
add r2, r2, r4 // icount 804
sll r1, r7, r4 // icount 805
seq r5, r3, r4 // icount 806
add r3, r6, r3 // icount 807
slt r1, r1, r5 // icount 808
sll r0, r4, r1 // icount 809
sco r2, r0, r2 // icount 810
sle r3, r3, r1 // icount 811
sub r1, r4, r5 // icount 812
and r6, r4, r2 // icount 813
ror r3, r7, r0 // icount 814
and r7, r7, r3 // icount 815
or r2, r1, r6 // icount 816
sle r5, r5, r1 // icount 817
sub r3, r1, r1 // icount 818
sco r6, r5, r0 // icount 819
and r7, r5, r6 // icount 820
ror r4, r7, r4 // icount 821
sub r0, r5, r7 // icount 822
sle r4, r4, r3 // icount 823
ror r3, r7, r6 // icount 824
or r6, r1, r5 // icount 825
add r5, r1, r6 // icount 826
rol r7, r4, r6 // icount 827
slt r5, r5, r0 // icount 828
and r0, r0, r1 // icount 829
and r1, r7, r0 // icount 830
add r4, r5, r1 // icount 831
or r5, r5, r1 // icount 832
sle r0, r0, r5 // icount 833
sle r1, r5, r3 // icount 834
ror r2, r5, r6 // icount 835
slt r0, r4, r6 // icount 836
ror r7, r6, r6 // icount 837
.rlabel_29:
st r7, r6, 8
addi r6, r6, 8
j .rlabel_30 // icount 838
sra r0, r4, r5 // icount 839
rol r6, r4, r1 // icount 840
sle r0, r0, r5 // icount 841
sco r3, r1, r7 // icount 842
rol r0, r6, r5 // icount 843
ror r0, r6, r4 // icount 844
sco r1, r2, r5 // icount 845
and r4, r3, r4 // icount 846
sra r5, r3, r0 // icount 847
seq r1, r4, r1 // icount 848
ror r6, r3, r6 // icount 849
sll r5, r5, r7 // icount 850
sub r7, r7, r4 // icount 851
and r5, r0, r2 // icount 852
seq r5, r5, r3 // icount 853
sra r6, r3, r0 // icount 854
and r4, r2, r4 // icount 855
slt r0, r6, r7 // icount 856
ror r5, r1, r6 // icount 857
rol r6, r5, r3 // icount 858
and r2, r6, r1 // icount 859
add r6, r6, r1 // icount 860
add r6, r6, r6 // icount 861
sll r3, r7, r4 // icount 862
sco r3, r7, r6 // icount 863
add r7, r3, r2 // icount 864
sll r5, r6, r7 // icount 865
add r2, r0, r0 // icount 866
add r2, r4, r6 // icount 867
.rlabel_30:
beqz r0, .rlabel_31 // icount 868
sub r3, r1, r3 // icount 869
sco r5, r4, r1 // icount 870
sle r6, r3, r4 // icount 871
rol r1, r2, r3 // icount 872
rol r4, r3, r1 // icount 873
sub r2, r6, r4 // icount 874
ror r5, r1, r6 // icount 875
slt r0, r4, r6 // icount 876
slt r5, r5, r1 // icount 877
or r3, r1, r7 // icount 878
seq r2, r7, r4 // icount 879
rol r7, r3, r6 // icount 880
slt r7, r0, r5 // icount 881
sco r5, r1, r7 // icount 882
sub r5, r2, r7 // icount 883
.rlabel_31:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_32 // icount 884
or r4, r0, r3 // icount 885
sll r4, r1, r1 // icount 886
or r1, r3, r2 // icount 887
sll r6, r1, r1 // icount 888
sco r1, r2, r7 // icount 889
seq r2, r2, r2 // icount 890
sub r6, r6, r6 // icount 891
add r5, r4, r4 // icount 892
sll r3, r1, r3 // icount 893
ror r5, r1, r7 // icount 894
sub r0, r3, r5 // icount 895
slt r5, r7, r1 // icount 896
add r6, r7, r4 // icount 897
sra r0, r1, r6 // icount 898
add r5, r3, r4 // icount 899
add r2, r5, r3 // icount 900
sco r4, r4, r2 // icount 901
slt r0, r6, r2 // icount 902
add r4, r1, r3 // icount 903
sra r1, r4, r7 // icount 904
sub r1, r4, r3 // icount 905
sub r4, r1, r4 // icount 906
slt r3, r1, r2 // icount 907
.rlabel_32:
ld r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_33 // icount 908
sll r3, r5, r4 // icount 909
seq r2, r6, r0 // icount 910
rol r5, r6, r3 // icount 911
sub r7, r3, r5 // icount 912
add r4, r4, r5 // icount 913
seq r7, r2, r3 // icount 914
rol r6, r1, r6 // icount 915
sco r7, r5, r3 // icount 916
rol r3, r1, r7 // icount 917
add r4, r6, r3 // icount 918
.rlabel_33:
bnez r1, .rlabel_34 // icount 919
sco r1, r0, r6 // icount 920
rol r5, r6, r3 // icount 921
sco r4, r7, r6 // icount 922
slt r4, r0, r2 // icount 923
ror r4, r5, r1 // icount 924
and r7, r4, r1 // icount 925
or r7, r4, r5 // icount 926
or r4, r2, r5 // icount 927
sub r3, r3, r0 // icount 928
slt r0, r1, r0 // icount 929
rol r2, r6, r6 // icount 930
sub r2, r0, r6 // icount 931
sra r7, r0, r7 // icount 932
seq r6, r0, r6 // icount 933
seq r6, r6, r7 // icount 934
.rlabel_34:
j .rlabel_35 // icount 935
sub r5, r2, r6 // icount 936
sll r3, r3, r0 // icount 937
sle r3, r5, r7 // icount 938
or r7, r7, r7 // icount 939
rol r4, r4, r6 // icount 940
rol r7, r4, r7 // icount 941
sco r4, r2, r7 // icount 942
sub r1, r4, r2 // icount 943
sll r2, r0, r2 // icount 944
sll r1, r3, r7 // icount 945
slt r4, r5, r1 // icount 946
sco r0, r0, r2 // icount 947
slt r0, r0, r5 // icount 948
slt r2, r2, r3 // icount 949
sra r2, r0, r7 // icount 950
or r3, r1, r1 // icount 951
add r7, r3, r0 // icount 952
or r0, r1, r5 // icount 953
ror r2, r4, r6 // icount 954
sco r3, r7, r2 // icount 955
slt r4, r4, r4 // icount 956
ror r0, r2, r1 // icount 957
slt r7, r1, r2 // icount 958
sco r5, r7, r3 // icount 959
sll r2, r3, r3 // icount 960
add r2, r2, r5 // icount 961
ror r1, r1, r1 // icount 962
slt r2, r4, r6 // icount 963
rol r0, r5, r2 // icount 964
rol r5, r6, r7 // icount 965
rol r6, r4, r1 // icount 966
seq r6, r2, r2 // icount 967
slt r5, r0, r7 // icount 968
add r1, r6, r6 // icount 969
sra r4, r5, r5 // icount 970
and r4, r5, r6 // icount 971
or r4, r3, r2 // icount 972
sra r6, r1, r5 // icount 973
slt r6, r4, r6 // icount 974
sll r2, r6, r6 // icount 975
sle r4, r2, r7 // icount 976
or r6, r7, r1 // icount 977
sub r6, r3, r6 // icount 978
sle r6, r7, r7 // icount 979
sco r4, r3, r1 // icount 980
rol r4, r6, r0 // icount 981
and r2, r3, r4 // icount 982
sle r3, r3, r7 // icount 983
and r5, r5, r4 // icount 984
sco r3, r1, r6 // icount 985
sra r3, r7, r0 // icount 986
seq r7, r2, r7 // icount 987
sle r6, r2, r2 // icount 988
sra r2, r6, r5 // icount 989
add r2, r3, r6 // icount 990
and r3, r2, r4 // icount 991
sra r2, r1, r0 // icount 992
ror r1, r3, r4 // icount 993
sra r3, r7, r6 // icount 994
seq r1, r0, r1 // icount 995
rol r0, r0, r6 // icount 996
ror r0, r5, r5 // icount 997
rol r0, r4, r2 // icount 998
rol r6, r1, r0 // icount 999
seq r6, r1, r4 // icount 1000
sle r3, r0, r7 // icount 1001
seq r3, r3, r0 // icount 1002
sco r0, r7, r1 // icount 1003
sub r2, r1, r2 // icount 1004
or r3, r1, r7 // icount 1005
seq r2, r0, r4 // icount 1006
sle r5, r1, r7 // icount 1007
sco r6, r0, r0 // icount 1008
seq r3, r2, r4 // icount 1009
sco r7, r5, r0 // icount 1010
and r4, r7, r7 // icount 1011
slt r7, r3, r2 // icount 1012
ror r1, r4, r2 // icount 1013
slt r4, r4, r6 // icount 1014
sra r4, r2, r6 // icount 1015
sle r4, r1, r6 // icount 1016
sle r1, r7, r1 // icount 1017
sco r6, r3, r1 // icount 1018
add r0, r5, r3 // icount 1019
and r2, r1, r5 // icount 1020
add r4, r6, r6 // icount 1021
or r4, r6, r5 // icount 1022
add r6, r1, r2 // icount 1023
sco r4, r2, r7 // icount 1024
slt r4, r3, r6 // icount 1025
sra r4, r4, r3 // icount 1026
sub r2, r1, r2 // icount 1027
slt r0, r2, r6 // icount 1028
slt r3, r7, r7 // icount 1029
sll r1, r7, r3 // icount 1030
sub r7, r3, r0 // icount 1031
ror r7, r6, r6 // icount 1032
slt r0, r4, r4 // icount 1033
sub r4, r6, r4 // icount 1034
sll r4, r7, r2 // icount 1035
or r7, r3, r7 // icount 1036
sra r7, r2, r4 // icount 1037
rol r6, r2, r6 // icount 1038
rol r5, r0, r4 // icount 1039
sco r6, r1, r0 // icount 1040
slt r0, r3, r6 // icount 1041
or r5, r2, r5 // icount 1042
sub r6, r3, r7 // icount 1043
and r2, r5, r2 // icount 1044
and r2, r5, r5 // icount 1045
sco r0, r1, r1 // icount 1046
slt r3, r2, r4 // icount 1047
sub r0, r2, r2 // icount 1048
sco r1, r2, r2 // icount 1049
.rlabel_35:
st r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_36 // icount 1050
or r5, r4, r7 // icount 1051
slt r2, r0, r5 // icount 1052
and r2, r6, r2 // icount 1053
sle r3, r0, r5 // icount 1054
sle r7, r1, r3 // icount 1055
sco r2, r5, r0 // icount 1056
rol r0, r4, r6 // icount 1057
.rlabel_36:
jal .rlabel_37 // icount 1058
or r3, r7, r1 // icount 1059
and r5, r3, r6 // icount 1060
or r5, r1, r1 // icount 1061
sll r3, r3, r2 // icount 1062
slt r2, r6, r2 // icount 1063
ror r4, r0, r0 // icount 1064
.rlabel_37:
bnez r1, .rlabel_38 // icount 1065
and r5, r4, r7 // icount 1066
slt r4, r1, r2 // icount 1067
sll r0, r7, r1 // icount 1068
sle r5, r3, r7 // icount 1069
sco r1, r5, r5 // icount 1070
sra r5, r4, r6 // icount 1071
and r0, r3, r1 // icount 1072
ror r4, r4, r7 // icount 1073
sub r0, r1, r3 // icount 1074
sra r4, r7, r1 // icount 1075
ror r4, r7, r6 // icount 1076
.rlabel_38:
beqz r0, .rlabel_39 // icount 1077
sle r0, r6, r7 // icount 1078
add r2, r3, r7 // icount 1079
seq r5, r4, r0 // icount 1080
sll r2, r3, r3 // icount 1081
sll r3, r1, r2 // icount 1082
add r2, r4, r7 // icount 1083
rol r3, r0, r1 // icount 1084
or r0, r4, r1 // icount 1085
sle r4, r0, r1 // icount 1086
sub r1, r5, r0 // icount 1087
rol r4, r4, r4 // icount 1088
seq r2, r2, r3 // icount 1089
.rlabel_39:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_40 // icount 1090
slt r0, r6, r7 // icount 1091
sle r6, r5, r2 // icount 1092
ror r3, r6, r1 // icount 1093
slt r1, r1, r3 // icount 1094
slt r4, r1, r4 // icount 1095
.rlabel_40:
j .rlabel_41 // icount 1096
seq r7, r4, r1 // icount 1097
seq r0, r6, r3 // icount 1098
rol r1, r5, r6 // icount 1099
or r7, r4, r3 // icount 1100
sra r3, r3, r2 // icount 1101
sco r5, r7, r7 // icount 1102
seq r4, r7, r1 // icount 1103
sco r7, r5, r7 // icount 1104
add r5, r4, r2 // icount 1105
sra r6, r1, r5 // icount 1106
sll r2, r7, r5 // icount 1107
and r2, r3, r1 // icount 1108
seq r0, r5, r2 // icount 1109
sle r2, r7, r3 // icount 1110
sub r2, r3, r0 // icount 1111
slt r6, r1, r3 // icount 1112
seq r4, r0, r6 // icount 1113
rol r5, r5, r1 // icount 1114
slt r0, r1, r6 // icount 1115
sra r1, r6, r4 // icount 1116
seq r5, r1, r5 // icount 1117
slt r0, r2, r2 // icount 1118
and r7, r1, r3 // icount 1119
sle r4, r6, r3 // icount 1120
rol r6, r3, r6 // icount 1121
seq r5, r5, r4 // icount 1122
slt r1, r0, r1 // icount 1123
sco r4, r1, r2 // icount 1124
sle r0, r6, r7 // icount 1125
sle r5, r6, r1 // icount 1126
sco r4, r0, r1 // icount 1127
sle r6, r4, r3 // icount 1128
sco r3, r7, r4 // icount 1129
sra r4, r4, r5 // icount 1130
sll r3, r2, r3 // icount 1131
or r2, r7, r5 // icount 1132
sub r3, r1, r4 // icount 1133
slt r0, r0, r2 // icount 1134
ror r4, r7, r5 // icount 1135
rol r3, r4, r3 // icount 1136
add r3, r4, r5 // icount 1137
sub r4, r5, r4 // icount 1138
add r2, r6, r4 // icount 1139
sle r6, r7, r4 // icount 1140
sra r0, r2, r5 // icount 1141
seq r1, r6, r6 // icount 1142
sle r3, r2, r5 // icount 1143
sll r0, r0, r7 // icount 1144
sll r1, r3, r7 // icount 1145
seq r0, r4, r3 // icount 1146
sle r7, r7, r2 // icount 1147
or r7, r3, r0 // icount 1148
rol r2, r2, r0 // icount 1149
seq r2, r7, r0 // icount 1150
or r7, r0, r1 // icount 1151
sle r7, r3, r4 // icount 1152
sra r6, r0, r5 // icount 1153
.rlabel_41:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_42 // icount 1154
and r5, r0, r5 // icount 1155
slt r1, r7, r5 // icount 1156
ror r5, r4, r1 // icount 1157
sra r0, r6, r3 // icount 1158
sco r3, r7, r3 // icount 1159
sll r6, r2, r1 // icount 1160
sle r4, r7, r0 // icount 1161
sll r0, r2, r4 // icount 1162
ror r6, r3, r1 // icount 1163
ror r5, r4, r1 // icount 1164
add r4, r0, r7 // icount 1165
rol r6, r2, r4 // icount 1166
sle r7, r7, r0 // icount 1167
sco r3, r3, r5 // icount 1168
add r6, r3, r7 // icount 1169
seq r6, r1, r0 // icount 1170
rol r4, r7, r3 // icount 1171
ror r0, r3, r6 // icount 1172
sco r6, r5, r2 // icount 1173
sco r3, r2, r0 // icount 1174
sle r7, r1, r1 // icount 1175
add r4, r4, r3 // icount 1176
sco r6, r4, r0 // icount 1177
rol r5, r2, r7 // icount 1178
sub r0, r6, r7 // icount 1179
ror r2, r1, r7 // icount 1180
seq r7, r2, r4 // icount 1181
sle r0, r6, r1 // icount 1182
sra r0, r6, r4 // icount 1183
sra r0, r6, r5 // icount 1184
and r3, r4, r0 // icount 1185
sle r3, r2, r4 // icount 1186
slt r4, r6, r5 // icount 1187
or r6, r0, r4 // icount 1188
.rlabel_42:
j .rlabel_43 // icount 1189
seq r5, r5, r6 // icount 1190
sll r0, r7, r5 // icount 1191
sll r1, r4, r2 // icount 1192
or r4, r5, r1 // icount 1193
add r1, r3, r5 // icount 1194
sle r7, r1, r5 // icount 1195
sll r4, r7, r2 // icount 1196
and r2, r5, r3 // icount 1197
add r0, r1, r0 // icount 1198
and r7, r3, r3 // icount 1199
seq r4, r3, r4 // icount 1200
ror r3, r5, r1 // icount 1201
slt r1, r4, r1 // icount 1202
sle r7, r1, r6 // icount 1203
slt r0, r7, r7 // icount 1204
seq r1, r6, r0 // icount 1205
sle r2, r7, r3 // icount 1206
slt r7, r2, r6 // icount 1207
sle r1, r1, r6 // icount 1208
rol r6, r2, r0 // icount 1209
rol r1, r4, r3 // icount 1210
sll r4, r0, r3 // icount 1211
rol r0, r7, r2 // icount 1212
or r0, r3, r5 // icount 1213
sra r0, r3, r0 // icount 1214
add r4, r1, r7 // icount 1215
sco r6, r4, r3 // icount 1216
slt r1, r7, r7 // icount 1217
sra r4, r6, r4 // icount 1218
sra r0, r7, r1 // icount 1219
or r2, r0, r1 // icount 1220
or r3, r1, r3 // icount 1221
sle r3, r5, r0 // icount 1222
seq r2, r6, r2 // icount 1223
seq r2, r5, r6 // icount 1224
or r7, r4, r2 // icount 1225
add r0, r4, r6 // icount 1226
ror r2, r6, r7 // icount 1227
or r5, r3, r6 // icount 1228
sll r2, r3, r4 // icount 1229
rol r3, r5, r0 // icount 1230
sco r7, r0, r3 // icount 1231
sra r6, r4, r5 // icount 1232
rol r1, r2, r1 // icount 1233
seq r6, r0, r2 // icount 1234
or r3, r2, r4 // icount 1235
sco r2, r2, r0 // icount 1236
seq r0, r0, r3 // icount 1237
slt r0, r4, r5 // icount 1238
add r4, r3, r3 // icount 1239
add r7, r6, r4 // icount 1240
sll r1, r3, r2 // icount 1241
sco r7, r2, r6 // icount 1242
or r7, r2, r3 // icount 1243
sco r3, r7, r3 // icount 1244
or r0, r5, r4 // icount 1245
sco r2, r2, r5 // icount 1246
sle r5, r7, r7 // icount 1247
sll r5, r5, r3 // icount 1248
seq r7, r6, r2 // icount 1249
or r7, r3, r7 // icount 1250
sra r5, r0, r2 // icount 1251
sle r4, r4, r6 // icount 1252
sle r4, r1, r2 // icount 1253
sco r5, r2, r1 // icount 1254
sub r7, r6, r2 // icount 1255
rol r3, r0, r2 // icount 1256
seq r6, r5, r3 // icount 1257
sll r0, r4, r1 // icount 1258
sco r4, r4, r3 // icount 1259
sco r0, r3, r5 // icount 1260
ror r3, r3, r4 // icount 1261
or r1, r3, r4 // icount 1262
add r7, r4, r1 // icount 1263
sub r0, r2, r1 // icount 1264
sub r3, r0, r2 // icount 1265
sra r7, r2, r1 // icount 1266
sle r3, r5, r7 // icount 1267
ror r7, r4, r4 // icount 1268
add r7, r1, r0 // icount 1269
and r2, r7, r4 // icount 1270
rol r3, r7, r4 // icount 1271
add r2, r0, r6 // icount 1272
and r7, r3, r7 // icount 1273
add r0, r4, r3 // icount 1274
add r5, r6, r7 // icount 1275
add r2, r2, r1 // icount 1276
rol r4, r7, r0 // icount 1277
and r4, r5, r0 // icount 1278
ror r5, r1, r2 // icount 1279
sra r5, r2, r3 // icount 1280
or r0, r1, r7 // icount 1281
add r0, r7, r7 // icount 1282
ror r4, r3, r5 // icount 1283
ror r5, r7, r6 // icount 1284
sco r1, r4, r3 // icount 1285
sub r3, r7, r1 // icount 1286
sco r4, r4, r5 // icount 1287
ror r6, r2, r2 // icount 1288
rol r6, r7, r5 // icount 1289
sco r6, r5, r1 // icount 1290
sle r6, r1, r5 // icount 1291
slt r4, r7, r5 // icount 1292
or r7, r1, r0 // icount 1293
slt r5, r3, r1 // icount 1294
or r6, r3, r0 // icount 1295
sco r4, r5, r7 // icount 1296
seq r6, r4, r5 // icount 1297
seq r7, r7, r2 // icount 1298
sra r0, r4, r1 // icount 1299
.rlabel_43:
j .rlabel_44 // icount 1300
or r0, r0, r4 // icount 1301
rol r6, r7, r4 // icount 1302
and r5, r3, r7 // icount 1303
ror r4, r2, r3 // icount 1304
rol r7, r3, r0 // icount 1305
sco r6, r4, r0 // icount 1306
ror r3, r0, r7 // icount 1307
sra r2, r7, r0 // icount 1308
sle r0, r0, r5 // icount 1309
and r0, r4, r3 // icount 1310
sll r6, r6, r5 // icount 1311
sra r4, r6, r1 // icount 1312
sll r1, r3, r6 // icount 1313
and r1, r3, r0 // icount 1314
rol r0, r7, r7 // icount 1315
sll r7, r0, r7 // icount 1316
or r2, r3, r4 // icount 1317
seq r6, r7, r5 // icount 1318
rol r4, r3, r0 // icount 1319
sco r1, r6, r3 // icount 1320
or r4, r0, r6 // icount 1321
sll r4, r7, r6 // icount 1322
sco r1, r6, r2 // icount 1323
sle r4, r2, r0 // icount 1324
add r0, r2, r6 // icount 1325
and r1, r7, r0 // icount 1326
sle r1, r1, r7 // icount 1327
sle r0, r7, r0 // icount 1328
sra r3, r2, r7 // icount 1329
sub r6, r0, r0 // icount 1330
add r3, r5, r4 // icount 1331
sco r1, r3, r4 // icount 1332
sco r1, r3, r2 // icount 1333
add r1, r5, r6 // icount 1334
add r2, r3, r7 // icount 1335
ror r4, r4, r3 // icount 1336
sll r7, r2, r6 // icount 1337
rol r6, r5, r5 // icount 1338
seq r5, r6, r1 // icount 1339
sub r7, r7, r0 // icount 1340
ror r1, r6, r4 // icount 1341
sco r3, r7, r5 // icount 1342
add r0, r3, r4 // icount 1343
seq r7, r0, r2 // icount 1344
sll r0, r7, r3 // icount 1345
add r4, r6, r5 // icount 1346
.rlabel_44:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_45 // icount 1347
sle r2, r5, r7 // icount 1348
seq r5, r2, r4 // icount 1349
or r0, r6, r1 // icount 1350
sub r5, r0, r6 // icount 1351
add r2, r7, r1 // icount 1352
sll r1, r6, r3 // icount 1353
or r5, r0, r7 // icount 1354
sll r5, r0, r3 // icount 1355
sub r2, r3, r7 // icount 1356
add r7, r3, r7 // icount 1357
sco r4, r2, r4 // icount 1358
or r1, r2, r5 // icount 1359
sle r2, r1, r4 // icount 1360
add r7, r2, r1 // icount 1361
ror r5, r1, r4 // icount 1362
sll r6, r1, r4 // icount 1363
slt r7, r4, r0 // icount 1364
sll r5, r5, r4 // icount 1365
or r5, r7, r2 // icount 1366
rol r1, r2, r5 // icount 1367
.rlabel_45:
beqz r0, .rlabel_46 // icount 1368
sra r3, r7, r6 // icount 1369
and r1, r0, r0 // icount 1370
sco r1, r3, r2 // icount 1371
sle r0, r3, r7 // icount 1372
and r7, r3, r1 // icount 1373
.rlabel_46:
j .rlabel_47 // icount 1374
ror r0, r4, r1 // icount 1375
sll r6, r0, r2 // icount 1376
rol r3, r4, r2 // icount 1377
sra r3, r4, r1 // icount 1378
sub r1, r4, r1 // icount 1379
slt r5, r2, r3 // icount 1380
add r7, r1, r6 // icount 1381
and r5, r5, r1 // icount 1382
rol r4, r5, r5 // icount 1383
sra r6, r3, r3 // icount 1384
slt r5, r3, r4 // icount 1385
sub r1, r7, r6 // icount 1386
ror r2, r2, r7 // icount 1387
sll r7, r7, r6 // icount 1388
seq r6, r1, r0 // icount 1389
add r3, r6, r4 // icount 1390
sub r4, r5, r6 // icount 1391
slt r3, r0, r0 // icount 1392
add r1, r1, r0 // icount 1393
sub r0, r6, r2 // icount 1394
sco r6, r3, r3 // icount 1395
seq r7, r0, r3 // icount 1396
ror r4, r0, r3 // icount 1397
add r5, r0, r7 // icount 1398
add r0, r4, r4 // icount 1399
seq r0, r4, r4 // icount 1400
and r1, r6, r0 // icount 1401
seq r4, r6, r4 // icount 1402
seq r3, r6, r7 // icount 1403
or r2, r1, r4 // icount 1404
ror r3, r2, r6 // icount 1405
seq r4, r4, r0 // icount 1406
and r5, r3, r3 // icount 1407
rol r5, r1, r6 // icount 1408
and r0, r1, r2 // icount 1409
sle r2, r2, r4 // icount 1410
or r1, r0, r0 // icount 1411
add r5, r4, r0 // icount 1412
sll r4, r5, r3 // icount 1413
add r3, r3, r1 // icount 1414
sra r2, r1, r0 // icount 1415
add r3, r7, r7 // icount 1416
sub r3, r3, r6 // icount 1417
ror r5, r4, r2 // icount 1418
add r1, r3, r4 // icount 1419
sco r2, r1, r3 // icount 1420
rol r5, r6, r7 // icount 1421
slt r0, r5, r0 // icount 1422
slt r5, r7, r2 // icount 1423
slt r1, r3, r1 // icount 1424
and r2, r6, r0 // icount 1425
seq r5, r7, r5 // icount 1426
rol r7, r3, r2 // icount 1427
sll r7, r5, r2 // icount 1428
or r3, r1, r1 // icount 1429
sra r7, r4, r1 // icount 1430
add r4, r2, r1 // icount 1431
sco r5, r4, r1 // icount 1432
and r1, r0, r4 // icount 1433
slt r0, r0, r7 // icount 1434
.rlabel_47:
st r7, r6, 4
addi r6, r6, 4
j .rlabel_48 // icount 1435
sle r7, r7, r2 // icount 1436
seq r3, r6, r6 // icount 1437
slt r0, r6, r6 // icount 1438
and r5, r4, r5 // icount 1439
sco r0, r6, r0 // icount 1440
seq r4, r4, r3 // icount 1441
sll r7, r5, r2 // icount 1442
add r1, r3, r2 // icount 1443
and r0, r0, r5 // icount 1444
ror r3, r2, r1 // icount 1445
sll r1, r0, r6 // icount 1446
add r2, r7, r4 // icount 1447
slt r2, r3, r1 // icount 1448
sle r3, r1, r5 // icount 1449
or r2, r0, r1 // icount 1450
ror r0, r0, r2 // icount 1451
ror r2, r6, r7 // icount 1452
ror r1, r7, r1 // icount 1453
sub r7, r4, r4 // icount 1454
rol r1, r5, r6 // icount 1455
slt r4, r0, r2 // icount 1456
rol r2, r7, r3 // icount 1457
rol r4, r5, r1 // icount 1458
seq r3, r7, r3 // icount 1459
add r0, r6, r5 // icount 1460
ror r1, r0, r3 // icount 1461
add r2, r2, r0 // icount 1462
sco r1, r6, r7 // icount 1463
sra r0, r0, r1 // icount 1464
rol r2, r7, r7 // icount 1465
ror r2, r6, r3 // icount 1466
or r0, r1, r3 // icount 1467
sco r4, r3, r5 // icount 1468
slt r4, r6, r2 // icount 1469
rol r3, r7, r2 // icount 1470
or r4, r6, r3 // icount 1471
and r5, r1, r3 // icount 1472
seq r3, r5, r6 // icount 1473
slt r3, r1, r1 // icount 1474
ror r6, r6, r4 // icount 1475
slt r0, r6, r4 // icount 1476
sub r1, r3, r6 // icount 1477
ror r1, r6, r7 // icount 1478
sco r1, r7, r3 // icount 1479
rol r3, r6, r4 // icount 1480
add r6, r4, r0 // icount 1481
or r3, r3, r1 // icount 1482
sub r5, r7, r5 // icount 1483
sll r3, r5, r0 // icount 1484
or r5, r4, r7 // icount 1485
or r5, r6, r5 // icount 1486
sle r0, r0, r4 // icount 1487
sll r6, r0, r6 // icount 1488
sco r1, r3, r1 // icount 1489
sub r3, r4, r0 // icount 1490
sra r1, r6, r2 // icount 1491
seq r4, r1, r6 // icount 1492
or r1, r2, r7 // icount 1493
sle r4, r5, r5 // icount 1494
rol r2, r5, r3 // icount 1495
sco r0, r4, r3 // icount 1496
and r7, r0, r2 // icount 1497
seq r0, r1, r1 // icount 1498
sll r6, r7, r7 // icount 1499
add r0, r6, r0 // icount 1500
seq r3, r4, r6 // icount 1501
sra r7, r6, r1 // icount 1502
seq r2, r3, r7 // icount 1503
add r3, r7, r2 // icount 1504
sub r7, r3, r6 // icount 1505
sub r5, r0, r5 // icount 1506
seq r7, r6, r7 // icount 1507
sll r3, r3, r6 // icount 1508
sra r1, r6, r0 // icount 1509
sle r1, r3, r4 // icount 1510
slt r6, r3, r5 // icount 1511
sle r5, r1, r1 // icount 1512
seq r6, r2, r5 // icount 1513
sra r4, r5, r1 // icount 1514
sle r5, r6, r6 // icount 1515
and r7, r2, r5 // icount 1516
sll r6, r2, r0 // icount 1517
and r0, r5, r4 // icount 1518
sco r0, r7, r5 // icount 1519
sco r2, r4, r2 // icount 1520
sra r2, r0, r7 // icount 1521
rol r2, r2, r6 // icount 1522
sra r6, r2, r7 // icount 1523
rol r2, r6, r3 // icount 1524
or r0, r6, r1 // icount 1525
sco r5, r0, r5 // icount 1526
sll r2, r0, r5 // icount 1527
and r0, r6, r5 // icount 1528
add r2, r5, r1 // icount 1529
ror r1, r3, r0 // icount 1530
and r2, r7, r4 // icount 1531
sle r3, r6, r3 // icount 1532
ror r6, r7, r1 // icount 1533
and r4, r2, r1 // icount 1534
sle r6, r4, r3 // icount 1535
ror r6, r7, r2 // icount 1536
add r6, r0, r5 // icount 1537
slt r1, r7, r2 // icount 1538
ror r1, r1, r4 // icount 1539
sra r3, r1, r4 // icount 1540
add r7, r3, r0 // icount 1541
ror r5, r7, r2 // icount 1542
add r7, r3, r5 // icount 1543
.rlabel_48:
j .rlabel_49 // icount 1544
slt r4, r3, r5 // icount 1545
sll r0, r6, r0 // icount 1546
sco r1, r4, r3 // icount 1547
and r7, r0, r5 // icount 1548
sco r1, r3, r7 // icount 1549
slt r7, r0, r0 // icount 1550
seq r0, r4, r6 // icount 1551
sco r4, r2, r7 // icount 1552
seq r5, r6, r1 // icount 1553
sra r5, r0, r4 // icount 1554
ror r3, r6, r3 // icount 1555
ror r0, r2, r2 // icount 1556
or r3, r6, r0 // icount 1557
sub r7, r6, r7 // icount 1558
and r1, r5, r1 // icount 1559
slt r5, r7, r0 // icount 1560
add r5, r2, r0 // icount 1561
sub r5, r3, r3 // icount 1562
add r2, r1, r2 // icount 1563
add r6, r6, r3 // icount 1564
slt r0, r1, r7 // icount 1565
or r7, r0, r3 // icount 1566
rol r4, r6, r6 // icount 1567
seq r4, r5, r1 // icount 1568
seq r4, r5, r0 // icount 1569
.rlabel_49:
ld r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_50 // icount 1570
slt r2, r1, r0 // icount 1571
slt r2, r2, r5 // icount 1572
.rlabel_50:
jal .rlabel_51 // icount 1573
.rlabel_51:
ld r7, r6, 2
addi r6, r6, 2
jal .rlabel_52 // icount 1574
and r0, r2, r1 // icount 1575
rol r1, r5, r4 // icount 1576
sco r2, r1, r5 // icount 1577
sle r2, r2, r4 // icount 1578
or r3, r2, r1 // icount 1579
seq r0, r0, r4 // icount 1580
ror r6, r0, r4 // icount 1581
sub r7, r3, r2 // icount 1582
and r6, r1, r4 // icount 1583
sub r1, r3, r6 // icount 1584
ror r5, r7, r7 // icount 1585
sub r6, r1, r4 // icount 1586
seq r5, r4, r4 // icount 1587
sco r1, r5, r5 // icount 1588
seq r3, r0, r6 // icount 1589
.rlabel_52:
ld r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_53 // icount 1590
seq r6, r2, r1 // icount 1591
seq r0, r5, r6 // icount 1592
sco r4, r2, r0 // icount 1593
sll r2, r1, r1 // icount 1594
.rlabel_53:
st r7, r6, 0
addi r6, r6, 0
jal .rlabel_54 // icount 1595
sub r4, r1, r7 // icount 1596
seq r6, r6, r4 // icount 1597
and r0, r6, r4 // icount 1598
add r5, r6, r3 // icount 1599
sra r1, r1, r0 // icount 1600
sle r1, r1, r3 // icount 1601
sra r3, r2, r4 // icount 1602
sra r6, r0, r6 // icount 1603
slt r1, r0, r6 // icount 1604
add r7, r1, r1 // icount 1605
or r0, r1, r7 // icount 1606
add r6, r1, r2 // icount 1607
rol r4, r5, r0 // icount 1608
ror r3, r1, r6 // icount 1609
seq r7, r0, r6 // icount 1610
sle r7, r5, r4 // icount 1611
sco r1, r6, r0 // icount 1612
sub r2, r5, r6 // icount 1613
ror r4, r3, r2 // icount 1614
and r4, r0, r6 // icount 1615
rol r3, r4, r5 // icount 1616
rol r3, r0, r1 // icount 1617
and r6, r4, r2 // icount 1618
slt r0, r2, r5 // icount 1619
slt r2, r1, r4 // icount 1620
.rlabel_54:
jal .rlabel_55 // icount 1621
.rlabel_55:
j .rlabel_56 // icount 1622
ror r1, r3, r0 // icount 1623
sco r4, r0, r0 // icount 1624
sll r4, r2, r3 // icount 1625
sll r6, r6, r2 // icount 1626
slt r4, r6, r6 // icount 1627
seq r6, r7, r4 // icount 1628
sra r6, r0, r6 // icount 1629
rol r7, r1, r1 // icount 1630
slt r4, r1, r1 // icount 1631
and r3, r3, r5 // icount 1632
add r5, r0, r3 // icount 1633
slt r4, r6, r5 // icount 1634
seq r2, r6, r2 // icount 1635
sco r0, r6, r0 // icount 1636
or r6, r2, r5 // icount 1637
sco r4, r3, r6 // icount 1638
seq r0, r0, r0 // icount 1639
and r0, r1, r6 // icount 1640
add r5, r7, r7 // icount 1641
sle r2, r5, r6 // icount 1642
sub r0, r2, r1 // icount 1643
sra r4, r0, r3 // icount 1644
sub r0, r7, r5 // icount 1645
sle r2, r7, r4 // icount 1646
sle r0, r7, r0 // icount 1647
or r5, r7, r4 // icount 1648
add r2, r1, r2 // icount 1649
sle r7, r2, r4 // icount 1650
seq r5, r3, r5 // icount 1651
add r2, r6, r4 // icount 1652
sll r1, r3, r3 // icount 1653
sub r7, r7, r1 // icount 1654
sub r6, r5, r7 // icount 1655
or r3, r4, r4 // icount 1656
add r1, r6, r3 // icount 1657
rol r1, r1, r3 // icount 1658
sle r6, r1, r0 // icount 1659
sle r5, r5, r4 // icount 1660
sle r7, r7, r5 // icount 1661
slt r3, r3, r4 // icount 1662
sub r6, r2, r0 // icount 1663
sle r1, r3, r2 // icount 1664
ror r3, r2, r4 // icount 1665
seq r6, r5, r2 // icount 1666
sub r0, r3, r0 // icount 1667
add r3, r2, r7 // icount 1668
add r5, r6, r0 // icount 1669
seq r0, r6, r2 // icount 1670
slt r0, r3, r7 // icount 1671
rol r5, r7, r5 // icount 1672
seq r5, r6, r3 // icount 1673
slt r1, r1, r2 // icount 1674
or r6, r0, r3 // icount 1675
rol r5, r0, r2 // icount 1676
or r7, r1, r2 // icount 1677
or r7, r0, r3 // icount 1678
slt r3, r6, r3 // icount 1679
sub r4, r2, r1 // icount 1680
and r1, r2, r1 // icount 1681
or r1, r6, r5 // icount 1682
or r7, r6, r5 // icount 1683
ror r4, r5, r0 // icount 1684
sra r6, r5, r0 // icount 1685
sle r5, r5, r5 // icount 1686
sll r4, r5, r5 // icount 1687
sco r2, r4, r3 // icount 1688
sra r3, r3, r0 // icount 1689
sub r0, r6, r3 // icount 1690
sub r4, r3, r2 // icount 1691
sle r0, r5, r4 // icount 1692
sra r7, r5, r2 // icount 1693
slt r7, r0, r3 // icount 1694
sra r4, r4, r4 // icount 1695
sra r6, r4, r2 // icount 1696
rol r2, r7, r1 // icount 1697
or r6, r6, r1 // icount 1698
seq r6, r0, r1 // icount 1699
sle r1, r6, r6 // icount 1700
seq r4, r4, r5 // icount 1701
sll r1, r2, r2 // icount 1702
sll r6, r7, r5 // icount 1703
or r3, r3, r0 // icount 1704
rol r4, r4, r2 // icount 1705
ror r5, r2, r5 // icount 1706
and r5, r3, r5 // icount 1707
seq r4, r7, r5 // icount 1708
rol r3, r7, r1 // icount 1709
rol r0, r2, r6 // icount 1710
sra r4, r6, r1 // icount 1711
seq r7, r6, r4 // icount 1712
sco r0, r2, r2 // icount 1713
sra r1, r5, r7 // icount 1714
add r5, r0, r4 // icount 1715
add r1, r2, r6 // icount 1716
seq r0, r4, r2 // icount 1717
slt r6, r5, r1 // icount 1718
slt r1, r6, r7 // icount 1719
and r0, r5, r5 // icount 1720
sub r6, r7, r7 // icount 1721
or r2, r7, r1 // icount 1722
add r0, r3, r4 // icount 1723
sub r7, r6, r7 // icount 1724
.rlabel_56:
jal .rlabel_57 // icount 1725
sub r5, r4, r3 // icount 1726
sco r2, r3, r0 // icount 1727
ror r3, r7, r2 // icount 1728
sll r2, r1, r7 // icount 1729
add r0, r5, r5 // icount 1730
add r4, r3, r0 // icount 1731
and r2, r3, r0 // icount 1732
sra r5, r6, r5 // icount 1733
or r2, r1, r0 // icount 1734
sll r0, r3, r1 // icount 1735
add r6, r5, r2 // icount 1736
sub r1, r7, r6 // icount 1737
sra r5, r6, r7 // icount 1738
sco r5, r0, r1 // icount 1739
sll r7, r7, r7 // icount 1740
and r2, r3, r0 // icount 1741
and r0, r3, r6 // icount 1742
sll r1, r2, r2 // icount 1743
sub r0, r4, r1 // icount 1744
sub r4, r2, r0 // icount 1745
sle r2, r2, r6 // icount 1746
sco r1, r5, r3 // icount 1747
sll r0, r2, r5 // icount 1748
.rlabel_57:
bnez r1, .rlabel_58 // icount 1749
sco r4, r5, r4 // icount 1750
or r4, r4, r6 // icount 1751
rol r0, r5, r5 // icount 1752
sle r6, r7, r7 // icount 1753
sll r1, r3, r7 // icount 1754
rol r3, r5, r2 // icount 1755
sle r3, r7, r5 // icount 1756
sle r2, r0, r1 // icount 1757
seq r5, r4, r1 // icount 1758
.rlabel_58:
jal .rlabel_59 // icount 1759
sco r7, r7, r4 // icount 1760
add r2, r0, r0 // icount 1761
slt r6, r6, r4 // icount 1762
seq r4, r6, r4 // icount 1763
seq r0, r2, r6 // icount 1764
seq r3, r6, r7 // icount 1765
or r5, r2, r0 // icount 1766
sle r2, r7, r2 // icount 1767
sub r6, r4, r2 // icount 1768
slt r1, r7, r7 // icount 1769
sll r3, r3, r0 // icount 1770
.rlabel_59:
st r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_60 // icount 1771
add r2, r5, r7 // icount 1772
ror r5, r6, r6 // icount 1773
rol r6, r1, r4 // icount 1774
ror r0, r2, r7 // icount 1775
ror r2, r0, r6 // icount 1776
sle r2, r4, r5 // icount 1777
add r7, r5, r5 // icount 1778
or r7, r5, r4 // icount 1779
sle r1, r3, r0 // icount 1780
ror r7, r4, r3 // icount 1781
sle r5, r1, r7 // icount 1782
.rlabel_60:
st r7, r6, 10
addi r6, r6, 10
jal .rlabel_61 // icount 1783
sco r0, r7, r6 // icount 1784
slt r6, r2, r1 // icount 1785
.rlabel_61:
ld r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_62 // icount 1786
sra r3, r2, r3 // icount 1787
sub r6, r6, r2 // icount 1788
add r0, r0, r5 // icount 1789
slt r2, r0, r7 // icount 1790
ror r5, r2, r1 // icount 1791
add r0, r7, r2 // icount 1792
.rlabel_62:
st r7, r6, 12
addi r6, r6, 12
jal .rlabel_63 // icount 1793
slt r7, r4, r5 // icount 1794
or r6, r5, r0 // icount 1795
ror r1, r7, r2 // icount 1796
sra r4, r6, r0 // icount 1797
add r3, r5, r3 // icount 1798
rol r3, r5, r4 // icount 1799
sll r2, r1, r2 // icount 1800
slt r6, r2, r1 // icount 1801
slt r7, r3, r2 // icount 1802
ror r7, r5, r0 // icount 1803
or r3, r5, r4 // icount 1804
rol r2, r6, r3 // icount 1805
or r3, r4, r7 // icount 1806
sco r0, r0, r3 // icount 1807
sco r6, r2, r0 // icount 1808
and r7, r5, r1 // icount 1809
sra r7, r2, r0 // icount 1810
seq r7, r1, r4 // icount 1811
add r4, r7, r7 // icount 1812
seq r2, r7, r6 // icount 1813
sub r1, r4, r1 // icount 1814
slt r7, r0, r6 // icount 1815
sle r1, r3, r3 // icount 1816
and r6, r6, r6 // icount 1817
add r4, r0, r3 // icount 1818
sub r7, r0, r2 // icount 1819
sle r3, r1, r7 // icount 1820
sub r0, r5, r5 // icount 1821
.rlabel_63:
jal .rlabel_64 // icount 1822
ror r1, r2, r4 // icount 1823
or r1, r2, r6 // icount 1824
sll r1, r5, r1 // icount 1825
or r1, r4, r5 // icount 1826
sub r4, r5, r4 // icount 1827
seq r1, r7, r3 // icount 1828
slt r0, r1, r1 // icount 1829
sll r6, r6, r7 // icount 1830
sra r0, r3, r6 // icount 1831
sle r1, r1, r2 // icount 1832
add r7, r5, r1 // icount 1833
and r7, r4, r5 // icount 1834
ror r6, r7, r1 // icount 1835
sco r6, r4, r0 // icount 1836
sco r5, r2, r2 // icount 1837
and r4, r6, r3 // icount 1838
sll r3, r3, r7 // icount 1839
sra r6, r1, r3 // icount 1840
.rlabel_64:
beqz r0, .rlabel_65 // icount 1841
ror r6, r0, r7 // icount 1842
sll r5, r1, r2 // icount 1843
add r6, r6, r5 // icount 1844
slt r7, r4, r4 // icount 1845
rol r0, r0, r5 // icount 1846
or r3, r5, r1 // icount 1847
sra r0, r4, r7 // icount 1848
sle r7, r3, r6 // icount 1849
sle r7, r3, r7 // icount 1850
slt r4, r6, r5 // icount 1851
and r7, r4, r7 // icount 1852
sub r0, r4, r3 // icount 1853
sub r1, r3, r4 // icount 1854
rol r7, r6, r0 // icount 1855
.rlabel_65:
st r7, r6, 2
addi r6, r6, 2
jal .rlabel_66 // icount 1856
seq r5, r3, r6 // icount 1857
sle r5, r1, r1 // icount 1858
sle r3, r4, r4 // icount 1859
slt r6, r4, r3 // icount 1860
or r2, r1, r5 // icount 1861
add r5, r7, r6 // icount 1862
sll r2, r5, r5 // icount 1863
ror r2, r4, r4 // icount 1864
ror r0, r4, r3 // icount 1865
sco r0, r0, r5 // icount 1866
or r0, r5, r3 // icount 1867
sco r5, r4, r3 // icount 1868
slt r2, r7, r7 // icount 1869
rol r5, r3, r5 // icount 1870
slt r7, r6, r1 // icount 1871
slt r1, r6, r4 // icount 1872
slt r1, r6, r5 // icount 1873
or r0, r2, r4 // icount 1874
or r7, r3, r4 // icount 1875
sle r2, r4, r4 // icount 1876
and r2, r2, r4 // icount 1877
ror r0, r0, r0 // icount 1878
rol r0, r2, r4 // icount 1879
ror r2, r6, r7 // icount 1880
sle r1, r6, r5 // icount 1881
add r6, r5, r7 // icount 1882
slt r2, r6, r4 // icount 1883
sll r6, r7, r1 // icount 1884
rol r4, r3, r3 // icount 1885
ror r5, r4, r6 // icount 1886
add r6, r0, r5 // icount 1887
.rlabel_66:
ld r7, r6, 14
addi r6, r6, 14
j .rlabel_67 // icount 1888
and r4, r4, r7 // icount 1889
sub r2, r7, r6 // icount 1890
sll r1, r4, r5 // icount 1891
sub r2, r7, r6 // icount 1892
sco r4, r7, r0 // icount 1893
ror r6, r7, r1 // icount 1894
or r2, r4, r7 // icount 1895
or r3, r2, r1 // icount 1896
add r7, r3, r4 // icount 1897
ror r0, r5, r0 // icount 1898
slt r7, r4, r6 // icount 1899
sll r6, r1, r5 // icount 1900
ror r0, r4, r0 // icount 1901
sub r5, r0, r0 // icount 1902
sle r3, r6, r3 // icount 1903
sll r0, r2, r2 // icount 1904
slt r6, r5, r0 // icount 1905
sub r7, r4, r5 // icount 1906
rol r5, r0, r6 // icount 1907
seq r1, r7, r2 // icount 1908
sub r6, r0, r2 // icount 1909
seq r5, r3, r1 // icount 1910
rol r7, r0, r4 // icount 1911
seq r1, r7, r4 // icount 1912
ror r1, r2, r1 // icount 1913
add r2, r6, r3 // icount 1914
add r0, r5, r4 // icount 1915
sra r0, r0, r0 // icount 1916
sco r7, r7, r3 // icount 1917
and r6, r1, r4 // icount 1918
sll r7, r6, r0 // icount 1919
sle r1, r0, r0 // icount 1920
sle r0, r0, r3 // icount 1921
sub r6, r2, r2 // icount 1922
sll r6, r7, r6 // icount 1923
sco r3, r4, r1 // icount 1924
or r1, r1, r6 // icount 1925
sll r5, r5, r2 // icount 1926
sco r2, r4, r3 // icount 1927
or r3, r6, r5 // icount 1928
add r2, r2, r5 // icount 1929
sll r2, r4, r1 // icount 1930
or r6, r0, r1 // icount 1931
sra r4, r0, r2 // icount 1932
sle r0, r2, r6 // icount 1933
and r5, r7, r1 // icount 1934
sle r4, r3, r1 // icount 1935
seq r5, r3, r1 // icount 1936
ror r1, r2, r0 // icount 1937
sub r3, r3, r7 // icount 1938
sra r1, r1, r2 // icount 1939
sub r3, r5, r7 // icount 1940
sra r0, r2, r3 // icount 1941
or r2, r5, r2 // icount 1942
slt r6, r2, r5 // icount 1943
or r2, r1, r2 // icount 1944
sub r2, r0, r0 // icount 1945
rol r3, r7, r1 // icount 1946
or r5, r6, r0 // icount 1947
sra r6, r7, r4 // icount 1948
sra r7, r2, r6 // icount 1949
ror r7, r3, r3 // icount 1950
sll r6, r7, r5 // icount 1951
rol r1, r5, r4 // icount 1952
ror r6, r7, r6 // icount 1953
ror r2, r3, r1 // icount 1954
rol r4, r7, r1 // icount 1955
sle r4, r6, r6 // icount 1956
and r3, r4, r7 // icount 1957
sll r1, r1, r0 // icount 1958
sra r4, r2, r3 // icount 1959
ror r5, r5, r6 // icount 1960
and r5, r7, r4 // icount 1961
sub r7, r7, r7 // icount 1962
seq r3, r3, r5 // icount 1963
rol r2, r5, r5 // icount 1964
sra r3, r1, r4 // icount 1965
add r5, r0, r7 // icount 1966
seq r7, r0, r6 // icount 1967
sll r6, r2, r0 // icount 1968
and r4, r3, r7 // icount 1969
add r1, r6, r0 // icount 1970
ror r1, r6, r2 // icount 1971
add r2, r2, r5 // icount 1972
sle r2, r6, r3 // icount 1973
seq r0, r6, r4 // icount 1974
or r2, r3, r2 // icount 1975
sub r0, r6, r2 // icount 1976
sll r4, r6, r7 // icount 1977
or r2, r1, r6 // icount 1978
sub r2, r0, r6 // icount 1979
sra r6, r5, r0 // icount 1980
and r2, r6, r1 // icount 1981
and r4, r0, r4 // icount 1982
sll r5, r5, r5 // icount 1983
sra r2, r4, r0 // icount 1984
and r7, r6, r3 // icount 1985
ror r3, r1, r0 // icount 1986
slt r1, r6, r5 // icount 1987
sra r0, r3, r6 // icount 1988
sco r6, r0, r5 // icount 1989
sco r0, r2, r6 // icount 1990
.rlabel_67:
beqz r0, .rlabel_68 // icount 1991
add r0, r4, r4 // icount 1992
ror r3, r3, r5 // icount 1993
ror r2, r5, r3 // icount 1994
sra r4, r0, r0 // icount 1995
sra r7, r5, r6 // icount 1996
sco r6, r7, r4 // icount 1997
or r1, r6, r0 // icount 1998
sub r4, r6, r0 // icount 1999
sco r6, r1, r4 // icount 2000
.rlabel_68:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_69 // icount 2001
slt r0, r5, r2 // icount 2002
slt r7, r4, r6 // icount 2003
sle r0, r5, r5 // icount 2004
sco r5, r6, r4 // icount 2005
add r2, r1, r1 // icount 2006
rol r6, r0, r4 // icount 2007
sra r4, r7, r7 // icount 2008
seq r0, r5, r3 // icount 2009
or r7, r5, r0 // icount 2010
sle r2, r7, r4 // icount 2011
sco r2, r0, r7 // icount 2012
.rlabel_69:
beqz r0, .rlabel_70 // icount 2013
sle r4, r6, r0 // icount 2014
sub r1, r7, r0 // icount 2015
ror r6, r4, r4 // icount 2016
or r6, r5, r4 // icount 2017
or r5, r2, r0 // icount 2018
seq r4, r6, r7 // icount 2019
or r5, r3, r2 // icount 2020
rol r0, r5, r5 // icount 2021
seq r6, r0, r2 // icount 2022
seq r4, r4, r7 // icount 2023
add r7, r1, r4 // icount 2024
add r4, r4, r6 // icount 2025
add r3, r1, r4 // icount 2026
.rlabel_70:
j .rlabel_71 // icount 2027
sra r7, r4, r3 // icount 2028
rol r1, r6, r5 // icount 2029
sle r1, r6, r7 // icount 2030
slt r3, r6, r6 // icount 2031
sco r2, r0, r2 // icount 2032
sra r5, r1, r0 // icount 2033
add r1, r2, r1 // icount 2034
sco r2, r3, r5 // icount 2035
ror r5, r2, r1 // icount 2036
or r1, r4, r1 // icount 2037
sle r0, r2, r0 // icount 2038
seq r1, r4, r0 // icount 2039
sra r1, r4, r3 // icount 2040
slt r1, r3, r0 // icount 2041
add r5, r7, r5 // icount 2042
sra r5, r5, r6 // icount 2043
rol r0, r7, r7 // icount 2044
and r7, r2, r0 // icount 2045
sco r1, r5, r0 // icount 2046
sle r7, r6, r3 // icount 2047
sra r0, r4, r2 // icount 2048
sra r6, r5, r1 // icount 2049
sub r5, r1, r7 // icount 2050
or r0, r3, r0 // icount 2051
slt r4, r2, r7 // icount 2052
and r6, r2, r6 // icount 2053
sco r6, r6, r0 // icount 2054
seq r2, r4, r1 // icount 2055
or r6, r2, r4 // icount 2056
and r1, r6, r6 // icount 2057
and r6, r3, r3 // icount 2058
sle r6, r4, r6 // icount 2059
slt r2, r4, r5 // icount 2060
ror r3, r3, r1 // icount 2061
sll r0, r1, r1 // icount 2062
seq r5, r6, r5 // icount 2063
rol r1, r1, r0 // icount 2064
slt r2, r7, r2 // icount 2065
or r0, r1, r2 // icount 2066
seq r5, r2, r5 // icount 2067
seq r1, r0, r7 // icount 2068
sra r4, r7, r3 // icount 2069
or r4, r0, r0 // icount 2070
ror r6, r5, r1 // icount 2071
add r2, r7, r4 // icount 2072
sra r4, r7, r4 // icount 2073
sll r6, r5, r2 // icount 2074
ror r5, r3, r0 // icount 2075
sra r0, r5, r1 // icount 2076
slt r1, r0, r3 // icount 2077
add r1, r7, r5 // icount 2078
seq r7, r3, r0 // icount 2079
rol r0, r7, r4 // icount 2080
sll r5, r3, r1 // icount 2081
and r0, r4, r0 // icount 2082
sco r3, r4, r5 // icount 2083
sle r7, r5, r2 // icount 2084
ror r4, r2, r3 // icount 2085
or r2, r7, r4 // icount 2086
sra r3, r6, r4 // icount 2087
sle r5, r3, r0 // icount 2088
rol r0, r4, r0 // icount 2089
add r1, r4, r3 // icount 2090
rol r7, r7, r4 // icount 2091
sle r4, r6, r7 // icount 2092
sco r1, r7, r1 // icount 2093
sra r6, r0, r5 // icount 2094
sco r1, r0, r4 // icount 2095
rol r2, r2, r0 // icount 2096
add r6, r3, r5 // icount 2097
or r4, r4, r6 // icount 2098
seq r2, r7, r3 // icount 2099
sra r4, r6, r4 // icount 2100
ror r0, r4, r0 // icount 2101
sra r5, r1, r3 // icount 2102
sra r4, r0, r2 // icount 2103
ror r2, r5, r3 // icount 2104
ror r0, r0, r4 // icount 2105
ror r3, r3, r1 // icount 2106
rol r4, r7, r0 // icount 2107
.rlabel_71:
st r7, r6, 2
addi r6, r6, 2
jal .rlabel_72 // icount 2108
sra r3, r5, r0 // icount 2109
sco r2, r7, r1 // icount 2110
seq r5, r0, r2 // icount 2111
and r4, r2, r0 // icount 2112
or r6, r1, r2 // icount 2113
or r0, r4, r4 // icount 2114
sll r6, r5, r5 // icount 2115
sll r5, r6, r1 // icount 2116
or r6, r6, r0 // icount 2117
or r6, r0, r5 // icount 2118
seq r0, r1, r0 // icount 2119
add r5, r2, r1 // icount 2120
sle r6, r2, r1 // icount 2121
sle r5, r5, r1 // icount 2122
sle r5, r5, r1 // icount 2123
sub r3, r3, r0 // icount 2124
or r0, r2, r6 // icount 2125
slt r7, r2, r6 // icount 2126
slt r2, r0, r5 // icount 2127
add r4, r6, r0 // icount 2128
and r6, r6, r3 // icount 2129
rol r1, r4, r6 // icount 2130
rol r7, r1, r3 // icount 2131
.rlabel_72:
st r7, r6, 14
addi r6, r6, 14
bnez r1, .rlabel_73 // icount 2132
slt r6, r0, r0 // icount 2133
and r3, r3, r6 // icount 2134
sll r6, r3, r6 // icount 2135
and r6, r7, r4 // icount 2136
sub r5, r3, r3 // icount 2137
add r0, r5, r5 // icount 2138
sco r4, r0, r0 // icount 2139
sll r4, r1, r5 // icount 2140
sra r1, r2, r7 // icount 2141
sub r3, r2, r5 // icount 2142
slt r7, r4, r1 // icount 2143
.rlabel_73:
bnez r1, .rlabel_74 // icount 2144
rol r0, r7, r6 // icount 2145
or r4, r7, r1 // icount 2146
seq r2, r4, r2 // icount 2147
add r7, r3, r5 // icount 2148
or r2, r6, r4 // icount 2149
add r2, r7, r6 // icount 2150
add r4, r5, r7 // icount 2151
seq r0, r7, r3 // icount 2152
sco r3, r3, r2 // icount 2153
sco r7, r3, r0 // icount 2154
sco r2, r5, r5 // icount 2155
.rlabel_74:
st r7, r6, 12
addi r6, r6, 12
j .rlabel_75 // icount 2156
slt r3, r6, r1 // icount 2157
ror r7, r1, r3 // icount 2158
rol r0, r5, r2 // icount 2159
rol r2, r7, r2 // icount 2160
sub r3, r1, r4 // icount 2161
sll r2, r2, r5 // icount 2162
sle r3, r0, r0 // icount 2163
sra r6, r7, r1 // icount 2164
.rlabel_75:
st r7, r6, 6
addi r6, r6, 6
j .rlabel_76 // icount 2165
and r6, r0, r7 // icount 2166
sco r7, r7, r4 // icount 2167
sle r6, r7, r3 // icount 2168
sra r3, r5, r6 // icount 2169
or r6, r5, r0 // icount 2170
rol r0, r2, r5 // icount 2171
and r3, r3, r5 // icount 2172
sub r4, r5, r5 // icount 2173
sle r7, r7, r6 // icount 2174
seq r4, r6, r5 // icount 2175
sra r5, r5, r3 // icount 2176
sll r0, r2, r5 // icount 2177
sra r6, r0, r3 // icount 2178
slt r0, r7, r3 // icount 2179
sco r3, r7, r5 // icount 2180
sco r5, r4, r5 // icount 2181
slt r0, r7, r7 // icount 2182
ror r4, r7, r1 // icount 2183
ror r0, r1, r6 // icount 2184
sco r6, r1, r6 // icount 2185
sle r1, r0, r3 // icount 2186
or r0, r0, r1 // icount 2187
or r0, r5, r6 // icount 2188
ror r1, r1, r3 // icount 2189
sub r1, r2, r5 // icount 2190
sub r4, r7, r4 // icount 2191
seq r3, r6, r2 // icount 2192
add r0, r3, r7 // icount 2193
seq r3, r3, r4 // icount 2194
and r4, r6, r7 // icount 2195
sle r0, r7, r0 // icount 2196
and r6, r0, r4 // icount 2197
or r2, r7, r1 // icount 2198
slt r1, r6, r0 // icount 2199
add r1, r2, r2 // icount 2200
sle r0, r0, r6 // icount 2201
rol r0, r1, r1 // icount 2202
sco r6, r6, r1 // icount 2203
slt r2, r5, r7 // icount 2204
sll r4, r2, r3 // icount 2205
ror r5, r3, r1 // icount 2206
sco r0, r6, r1 // icount 2207
sll r3, r4, r5 // icount 2208
ror r2, r2, r7 // icount 2209
rol r0, r4, r0 // icount 2210
and r1, r7, r6 // icount 2211
sco r6, r3, r2 // icount 2212
sle r6, r0, r2 // icount 2213
sco r7, r5, r5 // icount 2214
rol r3, r1, r6 // icount 2215
sra r0, r5, r6 // icount 2216
and r7, r0, r1 // icount 2217
slt r0, r7, r0 // icount 2218
add r5, r7, r4 // icount 2219
sll r5, r6, r3 // icount 2220
or r5, r4, r6 // icount 2221
slt r3, r5, r3 // icount 2222
sra r3, r3, r3 // icount 2223
sco r0, r5, r2 // icount 2224
sco r5, r5, r3 // icount 2225
ror r4, r7, r7 // icount 2226
rol r5, r4, r6 // icount 2227
ror r2, r7, r2 // icount 2228
sco r0, r3, r6 // icount 2229
seq r4, r5, r3 // icount 2230
slt r5, r3, r3 // icount 2231
ror r6, r7, r3 // icount 2232
.rlabel_76:
j .rlabel_77 // icount 2233
sll r4, r2, r2 // icount 2234
or r1, r5, r7 // icount 2235
and r2, r3, r5 // icount 2236
ror r1, r7, r2 // icount 2237
sll r7, r7, r6 // icount 2238
and r1, r5, r0 // icount 2239
sub r7, r1, r4 // icount 2240
or r2, r2, r1 // icount 2241
sub r0, r4, r4 // icount 2242
sra r2, r1, r7 // icount 2243
ror r7, r2, r4 // icount 2244
ror r6, r1, r6 // icount 2245
or r1, r2, r7 // icount 2246
sll r2, r1, r2 // icount 2247
sco r3, r7, r3 // icount 2248
sll r2, r7, r4 // icount 2249
sco r2, r7, r1 // icount 2250
sco r3, r3, r0 // icount 2251
sll r2, r6, r3 // icount 2252
sra r0, r5, r1 // icount 2253
sll r6, r7, r6 // icount 2254
add r4, r3, r5 // icount 2255
rol r4, r3, r1 // icount 2256
seq r7, r4, r2 // icount 2257
add r7, r1, r3 // icount 2258
sle r1, r3, r4 // icount 2259
add r6, r4, r4 // icount 2260
sll r6, r2, r5 // icount 2261
and r5, r4, r3 // icount 2262
add r1, r3, r4 // icount 2263
sll r3, r2, r7 // icount 2264
sle r6, r0, r2 // icount 2265
sra r2, r2, r7 // icount 2266
.rlabel_77:
ld r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_78 // icount 2267
ror r0, r2, r2 // icount 2268
sco r3, r5, r1 // icount 2269
ror r4, r3, r5 // icount 2270
add r0, r2, r7 // icount 2271
sra r5, r6, r3 // icount 2272
and r0, r3, r0 // icount 2273
sco r5, r2, r1 // icount 2274
slt r2, r4, r5 // icount 2275
sle r0, r3, r1 // icount 2276
sra r5, r0, r1 // icount 2277
rol r7, r4, r7 // icount 2278
.rlabel_78:
ld r7, r6, 8
addi r6, r6, 8
bnez r1, .rlabel_79 // icount 2279
sub r2, r4, r4 // icount 2280
seq r0, r4, r0 // icount 2281
add r0, r4, r3 // icount 2282
sub r2, r1, r6 // icount 2283
rol r4, r7, r1 // icount 2284
.rlabel_79:
jal .rlabel_80 // icount 2285
sra r4, r6, r3 // icount 2286
seq r7, r2, r3 // icount 2287
sll r1, r6, r3 // icount 2288
sub r7, r4, r3 // icount 2289
rol r2, r3, r0 // icount 2290
rol r6, r3, r2 // icount 2291
add r7, r7, r4 // icount 2292
.rlabel_80:
jal .rlabel_81 // icount 2293
seq r2, r0, r5 // icount 2294
sco r2, r1, r1 // icount 2295
sco r3, r0, r4 // icount 2296
seq r1, r5, r6 // icount 2297
ror r0, r5, r2 // icount 2298
sle r4, r5, r2 // icount 2299
or r3, r7, r5 // icount 2300
and r2, r5, r4 // icount 2301
sra r4, r5, r7 // icount 2302
add r2, r1, r5 // icount 2303
add r5, r7, r5 // icount 2304
ror r5, r7, r2 // icount 2305
sub r7, r5, r4 // icount 2306
and r0, r7, r1 // icount 2307
.rlabel_81:
bnez r1, .rlabel_82 // icount 2308
add r0, r6, r2 // icount 2309
or r3, r6, r6 // icount 2310
ror r5, r1, r5 // icount 2311
ror r6, r0, r2 // icount 2312
sco r4, r7, r7 // icount 2313
and r5, r4, r2 // icount 2314
sll r4, r5, r1 // icount 2315
.rlabel_82:
jal .rlabel_83 // icount 2316
sub r7, r1, r6 // icount 2317
rol r4, r5, r7 // icount 2318
add r4, r2, r6 // icount 2319
sco r2, r5, r2 // icount 2320
rol r4, r3, r0 // icount 2321
rol r6, r4, r7 // icount 2322
seq r2, r3, r7 // icount 2323
rol r2, r2, r1 // icount 2324
and r4, r2, r7 // icount 2325
sra r5, r3, r2 // icount 2326
sco r5, r3, r1 // icount 2327
sco r7, r2, r1 // icount 2328
rol r0, r6, r3 // icount 2329
slt r2, r2, r2 // icount 2330
and r2, r1, r2 // icount 2331
sra r2, r4, r1 // icount 2332
sll r5, r4, r1 // icount 2333
or r5, r5, r1 // icount 2334
ror r4, r6, r4 // icount 2335
sle r0, r4, r2 // icount 2336
sco r2, r7, r0 // icount 2337
sll r2, r2, r3 // icount 2338
slt r4, r7, r7 // icount 2339
or r0, r2, r6 // icount 2340
.rlabel_83:
jal .rlabel_84 // icount 2341
and r6, r6, r4 // icount 2342
sll r0, r4, r2 // icount 2343
sle r4, r1, r3 // icount 2344
ror r3, r0, r0 // icount 2345
rol r7, r1, r2 // icount 2346
seq r1, r6, r5 // icount 2347
sco r3, r0, r5 // icount 2348
sub r0, r3, r5 // icount 2349
.rlabel_84:
bnez r1, .rlabel_85 // icount 2350
seq r7, r4, r4 // icount 2351
.rlabel_85:
j .rlabel_86 // icount 2352
rol r7, r3, r6 // icount 2353
sra r7, r3, r0 // icount 2354
sll r2, r1, r3 // icount 2355
ror r4, r2, r1 // icount 2356
slt r0, r1, r3 // icount 2357
sra r0, r2, r3 // icount 2358
sll r4, r6, r5 // icount 2359
ror r6, r2, r2 // icount 2360
sub r1, r3, r5 // icount 2361
sub r5, r4, r1 // icount 2362
rol r2, r2, r0 // icount 2363
seq r0, r4, r1 // icount 2364
add r0, r5, r2 // icount 2365
slt r6, r1, r2 // icount 2366
seq r6, r5, r4 // icount 2367
sle r4, r7, r7 // icount 2368
add r3, r7, r4 // icount 2369
sle r5, r6, r0 // icount 2370
slt r5, r4, r0 // icount 2371
sll r7, r3, r3 // icount 2372
ror r3, r4, r7 // icount 2373
slt r5, r4, r2 // icount 2374
sco r4, r3, r4 // icount 2375
and r2, r6, r0 // icount 2376
or r7, r5, r0 // icount 2377
sll r5, r2, r0 // icount 2378
seq r1, r6, r6 // icount 2379
sub r2, r5, r3 // icount 2380
sco r5, r6, r4 // icount 2381
and r4, r4, r7 // icount 2382
seq r0, r6, r7 // icount 2383
or r3, r7, r6 // icount 2384
or r2, r7, r3 // icount 2385
sll r2, r6, r2 // icount 2386
sle r3, r0, r1 // icount 2387
sco r4, r1, r4 // icount 2388
sco r2, r7, r7 // icount 2389
sco r7, r7, r4 // icount 2390
seq r6, r7, r4 // icount 2391
sll r5, r4, r2 // icount 2392
sub r1, r4, r5 // icount 2393
sle r7, r6, r6 // icount 2394
sle r5, r1, r4 // icount 2395
sub r6, r7, r1 // icount 2396
or r6, r7, r1 // icount 2397
or r4, r4, r5 // icount 2398
or r4, r5, r2 // icount 2399
add r3, r7, r7 // icount 2400
sll r2, r2, r0 // icount 2401
rol r2, r3, r5 // icount 2402
sll r6, r3, r0 // icount 2403
sub r5, r4, r5 // icount 2404
sub r3, r1, r6 // icount 2405
seq r6, r4, r4 // icount 2406
seq r6, r2, r0 // icount 2407
seq r1, r0, r6 // icount 2408
sll r3, r7, r2 // icount 2409
rol r1, r1, r5 // icount 2410
sle r6, r7, r1 // icount 2411
sub r4, r3, r2 // icount 2412
sub r4, r0, r4 // icount 2413
sll r4, r1, r6 // icount 2414
sll r3, r6, r7 // icount 2415
sub r1, r7, r6 // icount 2416
seq r5, r1, r7 // icount 2417
add r7, r6, r1 // icount 2418
sra r4, r4, r7 // icount 2419
add r5, r1, r1 // icount 2420
or r5, r3, r1 // icount 2421
sco r3, r1, r6 // icount 2422
sle r6, r4, r1 // icount 2423
sll r1, r1, r0 // icount 2424
and r5, r5, r0 // icount 2425
sra r0, r5, r1 // icount 2426
add r4, r0, r2 // icount 2427
sll r0, r1, r2 // icount 2428
sra r3, r1, r1 // icount 2429
seq r1, r1, r4 // icount 2430
sle r7, r3, r2 // icount 2431
sco r4, r3, r4 // icount 2432
sub r2, r2, r1 // icount 2433
seq r7, r3, r0 // icount 2434
rol r4, r6, r4 // icount 2435
sll r2, r0, r3 // icount 2436
sle r1, r3, r6 // icount 2437
sle r6, r1, r5 // icount 2438
and r4, r5, r3 // icount 2439
and r7, r4, r0 // icount 2440
and r2, r3, r3 // icount 2441
sle r1, r3, r2 // icount 2442
rol r6, r3, r2 // icount 2443
sll r6, r2, r4 // icount 2444
sco r6, r4, r6 // icount 2445
or r6, r7, r6 // icount 2446
sle r2, r3, r7 // icount 2447
or r6, r5, r6 // icount 2448
slt r0, r5, r4 // icount 2449
rol r3, r0, r7 // icount 2450
add r4, r5, r2 // icount 2451
and r1, r7, r0 // icount 2452
or r3, r6, r3 // icount 2453
sub r4, r3, r3 // icount 2454
sub r5, r1, r1 // icount 2455
or r7, r7, r6 // icount 2456
and r5, r3, r3 // icount 2457
ror r6, r2, r6 // icount 2458
sle r7, r1, r2 // icount 2459
ror r6, r1, r4 // icount 2460
rol r0, r5, r2 // icount 2461
rol r2, r6, r2 // icount 2462
sra r6, r6, r6 // icount 2463
or r3, r1, r2 // icount 2464
or r7, r1, r5 // icount 2465
seq r6, r7, r1 // icount 2466
ror r4, r2, r7 // icount 2467
seq r2, r7, r6 // icount 2468
ror r3, r6, r4 // icount 2469
or r0, r2, r3 // icount 2470
sub r3, r6, r6 // icount 2471
seq r1, r5, r3 // icount 2472
ror r3, r5, r0 // icount 2473
sra r6, r4, r3 // icount 2474
sll r1, r7, r0 // icount 2475
rol r3, r3, r5 // icount 2476
.rlabel_86:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_87 // icount 2477
slt r1, r7, r1 // icount 2478
add r5, r1, r4 // icount 2479
or r1, r5, r4 // icount 2480
sra r5, r2, r5 // icount 2481
ror r0, r3, r6 // icount 2482
seq r1, r2, r3 // icount 2483
and r3, r6, r5 // icount 2484
add r5, r3, r0 // icount 2485
sle r7, r2, r4 // icount 2486
and r1, r4, r7 // icount 2487
rol r1, r4, r0 // icount 2488
and r6, r3, r0 // icount 2489
slt r3, r6, r2 // icount 2490
slt r1, r7, r6 // icount 2491
or r3, r1, r4 // icount 2492
sra r4, r3, r1 // icount 2493
sll r5, r2, r7 // icount 2494
sub r5, r1, r2 // icount 2495
sco r0, r1, r4 // icount 2496
slt r6, r4, r1 // icount 2497
rol r2, r1, r1 // icount 2498
add r2, r6, r1 // icount 2499
sll r0, r7, r7 // icount 2500
sle r5, r1, r1 // icount 2501
sub r0, r6, r1 // icount 2502
sub r4, r6, r5 // icount 2503
seq r4, r2, r4 // icount 2504
ror r2, r4, r5 // icount 2505
slt r2, r4, r2 // icount 2506
slt r5, r4, r7 // icount 2507
add r5, r4, r4 // icount 2508
sle r4, r4, r5 // icount 2509
or r4, r3, r2 // icount 2510
slt r0, r3, r2 // icount 2511
sle r2, r5, r3 // icount 2512
sub r3, r2, r0 // icount 2513
seq r6, r3, r2 // icount 2514
rol r7, r7, r1 // icount 2515
or r6, r1, r5 // icount 2516
rol r2, r2, r5 // icount 2517
rol r2, r0, r1 // icount 2518
sub r2, r7, r4 // icount 2519
.rlabel_87:
ld r7, r6, 10
addi r6, r6, 10
jal .rlabel_88 // icount 2520
sll r0, r2, r0 // icount 2521
sll r0, r3, r1 // icount 2522
sco r0, r3, r1 // icount 2523
sub r0, r5, r6 // icount 2524
slt r2, r7, r0 // icount 2525
sra r5, r2, r4 // icount 2526
sub r7, r0, r3 // icount 2527
sle r2, r3, r4 // icount 2528
rol r2, r3, r4 // icount 2529
sub r1, r7, r2 // icount 2530
and r5, r2, r0 // icount 2531
or r4, r7, r4 // icount 2532
slt r7, r7, r4 // icount 2533
sco r7, r6, r5 // icount 2534
sub r7, r6, r3 // icount 2535
.rlabel_88:
jal .rlabel_89 // icount 2536
or r5, r0, r2 // icount 2537
sle r1, r4, r0 // icount 2538
slt r4, r0, r5 // icount 2539
seq r7, r3, r1 // icount 2540
sle r7, r2, r5 // icount 2541
sle r1, r7, r7 // icount 2542
sub r2, r7, r1 // icount 2543
sub r2, r6, r5 // icount 2544
rol r0, r6, r4 // icount 2545
rol r0, r3, r3 // icount 2546
add r5, r0, r0 // icount 2547
slt r2, r5, r2 // icount 2548
sub r0, r5, r6 // icount 2549
sll r2, r1, r6 // icount 2550
or r1, r1, r1 // icount 2551
and r7, r1, r5 // icount 2552
ror r4, r7, r4 // icount 2553
ror r0, r7, r0 // icount 2554
add r7, r3, r7 // icount 2555
ror r4, r4, r4 // icount 2556
and r6, r0, r2 // icount 2557
sle r5, r0, r5 // icount 2558
sle r2, r0, r2 // icount 2559
sle r0, r1, r3 // icount 2560
add r7, r4, r3 // icount 2561
add r6, r1, r3 // icount 2562
and r0, r0, r2 // icount 2563
.rlabel_89:
st r7, r6, 12
addi r6, r6, 12
j .rlabel_90 // icount 2564
sub r4, r4, r3 // icount 2565
sle r0, r6, r4 // icount 2566
sle r0, r1, r1 // icount 2567
sll r2, r4, r2 // icount 2568
sco r7, r4, r5 // icount 2569
and r4, r2, r3 // icount 2570
rol r0, r6, r5 // icount 2571
rol r6, r4, r2 // icount 2572
rol r1, r2, r1 // icount 2573
and r1, r4, r2 // icount 2574
sra r5, r4, r0 // icount 2575
and r2, r3, r1 // icount 2576
sub r5, r3, r3 // icount 2577
sco r7, r4, r3 // icount 2578
ror r3, r3, r5 // icount 2579
.rlabel_90:
st r7, r6, 10
addi r6, r6, 10
jal .rlabel_91 // icount 2580
rol r0, r3, r0 // icount 2581
or r3, r7, r5 // icount 2582
sll r5, r2, r5 // icount 2583
seq r0, r6, r2 // icount 2584
sco r1, r7, r6 // icount 2585
sub r2, r0, r5 // icount 2586
slt r2, r1, r3 // icount 2587
sra r2, r5, r0 // icount 2588
and r0, r0, r3 // icount 2589
and r3, r7, r7 // icount 2590
rol r7, r6, r5 // icount 2591
sle r1, r1, r4 // icount 2592
sle r4, r3, r5 // icount 2593
sle r2, r3, r1 // icount 2594
sco r0, r5, r0 // icount 2595
sra r7, r2, r7 // icount 2596
sco r2, r0, r0 // icount 2597
rol r2, r2, r1 // icount 2598
sra r3, r3, r0 // icount 2599
ror r6, r4, r0 // icount 2600
.rlabel_91:
jal .rlabel_92 // icount 2601
sle r0, r0, r3 // icount 2602
or r6, r2, r4 // icount 2603
or r4, r3, r6 // icount 2604
.rlabel_92:
ld r7, r6, 10
addi r6, r6, 10
bnez r1, .rlabel_93 // icount 2605
sco r3, r3, r5 // icount 2606
ror r6, r6, r6 // icount 2607
sll r2, r6, r3 // icount 2608
and r5, r6, r1 // icount 2609
or r0, r1, r5 // icount 2610
rol r6, r6, r4 // icount 2611
sub r4, r5, r2 // icount 2612
sub r0, r2, r0 // icount 2613
rol r4, r6, r7 // icount 2614
.rlabel_93:
j .rlabel_94 // icount 2615
sub r1, r0, r2 // icount 2616
seq r2, r1, r1 // icount 2617
sra r0, r6, r5 // icount 2618
ror r4, r1, r6 // icount 2619
and r6, r5, r3 // icount 2620
sco r4, r0, r3 // icount 2621
ror r5, r5, r0 // icount 2622
add r4, r3, r2 // icount 2623
slt r0, r5, r2 // icount 2624
sll r5, r0, r2 // icount 2625
ror r6, r7, r7 // icount 2626
and r1, r5, r1 // icount 2627
sco r4, r5, r7 // icount 2628
sco r4, r3, r3 // icount 2629
ror r7, r2, r2 // icount 2630
sub r3, r0, r6 // icount 2631
sra r5, r0, r1 // icount 2632
or r2, r2, r7 // icount 2633
sll r5, r3, r1 // icount 2634
seq r2, r1, r5 // icount 2635
ror r4, r5, r7 // icount 2636
and r1, r5, r1 // icount 2637
seq r7, r1, r5 // icount 2638
sle r1, r6, r4 // icount 2639
seq r1, r2, r4 // icount 2640
ror r0, r6, r0 // icount 2641
seq r2, r1, r7 // icount 2642
sra r4, r7, r0 // icount 2643
sle r0, r0, r4 // icount 2644
sll r0, r6, r7 // icount 2645
and r7, r4, r6 // icount 2646
and r5, r3, r3 // icount 2647
sub r4, r3, r7 // icount 2648
sll r1, r5, r0 // icount 2649
sra r7, r5, r0 // icount 2650
ror r2, r4, r1 // icount 2651
sle r3, r0, r2 // icount 2652
and r1, r6, r0 // icount 2653
sle r4, r7, r3 // icount 2654
ror r7, r6, r2 // icount 2655
or r7, r4, r1 // icount 2656
sub r7, r4, r6 // icount 2657
rol r1, r1, r5 // icount 2658
ror r5, r1, r3 // icount 2659
sco r1, r5, r0 // icount 2660
sra r1, r7, r3 // icount 2661
seq r7, r6, r4 // icount 2662
sub r2, r2, r4 // icount 2663
rol r0, r0, r4 // icount 2664
sra r6, r3, r3 // icount 2665
sle r3, r6, r4 // icount 2666
sub r3, r5, r1 // icount 2667
sll r2, r2, r1 // icount 2668
ror r3, r0, r2 // icount 2669
rol r4, r1, r7 // icount 2670
add r7, r2, r0 // icount 2671
or r6, r4, r1 // icount 2672
add r7, r7, r4 // icount 2673
sll r4, r4, r2 // icount 2674
sll r2, r7, r3 // icount 2675
sco r7, r7, r6 // icount 2676
sle r4, r7, r1 // icount 2677
slt r3, r7, r6 // icount 2678
slt r5, r5, r1 // icount 2679
sra r0, r7, r2 // icount 2680
or r1, r6, r6 // icount 2681
sll r5, r3, r0 // icount 2682
seq r2, r5, r5 // icount 2683
seq r2, r7, r0 // icount 2684
slt r5, r6, r0 // icount 2685
or r3, r5, r4 // icount 2686
sll r0, r3, r0 // icount 2687
or r6, r4, r4 // icount 2688
slt r4, r7, r7 // icount 2689
sle r0, r0, r4 // icount 2690
slt r0, r6, r6 // icount 2691
sco r6, r0, r4 // icount 2692
sll r3, r4, r2 // icount 2693
sll r7, r2, r2 // icount 2694
sub r5, r4, r7 // icount 2695
seq r2, r6, r5 // icount 2696
seq r5, r1, r4 // icount 2697
slt r7, r4, r0 // icount 2698
add r7, r6, r4 // icount 2699
sub r6, r3, r0 // icount 2700
sub r6, r3, r7 // icount 2701
.rlabel_94:
st r7, r6, 6
addi r6, r6, 6
j .rlabel_95 // icount 2702
sub r7, r3, r2 // icount 2703
and r6, r2, r6 // icount 2704
and r5, r5, r6 // icount 2705
sll r6, r1, r7 // icount 2706
sll r7, r3, r7 // icount 2707
sub r0, r7, r7 // icount 2708
sll r1, r2, r1 // icount 2709
sra r1, r4, r1 // icount 2710
seq r2, r7, r7 // icount 2711
ror r4, r2, r4 // icount 2712
and r1, r2, r3 // icount 2713
sub r7, r4, r5 // icount 2714
.rlabel_95:
bnez r1, .rlabel_96 // icount 2715
sll r1, r2, r5 // icount 2716
sle r1, r2, r7 // icount 2717
and r2, r1, r3 // icount 2718
sra r1, r7, r0 // icount 2719
or r1, r0, r2 // icount 2720
sll r0, r0, r0 // icount 2721
and r0, r3, r2 // icount 2722
sco r6, r0, r5 // icount 2723
seq r7, r6, r2 // icount 2724
sll r6, r6, r1 // icount 2725
or r3, r3, r7 // icount 2726
sll r7, r1, r4 // icount 2727
.rlabel_96:
beqz r0, .rlabel_97 // icount 2728
rol r4, r3, r5 // icount 2729
ror r1, r5, r4 // icount 2730
or r6, r4, r7 // icount 2731
sll r3, r2, r4 // icount 2732
.rlabel_97:
jal .rlabel_98 // icount 2733
sra r4, r0, r5 // icount 2734
add r3, r1, r6 // icount 2735
and r1, r3, r7 // icount 2736
seq r3, r1, r7 // icount 2737
sco r7, r1, r4 // icount 2738
sle r4, r7, r7 // icount 2739
ror r0, r7, r7 // icount 2740
slt r0, r5, r4 // icount 2741
ror r3, r2, r1 // icount 2742
sle r1, r3, r3 // icount 2743
and r1, r6, r5 // icount 2744
sco r2, r5, r0 // icount 2745
slt r4, r2, r5 // icount 2746
ror r5, r4, r6 // icount 2747
sco r5, r7, r3 // icount 2748
sub r7, r3, r7 // icount 2749
sra r7, r2, r4 // icount 2750
sco r0, r4, r7 // icount 2751
sub r6, r5, r1 // icount 2752
and r7, r1, r7 // icount 2753
.rlabel_98:
jal .rlabel_99 // icount 2754
add r0, r7, r1 // icount 2755
ror r0, r4, r3 // icount 2756
rol r1, r4, r0 // icount 2757
add r2, r2, r1 // icount 2758
add r6, r6, r6 // icount 2759
sle r7, r4, r6 // icount 2760
sra r4, r3, r7 // icount 2761
and r7, r6, r7 // icount 2762
slt r5, r5, r0 // icount 2763
sle r1, r2, r4 // icount 2764
sra r6, r2, r6 // icount 2765
rol r1, r0, r4 // icount 2766
sll r7, r6, r2 // icount 2767
sub r7, r6, r5 // icount 2768
seq r2, r4, r7 // icount 2769
sll r3, r3, r2 // icount 2770
seq r5, r4, r6 // icount 2771
rol r7, r7, r5 // icount 2772
sub r6, r3, r5 // icount 2773
seq r4, r6, r2 // icount 2774
slt r2, r0, r6 // icount 2775
add r5, r6, r5 // icount 2776
sra r3, r2, r2 // icount 2777
sra r1, r2, r6 // icount 2778
.rlabel_99:
addi r3, r3, -1 // icount 2779
beqz r3, .done // icount 2780
jr r5, 0 // icount 2781
.done:
halt // icount 2782
halt // icount 2783
