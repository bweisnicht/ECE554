// seed 4
lbi r0, 167 // icount 0
slbi r0, 145 // icount 1
lbi r1, 12 // icount 2
slbi r1, 187 // icount 3
lbi r2, 135 // icount 4
slbi r2, 166 // icount 5
lbi r3, 172 // icount 6
slbi r3, 218 // icount 7
lbi r4, 97 // icount 8
slbi r4, 58 // icount 9
lbi r5, 17 // icount 10
slbi r5, 59 // icount 11
lbi r6, 85 // icount 12
slbi r6, 121 // icount 13
lbi r7, 158 // icount 14
slbi r7, 72 // icount 15
lbi r0, 0 // icount 16
lbi r1, 1 // icount 17
lbi r2, -1 // icount 18
lbi r3, 1 // icount 19
andi r6, r6, 0xfe // icount 20
lbi r3, 3 // icount 21
lbi r5, 44 // icount 22
j .rlabel_0 // icount 23
add r4, r2, r0 // icount 24
rol r3, r0, r0 // icount 25
sco r6, r7, r5 // icount 26
add r5, r4, r3 // icount 27
or r4, r5, r3 // icount 28
add r2, r0, r0 // icount 29
sco r3, r7, r5 // icount 30
slt r2, r7, r1 // icount 31
sll r7, r2, r4 // icount 32
add r2, r1, r4 // icount 33
add r5, r1, r6 // icount 34
sle r0, r1, r3 // icount 35
sub r3, r7, r7 // icount 36
sub r3, r5, r0 // icount 37
add r3, r2, r0 // icount 38
sub r3, r3, r1 // icount 39
ror r3, r3, r4 // icount 40
.rlabel_0:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_1 // icount 41
sle r4, r5, r3 // icount 42
add r1, r2, r3 // icount 43
slt r6, r1, r5 // icount 44
sco r6, r3, r1 // icount 45
or r6, r3, r1 // icount 46
sub r2, r5, r6 // icount 47
sub r4, r2, r2 // icount 48
ror r4, r7, r2 // icount 49
add r3, r7, r0 // icount 50
add r2, r4, r7 // icount 51
and r7, r2, r6 // icount 52
or r1, r2, r3 // icount 53
and r3, r4, r5 // icount 54
rol r6, r5, r7 // icount 55
rol r1, r4, r5 // icount 56
sco r3, r1, r1 // icount 57
rol r7, r2, r3 // icount 58
sub r5, r2, r7 // icount 59
sle r4, r2, r5 // icount 60
sle r6, r7, r1 // icount 61
add r4, r5, r0 // icount 62
add r1, r0, r1 // icount 63
.rlabel_1:
st r7, r6, 8
addi r6, r6, 8
jal .rlabel_2 // icount 64
add r1, r1, r2 // icount 65
sco r7, r0, r3 // icount 66
sle r7, r6, r7 // icount 67
sle r2, r2, r6 // icount 68
sll r7, r3, r3 // icount 69
and r3, r3, r1 // icount 70
sra r4, r0, r0 // icount 71
sle r2, r4, r2 // icount 72
.rlabel_2:
j .rlabel_3 // icount 73
add r5, r3, r0 // icount 74
add r3, r4, r0 // icount 75
sll r5, r4, r2 // icount 76
slt r5, r6, r7 // icount 77
and r4, r1, r7 // icount 78
sco r1, r2, r0 // icount 79
seq r4, r6, r6 // icount 80
and r0, r7, r6 // icount 81
slt r1, r3, r2 // icount 82
.rlabel_3:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_4 // icount 83
sco r4, r7, r6 // icount 84
sco r2, r6, r7 // icount 85
.rlabel_4:
st r7, r6, 14
addi r6, r6, 14
jal .rlabel_5 // icount 86
.rlabel_5:
beqz r0, .rlabel_6 // icount 87
sll r3, r7, r2 // icount 88
ror r4, r4, r4 // icount 89
sco r0, r3, r7 // icount 90
add r6, r0, r5 // icount 91
sco r4, r2, r0 // icount 92
sle r1, r5, r4 // icount 93
slt r3, r3, r1 // icount 94
ror r1, r6, r7 // icount 95
rol r7, r2, r6 // icount 96
rol r6, r6, r7 // icount 97
slt r7, r7, r2 // icount 98
and r7, r7, r0 // icount 99
sco r5, r2, r5 // icount 100
.rlabel_6:
ld r7, r6, 6
addi r6, r6, 6
jal .rlabel_7 // icount 101
sll r4, r6, r6 // icount 102
sub r2, r1, r1 // icount 103
sle r4, r0, r6 // icount 104
slt r6, r6, r7 // icount 105
sco r1, r7, r7 // icount 106
seq r3, r5, r0 // icount 107
sra r7, r1, r2 // icount 108
or r1, r0, r5 // icount 109
add r6, r4, r7 // icount 110
ror r2, r4, r6 // icount 111
or r0, r1, r7 // icount 112
seq r4, r3, r4 // icount 113
sra r5, r5, r2 // icount 114
sll r0, r3, r0 // icount 115
or r3, r7, r0 // icount 116
seq r1, r7, r5 // icount 117
ror r5, r3, r1 // icount 118
ror r2, r1, r7 // icount 119
rol r3, r0, r6 // icount 120
sle r1, r2, r3 // icount 121
sra r7, r6, r4 // icount 122
sll r4, r5, r7 // icount 123
.rlabel_7:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_8 // icount 124
ror r5, r5, r4 // icount 125
slt r0, r3, r6 // icount 126
or r2, r5, r7 // icount 127
sra r5, r6, r2 // icount 128
sll r4, r4, r1 // icount 129
sra r4, r0, r7 // icount 130
sll r1, r5, r6 // icount 131
sra r5, r5, r7 // icount 132
ror r4, r2, r3 // icount 133
seq r1, r1, r3 // icount 134
sub r3, r2, r4 // icount 135
sub r2, r2, r1 // icount 136
slt r7, r4, r5 // icount 137
sll r5, r7, r4 // icount 138
add r1, r7, r6 // icount 139
.rlabel_8:
st r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_9 // icount 140
sll r3, r0, r6 // icount 141
sco r3, r5, r2 // icount 142
seq r6, r3, r1 // icount 143
.rlabel_9:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_10 // icount 144
sle r7, r5, r6 // icount 145
sll r6, r6, r1 // icount 146
sle r3, r6, r4 // icount 147
sll r7, r6, r6 // icount 148
sco r5, r2, r1 // icount 149
ror r6, r5, r1 // icount 150
rol r2, r5, r0 // icount 151
sll r5, r2, r7 // icount 152
seq r4, r0, r6 // icount 153
ror r1, r4, r0 // icount 154
add r2, r5, r0 // icount 155
sra r5, r0, r5 // icount 156
add r0, r7, r6 // icount 157
sle r2, r5, r5 // icount 158
sra r0, r6, r4 // icount 159
sra r2, r5, r7 // icount 160
sle r4, r1, r2 // icount 161
sco r3, r3, r3 // icount 162
sle r3, r1, r3 // icount 163
sll r0, r7, r3 // icount 164
add r4, r3, r4 // icount 165
sra r2, r3, r1 // icount 166
sub r1, r4, r6 // icount 167
ror r3, r0, r7 // icount 168
ror r5, r6, r1 // icount 169
sle r6, r5, r4 // icount 170
sco r6, r0, r2 // icount 171
seq r0, r5, r7 // icount 172
.rlabel_10:
st r7, r6, 8
addi r6, r6, 8
beqz r0, .rlabel_11 // icount 173
and r6, r0, r3 // icount 174
sra r0, r4, r2 // icount 175
seq r2, r2, r0 // icount 176
add r5, r7, r3 // icount 177
sub r6, r5, r5 // icount 178
slt r2, r4, r3 // icount 179
ror r5, r4, r7 // icount 180
seq r2, r1, r5 // icount 181
sra r7, r5, r5 // icount 182
and r4, r0, r6 // icount 183
.rlabel_11:
st r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_12 // icount 184
sll r3, r5, r2 // icount 185
sub r0, r2, r5 // icount 186
sll r0, r1, r6 // icount 187
sra r2, r0, r0 // icount 188
slt r5, r5, r0 // icount 189
sub r5, r6, r1 // icount 190
rol r7, r6, r0 // icount 191
sub r5, r2, r0 // icount 192
rol r7, r4, r4 // icount 193
rol r5, r3, r7 // icount 194
sco r1, r3, r0 // icount 195
.rlabel_12:
jal .rlabel_13 // icount 196
rol r0, r2, r1 // icount 197
seq r2, r6, r4 // icount 198
sco r2, r2, r0 // icount 199
slt r4, r2, r6 // icount 200
sra r0, r6, r2 // icount 201
sll r6, r5, r7 // icount 202
seq r0, r0, r2 // icount 203
ror r5, r5, r4 // icount 204
sle r6, r3, r5 // icount 205
or r7, r6, r2 // icount 206
sra r3, r2, r0 // icount 207
sub r2, r0, r7 // icount 208
.rlabel_13:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_14 // icount 209
sra r3, r7, r2 // icount 210
sub r6, r6, r3 // icount 211
ror r5, r2, r6 // icount 212
and r1, r5, r5 // icount 213
seq r6, r7, r3 // icount 214
sll r1, r5, r5 // icount 215
ror r5, r7, r7 // icount 216
ror r1, r2, r7 // icount 217
rol r7, r0, r6 // icount 218
ror r2, r3, r7 // icount 219
rol r7, r6, r3 // icount 220
sra r7, r3, r2 // icount 221
seq r0, r2, r0 // icount 222
sco r1, r7, r7 // icount 223
or r7, r3, r7 // icount 224
sco r0, r2, r1 // icount 225
sll r0, r5, r0 // icount 226
sub r5, r5, r3 // icount 227
add r6, r2, r0 // icount 228
sub r1, r7, r2 // icount 229
.rlabel_14:
ld r7, r6, 6
addi r6, r6, 6
j .rlabel_15 // icount 230
or r1, r3, r7 // icount 231
sle r0, r6, r7 // icount 232
rol r7, r2, r7 // icount 233
or r3, r1, r6 // icount 234
sub r2, r2, r4 // icount 235
sle r4, r5, r3 // icount 236
add r0, r1, r6 // icount 237
or r3, r2, r6 // icount 238
or r6, r7, r7 // icount 239
seq r6, r1, r4 // icount 240
sub r7, r7, r7 // icount 241
sle r5, r6, r1 // icount 242
or r6, r0, r3 // icount 243
slt r3, r3, r2 // icount 244
sco r3, r4, r2 // icount 245
sll r6, r3, r2 // icount 246
ror r3, r2, r0 // icount 247
and r7, r0, r1 // icount 248
ror r1, r3, r6 // icount 249
sle r0, r7, r0 // icount 250
sra r7, r7, r7 // icount 251
sco r1, r1, r1 // icount 252
rol r3, r4, r0 // icount 253
sco r4, r4, r5 // icount 254
sub r3, r6, r0 // icount 255
slt r3, r5, r5 // icount 256
ror r0, r5, r7 // icount 257
sle r2, r5, r1 // icount 258
add r3, r4, r4 // icount 259
sra r4, r0, r7 // icount 260
sco r3, r7, r7 // icount 261
ror r1, r6, r3 // icount 262
sra r0, r1, r3 // icount 263
or r3, r5, r7 // icount 264
rol r1, r7, r7 // icount 265
slt r2, r7, r1 // icount 266
add r4, r1, r0 // icount 267
sub r2, r5, r7 // icount 268
ror r5, r6, r3 // icount 269
sco r2, r4, r6 // icount 270
sle r0, r6, r7 // icount 271
sub r1, r4, r1 // icount 272
sra r4, r6, r1 // icount 273
rol r6, r4, r7 // icount 274
and r3, r2, r6 // icount 275
sll r1, r6, r5 // icount 276
sll r4, r7, r6 // icount 277
sub r0, r3, r3 // icount 278
sco r3, r7, r6 // icount 279
sll r2, r4, r6 // icount 280
sle r6, r6, r0 // icount 281
ror r7, r7, r6 // icount 282
sle r1, r6, r1 // icount 283
sco r1, r4, r6 // icount 284
add r3, r0, r4 // icount 285
and r0, r4, r3 // icount 286
ror r3, r0, r0 // icount 287
sra r2, r2, r3 // icount 288
sub r5, r6, r0 // icount 289
.rlabel_15:
j .rlabel_16 // icount 290
sra r3, r6, r2 // icount 291
add r6, r3, r7 // icount 292
rol r0, r3, r0 // icount 293
sra r2, r6, r5 // icount 294
slt r6, r7, r5 // icount 295
seq r6, r3, r0 // icount 296
add r1, r2, r3 // icount 297
ror r0, r4, r6 // icount 298
rol r7, r0, r1 // icount 299
sub r2, r2, r7 // icount 300
sco r2, r3, r2 // icount 301
ror r0, r6, r2 // icount 302
sub r1, r2, r7 // icount 303
sco r7, r1, r3 // icount 304
or r3, r7, r5 // icount 305
rol r0, r5, r1 // icount 306
sco r7, r6, r7 // icount 307
seq r4, r6, r0 // icount 308
sco r3, r7, r0 // icount 309
sle r4, r1, r7 // icount 310
and r1, r2, r6 // icount 311
seq r2, r6, r5 // icount 312
sll r6, r7, r2 // icount 313
seq r3, r7, r3 // icount 314
sll r1, r0, r6 // icount 315
and r1, r0, r7 // icount 316
sle r4, r0, r1 // icount 317
slt r5, r1, r7 // icount 318
sco r3, r6, r5 // icount 319
slt r3, r2, r3 // icount 320
add r1, r6, r2 // icount 321
and r6, r6, r3 // icount 322
seq r0, r4, r7 // icount 323
sub r0, r2, r5 // icount 324
rol r2, r2, r5 // icount 325
sll r3, r7, r0 // icount 326
and r3, r0, r6 // icount 327
sll r1, r2, r6 // icount 328
slt r3, r7, r7 // icount 329
slt r2, r7, r7 // icount 330
add r5, r6, r5 // icount 331
or r4, r7, r0 // icount 332
ror r6, r1, r1 // icount 333
or r1, r2, r3 // icount 334
seq r7, r4, r6 // icount 335
ror r7, r2, r1 // icount 336
seq r0, r0, r2 // icount 337
sra r7, r6, r2 // icount 338
sco r6, r6, r5 // icount 339
add r7, r5, r5 // icount 340
or r4, r4, r6 // icount 341
sub r7, r0, r4 // icount 342
sco r0, r2, r1 // icount 343
sra r3, r3, r1 // icount 344
seq r1, r1, r6 // icount 345
sra r6, r6, r7 // icount 346
or r5, r4, r3 // icount 347
sco r5, r1, r4 // icount 348
and r5, r6, r5 // icount 349
or r3, r2, r5 // icount 350
and r0, r6, r0 // icount 351
rol r4, r4, r3 // icount 352
seq r1, r6, r6 // icount 353
or r6, r2, r0 // icount 354
seq r1, r4, r4 // icount 355
rol r6, r6, r3 // icount 356
slt r7, r3, r2 // icount 357
sub r4, r1, r6 // icount 358
sub r2, r5, r6 // icount 359
sll r1, r4, r7 // icount 360
.rlabel_16:
ld r7, r6, 14
addi r6, r6, 14
bnez r1, .rlabel_17 // icount 361
sll r7, r0, r4 // icount 362
and r0, r7, r4 // icount 363
add r1, r4, r0 // icount 364
sra r3, r4, r4 // icount 365
sub r1, r7, r0 // icount 366
or r4, r0, r0 // icount 367
slt r0, r5, r5 // icount 368
.rlabel_17:
ld r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_18 // icount 369
sub r1, r7, r0 // icount 370
sra r6, r4, r5 // icount 371
rol r0, r0, r5 // icount 372
seq r7, r5, r7 // icount 373
rol r1, r4, r7 // icount 374
add r4, r6, r0 // icount 375
sra r2, r3, r0 // icount 376
and r7, r2, r4 // icount 377
rol r0, r7, r1 // icount 378
sra r0, r2, r7 // icount 379
add r1, r0, r5 // icount 380
slt r3, r2, r2 // icount 381
slt r0, r7, r5 // icount 382
sub r5, r5, r2 // icount 383
seq r5, r6, r0 // icount 384
.rlabel_18:
bnez r1, .rlabel_19 // icount 385
sub r2, r6, r0 // icount 386
ror r4, r2, r5 // icount 387
sub r1, r0, r6 // icount 388
sle r6, r3, r6 // icount 389
rol r5, r5, r4 // icount 390
slt r1, r5, r1 // icount 391
slt r5, r4, r0 // icount 392
.rlabel_19:
bnez r1, .rlabel_20 // icount 393
.rlabel_20:
bnez r1, .rlabel_21 // icount 394
add r1, r0, r1 // icount 395
add r7, r1, r6 // icount 396
add r1, r6, r5 // icount 397
sco r7, r5, r2 // icount 398
.rlabel_21:
st r7, r6, 12
addi r6, r6, 12
j .rlabel_22 // icount 399
or r1, r4, r1 // icount 400
or r3, r7, r5 // icount 401
seq r3, r4, r1 // icount 402
sra r6, r4, r0 // icount 403
add r0, r3, r0 // icount 404
seq r6, r7, r4 // icount 405
rol r6, r4, r2 // icount 406
add r3, r0, r4 // icount 407
sll r2, r5, r6 // icount 408
seq r1, r1, r5 // icount 409
slt r4, r4, r0 // icount 410
or r6, r6, r7 // icount 411
sra r0, r2, r3 // icount 412
ror r3, r7, r3 // icount 413
seq r0, r7, r5 // icount 414
seq r6, r0, r3 // icount 415
sll r5, r5, r2 // icount 416
seq r1, r1, r5 // icount 417
ror r2, r1, r0 // icount 418
and r7, r4, r3 // icount 419
sll r3, r7, r5 // icount 420
rol r5, r4, r0 // icount 421
sll r5, r3, r1 // icount 422
add r0, r2, r4 // icount 423
sco r6, r7, r4 // icount 424
sra r3, r5, r4 // icount 425
seq r1, r2, r1 // icount 426
seq r2, r3, r0 // icount 427
sra r4, r0, r2 // icount 428
rol r6, r1, r3 // icount 429
sle r2, r5, r2 // icount 430
seq r5, r2, r2 // icount 431
sll r1, r3, r4 // icount 432
and r0, r1, r2 // icount 433
sle r0, r0, r7 // icount 434
rol r4, r2, r3 // icount 435
sra r1, r2, r2 // icount 436
and r4, r5, r6 // icount 437
slt r1, r7, r6 // icount 438
rol r0, r1, r3 // icount 439
add r3, r1, r1 // icount 440
add r4, r0, r3 // icount 441
sle r6, r5, r6 // icount 442
sle r0, r1, r2 // icount 443
rol r1, r6, r1 // icount 444
and r1, r6, r1 // icount 445
add r6, r4, r4 // icount 446
seq r4, r3, r0 // icount 447
slt r6, r0, r3 // icount 448
sra r7, r5, r6 // icount 449
.rlabel_22:
ld r7, r6, 8
addi r6, r6, 8
jal .rlabel_23 // icount 450
slt r5, r6, r3 // icount 451
slt r5, r5, r1 // icount 452
sle r6, r1, r6 // icount 453
sle r1, r3, r7 // icount 454
or r6, r4, r5 // icount 455
sll r0, r7, r2 // icount 456
or r7, r2, r2 // icount 457
sra r5, r3, r7 // icount 458
or r6, r7, r2 // icount 459
sll r1, r7, r6 // icount 460
and r0, r2, r6 // icount 461
ror r3, r7, r6 // icount 462
and r3, r6, r4 // icount 463
.rlabel_23:
jal .rlabel_24 // icount 464
sll r7, r2, r4 // icount 465
sll r1, r1, r6 // icount 466
sra r4, r4, r4 // icount 467
sll r4, r2, r1 // icount 468
sco r7, r2, r3 // icount 469
sco r3, r2, r2 // icount 470
rol r5, r3, r3 // icount 471
sle r2, r5, r3 // icount 472
sra r5, r0, r7 // icount 473
sco r0, r3, r2 // icount 474
or r4, r0, r5 // icount 475
seq r0, r7, r2 // icount 476
and r3, r4, r5 // icount 477
sra r1, r1, r7 // icount 478
.rlabel_24:
jal .rlabel_25 // icount 479
sll r3, r4, r3 // icount 480
sub r5, r7, r1 // icount 481
or r4, r0, r7 // icount 482
slt r5, r0, r0 // icount 483
seq r7, r4, r1 // icount 484
sra r5, r3, r3 // icount 485
and r6, r7, r4 // icount 486
ror r2, r0, r7 // icount 487
slt r2, r1, r5 // icount 488
ror r2, r6, r0 // icount 489
slt r6, r3, r3 // icount 490
and r0, r4, r1 // icount 491
sle r5, r4, r1 // icount 492
ror r6, r5, r2 // icount 493
sra r1, r4, r4 // icount 494
or r3, r7, r6 // icount 495
sub r0, r7, r3 // icount 496
and r2, r5, r3 // icount 497
add r1, r1, r4 // icount 498
ror r6, r7, r2 // icount 499
sle r3, r3, r6 // icount 500
or r1, r3, r3 // icount 501
and r2, r6, r2 // icount 502
.rlabel_25:
jal .rlabel_26 // icount 503
add r3, r3, r1 // icount 504
sll r3, r4, r5 // icount 505
sco r1, r7, r1 // icount 506
sle r4, r6, r0 // icount 507
rol r4, r2, r3 // icount 508
add r0, r6, r1 // icount 509
ror r3, r0, r5 // icount 510
sle r4, r6, r0 // icount 511
add r2, r3, r2 // icount 512
sra r5, r5, r4 // icount 513
sco r4, r7, r5 // icount 514
sll r1, r1, r6 // icount 515
rol r7, r4, r7 // icount 516
.rlabel_26:
ld r7, r6, 6
addi r6, r6, 6
j .rlabel_27 // icount 517
ror r4, r5, r3 // icount 518
or r3, r3, r6 // icount 519
or r2, r1, r3 // icount 520
or r3, r2, r7 // icount 521
slt r1, r1, r5 // icount 522
sco r5, r2, r5 // icount 523
ror r6, r2, r3 // icount 524
ror r6, r1, r3 // icount 525
sub r0, r5, r5 // icount 526
sco r4, r0, r2 // icount 527
ror r4, r7, r6 // icount 528
ror r3, r7, r0 // icount 529
ror r5, r6, r5 // icount 530
and r5, r0, r1 // icount 531
ror r1, r3, r2 // icount 532
slt r2, r2, r7 // icount 533
sub r0, r6, r2 // icount 534
rol r2, r0, r0 // icount 535
add r2, r0, r7 // icount 536
ror r3, r3, r4 // icount 537
or r4, r0, r5 // icount 538
sub r7, r0, r1 // icount 539
slt r5, r2, r4 // icount 540
or r2, r5, r0 // icount 541
or r4, r7, r1 // icount 542
ror r3, r0, r4 // icount 543
and r1, r3, r0 // icount 544
add r1, r4, r3 // icount 545
or r1, r3, r0 // icount 546
sle r5, r0, r7 // icount 547
sco r4, r6, r1 // icount 548
sco r0, r7, r2 // icount 549
sll r6, r6, r5 // icount 550
and r5, r2, r1 // icount 551
sle r0, r7, r5 // icount 552
sra r0, r0, r7 // icount 553
add r0, r4, r7 // icount 554
rol r3, r5, r4 // icount 555
and r1, r5, r2 // icount 556
sub r2, r0, r2 // icount 557
ror r6, r2, r3 // icount 558
seq r4, r4, r4 // icount 559
seq r0, r3, r6 // icount 560
slt r1, r1, r2 // icount 561
sco r3, r0, r0 // icount 562
rol r4, r6, r2 // icount 563
sra r2, r3, r4 // icount 564
rol r4, r6, r2 // icount 565
sll r2, r1, r6 // icount 566
seq r6, r1, r7 // icount 567
or r1, r5, r3 // icount 568
slt r6, r2, r7 // icount 569
sll r6, r1, r4 // icount 570
or r4, r1, r4 // icount 571
add r7, r0, r6 // icount 572
sll r2, r7, r0 // icount 573
and r5, r5, r4 // icount 574
and r5, r1, r1 // icount 575
sco r5, r5, r0 // icount 576
sll r1, r5, r7 // icount 577
slt r5, r3, r4 // icount 578
sll r0, r6, r5 // icount 579
sub r6, r1, r3 // icount 580
rol r2, r0, r0 // icount 581
or r7, r0, r5 // icount 582
sco r7, r6, r1 // icount 583
sra r6, r1, r4 // icount 584
or r4, r3, r6 // icount 585
add r4, r6, r1 // icount 586
slt r3, r3, r5 // icount 587
seq r6, r3, r1 // icount 588
rol r6, r1, r5 // icount 589
seq r0, r2, r2 // icount 590
add r4, r4, r0 // icount 591
rol r7, r5, r3 // icount 592
slt r2, r2, r5 // icount 593
add r5, r4, r2 // icount 594
slt r7, r7, r3 // icount 595
sco r7, r0, r6 // icount 596
and r6, r0, r4 // icount 597
sra r0, r0, r3 // icount 598
rol r3, r2, r6 // icount 599
sub r4, r3, r0 // icount 600
sle r7, r3, r7 // icount 601
or r0, r6, r7 // icount 602
sle r4, r7, r1 // icount 603
slt r0, r6, r7 // icount 604
and r0, r5, r0 // icount 605
sra r2, r0, r6 // icount 606
sll r1, r1, r1 // icount 607
slt r6, r4, r4 // icount 608
sub r5, r1, r5 // icount 609
seq r1, r0, r0 // icount 610
ror r3, r1, r0 // icount 611
sra r5, r5, r0 // icount 612
sll r0, r4, r5 // icount 613
sra r5, r3, r7 // icount 614
ror r7, r2, r3 // icount 615
and r5, r2, r5 // icount 616
ror r1, r7, r0 // icount 617
sub r5, r1, r5 // icount 618
sub r6, r6, r7 // icount 619
seq r5, r7, r5 // icount 620
sra r6, r3, r7 // icount 621
seq r5, r3, r1 // icount 622
sle r5, r0, r7 // icount 623
add r7, r7, r5 // icount 624
rol r2, r5, r5 // icount 625
slt r5, r1, r2 // icount 626
.rlabel_27:
st r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_28 // icount 627
sco r0, r1, r6 // icount 628
sub r0, r7, r6 // icount 629
sle r7, r3, r5 // icount 630
rol r3, r1, r7 // icount 631
slt r2, r3, r7 // icount 632
sra r4, r6, r3 // icount 633
and r3, r1, r6 // icount 634
sco r0, r3, r0 // icount 635
seq r1, r4, r3 // icount 636
rol r7, r3, r1 // icount 637
.rlabel_28:
ld r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_29 // icount 638
or r7, r4, r6 // icount 639
sco r5, r1, r0 // icount 640
rol r5, r0, r1 // icount 641
ror r7, r6, r2 // icount 642
sra r3, r2, r5 // icount 643
sub r1, r2, r3 // icount 644
or r4, r2, r2 // icount 645
rol r3, r5, r5 // icount 646
.rlabel_29:
jal .rlabel_30 // icount 647
or r3, r4, r3 // icount 648
.rlabel_30:
beqz r0, .rlabel_31 // icount 649
seq r4, r2, r1 // icount 650
rol r6, r5, r1 // icount 651
ror r3, r6, r3 // icount 652
seq r2, r6, r1 // icount 653
sub r4, r3, r0 // icount 654
slt r2, r3, r1 // icount 655
add r3, r2, r5 // icount 656
or r6, r3, r5 // icount 657
or r3, r6, r5 // icount 658
or r2, r4, r1 // icount 659
sle r2, r5, r3 // icount 660
.rlabel_31:
ld r7, r6, 14
addi r6, r6, 14
j .rlabel_32 // icount 661
ror r0, r0, r1 // icount 662
sle r0, r3, r4 // icount 663
sle r5, r0, r7 // icount 664
or r3, r7, r3 // icount 665
sub r3, r7, r2 // icount 666
sra r4, r6, r4 // icount 667
ror r0, r0, r0 // icount 668
or r3, r4, r7 // icount 669
sle r1, r2, r5 // icount 670
.rlabel_32:
ld r7, r6, 12
addi r6, r6, 12
j .rlabel_33 // icount 671
sll r5, r0, r6 // icount 672
ror r5, r2, r6 // icount 673
ror r1, r4, r1 // icount 674
rol r5, r5, r4 // icount 675
sub r0, r6, r4 // icount 676
seq r0, r6, r3 // icount 677
add r5, r6, r7 // icount 678
sco r1, r6, r7 // icount 679
or r3, r4, r1 // icount 680
slt r5, r1, r0 // icount 681
ror r4, r4, r6 // icount 682
sle r4, r4, r4 // icount 683
add r6, r5, r0 // icount 684
sub r7, r7, r5 // icount 685
rol r0, r7, r5 // icount 686
sle r3, r2, r1 // icount 687
rol r3, r4, r1 // icount 688
sle r0, r2, r3 // icount 689
sco r6, r1, r5 // icount 690
rol r5, r6, r5 // icount 691
add r2, r6, r6 // icount 692
or r1, r3, r1 // icount 693
slt r4, r1, r3 // icount 694
ror r0, r0, r2 // icount 695
add r4, r1, r2 // icount 696
sll r7, r6, r5 // icount 697
.rlabel_33:
st r7, r6, 12
addi r6, r6, 12
jal .rlabel_34 // icount 698
sco r3, r0, r5 // icount 699
sle r2, r2, r0 // icount 700
sub r5, r5, r1 // icount 701
sco r6, r3, r7 // icount 702
sra r5, r4, r7 // icount 703
sco r6, r6, r6 // icount 704
sll r3, r7, r0 // icount 705
or r1, r6, r0 // icount 706
sll r4, r4, r4 // icount 707
seq r6, r7, r2 // icount 708
or r7, r2, r3 // icount 709
or r3, r5, r4 // icount 710
sco r1, r7, r7 // icount 711
sra r4, r5, r3 // icount 712
seq r5, r3, r0 // icount 713
or r7, r2, r4 // icount 714
add r2, r3, r6 // icount 715
sco r2, r7, r0 // icount 716
sll r5, r3, r3 // icount 717
rol r0, r5, r3 // icount 718
add r2, r4, r5 // icount 719
slt r6, r6, r7 // icount 720
sra r2, r2, r2 // icount 721
ror r3, r0, r0 // icount 722
sle r0, r7, r4 // icount 723
and r6, r2, r5 // icount 724
rol r3, r0, r6 // icount 725
and r3, r4, r2 // icount 726
add r0, r3, r5 // icount 727
rol r6, r4, r3 // icount 728
sra r1, r7, r1 // icount 729
.rlabel_34:
ld r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_35 // icount 730
sco r4, r0, r5 // icount 731
sll r1, r6, r7 // icount 732
sra r4, r4, r7 // icount 733
sll r3, r0, r3 // icount 734
and r7, r0, r4 // icount 735
rol r2, r2, r3 // icount 736
sle r2, r1, r6 // icount 737
rol r5, r3, r5 // icount 738
seq r0, r7, r4 // icount 739
.rlabel_35:
ld r7, r6, 14
addi r6, r6, 14
jal .rlabel_36 // icount 740
and r1, r6, r1 // icount 741
add r4, r4, r0 // icount 742
add r7, r3, r0 // icount 743
sra r2, r6, r6 // icount 744
slt r6, r7, r4 // icount 745
rol r1, r6, r2 // icount 746
rol r6, r7, r1 // icount 747
sub r3, r2, r7 // icount 748
and r0, r5, r6 // icount 749
seq r3, r1, r3 // icount 750
sll r0, r6, r6 // icount 751
sra r4, r0, r5 // icount 752
sra r5, r4, r2 // icount 753
or r1, r5, r0 // icount 754
sle r1, r6, r3 // icount 755
or r6, r7, r5 // icount 756
sub r3, r1, r7 // icount 757
.rlabel_36:
beqz r0, .rlabel_37 // icount 758
sub r7, r1, r0 // icount 759
sll r5, r7, r0 // icount 760
sll r3, r2, r7 // icount 761
rol r3, r3, r5 // icount 762
and r4, r3, r4 // icount 763
or r6, r4, r1 // icount 764
sco r5, r6, r3 // icount 765
seq r2, r5, r1 // icount 766
sle r3, r5, r5 // icount 767
.rlabel_37:
bnez r1, .rlabel_38 // icount 768
or r6, r4, r6 // icount 769
.rlabel_38:
bnez r1, .rlabel_39 // icount 770
or r3, r5, r7 // icount 771
ror r3, r6, r4 // icount 772
or r6, r2, r7 // icount 773
sll r7, r1, r4 // icount 774
or r7, r5, r2 // icount 775
ror r2, r5, r1 // icount 776
slt r1, r2, r0 // icount 777
sub r1, r3, r0 // icount 778
or r7, r1, r7 // icount 779
rol r0, r1, r5 // icount 780
sco r2, r6, r5 // icount 781
sle r7, r6, r4 // icount 782
.rlabel_39:
jal .rlabel_40 // icount 783
and r1, r3, r1 // icount 784
ror r2, r0, r6 // icount 785
sll r6, r4, r4 // icount 786
seq r3, r0, r2 // icount 787
add r1, r6, r2 // icount 788
sra r4, r1, r0 // icount 789
sra r1, r3, r5 // icount 790
sra r2, r4, r0 // icount 791
sub r7, r3, r1 // icount 792
slt r7, r4, r5 // icount 793
sll r6, r1, r1 // icount 794
rol r4, r0, r7 // icount 795
sub r4, r4, r1 // icount 796
or r2, r2, r1 // icount 797
rol r6, r7, r2 // icount 798
sll r5, r3, r2 // icount 799
and r7, r7, r3 // icount 800
add r4, r6, r2 // icount 801
rol r7, r6, r4 // icount 802
sra r6, r7, r7 // icount 803
sra r7, r1, r3 // icount 804
sco r3, r4, r1 // icount 805
and r1, r3, r6 // icount 806
ror r5, r5, r1 // icount 807
slt r3, r6, r6 // icount 808
seq r1, r3, r2 // icount 809
sco r6, r2, r2 // icount 810
slt r1, r6, r1 // icount 811
add r6, r4, r3 // icount 812
.rlabel_40:
bnez r1, .rlabel_41 // icount 813
sco r3, r4, r0 // icount 814
sco r1, r0, r6 // icount 815
or r2, r5, r6 // icount 816
or r6, r7, r7 // icount 817
or r2, r2, r7 // icount 818
sco r1, r6, r3 // icount 819
sll r1, r3, r1 // icount 820
sco r6, r3, r2 // icount 821
sle r2, r5, r6 // icount 822
rol r3, r3, r2 // icount 823
or r1, r5, r0 // icount 824
or r1, r3, r3 // icount 825
add r4, r3, r7 // icount 826
and r7, r0, r0 // icount 827
.rlabel_41:
j .rlabel_42 // icount 828
sco r0, r6, r1 // icount 829
rol r0, r0, r7 // icount 830
add r2, r3, r6 // icount 831
sll r6, r5, r0 // icount 832
rol r7, r0, r2 // icount 833
sco r3, r5, r4 // icount 834
sco r1, r3, r5 // icount 835
sco r2, r4, r2 // icount 836
or r6, r0, r5 // icount 837
seq r4, r3, r4 // icount 838
sub r7, r0, r7 // icount 839
ror r4, r2, r3 // icount 840
sub r7, r7, r6 // icount 841
seq r6, r2, r7 // icount 842
add r5, r7, r2 // icount 843
rol r7, r1, r6 // icount 844
rol r0, r1, r5 // icount 845
sco r3, r1, r5 // icount 846
sle r4, r7, r1 // icount 847
sra r1, r2, r0 // icount 848
add r3, r2, r5 // icount 849
ror r3, r4, r1 // icount 850
rol r0, r1, r6 // icount 851
or r7, r6, r3 // icount 852
sub r7, r1, r2 // icount 853
seq r6, r0, r7 // icount 854
sco r0, r5, r5 // icount 855
add r6, r6, r1 // icount 856
seq r5, r7, r2 // icount 857
ror r2, r2, r1 // icount 858
sub r0, r3, r7 // icount 859
seq r6, r6, r4 // icount 860
or r3, r1, r5 // icount 861
and r4, r7, r2 // icount 862
sll r6, r2, r5 // icount 863
rol r3, r2, r5 // icount 864
seq r5, r0, r6 // icount 865
sra r2, r4, r0 // icount 866
add r2, r2, r2 // icount 867
sra r3, r0, r5 // icount 868
sra r0, r6, r3 // icount 869
rol r7, r7, r5 // icount 870
or r2, r3, r5 // icount 871
sub r5, r0, r5 // icount 872
ror r5, r4, r1 // icount 873
sub r3, r5, r3 // icount 874
sub r1, r5, r7 // icount 875
sra r3, r4, r4 // icount 876
sub r7, r5, r0 // icount 877
sll r6, r2, r5 // icount 878
or r3, r0, r1 // icount 879
sll r3, r7, r0 // icount 880
sco r0, r2, r6 // icount 881
seq r5, r7, r7 // icount 882
sra r4, r0, r5 // icount 883
sra r0, r3, r5 // icount 884
sub r0, r6, r0 // icount 885
sra r2, r7, r7 // icount 886
slt r7, r1, r3 // icount 887
sub r2, r1, r2 // icount 888
slt r7, r3, r1 // icount 889
sll r1, r0, r7 // icount 890
sll r3, r6, r7 // icount 891
and r3, r4, r1 // icount 892
ror r2, r1, r0 // icount 893
slt r0, r4, r1 // icount 894
ror r7, r1, r6 // icount 895
and r2, r0, r0 // icount 896
sle r3, r7, r3 // icount 897
seq r3, r4, r5 // icount 898
sub r6, r7, r1 // icount 899
sub r5, r2, r2 // icount 900
or r0, r1, r0 // icount 901
sle r2, r1, r4 // icount 902
or r7, r6, r4 // icount 903
rol r6, r4, r1 // icount 904
sub r3, r4, r2 // icount 905
sub r0, r3, r4 // icount 906
rol r3, r7, r2 // icount 907
ror r6, r6, r0 // icount 908
sco r2, r7, r3 // icount 909
sll r1, r3, r5 // icount 910
ror r5, r7, r2 // icount 911
sle r3, r5, r0 // icount 912
sle r1, r4, r2 // icount 913
and r0, r1, r2 // icount 914
rol r2, r4, r1 // icount 915
and r2, r0, r1 // icount 916
add r4, r4, r6 // icount 917
or r4, r4, r0 // icount 918
sra r7, r1, r7 // icount 919
and r6, r6, r2 // icount 920
sub r0, r4, r5 // icount 921
slt r1, r1, r4 // icount 922
add r2, r3, r4 // icount 923
rol r1, r4, r6 // icount 924
and r1, r5, r0 // icount 925
seq r2, r5, r1 // icount 926
sle r6, r1, r0 // icount 927
sub r5, r0, r7 // icount 928
ror r2, r5, r2 // icount 929
sco r1, r6, r1 // icount 930
sra r0, r1, r6 // icount 931
sra r1, r0, r0 // icount 932
rol r6, r2, r3 // icount 933
rol r5, r6, r1 // icount 934
sub r2, r4, r5 // icount 935
slt r7, r6, r4 // icount 936
ror r2, r6, r6 // icount 937
sra r2, r6, r1 // icount 938
sle r7, r5, r5 // icount 939
sll r1, r4, r6 // icount 940
sub r5, r0, r1 // icount 941
or r5, r3, r4 // icount 942
sra r1, r0, r7 // icount 943
rol r1, r4, r6 // icount 944
add r2, r1, r4 // icount 945
add r7, r4, r3 // icount 946
add r5, r4, r6 // icount 947
sco r5, r3, r3 // icount 948
or r6, r4, r1 // icount 949
.rlabel_42:
st r7, r6, 6
addi r6, r6, 6
bnez r1, .rlabel_43 // icount 950
slt r5, r3, r2 // icount 951
sco r2, r5, r7 // icount 952
slt r6, r7, r0 // icount 953
sra r1, r6, r1 // icount 954
sra r4, r7, r0 // icount 955
or r3, r5, r6 // icount 956
seq r1, r6, r0 // icount 957
seq r1, r4, r5 // icount 958
seq r6, r1, r0 // icount 959
or r5, r4, r2 // icount 960
or r5, r4, r7 // icount 961
rol r2, r0, r5 // icount 962
rol r2, r0, r7 // icount 963
sra r2, r5, r7 // icount 964
.rlabel_43:
beqz r0, .rlabel_44 // icount 965
and r6, r7, r3 // icount 966
sub r4, r0, r7 // icount 967
sub r0, r5, r0 // icount 968
sub r2, r1, r3 // icount 969
sra r4, r3, r4 // icount 970
add r6, r6, r0 // icount 971
add r4, r0, r7 // icount 972
slt r4, r1, r2 // icount 973
sub r0, r4, r0 // icount 974
.rlabel_44:
ld r7, r6, 8
addi r6, r6, 8
jal .rlabel_45 // icount 975
slt r2, r0, r5 // icount 976
sll r6, r5, r6 // icount 977
sll r7, r5, r5 // icount 978
ror r1, r0, r6 // icount 979
sll r6, r5, r7 // icount 980
.rlabel_45:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_46 // icount 981
.rlabel_46:
bnez r1, .rlabel_47 // icount 982
sle r1, r3, r4 // icount 983
sll r0, r0, r3 // icount 984
and r5, r2, r1 // icount 985
sub r0, r5, r0 // icount 986
sll r0, r5, r5 // icount 987
sub r6, r1, r5 // icount 988
sco r4, r1, r5 // icount 989
add r2, r0, r2 // icount 990
ror r7, r3, r5 // icount 991
rol r0, r5, r1 // icount 992
sra r5, r3, r4 // icount 993
sco r1, r4, r4 // icount 994
.rlabel_47:
ld r7, r6, 6
addi r6, r6, 6
j .rlabel_48 // icount 995
sra r2, r7, r3 // icount 996
sco r0, r0, r7 // icount 997
sub r0, r3, r6 // icount 998
rol r4, r5, r5 // icount 999
sle r6, r1, r4 // icount 1000
or r0, r0, r6 // icount 1001
sco r0, r2, r5 // icount 1002
sle r6, r5, r4 // icount 1003
rol r4, r3, r6 // icount 1004
or r2, r3, r3 // icount 1005
slt r1, r3, r3 // icount 1006
slt r5, r0, r3 // icount 1007
ror r1, r7, r1 // icount 1008
sle r7, r0, r4 // icount 1009
sll r3, r6, r3 // icount 1010
slt r5, r7, r3 // icount 1011
or r0, r2, r1 // icount 1012
rol r3, r2, r0 // icount 1013
sll r0, r0, r4 // icount 1014
sll r4, r5, r1 // icount 1015
sra r6, r6, r7 // icount 1016
slt r3, r3, r7 // icount 1017
or r0, r4, r1 // icount 1018
sub r2, r2, r3 // icount 1019
sle r6, r7, r0 // icount 1020
sco r5, r2, r7 // icount 1021
or r1, r4, r5 // icount 1022
sle r2, r1, r4 // icount 1023
sll r6, r2, r7 // icount 1024
add r0, r2, r6 // icount 1025
ror r0, r3, r6 // icount 1026
sco r5, r1, r0 // icount 1027
sle r1, r4, r3 // icount 1028
sco r1, r3, r5 // icount 1029
sco r5, r4, r0 // icount 1030
rol r5, r3, r3 // icount 1031
slt r2, r2, r2 // icount 1032
sub r6, r0, r6 // icount 1033
sll r5, r4, r2 // icount 1034
sle r4, r6, r3 // icount 1035
slt r7, r7, r2 // icount 1036
ror r0, r3, r1 // icount 1037
sra r1, r5, r1 // icount 1038
sub r6, r3, r0 // icount 1039
ror r1, r1, r4 // icount 1040
sle r3, r6, r0 // icount 1041
or r5, r6, r4 // icount 1042
ror r7, r5, r6 // icount 1043
and r5, r6, r2 // icount 1044
ror r3, r0, r5 // icount 1045
sco r7, r4, r0 // icount 1046
and r7, r0, r6 // icount 1047
seq r0, r6, r3 // icount 1048
slt r3, r3, r5 // icount 1049
ror r3, r0, r7 // icount 1050
seq r0, r5, r7 // icount 1051
sll r5, r5, r7 // icount 1052
slt r7, r2, r3 // icount 1053
rol r5, r5, r6 // icount 1054
add r7, r2, r6 // icount 1055
seq r0, r4, r7 // icount 1056
or r3, r3, r1 // icount 1057
sle r3, r3, r0 // icount 1058
slt r4, r7, r2 // icount 1059
sco r2, r2, r4 // icount 1060
or r6, r7, r4 // icount 1061
sub r0, r7, r4 // icount 1062
sle r0, r5, r1 // icount 1063
slt r3, r2, r4 // icount 1064
sra r5, r2, r4 // icount 1065
add r0, r1, r7 // icount 1066
sco r6, r1, r5 // icount 1067
sle r0, r5, r4 // icount 1068
sra r2, r3, r1 // icount 1069
sle r3, r3, r6 // icount 1070
sll r2, r5, r1 // icount 1071
.rlabel_48:
beqz r0, .rlabel_49 // icount 1072
sub r6, r0, r3 // icount 1073
slt r3, r5, r2 // icount 1074
seq r5, r6, r6 // icount 1075
slt r2, r7, r2 // icount 1076
and r1, r3, r1 // icount 1077
seq r7, r4, r5 // icount 1078
sle r4, r0, r1 // icount 1079
and r2, r5, r5 // icount 1080
sle r3, r2, r7 // icount 1081
or r0, r3, r5 // icount 1082
.rlabel_49:
beqz r0, .rlabel_50 // icount 1083
sra r6, r1, r7 // icount 1084
add r5, r0, r3 // icount 1085
add r7, r0, r0 // icount 1086
sle r1, r7, r3 // icount 1087
rol r5, r0, r1 // icount 1088
and r1, r2, r6 // icount 1089
and r2, r6, r4 // icount 1090
.rlabel_50:
j .rlabel_51 // icount 1091
sub r2, r4, r0 // icount 1092
sub r5, r7, r7 // icount 1093
ror r0, r4, r2 // icount 1094
add r1, r7, r5 // icount 1095
add r1, r5, r6 // icount 1096
rol r5, r7, r3 // icount 1097
add r7, r0, r2 // icount 1098
ror r7, r7, r3 // icount 1099
rol r3, r0, r7 // icount 1100
slt r4, r5, r1 // icount 1101
rol r1, r2, r4 // icount 1102
add r5, r3, r5 // icount 1103
sra r6, r4, r3 // icount 1104
and r2, r4, r0 // icount 1105
and r4, r0, r6 // icount 1106
sra r0, r0, r5 // icount 1107
sra r7, r5, r7 // icount 1108
sco r1, r4, r3 // icount 1109
sub r0, r4, r5 // icount 1110
sub r6, r3, r6 // icount 1111
sco r3, r6, r0 // icount 1112
sll r4, r6, r1 // icount 1113
or r3, r6, r3 // icount 1114
ror r7, r7, r0 // icount 1115
and r2, r4, r7 // icount 1116
sll r4, r4, r7 // icount 1117
sll r5, r4, r1 // icount 1118
sle r6, r5, r0 // icount 1119
or r0, r7, r1 // icount 1120
or r3, r3, r1 // icount 1121
slt r1, r4, r3 // icount 1122
rol r4, r5, r6 // icount 1123
add r1, r5, r0 // icount 1124
sra r3, r5, r6 // icount 1125
slt r5, r4, r1 // icount 1126
sra r4, r5, r1 // icount 1127
sub r2, r5, r3 // icount 1128
sle r7, r7, r6 // icount 1129
add r0, r1, r2 // icount 1130
or r5, r4, r6 // icount 1131
or r1, r5, r4 // icount 1132
add r1, r0, r4 // icount 1133
ror r4, r5, r7 // icount 1134
and r4, r3, r5 // icount 1135
slt r3, r6, r3 // icount 1136
seq r5, r6, r7 // icount 1137
sub r5, r6, r0 // icount 1138
rol r7, r7, r4 // icount 1139
sra r3, r7, r2 // icount 1140
or r5, r4, r0 // icount 1141
.rlabel_51:
beqz r0, .rlabel_52 // icount 1142
sco r0, r3, r5 // icount 1143
sub r0, r3, r1 // icount 1144
sub r4, r0, r2 // icount 1145
ror r6, r3, r2 // icount 1146
add r6, r6, r3 // icount 1147
sub r3, r0, r1 // icount 1148
add r7, r1, r2 // icount 1149
.rlabel_52:
ld r7, r6, 6
addi r6, r6, 6
jal .rlabel_53 // icount 1150
sra r2, r5, r2 // icount 1151
rol r6, r0, r4 // icount 1152
or r4, r3, r2 // icount 1153
add r5, r0, r4 // icount 1154
sub r3, r5, r1 // icount 1155
ror r7, r5, r3 // icount 1156
add r6, r6, r0 // icount 1157
sll r0, r1, r5 // icount 1158
sra r4, r4, r3 // icount 1159
sll r0, r7, r3 // icount 1160
sub r0, r7, r6 // icount 1161
sra r3, r0, r0 // icount 1162
sco r3, r5, r2 // icount 1163
sub r4, r3, r3 // icount 1164
sco r2, r1, r7 // icount 1165
sco r7, r6, r7 // icount 1166
or r2, r4, r2 // icount 1167
add r2, r4, r6 // icount 1168
ror r6, r5, r1 // icount 1169
and r6, r3, r7 // icount 1170
sub r0, r3, r5 // icount 1171
.rlabel_53:
st r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_54 // icount 1172
add r0, r6, r6 // icount 1173
add r6, r7, r5 // icount 1174
sco r5, r6, r0 // icount 1175
seq r1, r7, r0 // icount 1176
add r5, r5, r5 // icount 1177
sle r4, r7, r2 // icount 1178
seq r4, r1, r1 // icount 1179
rol r5, r5, r2 // icount 1180
sle r3, r7, r3 // icount 1181
sra r0, r2, r0 // icount 1182
sll r4, r6, r7 // icount 1183
sco r3, r6, r4 // icount 1184
and r7, r2, r2 // icount 1185
seq r3, r3, r3 // icount 1186
.rlabel_54:
ld r7, r6, 4
addi r6, r6, 4
jal .rlabel_55 // icount 1187
slt r2, r4, r1 // icount 1188
sle r0, r6, r0 // icount 1189
sub r0, r2, r1 // icount 1190
rol r4, r1, r5 // icount 1191
seq r6, r4, r1 // icount 1192
add r2, r3, r1 // icount 1193
and r2, r7, r4 // icount 1194
add r7, r5, r2 // icount 1195
or r5, r2, r3 // icount 1196
sll r1, r4, r2 // icount 1197
sle r3, r0, r1 // icount 1198
sub r4, r0, r5 // icount 1199
or r4, r7, r5 // icount 1200
seq r2, r0, r0 // icount 1201
sco r3, r3, r5 // icount 1202
rol r0, r6, r0 // icount 1203
and r3, r2, r6 // icount 1204
sco r6, r1, r4 // icount 1205
sle r3, r3, r4 // icount 1206
seq r0, r2, r4 // icount 1207
add r7, r7, r6 // icount 1208
or r6, r3, r7 // icount 1209
ror r2, r4, r6 // icount 1210
.rlabel_55:
st r7, r6, 14
addi r6, r6, 14
jal .rlabel_56 // icount 1211
sra r3, r1, r6 // icount 1212
or r3, r4, r5 // icount 1213
sco r6, r2, r7 // icount 1214
sub r1, r0, r1 // icount 1215
or r2, r4, r6 // icount 1216
sco r6, r0, r7 // icount 1217
sub r1, r1, r4 // icount 1218
add r0, r7, r6 // icount 1219
seq r6, r0, r1 // icount 1220
sco r7, r7, r6 // icount 1221
sub r6, r1, r4 // icount 1222
ror r6, r7, r0 // icount 1223
sco r7, r4, r6 // icount 1224
slt r3, r3, r4 // icount 1225
slt r0, r3, r5 // icount 1226
sll r3, r7, r6 // icount 1227
and r4, r5, r5 // icount 1228
sll r1, r4, r3 // icount 1229
add r1, r0, r6 // icount 1230
ror r4, r4, r5 // icount 1231
sll r1, r6, r3 // icount 1232
sra r4, r5, r3 // icount 1233
sle r7, r0, r4 // icount 1234
sra r3, r0, r7 // icount 1235
sub r4, r4, r4 // icount 1236
or r1, r0, r6 // icount 1237
add r4, r1, r2 // icount 1238
rol r4, r1, r1 // icount 1239
sle r5, r3, r7 // icount 1240
sub r5, r0, r3 // icount 1241
.rlabel_56:
jal .rlabel_57 // icount 1242
or r1, r7, r5 // icount 1243
sle r7, r4, r7 // icount 1244
sco r5, r0, r2 // icount 1245
sco r4, r4, r7 // icount 1246
sle r4, r1, r6 // icount 1247
sco r0, r4, r7 // icount 1248
sco r5, r5, r1 // icount 1249
rol r3, r5, r1 // icount 1250
seq r0, r1, r4 // icount 1251
slt r4, r5, r0 // icount 1252
.rlabel_57:
st r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_58 // icount 1253
.rlabel_58:
jal .rlabel_59 // icount 1254
slt r6, r0, r5 // icount 1255
sll r6, r1, r1 // icount 1256
seq r5, r3, r2 // icount 1257
seq r0, r2, r0 // icount 1258
sle r3, r2, r5 // icount 1259
slt r2, r1, r1 // icount 1260
sco r3, r3, r4 // icount 1261
slt r6, r4, r4 // icount 1262
and r3, r6, r7 // icount 1263
sco r0, r6, r5 // icount 1264
sle r6, r7, r4 // icount 1265
or r7, r1, r7 // icount 1266
sub r0, r6, r0 // icount 1267
and r0, r3, r7 // icount 1268
sll r7, r5, r7 // icount 1269
ror r2, r0, r0 // icount 1270
sll r2, r1, r4 // icount 1271
sra r5, r3, r0 // icount 1272
and r0, r1, r1 // icount 1273
sll r6, r0, r0 // icount 1274
sco r6, r7, r6 // icount 1275
slt r3, r2, r7 // icount 1276
seq r3, r3, r5 // icount 1277
slt r3, r3, r2 // icount 1278
rol r6, r5, r3 // icount 1279
and r6, r3, r5 // icount 1280
rol r3, r1, r3 // icount 1281
.rlabel_59:
beqz r0, .rlabel_60 // icount 1282
sco r5, r5, r7 // icount 1283
sco r5, r6, r2 // icount 1284
and r5, r3, r7 // icount 1285
add r5, r0, r7 // icount 1286
seq r5, r1, r5 // icount 1287
sle r4, r0, r7 // icount 1288
sll r5, r2, r7 // icount 1289
.rlabel_60:
beqz r0, .rlabel_61 // icount 1290
sll r5, r4, r3 // icount 1291
rol r4, r2, r6 // icount 1292
ror r7, r4, r6 // icount 1293
sle r3, r2, r6 // icount 1294
.rlabel_61:
ld r7, r6, 4
addi r6, r6, 4
j .rlabel_62 // icount 1295
rol r3, r0, r2 // icount 1296
sll r5, r7, r5 // icount 1297
sco r2, r0, r2 // icount 1298
sub r5, r3, r3 // icount 1299
or r2, r7, r7 // icount 1300
rol r0, r2, r1 // icount 1301
rol r1, r6, r1 // icount 1302
ror r5, r5, r5 // icount 1303
sra r7, r4, r1 // icount 1304
or r3, r2, r3 // icount 1305
slt r7, r4, r1 // icount 1306
sra r5, r5, r0 // icount 1307
sll r0, r1, r6 // icount 1308
slt r1, r3, r1 // icount 1309
sle r6, r3, r6 // icount 1310
or r0, r3, r5 // icount 1311
sco r3, r4, r7 // icount 1312
sll r7, r4, r4 // icount 1313
and r1, r2, r4 // icount 1314
seq r6, r0, r5 // icount 1315
and r7, r1, r7 // icount 1316
or r2, r2, r7 // icount 1317
slt r1, r0, r7 // icount 1318
sub r1, r3, r4 // icount 1319
sub r5, r7, r1 // icount 1320
or r0, r0, r0 // icount 1321
and r2, r2, r5 // icount 1322
sra r0, r5, r2 // icount 1323
sra r5, r7, r0 // icount 1324
rol r3, r3, r3 // icount 1325
sra r6, r4, r3 // icount 1326
sco r4, r7, r4 // icount 1327
sll r5, r3, r2 // icount 1328
or r7, r2, r0 // icount 1329
ror r4, r1, r3 // icount 1330
and r2, r7, r1 // icount 1331
sll r3, r3, r2 // icount 1332
sll r3, r5, r7 // icount 1333
sco r7, r7, r4 // icount 1334
ror r7, r1, r6 // icount 1335
sll r7, r0, r5 // icount 1336
sub r1, r3, r4 // icount 1337
and r7, r5, r6 // icount 1338
or r3, r0, r3 // icount 1339
sra r4, r1, r3 // icount 1340
.rlabel_62:
beqz r0, .rlabel_63 // icount 1341
or r0, r0, r7 // icount 1342
sle r3, r6, r2 // icount 1343
sra r2, r3, r6 // icount 1344
or r4, r0, r5 // icount 1345
slt r7, r0, r1 // icount 1346
.rlabel_63:
beqz r0, .rlabel_64 // icount 1347
add r6, r4, r3 // icount 1348
slt r2, r2, r1 // icount 1349
and r0, r2, r5 // icount 1350
sle r1, r3, r5 // icount 1351
sco r7, r6, r7 // icount 1352
slt r4, r1, r2 // icount 1353
add r3, r7, r5 // icount 1354
sle r2, r1, r2 // icount 1355
sco r6, r4, r1 // icount 1356
sub r1, r1, r0 // icount 1357
ror r1, r5, r4 // icount 1358
.rlabel_64:
ld r7, r6, 14
addi r6, r6, 14
jal .rlabel_65 // icount 1359
seq r3, r6, r6 // icount 1360
rol r3, r0, r2 // icount 1361
sub r2, r3, r2 // icount 1362
and r2, r5, r4 // icount 1363
add r7, r1, r5 // icount 1364
.rlabel_65:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_66 // icount 1365
or r6, r3, r4 // icount 1366
add r2, r3, r5 // icount 1367
sra r6, r3, r0 // icount 1368
ror r3, r4, r6 // icount 1369
rol r0, r1, r4 // icount 1370
.rlabel_66:
ld r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_67 // icount 1371
seq r1, r0, r7 // icount 1372
and r4, r0, r4 // icount 1373
seq r0, r0, r5 // icount 1374
sll r0, r5, r2 // icount 1375
add r0, r6, r0 // icount 1376
.rlabel_67:
st r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_68 // icount 1377
slt r2, r0, r1 // icount 1378
and r1, r7, r4 // icount 1379
sub r4, r0, r0 // icount 1380
sco r2, r2, r4 // icount 1381
sle r6, r6, r1 // icount 1382
slt r0, r1, r3 // icount 1383
sle r4, r7, r7 // icount 1384
.rlabel_68:
jal .rlabel_69 // icount 1385
sra r3, r6, r2 // icount 1386
seq r5, r1, r7 // icount 1387
rol r2, r7, r1 // icount 1388
sle r0, r0, r7 // icount 1389
and r3, r2, r7 // icount 1390
and r7, r0, r1 // icount 1391
add r4, r7, r0 // icount 1392
slt r2, r1, r5 // icount 1393
seq r6, r1, r4 // icount 1394
sll r3, r1, r7 // icount 1395
seq r7, r6, r2 // icount 1396
sra r0, r0, r5 // icount 1397
and r6, r0, r7 // icount 1398
sub r3, r3, r3 // icount 1399
rol r4, r7, r0 // icount 1400
sll r6, r1, r0 // icount 1401
or r4, r5, r4 // icount 1402
.rlabel_69:
st r7, r6, 4
addi r6, r6, 4
j .rlabel_70 // icount 1403
slt r7, r1, r4 // icount 1404
seq r1, r4, r4 // icount 1405
slt r7, r6, r7 // icount 1406
sco r6, r6, r4 // icount 1407
sub r6, r6, r5 // icount 1408
and r4, r1, r4 // icount 1409
sra r0, r6, r1 // icount 1410
rol r5, r7, r1 // icount 1411
and r0, r4, r4 // icount 1412
sub r1, r7, r3 // icount 1413
rol r2, r2, r5 // icount 1414
add r6, r5, r6 // icount 1415
add r1, r5, r3 // icount 1416
sra r7, r1, r6 // icount 1417
sco r3, r7, r0 // icount 1418
ror r1, r4, r0 // icount 1419
sco r3, r3, r1 // icount 1420
or r5, r1, r2 // icount 1421
slt r3, r3, r4 // icount 1422
rol r0, r4, r5 // icount 1423
seq r2, r4, r1 // icount 1424
add r6, r2, r2 // icount 1425
sll r1, r0, r1 // icount 1426
sub r6, r1, r6 // icount 1427
seq r7, r6, r0 // icount 1428
sco r1, r6, r2 // icount 1429
sll r6, r3, r4 // icount 1430
sll r7, r3, r3 // icount 1431
sle r2, r1, r7 // icount 1432
seq r0, r5, r0 // icount 1433
and r2, r7, r6 // icount 1434
add r3, r7, r7 // icount 1435
sub r4, r4, r4 // icount 1436
sub r2, r4, r1 // icount 1437
slt r4, r1, r3 // icount 1438
.rlabel_70:
beqz r0, .rlabel_71 // icount 1439
add r4, r7, r0 // icount 1440
sll r0, r3, r5 // icount 1441
and r7, r0, r3 // icount 1442
slt r2, r3, r1 // icount 1443
sra r7, r0, r1 // icount 1444
sle r1, r7, r0 // icount 1445
or r6, r2, r7 // icount 1446
slt r5, r4, r6 // icount 1447
sll r5, r1, r7 // icount 1448
sub r2, r7, r3 // icount 1449
rol r6, r1, r0 // icount 1450
.rlabel_71:
ld r7, r6, 8
addi r6, r6, 8
jal .rlabel_72 // icount 1451
sle r6, r1, r5 // icount 1452
sco r7, r4, r7 // icount 1453
and r6, r6, r3 // icount 1454
sco r1, r4, r4 // icount 1455
sub r1, r5, r1 // icount 1456
slt r1, r4, r4 // icount 1457
and r2, r2, r0 // icount 1458
ror r6, r7, r3 // icount 1459
ror r1, r3, r4 // icount 1460
add r6, r5, r5 // icount 1461
and r4, r4, r5 // icount 1462
add r1, r7, r2 // icount 1463
slt r2, r0, r5 // icount 1464
sub r3, r4, r7 // icount 1465
sll r2, r4, r1 // icount 1466
sub r4, r4, r6 // icount 1467
add r5, r7, r7 // icount 1468
or r0, r1, r4 // icount 1469
seq r6, r0, r4 // icount 1470
rol r1, r0, r1 // icount 1471
and r7, r1, r6 // icount 1472
or r1, r4, r0 // icount 1473
add r7, r6, r2 // icount 1474
sco r2, r0, r7 // icount 1475
.rlabel_72:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_73 // icount 1476
or r2, r3, r0 // icount 1477
slt r5, r5, r6 // icount 1478
slt r4, r7, r4 // icount 1479
.rlabel_73:
ld r7, r6, 0
addi r6, r6, 0
j .rlabel_74 // icount 1480
or r2, r2, r1 // icount 1481
and r7, r1, r1 // icount 1482
or r2, r2, r0 // icount 1483
sle r0, r6, r0 // icount 1484
and r7, r4, r0 // icount 1485
and r3, r2, r4 // icount 1486
ror r0, r2, r1 // icount 1487
rol r0, r5, r1 // icount 1488
or r2, r0, r1 // icount 1489
sll r2, r3, r2 // icount 1490
sle r7, r0, r1 // icount 1491
add r7, r2, r1 // icount 1492
slt r2, r6, r7 // icount 1493
sco r3, r3, r7 // icount 1494
sll r2, r6, r7 // icount 1495
rol r2, r1, r2 // icount 1496
rol r4, r1, r1 // icount 1497
ror r7, r6, r1 // icount 1498
sll r4, r5, r2 // icount 1499
sll r0, r2, r7 // icount 1500
sll r6, r5, r2 // icount 1501
slt r2, r5, r2 // icount 1502
seq r3, r4, r6 // icount 1503
slt r1, r5, r7 // icount 1504
or r1, r0, r5 // icount 1505
or r3, r6, r0 // icount 1506
or r7, r6, r3 // icount 1507
ror r6, r1, r1 // icount 1508
sle r2, r3, r5 // icount 1509
seq r4, r4, r6 // icount 1510
sle r2, r0, r0 // icount 1511
ror r6, r1, r1 // icount 1512
slt r7, r4, r0 // icount 1513
rol r6, r5, r6 // icount 1514
and r4, r2, r2 // icount 1515
sub r6, r2, r7 // icount 1516
ror r7, r4, r0 // icount 1517
add r1, r2, r4 // icount 1518
or r0, r3, r5 // icount 1519
and r5, r4, r2 // icount 1520
or r1, r4, r4 // icount 1521
sle r7, r4, r4 // icount 1522
and r6, r6, r3 // icount 1523
seq r5, r3, r2 // icount 1524
sub r0, r3, r0 // icount 1525
sle r5, r4, r3 // icount 1526
slt r4, r5, r4 // icount 1527
sco r3, r3, r6 // icount 1528
add r6, r3, r4 // icount 1529
or r3, r7, r2 // icount 1530
slt r4, r7, r5 // icount 1531
seq r5, r2, r0 // icount 1532
sle r1, r4, r0 // icount 1533
sll r1, r0, r4 // icount 1534
ror r2, r4, r6 // icount 1535
or r1, r6, r7 // icount 1536
sub r4, r3, r2 // icount 1537
seq r2, r7, r0 // icount 1538
sco r1, r2, r5 // icount 1539
or r2, r1, r7 // icount 1540
sub r6, r1, r1 // icount 1541
rol r3, r2, r4 // icount 1542
or r2, r3, r5 // icount 1543
sll r2, r6, r5 // icount 1544
add r4, r0, r2 // icount 1545
or r3, r6, r5 // icount 1546
sco r2, r4, r7 // icount 1547
sll r0, r5, r5 // icount 1548
add r6, r3, r5 // icount 1549
sco r4, r4, r6 // icount 1550
sco r7, r4, r7 // icount 1551
sle r1, r4, r5 // icount 1552
rol r4, r5, r3 // icount 1553
sub r1, r2, r1 // icount 1554
and r4, r7, r6 // icount 1555
sub r0, r0, r1 // icount 1556
sco r4, r2, r2 // icount 1557
sle r0, r6, r0 // icount 1558
seq r1, r2, r6 // icount 1559
slt r7, r0, r5 // icount 1560
and r6, r3, r6 // icount 1561
sub r5, r5, r6 // icount 1562
seq r2, r5, r4 // icount 1563
or r0, r4, r1 // icount 1564
sle r2, r7, r2 // icount 1565
or r3, r7, r4 // icount 1566
seq r5, r1, r3 // icount 1567
sco r6, r6, r7 // icount 1568
add r7, r4, r6 // icount 1569
sco r6, r7, r6 // icount 1570
slt r2, r1, r7 // icount 1571
slt r7, r3, r1 // icount 1572
sra r1, r5, r5 // icount 1573
slt r7, r5, r1 // icount 1574
ror r5, r1, r3 // icount 1575
sub r5, r1, r6 // icount 1576
seq r3, r5, r4 // icount 1577
seq r2, r3, r1 // icount 1578
seq r0, r0, r4 // icount 1579
or r1, r2, r2 // icount 1580
add r4, r1, r0 // icount 1581
sub r0, r1, r7 // icount 1582
sco r4, r6, r6 // icount 1583
seq r6, r0, r4 // icount 1584
sco r0, r6, r2 // icount 1585
sra r6, r4, r5 // icount 1586
sle r0, r4, r6 // icount 1587
.rlabel_74:
beqz r0, .rlabel_75 // icount 1588
add r3, r5, r2 // icount 1589
sll r5, r0, r7 // icount 1590
slt r3, r6, r0 // icount 1591
sco r5, r2, r4 // icount 1592
sco r0, r0, r4 // icount 1593
sub r6, r6, r5 // icount 1594
and r6, r3, r2 // icount 1595
sco r1, r5, r5 // icount 1596
and r0, r6, r0 // icount 1597
add r4, r6, r0 // icount 1598
.rlabel_75:
bnez r1, .rlabel_76 // icount 1599
ror r4, r2, r7 // icount 1600
and r5, r3, r0 // icount 1601
seq r5, r4, r7 // icount 1602
seq r4, r5, r5 // icount 1603
ror r6, r4, r1 // icount 1604
.rlabel_76:
ld r7, r6, 12
addi r6, r6, 12
jal .rlabel_77 // icount 1605
rol r4, r7, r0 // icount 1606
add r0, r0, r4 // icount 1607
sub r1, r5, r0 // icount 1608
or r1, r2, r4 // icount 1609
and r7, r7, r2 // icount 1610
sub r4, r4, r1 // icount 1611
add r5, r5, r0 // icount 1612
add r5, r4, r3 // icount 1613
sll r0, r5, r1 // icount 1614
slt r3, r4, r6 // icount 1615
sra r6, r5, r2 // icount 1616
sra r3, r3, r3 // icount 1617
add r1, r0, r3 // icount 1618
sll r3, r1, r4 // icount 1619
or r3, r2, r6 // icount 1620
.rlabel_77:
st r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_78 // icount 1621
add r4, r3, r2 // icount 1622
ror r3, r3, r0 // icount 1623
sle r2, r5, r3 // icount 1624
add r4, r4, r5 // icount 1625
rol r7, r5, r6 // icount 1626
or r3, r0, r3 // icount 1627
sub r1, r0, r2 // icount 1628
sco r6, r2, r7 // icount 1629
or r2, r0, r2 // icount 1630
sra r1, r3, r7 // icount 1631
sra r0, r5, r1 // icount 1632
sco r1, r0, r6 // icount 1633
sle r1, r6, r4 // icount 1634
.rlabel_78:
ld r7, r6, 14
addi r6, r6, 14
bnez r1, .rlabel_79 // icount 1635
or r4, r0, r7 // icount 1636
slt r5, r4, r7 // icount 1637
rol r4, r2, r1 // icount 1638
add r3, r6, r7 // icount 1639
sco r0, r6, r3 // icount 1640
rol r5, r6, r1 // icount 1641
seq r5, r2, r7 // icount 1642
add r7, r3, r4 // icount 1643
.rlabel_79:
ld r7, r6, 4
addi r6, r6, 4
jal .rlabel_80 // icount 1644
sub r7, r2, r1 // icount 1645
and r3, r5, r7 // icount 1646
slt r6, r7, r1 // icount 1647
ror r1, r3, r1 // icount 1648
and r7, r2, r1 // icount 1649
slt r4, r5, r3 // icount 1650
sll r3, r4, r3 // icount 1651
sll r7, r5, r1 // icount 1652
and r3, r1, r5 // icount 1653
rol r5, r0, r5 // icount 1654
slt r4, r0, r4 // icount 1655
sle r6, r1, r2 // icount 1656
seq r1, r7, r5 // icount 1657
sub r2, r0, r5 // icount 1658
and r7, r5, r7 // icount 1659
and r2, r1, r7 // icount 1660
sco r7, r0, r3 // icount 1661
sub r2, r5, r2 // icount 1662
or r3, r6, r7 // icount 1663
slt r0, r5, r5 // icount 1664
sub r6, r2, r0 // icount 1665
sle r0, r1, r5 // icount 1666
add r3, r3, r3 // icount 1667
slt r6, r0, r0 // icount 1668
sll r2, r0, r0 // icount 1669
.rlabel_80:
bnez r1, .rlabel_81 // icount 1670
sle r3, r3, r2 // icount 1671
rol r5, r6, r2 // icount 1672
sle r5, r3, r0 // icount 1673
sll r2, r3, r6 // icount 1674
seq r3, r2, r6 // icount 1675
rol r7, r4, r5 // icount 1676
add r3, r6, r6 // icount 1677
sle r6, r2, r7 // icount 1678
rol r6, r7, r5 // icount 1679
or r5, r1, r2 // icount 1680
sra r2, r1, r1 // icount 1681
.rlabel_81:
st r7, r6, 4
addi r6, r6, 4
beqz r0, .rlabel_82 // icount 1682
add r0, r4, r6 // icount 1683
rol r4, r2, r0 // icount 1684
or r6, r0, r5 // icount 1685
and r4, r5, r2 // icount 1686
sub r0, r4, r4 // icount 1687
seq r0, r7, r2 // icount 1688
seq r2, r2, r3 // icount 1689
sub r5, r5, r0 // icount 1690
.rlabel_82:
ld r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_83 // icount 1691
.rlabel_83:
jal .rlabel_84 // icount 1692
or r0, r0, r5 // icount 1693
rol r0, r6, r4 // icount 1694
sra r2, r4, r0 // icount 1695
sra r1, r3, r4 // icount 1696
sll r1, r1, r0 // icount 1697
sle r3, r6, r6 // icount 1698
add r6, r3, r2 // icount 1699
sle r3, r7, r7 // icount 1700
rol r0, r7, r2 // icount 1701
ror r4, r6, r6 // icount 1702
sub r6, r2, r1 // icount 1703
sra r0, r4, r1 // icount 1704
rol r6, r2, r6 // icount 1705
or r2, r2, r5 // icount 1706
add r5, r4, r0 // icount 1707
add r6, r4, r5 // icount 1708
sra r2, r2, r3 // icount 1709
ror r5, r7, r5 // icount 1710
slt r5, r3, r6 // icount 1711
seq r5, r3, r3 // icount 1712
sle r7, r1, r6 // icount 1713
or r2, r1, r0 // icount 1714
add r2, r3, r7 // icount 1715
sll r6, r1, r6 // icount 1716
and r5, r5, r5 // icount 1717
sle r5, r0, r6 // icount 1718
slt r7, r1, r6 // icount 1719
.rlabel_84:
j .rlabel_85 // icount 1720
or r5, r2, r0 // icount 1721
seq r0, r0, r7 // icount 1722
rol r0, r1, r3 // icount 1723
add r1, r7, r3 // icount 1724
sco r0, r5, r7 // icount 1725
sra r7, r6, r7 // icount 1726
sra r0, r2, r5 // icount 1727
and r6, r6, r1 // icount 1728
sll r1, r0, r7 // icount 1729
rol r6, r5, r7 // icount 1730
rol r7, r7, r5 // icount 1731
or r1, r7, r0 // icount 1732
or r7, r0, r4 // icount 1733
ror r7, r1, r4 // icount 1734
sra r0, r6, r1 // icount 1735
seq r5, r6, r4 // icount 1736
sra r0, r4, r5 // icount 1737
sle r7, r3, r7 // icount 1738
sle r7, r7, r6 // icount 1739
sub r5, r3, r5 // icount 1740
or r1, r3, r5 // icount 1741
sll r0, r3, r6 // icount 1742
sub r2, r6, r6 // icount 1743
or r4, r1, r1 // icount 1744
rol r2, r6, r3 // icount 1745
ror r0, r0, r6 // icount 1746
add r3, r2, r4 // icount 1747
sub r0, r3, r4 // icount 1748
sco r1, r2, r5 // icount 1749
sub r1, r7, r7 // icount 1750
sra r3, r5, r1 // icount 1751
rol r0, r2, r5 // icount 1752
rol r4, r0, r7 // icount 1753
ror r5, r7, r4 // icount 1754
rol r4, r3, r5 // icount 1755
add r2, r5, r5 // icount 1756
or r7, r0, r5 // icount 1757
seq r5, r2, r2 // icount 1758
slt r2, r7, r4 // icount 1759
sra r5, r4, r1 // icount 1760
and r7, r5, r0 // icount 1761
sra r1, r7, r0 // icount 1762
seq r5, r7, r5 // icount 1763
slt r1, r1, r7 // icount 1764
sub r6, r7, r4 // icount 1765
seq r1, r5, r4 // icount 1766
slt r0, r4, r0 // icount 1767
add r1, r4, r4 // icount 1768
sll r6, r5, r1 // icount 1769
add r7, r7, r6 // icount 1770
seq r1, r6, r6 // icount 1771
slt r3, r5, r1 // icount 1772
sub r0, r3, r7 // icount 1773
sll r1, r3, r3 // icount 1774
or r5, r5, r4 // icount 1775
sra r1, r2, r4 // icount 1776
and r5, r3, r0 // icount 1777
slt r0, r5, r2 // icount 1778
sra r0, r3, r0 // icount 1779
sle r3, r5, r6 // icount 1780
and r2, r4, r2 // icount 1781
add r5, r7, r3 // icount 1782
seq r6, r6, r4 // icount 1783
slt r4, r2, r7 // icount 1784
sll r4, r7, r5 // icount 1785
slt r6, r2, r4 // icount 1786
and r5, r1, r1 // icount 1787
ror r4, r7, r3 // icount 1788
sub r2, r4, r5 // icount 1789
sco r5, r4, r3 // icount 1790
or r7, r3, r3 // icount 1791
sub r4, r3, r6 // icount 1792
sco r4, r6, r0 // icount 1793
rol r6, r4, r0 // icount 1794
sra r7, r2, r1 // icount 1795
.rlabel_85:
jal .rlabel_86 // icount 1796
sle r0, r3, r4 // icount 1797
sco r7, r7, r1 // icount 1798
sll r3, r3, r3 // icount 1799
sll r6, r2, r7 // icount 1800
sra r5, r2, r2 // icount 1801
seq r2, r2, r5 // icount 1802
sle r6, r3, r6 // icount 1803
sll r2, r2, r7 // icount 1804
sub r2, r5, r0 // icount 1805
ror r7, r6, r7 // icount 1806
sco r3, r3, r3 // icount 1807
sra r6, r7, r5 // icount 1808
.rlabel_86:
ld r7, r6, 2
addi r6, r6, 2
j .rlabel_87 // icount 1809
sll r2, r0, r7 // icount 1810
seq r4, r4, r7 // icount 1811
sll r7, r3, r6 // icount 1812
and r4, r2, r2 // icount 1813
slt r7, r0, r6 // icount 1814
ror r1, r5, r7 // icount 1815
sub r1, r0, r3 // icount 1816
rol r0, r7, r2 // icount 1817
ror r3, r5, r7 // icount 1818
rol r7, r1, r3 // icount 1819
ror r2, r7, r5 // icount 1820
or r7, r5, r2 // icount 1821
ror r0, r2, r3 // icount 1822
sle r2, r1, r5 // icount 1823
sco r7, r6, r2 // icount 1824
sco r5, r2, r0 // icount 1825
rol r5, r1, r2 // icount 1826
sco r6, r4, r6 // icount 1827
slt r2, r5, r2 // icount 1828
sle r2, r2, r5 // icount 1829
add r0, r4, r5 // icount 1830
sra r1, r4, r0 // icount 1831
and r7, r4, r0 // icount 1832
rol r6, r4, r0 // icount 1833
rol r6, r1, r1 // icount 1834
sll r6, r4, r7 // icount 1835
seq r4, r0, r6 // icount 1836
sll r5, r1, r1 // icount 1837
sco r3, r3, r0 // icount 1838
seq r6, r3, r3 // icount 1839
ror r7, r1, r7 // icount 1840
and r5, r4, r6 // icount 1841
sra r3, r6, r0 // icount 1842
ror r2, r4, r4 // icount 1843
add r2, r1, r7 // icount 1844
sra r7, r5, r5 // icount 1845
sra r1, r2, r3 // icount 1846
sll r0, r5, r4 // icount 1847
seq r5, r0, r1 // icount 1848
sco r6, r1, r5 // icount 1849
sra r6, r0, r7 // icount 1850
slt r5, r4, r2 // icount 1851
add r1, r5, r5 // icount 1852
sll r5, r0, r4 // icount 1853
sll r5, r4, r6 // icount 1854
or r2, r0, r1 // icount 1855
and r1, r1, r1 // icount 1856
sub r4, r0, r7 // icount 1857
sco r6, r5, r7 // icount 1858
and r3, r2, r4 // icount 1859
sra r2, r6, r1 // icount 1860
sle r0, r3, r0 // icount 1861
seq r5, r3, r7 // icount 1862
or r6, r4, r2 // icount 1863
and r7, r4, r1 // icount 1864
and r1, r0, r5 // icount 1865
sub r2, r6, r4 // icount 1866
sco r7, r5, r4 // icount 1867
rol r1, r0, r0 // icount 1868
ror r3, r1, r3 // icount 1869
sle r5, r5, r0 // icount 1870
sub r1, r0, r3 // icount 1871
rol r2, r2, r4 // icount 1872
sub r1, r3, r5 // icount 1873
seq r0, r1, r1 // icount 1874
sle r4, r4, r4 // icount 1875
seq r2, r6, r2 // icount 1876
ror r0, r2, r0 // icount 1877
sub r5, r1, r7 // icount 1878
or r5, r7, r0 // icount 1879
sra r0, r1, r4 // icount 1880
ror r3, r5, r2 // icount 1881
sle r3, r5, r6 // icount 1882
sle r0, r7, r6 // icount 1883
and r2, r0, r0 // icount 1884
add r1, r4, r6 // icount 1885
sub r0, r6, r1 // icount 1886
rol r0, r2, r5 // icount 1887
sll r2, r5, r3 // icount 1888
ror r3, r0, r0 // icount 1889
sle r4, r1, r2 // icount 1890
and r2, r3, r1 // icount 1891
add r1, r4, r6 // icount 1892
sub r3, r2, r5 // icount 1893
rol r2, r7, r0 // icount 1894
ror r4, r7, r6 // icount 1895
sra r3, r1, r6 // icount 1896
rol r0, r1, r7 // icount 1897
sub r1, r6, r2 // icount 1898
or r1, r6, r0 // icount 1899
sra r6, r6, r3 // icount 1900
sra r4, r1, r3 // icount 1901
sll r2, r5, r3 // icount 1902
ror r4, r5, r5 // icount 1903
sra r6, r5, r3 // icount 1904
sle r5, r4, r4 // icount 1905
rol r2, r4, r0 // icount 1906
ror r6, r7, r5 // icount 1907
sco r7, r4, r6 // icount 1908
seq r2, r0, r0 // icount 1909
sub r4, r2, r0 // icount 1910
sra r5, r7, r4 // icount 1911
add r7, r7, r1 // icount 1912
or r4, r3, r1 // icount 1913
sub r6, r5, r5 // icount 1914
sco r7, r1, r6 // icount 1915
add r2, r6, r3 // icount 1916
sle r0, r3, r7 // icount 1917
.rlabel_87:
ld r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_88 // icount 1918
and r0, r6, r0 // icount 1919
sle r1, r5, r6 // icount 1920
sub r2, r6, r3 // icount 1921
sco r7, r5, r2 // icount 1922
slt r1, r1, r7 // icount 1923
sco r3, r0, r2 // icount 1924
slt r6, r3, r7 // icount 1925
or r2, r4, r7 // icount 1926
and r4, r1, r0 // icount 1927
.rlabel_88:
jal .rlabel_89 // icount 1928
sco r7, r3, r3 // icount 1929
seq r6, r0, r7 // icount 1930
rol r6, r0, r3 // icount 1931
ror r0, r0, r6 // icount 1932
slt r2, r1, r2 // icount 1933
sra r0, r7, r4 // icount 1934
seq r3, r1, r6 // icount 1935
sco r3, r7, r4 // icount 1936
add r5, r5, r7 // icount 1937
sco r2, r6, r5 // icount 1938
and r5, r7, r0 // icount 1939
or r6, r4, r3 // icount 1940
slt r1, r2, r0 // icount 1941
slt r7, r6, r0 // icount 1942
sra r1, r5, r5 // icount 1943
and r3, r4, r2 // icount 1944
and r0, r6, r2 // icount 1945
or r2, r3, r5 // icount 1946
slt r4, r2, r5 // icount 1947
sco r0, r1, r6 // icount 1948
or r5, r6, r1 // icount 1949
slt r2, r4, r6 // icount 1950
or r4, r2, r0 // icount 1951
sle r6, r2, r7 // icount 1952
.rlabel_89:
jal .rlabel_90 // icount 1953
.rlabel_90:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_91 // icount 1954
sco r2, r0, r4 // icount 1955
sub r4, r3, r1 // icount 1956
sub r3, r7, r2 // icount 1957
sco r6, r0, r7 // icount 1958
.rlabel_91:
bnez r1, .rlabel_92 // icount 1959
and r0, r4, r7 // icount 1960
sll r6, r6, r1 // icount 1961
sub r1, r3, r2 // icount 1962
sll r6, r2, r1 // icount 1963
sub r0, r1, r6 // icount 1964
seq r3, r2, r1 // icount 1965
sll r0, r6, r7 // icount 1966
sco r7, r3, r0 // icount 1967
slt r3, r5, r2 // icount 1968
add r2, r3, r6 // icount 1969
sub r0, r4, r5 // icount 1970
and r6, r6, r0 // icount 1971
rol r7, r7, r1 // icount 1972
sub r3, r6, r3 // icount 1973
.rlabel_92:
ld r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_93 // icount 1974
sra r2, r2, r2 // icount 1975
add r4, r2, r6 // icount 1976
sle r6, r4, r0 // icount 1977
sub r1, r0, r0 // icount 1978
sco r6, r5, r2 // icount 1979
rol r5, r7, r6 // icount 1980
rol r6, r5, r3 // icount 1981
add r3, r5, r1 // icount 1982
slt r4, r4, r5 // icount 1983
or r0, r6, r5 // icount 1984
sle r7, r6, r1 // icount 1985
sle r0, r5, r4 // icount 1986
ror r2, r7, r3 // icount 1987
sco r0, r7, r6 // icount 1988
seq r5, r6, r1 // icount 1989
.rlabel_93:
st r7, r6, 6
addi r6, r6, 6
j .rlabel_94 // icount 1990
or r7, r3, r6 // icount 1991
sle r7, r4, r4 // icount 1992
sco r4, r6, r4 // icount 1993
and r1, r4, r0 // icount 1994
sco r4, r4, r6 // icount 1995
sra r7, r7, r2 // icount 1996
sle r0, r2, r5 // icount 1997
rol r3, r5, r4 // icount 1998
sra r4, r5, r2 // icount 1999
sra r1, r5, r2 // icount 2000
seq r3, r3, r0 // icount 2001
sle r2, r5, r0 // icount 2002
sra r3, r6, r4 // icount 2003
seq r2, r2, r7 // icount 2004
or r0, r7, r1 // icount 2005
or r1, r4, r4 // icount 2006
sub r1, r7, r1 // icount 2007
and r5, r6, r2 // icount 2008
sle r1, r1, r6 // icount 2009
add r5, r2, r7 // icount 2010
add r0, r4, r1 // icount 2011
sra r5, r7, r4 // icount 2012
sll r5, r2, r6 // icount 2013
and r6, r3, r1 // icount 2014
or r4, r4, r0 // icount 2015
sco r6, r1, r7 // icount 2016
slt r3, r2, r7 // icount 2017
ror r5, r3, r6 // icount 2018
sra r2, r3, r4 // icount 2019
sub r1, r6, r6 // icount 2020
and r4, r0, r1 // icount 2021
sle r4, r2, r7 // icount 2022
ror r2, r7, r0 // icount 2023
sle r2, r1, r3 // icount 2024
sra r1, r2, r5 // icount 2025
rol r0, r4, r7 // icount 2026
add r7, r4, r6 // icount 2027
sub r4, r3, r7 // icount 2028
sco r1, r5, r5 // icount 2029
or r6, r1, r3 // icount 2030
slt r4, r5, r4 // icount 2031
slt r4, r6, r7 // icount 2032
ror r7, r5, r7 // icount 2033
sra r4, r1, r0 // icount 2034
slt r1, r2, r4 // icount 2035
ror r2, r5, r7 // icount 2036
or r7, r5, r2 // icount 2037
rol r3, r2, r2 // icount 2038
sll r4, r5, r7 // icount 2039
rol r3, r0, r0 // icount 2040
and r3, r4, r1 // icount 2041
slt r4, r2, r2 // icount 2042
slt r6, r0, r0 // icount 2043
sub r2, r3, r7 // icount 2044
sle r1, r5, r5 // icount 2045
or r0, r6, r1 // icount 2046
sle r5, r2, r2 // icount 2047
add r4, r7, r7 // icount 2048
sub r6, r4, r0 // icount 2049
add r5, r1, r6 // icount 2050
ror r6, r7, r2 // icount 2051
seq r3, r2, r1 // icount 2052
sle r4, r0, r4 // icount 2053
add r1, r1, r5 // icount 2054
add r1, r2, r1 // icount 2055
or r2, r5, r2 // icount 2056
add r3, r2, r1 // icount 2057
sub r2, r2, r1 // icount 2058
seq r0, r6, r1 // icount 2059
sll r7, r4, r7 // icount 2060
and r7, r2, r3 // icount 2061
sle r6, r2, r6 // icount 2062
rol r7, r5, r6 // icount 2063
sub r6, r5, r7 // icount 2064
or r7, r1, r5 // icount 2065
slt r7, r2, r4 // icount 2066
sco r4, r5, r7 // icount 2067
rol r3, r2, r7 // icount 2068
sub r7, r7, r5 // icount 2069
sco r5, r2, r0 // icount 2070
or r4, r4, r6 // icount 2071
sle r1, r6, r1 // icount 2072
and r3, r7, r0 // icount 2073
sub r0, r1, r3 // icount 2074
sra r3, r5, r0 // icount 2075
add r4, r4, r7 // icount 2076
ror r5, r0, r6 // icount 2077
sle r5, r0, r5 // icount 2078
and r1, r7, r7 // icount 2079
add r4, r0, r6 // icount 2080
sle r5, r3, r5 // icount 2081
slt r4, r4, r3 // icount 2082
seq r3, r4, r7 // icount 2083
or r2, r0, r0 // icount 2084
or r4, r0, r6 // icount 2085
sle r6, r1, r5 // icount 2086
sco r6, r3, r4 // icount 2087
ror r6, r4, r2 // icount 2088
sra r5, r2, r6 // icount 2089
rol r0, r1, r0 // icount 2090
sle r7, r6, r7 // icount 2091
sco r2, r7, r5 // icount 2092
sle r7, r4, r5 // icount 2093
sco r7, r4, r0 // icount 2094
or r7, r6, r6 // icount 2095
and r0, r5, r7 // icount 2096
sle r1, r0, r7 // icount 2097
add r0, r2, r1 // icount 2098
ror r2, r5, r6 // icount 2099
sle r2, r2, r3 // icount 2100
.rlabel_94:
bnez r1, .rlabel_95 // icount 2101
sle r1, r3, r4 // icount 2102
sle r2, r6, r5 // icount 2103
sle r7, r3, r0 // icount 2104
sco r5, r4, r5 // icount 2105
add r5, r5, r4 // icount 2106
sra r6, r7, r4 // icount 2107
.rlabel_95:
beqz r0, .rlabel_96 // icount 2108
sle r5, r2, r0 // icount 2109
slt r5, r1, r5 // icount 2110
sra r0, r7, r1 // icount 2111
rol r0, r6, r4 // icount 2112
sle r1, r6, r6 // icount 2113
add r5, r7, r6 // icount 2114
or r0, r0, r6 // icount 2115
ror r3, r4, r4 // icount 2116
or r3, r0, r0 // icount 2117
slt r3, r4, r2 // icount 2118
sub r0, r6, r6 // icount 2119
add r6, r2, r2 // icount 2120
or r7, r4, r1 // icount 2121
.rlabel_96:
st r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_97 // icount 2122
sra r4, r7, r4 // icount 2123
sll r1, r3, r5 // icount 2124
slt r6, r3, r7 // icount 2125
rol r4, r4, r2 // icount 2126
ror r3, r2, r2 // icount 2127
ror r7, r7, r7 // icount 2128
.rlabel_97:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_98 // icount 2129
sub r6, r3, r3 // icount 2130
rol r3, r4, r6 // icount 2131
add r0, r7, r3 // icount 2132
rol r1, r1, r0 // icount 2133
and r7, r7, r4 // icount 2134
sco r7, r4, r0 // icount 2135
and r5, r3, r7 // icount 2136
and r0, r5, r2 // icount 2137
sco r1, r5, r1 // icount 2138
and r3, r2, r2 // icount 2139
ror r1, r6, r2 // icount 2140
sub r5, r6, r5 // icount 2141
sll r7, r1, r3 // icount 2142
add r7, r1, r4 // icount 2143
sra r3, r5, r6 // icount 2144
sra r4, r5, r6 // icount 2145
add r6, r5, r1 // icount 2146
sco r1, r4, r3 // icount 2147
sub r4, r5, r6 // icount 2148
add r7, r0, r0 // icount 2149
sub r0, r6, r4 // icount 2150
or r3, r5, r2 // icount 2151
or r6, r6, r1 // icount 2152
or r5, r2, r3 // icount 2153
seq r7, r6, r2 // icount 2154
and r3, r4, r0 // icount 2155
sub r7, r0, r6 // icount 2156
sco r6, r4, r1 // icount 2157
sle r6, r3, r1 // icount 2158
sub r7, r7, r0 // icount 2159
sco r2, r7, r0 // icount 2160
seq r2, r0, r6 // icount 2161
sra r0, r3, r0 // icount 2162
rol r1, r1, r6 // icount 2163
slt r1, r7, r7 // icount 2164
add r5, r1, r3 // icount 2165
or r3, r1, r2 // icount 2166
sle r6, r2, r3 // icount 2167
add r4, r6, r4 // icount 2168
sle r0, r2, r7 // icount 2169
sco r6, r5, r1 // icount 2170
sub r6, r6, r7 // icount 2171
sra r2, r2, r0 // icount 2172
and r5, r2, r3 // icount 2173
rol r1, r5, r1 // icount 2174
sra r7, r6, r7 // icount 2175
sra r0, r6, r4 // icount 2176
ror r1, r3, r6 // icount 2177
rol r6, r1, r6 // icount 2178
sra r4, r3, r2 // icount 2179
ror r6, r7, r7 // icount 2180
add r1, r5, r3 // icount 2181
sll r4, r7, r6 // icount 2182
ror r0, r6, r0 // icount 2183
sub r6, r2, r1 // icount 2184
or r2, r4, r7 // icount 2185
sub r1, r6, r6 // icount 2186
sra r6, r0, r2 // icount 2187
slt r1, r7, r0 // icount 2188
or r5, r2, r5 // icount 2189
slt r2, r6, r5 // icount 2190
slt r5, r1, r7 // icount 2191
slt r4, r0, r2 // icount 2192
sll r7, r4, r1 // icount 2193
sra r4, r0, r6 // icount 2194
rol r4, r3, r6 // icount 2195
sub r1, r3, r6 // icount 2196
sra r5, r7, r6 // icount 2197
sub r1, r1, r4 // icount 2198
sra r3, r1, r1 // icount 2199
sub r7, r4, r4 // icount 2200
sco r6, r7, r0 // icount 2201
sub r7, r2, r0 // icount 2202
ror r3, r2, r4 // icount 2203
or r5, r6, r5 // icount 2204
sub r2, r1, r1 // icount 2205
seq r3, r7, r5 // icount 2206
rol r7, r4, r7 // icount 2207
sco r5, r0, r6 // icount 2208
or r4, r6, r4 // icount 2209
sco r3, r2, r3 // icount 2210
slt r0, r4, r2 // icount 2211
sll r0, r4, r5 // icount 2212
slt r3, r3, r6 // icount 2213
seq r3, r7, r7 // icount 2214
sll r2, r2, r4 // icount 2215
sle r0, r4, r7 // icount 2216
seq r6, r2, r2 // icount 2217
sco r2, r5, r6 // icount 2218
or r4, r5, r1 // icount 2219
and r1, r3, r4 // icount 2220
seq r4, r1, r5 // icount 2221
rol r1, r1, r5 // icount 2222
and r2, r6, r3 // icount 2223
rol r7, r2, r3 // icount 2224
and r0, r6, r0 // icount 2225
slt r0, r2, r0 // icount 2226
sll r2, r0, r3 // icount 2227
sra r7, r4, r1 // icount 2228
slt r0, r1, r3 // icount 2229
slt r6, r7, r7 // icount 2230
sco r0, r6, r5 // icount 2231
add r5, r4, r2 // icount 2232
and r4, r3, r6 // icount 2233
.rlabel_98:
bnez r1, .rlabel_99 // icount 2234
slt r0, r6, r7 // icount 2235
sco r5, r6, r1 // icount 2236
slt r7, r7, r6 // icount 2237
sle r1, r3, r4 // icount 2238
slt r3, r6, r1 // icount 2239
rol r4, r2, r3 // icount 2240
sll r4, r2, r4 // icount 2241
and r1, r4, r0 // icount 2242
sco r7, r3, r5 // icount 2243
sle r2, r4, r5 // icount 2244
sub r0, r4, r7 // icount 2245
seq r6, r1, r1 // icount 2246
sco r4, r7, r1 // icount 2247
or r2, r6, r5 // icount 2248
ror r2, r7, r4 // icount 2249
.rlabel_99:
addi r3, r3, -1 // icount 2250
beqz r3, .done // icount 2251
jr r5, 0 // icount 2252
.done:
halt // icount 2253
halt // icount 2254
