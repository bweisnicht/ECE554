// seed 8
lbi r0, 35 // icount 0
slbi r0, 98 // icount 1
lbi r1, 1 // icount 2
slbi r1, 152 // icount 3
lbi r2, 123 // icount 4
slbi r2, 131 // icount 5
lbi r3, 167 // icount 6
slbi r3, 87 // icount 7
lbi r4, 226 // icount 8
slbi r4, 182 // icount 9
lbi r5, 175 // icount 10
slbi r5, 28 // icount 11
lbi r6, 238 // icount 12
slbi r6, 177 // icount 13
lbi r7, 216 // icount 14
slbi r7, 202 // icount 15
lbi r0, 0 // icount 16
lbi r1, 1 // icount 17
lbi r2, -1 // icount 18
lbi r3, 1 // icount 19
andi r6, r6, 0xfe // icount 20
lbi r3, 3 // icount 21
lbi r5, 44 // icount 22
j .rlabel_0 // icount 23
sll r7, r4, r6 // icount 24
or r0, r6, r3 // icount 25
add r2, r4, r1 // icount 26
sub r1, r6, r1 // icount 27
and r7, r3, r6 // icount 28
seq r6, r0, r5 // icount 29
ror r1, r5, r0 // icount 30
sll r2, r0, r4 // icount 31
sub r0, r2, r3 // icount 32
ror r7, r5, r5 // icount 33
sll r6, r5, r0 // icount 34
sra r4, r2, r4 // icount 35
sco r4, r7, r4 // icount 36
sub r3, r2, r1 // icount 37
or r1, r3, r1 // icount 38
or r1, r6, r3 // icount 39
or r7, r3, r5 // icount 40
ror r3, r0, r4 // icount 41
seq r3, r4, r1 // icount 42
sra r2, r0, r1 // icount 43
ror r4, r5, r5 // icount 44
ror r2, r5, r5 // icount 45
seq r3, r4, r0 // icount 46
sll r7, r6, r1 // icount 47
sle r0, r3, r6 // icount 48
sll r2, r3, r5 // icount 49
sle r0, r7, r5 // icount 50
and r7, r0, r0 // icount 51
add r0, r5, r6 // icount 52
sll r2, r0, r7 // icount 53
sco r1, r5, r7 // icount 54
sle r4, r6, r5 // icount 55
sra r3, r3, r5 // icount 56
or r1, r5, r4 // icount 57
slt r5, r2, r1 // icount 58
sll r2, r0, r2 // icount 59
sle r2, r0, r1 // icount 60
sco r0, r1, r1 // icount 61
and r5, r7, r5 // icount 62
sco r7, r6, r7 // icount 63
and r2, r0, r4 // icount 64
and r2, r3, r6 // icount 65
sll r1, r5, r6 // icount 66
slt r2, r5, r1 // icount 67
slt r0, r0, r2 // icount 68
sra r1, r4, r6 // icount 69
or r7, r6, r7 // icount 70
sco r7, r3, r5 // icount 71
sub r5, r6, r4 // icount 72
seq r4, r1, r6 // icount 73
sle r2, r5, r6 // icount 74
seq r1, r2, r3 // icount 75
seq r0, r2, r7 // icount 76
and r2, r0, r2 // icount 77
seq r3, r2, r3 // icount 78
sco r0, r7, r5 // icount 79
seq r4, r3, r1 // icount 80
add r4, r0, r0 // icount 81
rol r5, r4, r5 // icount 82
slt r2, r7, r5 // icount 83
ror r7, r3, r6 // icount 84
sub r2, r0, r2 // icount 85
slt r6, r3, r3 // icount 86
seq r0, r7, r3 // icount 87
sub r2, r4, r7 // icount 88
add r3, r6, r6 // icount 89
ror r6, r5, r6 // icount 90
seq r1, r7, r1 // icount 91
rol r6, r5, r2 // icount 92
sra r0, r4, r7 // icount 93
and r6, r5, r3 // icount 94
sub r4, r5, r0 // icount 95
sll r0, r2, r1 // icount 96
sra r4, r4, r2 // icount 97
add r5, r1, r2 // icount 98
sll r3, r6, r2 // icount 99
sll r2, r6, r7 // icount 100
rol r7, r6, r5 // icount 101
add r4, r6, r2 // icount 102
sle r2, r4, r4 // icount 103
add r7, r2, r3 // icount 104
ror r0, r7, r0 // icount 105
seq r0, r4, r2 // icount 106
add r6, r4, r0 // icount 107
add r7, r3, r7 // icount 108
or r4, r3, r6 // icount 109
ror r4, r3, r7 // icount 110
ror r3, r5, r4 // icount 111
add r7, r6, r4 // icount 112
.rlabel_0:
jal .rlabel_1 // icount 113
rol r6, r2, r3 // icount 114
sra r5, r2, r5 // icount 115
and r1, r0, r5 // icount 116
and r1, r2, r6 // icount 117
sll r2, r6, r7 // icount 118
or r3, r5, r0 // icount 119
seq r2, r4, r5 // icount 120
sra r0, r1, r2 // icount 121
.rlabel_1:
jal .rlabel_2 // icount 122
sle r7, r2, r7 // icount 123
seq r3, r2, r5 // icount 124
sra r0, r1, r7 // icount 125
and r7, r7, r4 // icount 126
and r5, r1, r0 // icount 127
and r5, r1, r1 // icount 128
sll r5, r3, r2 // icount 129
sra r3, r1, r0 // icount 130
or r0, r2, r6 // icount 131
sle r7, r0, r0 // icount 132
sco r4, r3, r1 // icount 133
rol r2, r7, r0 // icount 134
or r4, r6, r6 // icount 135
and r7, r5, r5 // icount 136
sle r4, r3, r1 // icount 137
sra r6, r7, r7 // icount 138
add r5, r2, r4 // icount 139
sub r0, r0, r3 // icount 140
sll r3, r6, r4 // icount 141
.rlabel_2:
st r7, r6, 8
addi r6, r6, 8
bnez r1, .rlabel_3 // icount 142
sra r4, r3, r3 // icount 143
sle r1, r2, r7 // icount 144
ror r4, r6, r6 // icount 145
sll r2, r5, r0 // icount 146
ror r7, r2, r2 // icount 147
.rlabel_3:
st r7, r6, 6
addi r6, r6, 6
j .rlabel_4 // icount 148
add r1, r5, r1 // icount 149
sll r1, r0, r7 // icount 150
rol r1, r4, r1 // icount 151
rol r7, r5, r4 // icount 152
ror r5, r5, r7 // icount 153
rol r3, r2, r3 // icount 154
sub r0, r0, r4 // icount 155
sle r6, r1, r2 // icount 156
sle r5, r2, r1 // icount 157
sra r4, r5, r3 // icount 158
rol r7, r5, r6 // icount 159
or r1, r1, r3 // icount 160
sco r0, r1, r6 // icount 161
and r5, r3, r3 // icount 162
sub r7, r1, r6 // icount 163
sle r0, r5, r7 // icount 164
sle r1, r2, r0 // icount 165
slt r2, r3, r0 // icount 166
or r4, r2, r7 // icount 167
add r3, r0, r2 // icount 168
seq r5, r2, r2 // icount 169
add r6, r7, r5 // icount 170
seq r3, r4, r3 // icount 171
ror r2, r7, r0 // icount 172
or r0, r1, r2 // icount 173
slt r2, r2, r3 // icount 174
sle r0, r4, r1 // icount 175
sco r7, r0, r7 // icount 176
sle r3, r1, r4 // icount 177
slt r4, r0, r6 // icount 178
sco r0, r0, r1 // icount 179
slt r7, r7, r0 // icount 180
sra r0, r4, r4 // icount 181
and r0, r2, r1 // icount 182
slt r3, r2, r0 // icount 183
ror r7, r0, r3 // icount 184
seq r0, r6, r2 // icount 185
sco r6, r6, r6 // icount 186
add r1, r3, r3 // icount 187
rol r4, r3, r7 // icount 188
add r5, r0, r0 // icount 189
sra r0, r2, r7 // icount 190
slt r6, r6, r1 // icount 191
add r6, r5, r1 // icount 192
and r6, r2, r7 // icount 193
seq r2, r4, r0 // icount 194
sub r3, r4, r7 // icount 195
slt r1, r5, r0 // icount 196
add r0, r5, r4 // icount 197
sub r6, r5, r6 // icount 198
or r5, r4, r7 // icount 199
sco r4, r6, r3 // icount 200
and r6, r5, r1 // icount 201
slt r6, r5, r1 // icount 202
ror r6, r1, r6 // icount 203
sra r6, r6, r6 // icount 204
add r6, r1, r5 // icount 205
add r1, r7, r4 // icount 206
rol r4, r7, r3 // icount 207
ror r0, r6, r6 // icount 208
add r0, r1, r0 // icount 209
add r4, r4, r7 // icount 210
sub r0, r4, r4 // icount 211
sll r1, r4, r7 // icount 212
or r3, r7, r0 // icount 213
rol r1, r1, r2 // icount 214
slt r1, r4, r2 // icount 215
add r7, r3, r3 // icount 216
ror r6, r7, r1 // icount 217
sle r4, r5, r2 // icount 218
sle r2, r3, r7 // icount 219
sll r4, r4, r0 // icount 220
sra r4, r2, r5 // icount 221
slt r4, r6, r4 // icount 222
slt r6, r0, r5 // icount 223
seq r5, r6, r2 // icount 224
and r0, r3, r1 // icount 225
or r2, r6, r0 // icount 226
sle r7, r2, r0 // icount 227
sco r6, r4, r7 // icount 228
ror r0, r4, r6 // icount 229
sco r2, r6, r5 // icount 230
rol r5, r5, r7 // icount 231
sra r7, r5, r2 // icount 232
add r6, r4, r0 // icount 233
sll r6, r5, r2 // icount 234
rol r6, r0, r3 // icount 235
ror r1, r2, r3 // icount 236
sll r7, r3, r0 // icount 237
sle r3, r7, r1 // icount 238
sra r6, r7, r2 // icount 239
and r2, r1, r3 // icount 240
rol r6, r6, r5 // icount 241
add r1, r7, r1 // icount 242
slt r6, r0, r3 // icount 243
sra r1, r0, r7 // icount 244
add r6, r4, r2 // icount 245
sub r3, r2, r1 // icount 246
seq r5, r2, r4 // icount 247
seq r2, r2, r1 // icount 248
sle r6, r0, r7 // icount 249
rol r6, r6, r5 // icount 250
or r0, r7, r2 // icount 251
sle r7, r7, r7 // icount 252
seq r7, r2, r4 // icount 253
slt r0, r0, r7 // icount 254
rol r6, r4, r3 // icount 255
sco r3, r4, r1 // icount 256
sra r4, r4, r6 // icount 257
and r7, r2, r6 // icount 258
rol r3, r1, r6 // icount 259
sle r5, r6, r7 // icount 260
or r7, r0, r5 // icount 261
sle r3, r1, r6 // icount 262
or r4, r0, r5 // icount 263
ror r3, r0, r4 // icount 264
rol r6, r1, r6 // icount 265
sll r7, r5, r5 // icount 266
add r4, r4, r3 // icount 267
sle r1, r1, r2 // icount 268
sco r7, r7, r3 // icount 269
sll r2, r4, r1 // icount 270
sle r2, r0, r7 // icount 271
rol r1, r2, r0 // icount 272
add r6, r5, r0 // icount 273
sco r4, r6, r4 // icount 274
.rlabel_4:
beqz r0, .rlabel_5 // icount 275
sra r3, r4, r1 // icount 276
.rlabel_5:
st r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_6 // icount 277
slt r5, r5, r6 // icount 278
or r3, r6, r0 // icount 279
sco r3, r7, r2 // icount 280
sll r6, r2, r6 // icount 281
sra r3, r2, r0 // icount 282
and r3, r3, r2 // icount 283
slt r6, r0, r7 // icount 284
and r3, r5, r6 // icount 285
or r1, r6, r4 // icount 286
add r4, r2, r1 // icount 287
add r2, r7, r2 // icount 288
sle r1, r0, r2 // icount 289
sub r4, r6, r5 // icount 290
.rlabel_6:
j .rlabel_7 // icount 291
ror r7, r3, r6 // icount 292
seq r2, r4, r2 // icount 293
sle r3, r5, r5 // icount 294
add r1, r6, r3 // icount 295
sle r1, r0, r3 // icount 296
sll r4, r7, r7 // icount 297
sle r0, r1, r2 // icount 298
ror r0, r5, r5 // icount 299
add r7, r3, r4 // icount 300
sco r3, r1, r3 // icount 301
sub r4, r0, r1 // icount 302
sle r6, r7, r5 // icount 303
seq r4, r7, r3 // icount 304
sco r6, r1, r4 // icount 305
slt r6, r4, r4 // icount 306
slt r4, r3, r0 // icount 307
ror r6, r7, r4 // icount 308
ror r3, r2, r7 // icount 309
sra r5, r1, r5 // icount 310
and r3, r7, r1 // icount 311
sle r1, r4, r5 // icount 312
seq r5, r7, r0 // icount 313
sle r1, r0, r5 // icount 314
or r0, r0, r1 // icount 315
and r5, r1, r4 // icount 316
or r5, r1, r6 // icount 317
sra r6, r5, r2 // icount 318
rol r3, r1, r1 // icount 319
sll r2, r1, r2 // icount 320
sco r7, r0, r7 // icount 321
seq r6, r2, r1 // icount 322
sle r3, r1, r2 // icount 323
sra r2, r7, r1 // icount 324
slt r0, r2, r6 // icount 325
ror r4, r6, r0 // icount 326
sub r3, r6, r4 // icount 327
rol r0, r0, r6 // icount 328
sll r5, r0, r0 // icount 329
slt r5, r5, r4 // icount 330
or r0, r0, r4 // icount 331
seq r4, r7, r6 // icount 332
or r4, r6, r5 // icount 333
sll r0, r1, r5 // icount 334
sra r3, r1, r0 // icount 335
rol r0, r1, r5 // icount 336
ror r2, r2, r1 // icount 337
sra r4, r3, r1 // icount 338
sll r2, r5, r0 // icount 339
sra r7, r6, r5 // icount 340
sub r5, r6, r5 // icount 341
add r2, r4, r1 // icount 342
sub r0, r3, r5 // icount 343
sub r5, r6, r0 // icount 344
seq r0, r1, r2 // icount 345
seq r7, r7, r6 // icount 346
or r7, r3, r2 // icount 347
and r5, r4, r2 // icount 348
sra r5, r0, r0 // icount 349
sll r0, r1, r6 // icount 350
or r4, r4, r0 // icount 351
ror r4, r0, r1 // icount 352
ror r6, r5, r5 // icount 353
sco r5, r6, r1 // icount 354
rol r4, r3, r2 // icount 355
and r4, r4, r5 // icount 356
sub r5, r6, r6 // icount 357
sra r1, r5, r5 // icount 358
sco r0, r7, r2 // icount 359
sub r3, r2, r2 // icount 360
sco r2, r0, r0 // icount 361
sll r5, r3, r1 // icount 362
or r4, r4, r7 // icount 363
ror r6, r5, r0 // icount 364
sub r6, r7, r7 // icount 365
sll r7, r6, r5 // icount 366
and r5, r5, r2 // icount 367
sll r6, r3, r4 // icount 368
sll r4, r5, r3 // icount 369
or r6, r4, r3 // icount 370
sco r3, r7, r0 // icount 371
sco r0, r3, r6 // icount 372
ror r5, r0, r3 // icount 373
slt r1, r5, r5 // icount 374
seq r4, r6, r6 // icount 375
add r0, r7, r6 // icount 376
and r5, r0, r1 // icount 377
seq r3, r1, r5 // icount 378
rol r4, r4, r7 // icount 379
sle r6, r3, r1 // icount 380
or r3, r1, r0 // icount 381
seq r7, r2, r7 // icount 382
or r2, r4, r3 // icount 383
add r7, r2, r7 // icount 384
sco r0, r4, r7 // icount 385
or r3, r3, r1 // icount 386
ror r1, r4, r5 // icount 387
sll r2, r4, r7 // icount 388
add r7, r1, r7 // icount 389
slt r3, r3, r0 // icount 390
sle r2, r7, r7 // icount 391
rol r5, r7, r6 // icount 392
sub r0, r7, r7 // icount 393
ror r4, r5, r1 // icount 394
and r2, r1, r6 // icount 395
and r0, r7, r0 // icount 396
rol r4, r7, r4 // icount 397
rol r0, r2, r7 // icount 398
sub r3, r0, r0 // icount 399
.rlabel_7:
jal .rlabel_8 // icount 400
rol r2, r7, r3 // icount 401
ror r0, r4, r5 // icount 402
seq r2, r5, r1 // icount 403
and r1, r3, r3 // icount 404
sle r1, r6, r1 // icount 405
rol r4, r5, r1 // icount 406
add r3, r4, r6 // icount 407
sub r4, r7, r0 // icount 408
rol r6, r1, r1 // icount 409
seq r6, r7, r5 // icount 410
add r3, r3, r6 // icount 411
sub r3, r1, r0 // icount 412
sub r1, r5, r5 // icount 413
sle r1, r3, r4 // icount 414
or r5, r3, r7 // icount 415
slt r6, r1, r4 // icount 416
ror r2, r4, r7 // icount 417
seq r0, r0, r3 // icount 418
ror r2, r1, r1 // icount 419
sle r0, r7, r6 // icount 420
sll r7, r6, r6 // icount 421
and r7, r0, r2 // icount 422
.rlabel_8:
st r7, r6, 2
addi r6, r6, 2
jal .rlabel_9 // icount 423
.rlabel_9:
jal .rlabel_10 // icount 424
sll r1, r5, r1 // icount 425
and r4, r1, r2 // icount 426
and r3, r1, r4 // icount 427
rol r4, r7, r3 // icount 428
rol r5, r1, r1 // icount 429
sra r4, r6, r4 // icount 430
sco r6, r6, r2 // icount 431
slt r4, r6, r3 // icount 432
sco r3, r3, r3 // icount 433
sle r3, r4, r6 // icount 434
sub r7, r4, r3 // icount 435
sle r6, r5, r7 // icount 436
sra r1, r7, r5 // icount 437
add r7, r0, r0 // icount 438
sle r1, r1, r1 // icount 439
or r0, r0, r2 // icount 440
rol r7, r3, r1 // icount 441
rol r7, r2, r6 // icount 442
sub r1, r3, r3 // icount 443
sle r0, r2, r6 // icount 444
or r6, r2, r3 // icount 445
add r2, r2, r2 // icount 446
sub r6, r4, r6 // icount 447
slt r2, r4, r4 // icount 448
.rlabel_10:
bnez r1, .rlabel_11 // icount 449
seq r0, r2, r4 // icount 450
sle r1, r5, r0 // icount 451
rol r4, r6, r1 // icount 452
sco r7, r5, r5 // icount 453
sub r1, r6, r3 // icount 454
seq r3, r3, r7 // icount 455
.rlabel_11:
ld r7, r6, 6
addi r6, r6, 6
beqz r0, .rlabel_12 // icount 456
add r5, r3, r1 // icount 457
or r0, r3, r5 // icount 458
sco r5, r0, r4 // icount 459
.rlabel_12:
ld r7, r6, 8
addi r6, r6, 8
jal .rlabel_13 // icount 460
sll r6, r3, r2 // icount 461
rol r6, r0, r7 // icount 462
sub r6, r3, r1 // icount 463
sll r4, r2, r6 // icount 464
sll r3, r0, r7 // icount 465
sll r2, r4, r6 // icount 466
and r2, r5, r3 // icount 467
sll r0, r0, r6 // icount 468
sub r4, r4, r2 // icount 469
add r5, r2, r6 // icount 470
add r2, r1, r4 // icount 471
ror r2, r7, r2 // icount 472
ror r3, r7, r5 // icount 473
rol r7, r1, r6 // icount 474
and r1, r6, r1 // icount 475
or r4, r5, r6 // icount 476
sle r6, r2, r5 // icount 477
ror r5, r0, r0 // icount 478
and r0, r7, r4 // icount 479
sub r1, r4, r0 // icount 480
sll r1, r0, r7 // icount 481
add r3, r1, r0 // icount 482
sll r1, r0, r3 // icount 483
.rlabel_13:
j .rlabel_14 // icount 484
sra r1, r1, r6 // icount 485
ror r3, r6, r1 // icount 486
sco r5, r7, r3 // icount 487
rol r6, r3, r7 // icount 488
sll r7, r7, r6 // icount 489
or r1, r7, r5 // icount 490
and r7, r7, r0 // icount 491
sll r7, r1, r2 // icount 492
sra r3, r3, r5 // icount 493
or r3, r6, r1 // icount 494
sll r0, r5, r3 // icount 495
sll r5, r1, r0 // icount 496
add r5, r4, r0 // icount 497
add r0, r3, r4 // icount 498
sll r1, r4, r6 // icount 499
.rlabel_14:
st r7, r6, 14
addi r6, r6, 14
jal .rlabel_15 // icount 500
seq r5, r2, r3 // icount 501
sub r6, r7, r7 // icount 502
sle r5, r5, r4 // icount 503
slt r1, r5, r0 // icount 504
and r5, r3, r2 // icount 505
.rlabel_15:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_16 // icount 506
sll r7, r3, r0 // icount 507
or r4, r1, r5 // icount 508
slt r0, r2, r4 // icount 509
or r4, r1, r5 // icount 510
ror r3, r7, r5 // icount 511
and r4, r5, r5 // icount 512
ror r1, r3, r3 // icount 513
ror r3, r6, r3 // icount 514
sle r7, r0, r0 // icount 515
or r7, r5, r0 // icount 516
ror r4, r4, r3 // icount 517
rol r7, r6, r1 // icount 518
sco r7, r1, r5 // icount 519
slt r2, r1, r2 // icount 520
sco r3, r0, r4 // icount 521
add r5, r2, r1 // icount 522
or r5, r4, r3 // icount 523
sub r4, r5, r7 // icount 524
rol r6, r5, r2 // icount 525
seq r1, r1, r1 // icount 526
rol r2, r3, r0 // icount 527
ror r4, r4, r4 // icount 528
sll r7, r0, r2 // icount 529
seq r2, r3, r2 // icount 530
sco r6, r2, r4 // icount 531
slt r7, r0, r7 // icount 532
seq r7, r6, r7 // icount 533
add r2, r2, r3 // icount 534
sco r5, r0, r4 // icount 535
sub r3, r7, r4 // icount 536
add r1, r0, r0 // icount 537
.rlabel_16:
ld r7, r6, 6
addi r6, r6, 6
j .rlabel_17 // icount 538
sra r5, r1, r4 // icount 539
sub r0, r7, r5 // icount 540
sub r4, r0, r3 // icount 541
rol r2, r6, r6 // icount 542
and r3, r0, r5 // icount 543
rol r4, r3, r6 // icount 544
sle r7, r1, r7 // icount 545
ror r4, r1, r4 // icount 546
sle r5, r5, r4 // icount 547
or r1, r0, r4 // icount 548
sll r3, r0, r7 // icount 549
ror r6, r4, r1 // icount 550
add r6, r4, r1 // icount 551
ror r5, r6, r5 // icount 552
sco r6, r0, r5 // icount 553
or r1, r5, r0 // icount 554
add r2, r5, r4 // icount 555
and r7, r5, r1 // icount 556
and r3, r0, r7 // icount 557
sle r2, r2, r1 // icount 558
sll r4, r4, r3 // icount 559
sll r3, r7, r7 // icount 560
rol r3, r5, r4 // icount 561
slt r0, r1, r6 // icount 562
sll r5, r5, r3 // icount 563
sle r1, r3, r6 // icount 564
ror r7, r5, r2 // icount 565
rol r2, r1, r6 // icount 566
sll r1, r7, r4 // icount 567
rol r4, r2, r0 // icount 568
sra r7, r3, r4 // icount 569
slt r0, r3, r1 // icount 570
sco r7, r0, r6 // icount 571
sra r3, r7, r1 // icount 572
.rlabel_17:
ld r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_18 // icount 573
or r5, r5, r1 // icount 574
sub r0, r1, r1 // icount 575
or r2, r2, r4 // icount 576
sub r3, r3, r6 // icount 577
or r3, r1, r0 // icount 578
sll r3, r5, r5 // icount 579
slt r0, r2, r4 // icount 580
add r2, r7, r7 // icount 581
seq r4, r4, r6 // icount 582
ror r4, r2, r7 // icount 583
seq r3, r0, r5 // icount 584
sub r7, r7, r4 // icount 585
and r5, r7, r7 // icount 586
sub r0, r5, r5 // icount 587
seq r2, r3, r5 // icount 588
.rlabel_18:
beqz r0, .rlabel_19 // icount 589
.rlabel_19:
bnez r1, .rlabel_20 // icount 590
and r0, r7, r3 // icount 591
seq r6, r6, r2 // icount 592
sub r3, r4, r4 // icount 593
ror r7, r1, r0 // icount 594
or r6, r1, r6 // icount 595
sub r2, r0, r4 // icount 596
sub r3, r3, r7 // icount 597
sub r3, r4, r6 // icount 598
sle r1, r5, r5 // icount 599
sle r2, r0, r3 // icount 600
add r7, r7, r6 // icount 601
.rlabel_20:
j .rlabel_21 // icount 602
rol r2, r4, r1 // icount 603
and r6, r0, r2 // icount 604
or r4, r0, r0 // icount 605
sle r1, r6, r0 // icount 606
.rlabel_21:
jal .rlabel_22 // icount 607
sle r7, r4, r3 // icount 608
seq r6, r1, r5 // icount 609
sra r2, r4, r5 // icount 610
sub r2, r2, r5 // icount 611
.rlabel_22:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_23 // icount 612
sub r2, r0, r5 // icount 613
sco r4, r0, r5 // icount 614
slt r7, r6, r6 // icount 615
.rlabel_23:
j .rlabel_24 // icount 616
seq r0, r6, r7 // icount 617
ror r1, r4, r5 // icount 618
sll r7, r0, r7 // icount 619
ror r1, r6, r2 // icount 620
sra r3, r2, r4 // icount 621
sra r1, r5, r2 // icount 622
sco r0, r4, r3 // icount 623
sub r6, r3, r0 // icount 624
seq r2, r5, r5 // icount 625
ror r1, r0, r5 // icount 626
rol r7, r0, r6 // icount 627
add r2, r1, r3 // icount 628
add r1, r0, r0 // icount 629
sra r3, r3, r3 // icount 630
add r0, r3, r7 // icount 631
sll r0, r3, r7 // icount 632
sco r6, r0, r7 // icount 633
sra r6, r2, r2 // icount 634
sub r7, r1, r1 // icount 635
sle r6, r0, r0 // icount 636
seq r4, r0, r6 // icount 637
ror r6, r6, r4 // icount 638
sco r6, r5, r7 // icount 639
add r2, r5, r7 // icount 640
sle r3, r0, r3 // icount 641
and r4, r3, r2 // icount 642
slt r6, r2, r4 // icount 643
rol r2, r4, r6 // icount 644
or r4, r1, r7 // icount 645
sll r4, r6, r2 // icount 646
sco r0, r7, r5 // icount 647
slt r0, r5, r6 // icount 648
sll r6, r5, r5 // icount 649
add r1, r6, r0 // icount 650
sub r6, r2, r2 // icount 651
add r0, r7, r2 // icount 652
rol r1, r0, r7 // icount 653
sll r6, r7, r6 // icount 654
seq r1, r1, r1 // icount 655
and r4, r4, r1 // icount 656
ror r3, r7, r2 // icount 657
sco r3, r5, r3 // icount 658
ror r1, r3, r2 // icount 659
sco r6, r3, r7 // icount 660
or r5, r2, r5 // icount 661
ror r0, r3, r3 // icount 662
sle r0, r3, r2 // icount 663
add r2, r0, r4 // icount 664
sra r3, r1, r0 // icount 665
slt r0, r2, r1 // icount 666
and r2, r0, r7 // icount 667
sub r6, r4, r4 // icount 668
add r6, r5, r3 // icount 669
or r2, r2, r7 // icount 670
and r5, r5, r2 // icount 671
sll r6, r1, r7 // icount 672
sra r4, r5, r0 // icount 673
rol r0, r2, r4 // icount 674
or r5, r6, r0 // icount 675
or r5, r3, r4 // icount 676
sra r5, r6, r0 // icount 677
sco r5, r4, r2 // icount 678
sll r2, r4, r0 // icount 679
sra r7, r6, r0 // icount 680
.rlabel_24:
j .rlabel_25 // icount 681
sco r6, r7, r3 // icount 682
seq r7, r7, r0 // icount 683
ror r7, r2, r4 // icount 684
sle r3, r1, r7 // icount 685
rol r7, r0, r6 // icount 686
sub r1, r1, r5 // icount 687
ror r3, r4, r5 // icount 688
sll r4, r5, r5 // icount 689
sra r7, r2, r3 // icount 690
add r5, r0, r2 // icount 691
sra r0, r6, r5 // icount 692
rol r3, r3, r3 // icount 693
sle r6, r0, r2 // icount 694
and r2, r0, r4 // icount 695
sra r1, r3, r3 // icount 696
rol r0, r7, r6 // icount 697
add r6, r1, r3 // icount 698
and r4, r3, r1 // icount 699
sub r5, r2, r2 // icount 700
seq r3, r3, r1 // icount 701
sll r7, r2, r4 // icount 702
sle r3, r5, r1 // icount 703
sle r7, r1, r1 // icount 704
sco r6, r6, r6 // icount 705
slt r4, r3, r2 // icount 706
or r0, r5, r1 // icount 707
and r0, r0, r7 // icount 708
sub r7, r2, r6 // icount 709
sub r0, r2, r0 // icount 710
slt r0, r1, r5 // icount 711
and r0, r6, r4 // icount 712
or r1, r1, r0 // icount 713
and r2, r2, r5 // icount 714
sco r0, r5, r6 // icount 715
sll r7, r5, r7 // icount 716
sle r5, r4, r3 // icount 717
slt r0, r0, r4 // icount 718
seq r6, r4, r3 // icount 719
sll r4, r0, r0 // icount 720
and r2, r7, r1 // icount 721
rol r0, r4, r4 // icount 722
sra r7, r4, r1 // icount 723
rol r0, r2, r3 // icount 724
and r6, r5, r2 // icount 725
add r7, r2, r4 // icount 726
rol r4, r1, r1 // icount 727
ror r5, r7, r1 // icount 728
add r6, r2, r4 // icount 729
slt r6, r6, r3 // icount 730
sub r0, r0, r0 // icount 731
sll r3, r0, r3 // icount 732
seq r0, r7, r6 // icount 733
sco r0, r2, r2 // icount 734
sub r1, r3, r4 // icount 735
sco r6, r7, r1 // icount 736
sle r7, r2, r0 // icount 737
sub r5, r5, r2 // icount 738
or r6, r2, r3 // icount 739
sub r6, r3, r2 // icount 740
ror r6, r5, r1 // icount 741
and r5, r7, r0 // icount 742
sll r5, r6, r2 // icount 743
rol r1, r6, r0 // icount 744
sco r1, r1, r4 // icount 745
sra r0, r3, r5 // icount 746
sll r4, r5, r6 // icount 747
or r0, r1, r5 // icount 748
add r7, r1, r5 // icount 749
sra r5, r7, r3 // icount 750
rol r5, r1, r0 // icount 751
slt r5, r0, r7 // icount 752
seq r0, r6, r3 // icount 753
rol r1, r1, r1 // icount 754
and r0, r6, r1 // icount 755
sra r1, r4, r5 // icount 756
add r3, r7, r3 // icount 757
add r5, r2, r1 // icount 758
sle r4, r6, r3 // icount 759
slt r7, r6, r0 // icount 760
sll r2, r2, r5 // icount 761
add r4, r0, r3 // icount 762
sll r2, r4, r2 // icount 763
seq r5, r5, r7 // icount 764
rol r5, r7, r1 // icount 765
ror r6, r7, r3 // icount 766
seq r1, r7, r1 // icount 767
and r4, r0, r5 // icount 768
seq r5, r4, r0 // icount 769
.rlabel_25:
j .rlabel_26 // icount 770
slt r3, r1, r3 // icount 771
ror r1, r0, r4 // icount 772
add r4, r5, r1 // icount 773
and r5, r1, r3 // icount 774
or r3, r3, r0 // icount 775
sle r5, r4, r3 // icount 776
ror r6, r4, r3 // icount 777
or r3, r2, r1 // icount 778
rol r5, r6, r0 // icount 779
sco r5, r3, r3 // icount 780
ror r0, r2, r2 // icount 781
slt r5, r3, r3 // icount 782
ror r4, r5, r4 // icount 783
ror r2, r5, r0 // icount 784
sra r4, r3, r5 // icount 785
add r4, r1, r4 // icount 786
rol r2, r0, r2 // icount 787
or r0, r1, r4 // icount 788
slt r4, r2, r5 // icount 789
sco r2, r4, r7 // icount 790
slt r2, r0, r6 // icount 791
sub r5, r0, r0 // icount 792
add r6, r7, r2 // icount 793
sub r1, r7, r1 // icount 794
and r1, r1, r3 // icount 795
ror r2, r4, r3 // icount 796
sll r4, r6, r1 // icount 797
add r2, r3, r7 // icount 798
rol r1, r1, r5 // icount 799
slt r6, r3, r2 // icount 800
slt r4, r2, r7 // icount 801
sco r1, r5, r3 // icount 802
seq r5, r6, r7 // icount 803
sle r5, r6, r6 // icount 804
sle r7, r5, r4 // icount 805
rol r1, r1, r1 // icount 806
sco r2, r1, r4 // icount 807
seq r3, r6, r2 // icount 808
sle r7, r2, r1 // icount 809
sco r4, r4, r2 // icount 810
ror r2, r7, r7 // icount 811
sco r5, r6, r3 // icount 812
sra r0, r3, r4 // icount 813
and r0, r5, r2 // icount 814
sra r3, r2, r5 // icount 815
seq r2, r2, r5 // icount 816
sll r3, r7, r1 // icount 817
or r7, r5, r3 // icount 818
or r2, r2, r3 // icount 819
sub r6, r3, r2 // icount 820
rol r1, r4, r7 // icount 821
sra r7, r5, r1 // icount 822
ror r1, r3, r3 // icount 823
sco r0, r5, r3 // icount 824
sll r6, r5, r2 // icount 825
ror r0, r4, r1 // icount 826
slt r7, r1, r2 // icount 827
seq r1, r1, r5 // icount 828
sra r2, r0, r5 // icount 829
sub r5, r6, r1 // icount 830
and r0, r2, r3 // icount 831
sub r5, r6, r2 // icount 832
or r1, r2, r6 // icount 833
or r1, r3, r1 // icount 834
or r0, r1, r3 // icount 835
sra r2, r7, r6 // icount 836
and r6, r3, r2 // icount 837
sub r1, r5, r2 // icount 838
sle r0, r3, r3 // icount 839
rol r6, r7, r7 // icount 840
sra r1, r6, r2 // icount 841
sll r6, r6, r5 // icount 842
sle r3, r2, r4 // icount 843
or r7, r5, r3 // icount 844
and r0, r5, r3 // icount 845
sra r7, r2, r3 // icount 846
slt r0, r4, r5 // icount 847
ror r4, r0, r3 // icount 848
and r4, r2, r3 // icount 849
ror r4, r3, r5 // icount 850
seq r2, r6, r0 // icount 851
seq r2, r1, r6 // icount 852
slt r3, r4, r6 // icount 853
slt r4, r0, r4 // icount 854
sll r0, r7, r6 // icount 855
slt r3, r0, r6 // icount 856
rol r2, r7, r6 // icount 857
seq r1, r6, r7 // icount 858
slt r7, r3, r7 // icount 859
sco r1, r2, r6 // icount 860
sll r5, r4, r2 // icount 861
sco r1, r5, r3 // icount 862
rol r2, r0, r0 // icount 863
ror r3, r4, r1 // icount 864
.rlabel_26:
ld r7, r6, 12
addi r6, r6, 12
jal .rlabel_27 // icount 865
or r6, r0, r5 // icount 866
slt r0, r5, r6 // icount 867
sub r4, r3, r4 // icount 868
sll r7, r0, r3 // icount 869
seq r1, r4, r2 // icount 870
ror r2, r0, r4 // icount 871
sub r6, r6, r1 // icount 872
.rlabel_27:
jal .rlabel_28 // icount 873
sll r6, r6, r3 // icount 874
add r4, r5, r2 // icount 875
or r2, r6, r6 // icount 876
add r2, r2, r2 // icount 877
slt r4, r7, r0 // icount 878
sub r2, r3, r4 // icount 879
rol r1, r0, r2 // icount 880
seq r1, r5, r1 // icount 881
.rlabel_28:
bnez r1, .rlabel_29 // icount 882
rol r3, r5, r7 // icount 883
add r0, r2, r1 // icount 884
add r4, r1, r5 // icount 885
sll r2, r5, r6 // icount 886
sra r2, r0, r4 // icount 887
sub r7, r1, r4 // icount 888
sll r5, r1, r3 // icount 889
sll r7, r2, r5 // icount 890
sle r3, r0, r5 // icount 891
sll r1, r6, r5 // icount 892
rol r7, r2, r7 // icount 893
seq r5, r2, r2 // icount 894
rol r4, r7, r1 // icount 895
.rlabel_29:
st r7, r6, 10
addi r6, r6, 10
j .rlabel_30 // icount 896
add r5, r4, r7 // icount 897
ror r5, r1, r0 // icount 898
ror r1, r2, r0 // icount 899
add r2, r0, r6 // icount 900
ror r7, r6, r1 // icount 901
sra r3, r4, r1 // icount 902
sra r0, r0, r1 // icount 903
sra r1, r0, r3 // icount 904
rol r1, r7, r4 // icount 905
or r4, r3, r1 // icount 906
sra r3, r4, r2 // icount 907
slt r0, r6, r4 // icount 908
sco r7, r1, r3 // icount 909
and r4, r6, r2 // icount 910
sll r7, r2, r7 // icount 911
sll r2, r5, r3 // icount 912
and r0, r1, r7 // icount 913
ror r0, r5, r7 // icount 914
or r0, r7, r2 // icount 915
rol r4, r1, r3 // icount 916
seq r6, r0, r5 // icount 917
add r0, r6, r7 // icount 918
sra r6, r0, r0 // icount 919
add r3, r2, r4 // icount 920
sll r5, r3, r5 // icount 921
sub r1, r0, r2 // icount 922
sll r4, r7, r5 // icount 923
ror r6, r6, r3 // icount 924
ror r3, r7, r3 // icount 925
slt r1, r7, r0 // icount 926
seq r0, r5, r5 // icount 927
sll r2, r3, r5 // icount 928
sub r2, r5, r0 // icount 929
and r0, r2, r2 // icount 930
slt r4, r4, r3 // icount 931
sub r6, r5, r1 // icount 932
seq r5, r5, r6 // icount 933
rol r0, r5, r3 // icount 934
sle r4, r0, r3 // icount 935
slt r0, r7, r4 // icount 936
sra r7, r0, r6 // icount 937
ror r0, r6, r1 // icount 938
sub r3, r2, r3 // icount 939
add r1, r3, r7 // icount 940
sll r3, r2, r1 // icount 941
ror r3, r4, r7 // icount 942
ror r0, r5, r2 // icount 943
sco r0, r0, r5 // icount 944
or r2, r0, r0 // icount 945
slt r6, r7, r0 // icount 946
rol r5, r1, r1 // icount 947
sle r4, r7, r3 // icount 948
and r2, r1, r6 // icount 949
sco r2, r4, r3 // icount 950
sll r3, r4, r4 // icount 951
sra r4, r0, r7 // icount 952
ror r3, r2, r1 // icount 953
add r7, r2, r3 // icount 954
or r5, r5, r6 // icount 955
and r0, r5, r6 // icount 956
sll r3, r1, r4 // icount 957
add r7, r1, r0 // icount 958
sle r5, r4, r4 // icount 959
sle r5, r2, r0 // icount 960
sra r4, r2, r7 // icount 961
sle r6, r5, r6 // icount 962
ror r6, r2, r3 // icount 963
sra r7, r1, r1 // icount 964
add r1, r5, r0 // icount 965
rol r0, r0, r5 // icount 966
sll r5, r0, r7 // icount 967
.rlabel_30:
bnez r1, .rlabel_31 // icount 968
seq r5, r2, r4 // icount 969
seq r5, r0, r1 // icount 970
slt r4, r5, r3 // icount 971
slt r0, r1, r3 // icount 972
sra r1, r3, r4 // icount 973
rol r7, r5, r6 // icount 974
seq r3, r1, r6 // icount 975
sll r4, r2, r2 // icount 976
rol r7, r3, r2 // icount 977
or r2, r6, r2 // icount 978
or r4, r5, r0 // icount 979
or r0, r0, r5 // icount 980
.rlabel_31:
st r7, r6, 0
addi r6, r6, 0
jal .rlabel_32 // icount 981
and r7, r1, r3 // icount 982
slt r3, r3, r5 // icount 983
and r2, r1, r7 // icount 984
add r0, r0, r7 // icount 985
sco r5, r4, r4 // icount 986
add r2, r7, r3 // icount 987
sll r6, r5, r6 // icount 988
rol r7, r0, r4 // icount 989
or r2, r5, r0 // icount 990
add r4, r1, r5 // icount 991
sra r0, r7, r1 // icount 992
.rlabel_32:
beqz r0, .rlabel_33 // icount 993
sra r1, r4, r2 // icount 994
sle r1, r4, r0 // icount 995
sll r5, r7, r5 // icount 996
rol r1, r5, r4 // icount 997
.rlabel_33:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_34 // icount 998
or r3, r6, r0 // icount 999
seq r1, r1, r3 // icount 1000
.rlabel_34:
st r7, r6, 12
addi r6, r6, 12
j .rlabel_35 // icount 1001
sco r5, r1, r2 // icount 1002
sll r2, r5, r1 // icount 1003
rol r2, r4, r2 // icount 1004
sle r5, r0, r1 // icount 1005
sle r2, r1, r7 // icount 1006
sra r6, r2, r5 // icount 1007
sco r3, r1, r5 // icount 1008
or r6, r5, r6 // icount 1009
sco r3, r6, r3 // icount 1010
add r5, r1, r7 // icount 1011
rol r0, r6, r3 // icount 1012
or r2, r4, r5 // icount 1013
or r0, r5, r5 // icount 1014
sra r6, r4, r7 // icount 1015
sub r1, r1, r7 // icount 1016
rol r3, r2, r4 // icount 1017
sle r7, r5, r7 // icount 1018
add r1, r5, r4 // icount 1019
sle r6, r5, r3 // icount 1020
rol r6, r1, r3 // icount 1021
ror r3, r3, r6 // icount 1022
sle r1, r1, r4 // icount 1023
sra r4, r5, r7 // icount 1024
add r4, r6, r0 // icount 1025
slt r7, r5, r4 // icount 1026
ror r4, r1, r1 // icount 1027
or r1, r0, r5 // icount 1028
slt r6, r3, r1 // icount 1029
add r0, r3, r0 // icount 1030
or r7, r2, r7 // icount 1031
sle r3, r7, r5 // icount 1032
add r4, r7, r6 // icount 1033
or r4, r7, r7 // icount 1034
or r0, r5, r2 // icount 1035
sle r5, r6, r7 // icount 1036
sco r7, r3, r1 // icount 1037
seq r3, r6, r5 // icount 1038
.rlabel_35:
beqz r0, .rlabel_36 // icount 1039
add r3, r5, r3 // icount 1040
and r1, r2, r0 // icount 1041
sco r5, r5, r6 // icount 1042
ror r4, r5, r5 // icount 1043
and r1, r0, r0 // icount 1044
add r6, r5, r5 // icount 1045
and r3, r7, r6 // icount 1046
or r3, r2, r2 // icount 1047
add r7, r7, r4 // icount 1048
sra r4, r2, r5 // icount 1049
sra r7, r0, r2 // icount 1050
slt r3, r0, r1 // icount 1051
.rlabel_36:
beqz r0, .rlabel_37 // icount 1052
add r1, r7, r1 // icount 1053
sra r5, r4, r4 // icount 1054
sll r1, r3, r0 // icount 1055
sra r4, r1, r0 // icount 1056
and r1, r6, r2 // icount 1057
sco r0, r7, r5 // icount 1058
ror r2, r2, r7 // icount 1059
.rlabel_37:
beqz r0, .rlabel_38 // icount 1060
ror r7, r7, r7 // icount 1061
sle r3, r1, r7 // icount 1062
.rlabel_38:
beqz r0, .rlabel_39 // icount 1063
sub r4, r0, r1 // icount 1064
sub r7, r2, r4 // icount 1065
sle r0, r5, r1 // icount 1066
sub r6, r1, r3 // icount 1067
ror r1, r4, r7 // icount 1068
and r6, r2, r2 // icount 1069
sco r6, r2, r2 // icount 1070
and r7, r7, r2 // icount 1071
seq r1, r3, r6 // icount 1072
slt r2, r4, r7 // icount 1073
or r0, r3, r1 // icount 1074
.rlabel_39:
ld r7, r6, 14
addi r6, r6, 14
jal .rlabel_40 // icount 1075
sll r0, r7, r1 // icount 1076
rol r4, r6, r6 // icount 1077
seq r2, r3, r2 // icount 1078
sra r1, r0, r0 // icount 1079
sra r2, r4, r7 // icount 1080
rol r0, r4, r4 // icount 1081
rol r4, r4, r5 // icount 1082
rol r3, r0, r5 // icount 1083
ror r1, r6, r3 // icount 1084
sco r0, r3, r1 // icount 1085
add r7, r5, r1 // icount 1086
rol r6, r7, r5 // icount 1087
or r2, r7, r5 // icount 1088
sle r2, r1, r4 // icount 1089
rol r5, r3, r6 // icount 1090
sub r7, r7, r7 // icount 1091
sub r0, r0, r4 // icount 1092
sub r2, r1, r5 // icount 1093
add r6, r4, r0 // icount 1094
sub r6, r2, r4 // icount 1095
sra r5, r3, r0 // icount 1096
add r7, r7, r2 // icount 1097
sra r6, r1, r4 // icount 1098
and r6, r1, r3 // icount 1099
sll r0, r0, r1 // icount 1100
add r7, r7, r5 // icount 1101
.rlabel_40:
ld r7, r6, 0
addi r6, r6, 0
jal .rlabel_41 // icount 1102
or r4, r4, r7 // icount 1103
rol r4, r7, r0 // icount 1104
sco r7, r0, r3 // icount 1105
slt r3, r0, r7 // icount 1106
ror r3, r6, r4 // icount 1107
add r2, r1, r3 // icount 1108
sll r0, r0, r0 // icount 1109
add r1, r4, r5 // icount 1110
sra r5, r3, r5 // icount 1111
seq r6, r6, r1 // icount 1112
sle r0, r0, r4 // icount 1113
rol r1, r1, r7 // icount 1114
sco r4, r1, r5 // icount 1115
and r5, r2, r0 // icount 1116
or r2, r7, r6 // icount 1117
sle r6, r2, r3 // icount 1118
add r2, r2, r5 // icount 1119
sle r2, r3, r5 // icount 1120
.rlabel_41:
st r7, r6, 8
addi r6, r6, 8
j .rlabel_42 // icount 1121
ror r7, r6, r7 // icount 1122
seq r1, r5, r3 // icount 1123
ror r0, r6, r5 // icount 1124
sco r1, r6, r5 // icount 1125
seq r6, r0, r6 // icount 1126
add r2, r2, r2 // icount 1127
ror r5, r7, r7 // icount 1128
slt r1, r4, r3 // icount 1129
or r2, r6, r0 // icount 1130
rol r1, r3, r7 // icount 1131
seq r7, r2, r7 // icount 1132
slt r1, r2, r2 // icount 1133
ror r7, r3, r6 // icount 1134
or r4, r0, r2 // icount 1135
rol r3, r3, r7 // icount 1136
ror r7, r2, r0 // icount 1137
and r2, r3, r6 // icount 1138
sle r6, r4, r6 // icount 1139
sra r7, r2, r4 // icount 1140
slt r1, r7, r7 // icount 1141
sub r5, r3, r0 // icount 1142
slt r7, r5, r4 // icount 1143
sra r4, r6, r7 // icount 1144
or r3, r7, r6 // icount 1145
rol r6, r0, r5 // icount 1146
or r0, r0, r2 // icount 1147
and r2, r5, r4 // icount 1148
sub r1, r7, r5 // icount 1149
and r2, r6, r6 // icount 1150
ror r3, r6, r7 // icount 1151
sle r6, r3, r6 // icount 1152
sll r2, r2, r2 // icount 1153
sle r6, r4, r5 // icount 1154
sll r0, r2, r0 // icount 1155
and r6, r1, r3 // icount 1156
slt r7, r1, r0 // icount 1157
ror r4, r6, r6 // icount 1158
or r2, r6, r6 // icount 1159
slt r3, r1, r2 // icount 1160
slt r2, r7, r6 // icount 1161
ror r6, r3, r1 // icount 1162
sco r2, r2, r2 // icount 1163
rol r1, r3, r1 // icount 1164
sll r5, r4, r5 // icount 1165
rol r5, r6, r0 // icount 1166
.rlabel_42:
ld r7, r6, 8
addi r6, r6, 8
jal .rlabel_43 // icount 1167
slt r5, r5, r5 // icount 1168
sco r1, r4, r7 // icount 1169
or r4, r6, r3 // icount 1170
sub r2, r5, r1 // icount 1171
or r6, r2, r5 // icount 1172
rol r7, r3, r3 // icount 1173
add r2, r7, r4 // icount 1174
sra r1, r4, r0 // icount 1175
sle r2, r6, r1 // icount 1176
slt r4, r5, r2 // icount 1177
sco r3, r6, r4 // icount 1178
seq r6, r7, r5 // icount 1179
sra r2, r2, r7 // icount 1180
sra r1, r7, r3 // icount 1181
and r4, r3, r2 // icount 1182
sra r6, r1, r3 // icount 1183
.rlabel_43:
ld r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_44 // icount 1184
slt r7, r2, r4 // icount 1185
sle r4, r2, r1 // icount 1186
sll r5, r3, r1 // icount 1187
add r4, r7, r3 // icount 1188
sle r6, r0, r0 // icount 1189
and r6, r1, r4 // icount 1190
sub r2, r5, r3 // icount 1191
slt r0, r3, r2 // icount 1192
sub r3, r7, r4 // icount 1193
ror r1, r3, r6 // icount 1194
add r7, r3, r2 // icount 1195
sll r3, r6, r7 // icount 1196
sra r0, r3, r4 // icount 1197
seq r2, r5, r6 // icount 1198
.rlabel_44:
bnez r1, .rlabel_45 // icount 1199
sub r7, r0, r1 // icount 1200
sra r7, r4, r7 // icount 1201
slt r2, r0, r3 // icount 1202
sll r6, r1, r6 // icount 1203
add r4, r2, r6 // icount 1204
or r1, r5, r5 // icount 1205
sub r7, r4, r4 // icount 1206
and r4, r7, r6 // icount 1207
sra r5, r1, r7 // icount 1208
sle r0, r7, r1 // icount 1209
slt r2, r7, r1 // icount 1210
.rlabel_45:
beqz r0, .rlabel_46 // icount 1211
sll r6, r1, r3 // icount 1212
rol r2, r7, r6 // icount 1213
.rlabel_46:
jal .rlabel_47 // icount 1214
and r1, r0, r2 // icount 1215
sra r3, r4, r4 // icount 1216
.rlabel_47:
bnez r1, .rlabel_48 // icount 1217
.rlabel_48:
jal .rlabel_49 // icount 1218
seq r0, r6, r7 // icount 1219
slt r1, r0, r3 // icount 1220
sle r4, r1, r7 // icount 1221
ror r1, r5, r0 // icount 1222
sco r5, r0, r7 // icount 1223
sco r3, r1, r1 // icount 1224
rol r2, r1, r6 // icount 1225
slt r4, r7, r0 // icount 1226
add r2, r0, r3 // icount 1227
and r1, r3, r7 // icount 1228
sle r7, r3, r1 // icount 1229
sco r7, r6, r3 // icount 1230
add r7, r3, r1 // icount 1231
sle r7, r2, r0 // icount 1232
sll r4, r0, r5 // icount 1233
ror r1, r0, r7 // icount 1234
.rlabel_49:
bnez r1, .rlabel_50 // icount 1235
ror r1, r4, r0 // icount 1236
sle r4, r6, r1 // icount 1237
slt r1, r4, r5 // icount 1238
sub r7, r4, r2 // icount 1239
sra r1, r4, r3 // icount 1240
slt r7, r4, r3 // icount 1241
.rlabel_50:
st r7, r6, 6
addi r6, r6, 6
jal .rlabel_51 // icount 1242
sub r3, r3, r7 // icount 1243
or r5, r0, r1 // icount 1244
slt r6, r2, r0 // icount 1245
sle r2, r4, r1 // icount 1246
sco r3, r3, r5 // icount 1247
.rlabel_51:
st r7, r6, 10
addi r6, r6, 10
beqz r0, .rlabel_52 // icount 1248
or r4, r7, r0 // icount 1249
.rlabel_52:
ld r7, r6, 2
addi r6, r6, 2
beqz r0, .rlabel_53 // icount 1250
sco r7, r3, r5 // icount 1251
.rlabel_53:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_54 // icount 1252
sll r0, r6, r7 // icount 1253
sle r5, r0, r0 // icount 1254
sub r6, r1, r1 // icount 1255
add r0, r0, r5 // icount 1256
or r3, r2, r7 // icount 1257
.rlabel_54:
st r7, r6, 0
addi r6, r6, 0
beqz r0, .rlabel_55 // icount 1258
add r4, r5, r6 // icount 1259
rol r0, r1, r1 // icount 1260
or r6, r6, r5 // icount 1261
sll r0, r7, r1 // icount 1262
sll r4, r4, r5 // icount 1263
rol r5, r2, r2 // icount 1264
sle r3, r7, r7 // icount 1265
slt r0, r1, r6 // icount 1266
rol r5, r4, r6 // icount 1267
sra r4, r6, r4 // icount 1268
.rlabel_55:
beqz r0, .rlabel_56 // icount 1269
sra r6, r2, r6 // icount 1270
ror r3, r1, r2 // icount 1271
and r0, r3, r1 // icount 1272
sco r1, r6, r4 // icount 1273
ror r0, r7, r4 // icount 1274
sra r6, r3, r5 // icount 1275
sub r2, r0, r3 // icount 1276
sll r3, r4, r6 // icount 1277
or r5, r0, r0 // icount 1278
sco r2, r3, r1 // icount 1279
sub r0, r0, r5 // icount 1280
slt r1, r2, r1 // icount 1281
ror r6, r0, r0 // icount 1282
.rlabel_56:
beqz r0, .rlabel_57 // icount 1283
.rlabel_57:
ld r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_58 // icount 1284
sco r0, r3, r4 // icount 1285
add r7, r0, r5 // icount 1286
sub r2, r5, r4 // icount 1287
sco r6, r5, r4 // icount 1288
slt r7, r7, r7 // icount 1289
rol r0, r4, r3 // icount 1290
slt r3, r0, r2 // icount 1291
sra r2, r7, r5 // icount 1292
ror r5, r1, r1 // icount 1293
sub r0, r1, r0 // icount 1294
rol r3, r1, r2 // icount 1295
or r4, r7, r0 // icount 1296
and r7, r4, r7 // icount 1297
sco r7, r6, r3 // icount 1298
slt r6, r7, r7 // icount 1299
.rlabel_58:
jal .rlabel_59 // icount 1300
rol r1, r0, r1 // icount 1301
sle r1, r6, r0 // icount 1302
sll r2, r2, r5 // icount 1303
sll r1, r0, r7 // icount 1304
sub r0, r4, r7 // icount 1305
sra r3, r1, r0 // icount 1306
seq r0, r6, r2 // icount 1307
sub r7, r0, r1 // icount 1308
or r7, r4, r6 // icount 1309
or r0, r1, r4 // icount 1310
sle r5, r2, r5 // icount 1311
sll r5, r6, r0 // icount 1312
ror r4, r7, r4 // icount 1313
.rlabel_59:
ld r7, r6, 14
addi r6, r6, 14
bnez r1, .rlabel_60 // icount 1314
or r4, r3, r6 // icount 1315
sub r6, r3, r6 // icount 1316
add r2, r2, r2 // icount 1317
ror r0, r0, r4 // icount 1318
sub r1, r1, r6 // icount 1319
ror r1, r2, r7 // icount 1320
and r3, r2, r6 // icount 1321
sle r0, r0, r0 // icount 1322
and r4, r7, r6 // icount 1323
sra r1, r3, r7 // icount 1324
or r7, r0, r0 // icount 1325
.rlabel_60:
bnez r1, .rlabel_61 // icount 1326
seq r2, r2, r3 // icount 1327
sll r5, r2, r1 // icount 1328
add r5, r4, r2 // icount 1329
rol r6, r3, r1 // icount 1330
sub r7, r7, r5 // icount 1331
sll r6, r0, r7 // icount 1332
slt r1, r0, r2 // icount 1333
rol r6, r1, r6 // icount 1334
rol r2, r6, r5 // icount 1335
sco r2, r7, r7 // icount 1336
sle r5, r7, r3 // icount 1337
seq r0, r4, r4 // icount 1338
ror r2, r6, r0 // icount 1339
.rlabel_61:
ld r7, r6, 8
addi r6, r6, 8
bnez r1, .rlabel_62 // icount 1340
rol r4, r4, r2 // icount 1341
sll r4, r3, r5 // icount 1342
rol r3, r1, r6 // icount 1343
.rlabel_62:
beqz r0, .rlabel_63 // icount 1344
slt r7, r7, r3 // icount 1345
sub r6, r2, r1 // icount 1346
sll r6, r0, r2 // icount 1347
slt r2, r7, r5 // icount 1348
or r7, r3, r5 // icount 1349
sub r4, r7, r1 // icount 1350
ror r2, r2, r3 // icount 1351
sub r2, r6, r3 // icount 1352
ror r3, r7, r0 // icount 1353
and r2, r4, r7 // icount 1354
sra r6, r6, r0 // icount 1355
add r1, r5, r4 // icount 1356
sll r2, r2, r1 // icount 1357
.rlabel_63:
j .rlabel_64 // icount 1358
seq r7, r2, r7 // icount 1359
seq r7, r3, r5 // icount 1360
seq r5, r0, r6 // icount 1361
and r2, r0, r6 // icount 1362
slt r5, r0, r6 // icount 1363
sle r0, r3, r7 // icount 1364
sll r5, r2, r2 // icount 1365
slt r2, r6, r4 // icount 1366
sco r3, r7, r4 // icount 1367
rol r5, r3, r2 // icount 1368
seq r3, r5, r7 // icount 1369
slt r5, r1, r6 // icount 1370
slt r1, r7, r1 // icount 1371
.rlabel_64:
bnez r1, .rlabel_65 // icount 1372
sra r1, r0, r3 // icount 1373
sra r2, r0, r0 // icount 1374
sub r4, r1, r2 // icount 1375
add r1, r1, r5 // icount 1376
sll r5, r2, r4 // icount 1377
sub r4, r0, r7 // icount 1378
rol r4, r4, r1 // icount 1379
sub r7, r2, r6 // icount 1380
slt r7, r0, r0 // icount 1381
sll r5, r5, r6 // icount 1382
and r4, r3, r7 // icount 1383
.rlabel_65:
st r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_66 // icount 1384
seq r4, r4, r1 // icount 1385
seq r4, r6, r2 // icount 1386
.rlabel_66:
beqz r0, .rlabel_67 // icount 1387
or r4, r4, r4 // icount 1388
seq r7, r6, r6 // icount 1389
sub r3, r3, r3 // icount 1390
add r1, r3, r7 // icount 1391
add r6, r3, r4 // icount 1392
sra r0, r2, r0 // icount 1393
sub r1, r5, r1 // icount 1394
ror r3, r6, r4 // icount 1395
slt r1, r4, r2 // icount 1396
seq r6, r6, r6 // icount 1397
.rlabel_67:
jal .rlabel_68 // icount 1398
or r4, r0, r5 // icount 1399
or r1, r7, r3 // icount 1400
sub r0, r3, r7 // icount 1401
sra r2, r3, r0 // icount 1402
ror r0, r7, r2 // icount 1403
sub r5, r3, r5 // icount 1404
and r7, r6, r3 // icount 1405
seq r4, r2, r6 // icount 1406
sub r6, r5, r3 // icount 1407
sco r7, r5, r1 // icount 1408
add r7, r0, r3 // icount 1409
or r2, r7, r1 // icount 1410
sra r7, r0, r1 // icount 1411
sub r3, r5, r7 // icount 1412
sra r0, r6, r0 // icount 1413
add r7, r3, r5 // icount 1414
sll r7, r0, r3 // icount 1415
add r0, r7, r3 // icount 1416
slt r7, r3, r1 // icount 1417
or r5, r6, r4 // icount 1418
or r7, r3, r1 // icount 1419
sub r3, r2, r4 // icount 1420
sco r6, r2, r5 // icount 1421
or r4, r7, r6 // icount 1422
seq r3, r5, r5 // icount 1423
sle r2, r7, r3 // icount 1424
.rlabel_68:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_69 // icount 1425
and r4, r3, r6 // icount 1426
add r6, r3, r2 // icount 1427
ror r6, r1, r2 // icount 1428
sle r6, r2, r0 // icount 1429
sll r1, r6, r4 // icount 1430
sra r3, r3, r5 // icount 1431
add r7, r0, r4 // icount 1432
add r3, r6, r5 // icount 1433
or r6, r4, r0 // icount 1434
and r7, r6, r7 // icount 1435
seq r4, r0, r4 // icount 1436
sll r7, r5, r6 // icount 1437
sll r2, r6, r4 // icount 1438
ror r5, r0, r3 // icount 1439
seq r5, r5, r0 // icount 1440
rol r1, r5, r2 // icount 1441
sra r4, r2, r1 // icount 1442
sco r3, r6, r5 // icount 1443
slt r6, r4, r2 // icount 1444
and r1, r7, r6 // icount 1445
or r5, r1, r5 // icount 1446
rol r0, r7, r2 // icount 1447
sra r4, r1, r1 // icount 1448
slt r5, r3, r3 // icount 1449
sra r4, r3, r1 // icount 1450
rol r7, r6, r3 // icount 1451
or r7, r7, r5 // icount 1452
and r1, r0, r6 // icount 1453
sco r4, r0, r1 // icount 1454
sra r3, r3, r4 // icount 1455
sra r3, r4, r2 // icount 1456
sra r6, r2, r7 // icount 1457
and r0, r5, r2 // icount 1458
sub r2, r5, r5 // icount 1459
sco r0, r1, r3 // icount 1460
sll r5, r3, r7 // icount 1461
sll r3, r1, r0 // icount 1462
rol r4, r3, r7 // icount 1463
sra r6, r3, r7 // icount 1464
slt r1, r3, r6 // icount 1465
rol r4, r6, r5 // icount 1466
and r4, r2, r1 // icount 1467
sll r0, r4, r0 // icount 1468
seq r5, r0, r4 // icount 1469
or r2, r1, r7 // icount 1470
ror r3, r2, r0 // icount 1471
slt r5, r7, r7 // icount 1472
slt r7, r7, r5 // icount 1473
sll r1, r0, r5 // icount 1474
sll r5, r5, r7 // icount 1475
rol r6, r6, r3 // icount 1476
rol r4, r3, r5 // icount 1477
and r2, r1, r5 // icount 1478
sll r5, r0, r6 // icount 1479
seq r4, r1, r1 // icount 1480
slt r5, r7, r3 // icount 1481
ror r6, r4, r1 // icount 1482
sra r7, r0, r4 // icount 1483
sco r5, r5, r4 // icount 1484
sub r7, r0, r0 // icount 1485
and r1, r6, r7 // icount 1486
ror r7, r1, r2 // icount 1487
sub r4, r0, r6 // icount 1488
ror r6, r2, r5 // icount 1489
sle r2, r6, r1 // icount 1490
sll r2, r6, r2 // icount 1491
sco r2, r1, r7 // icount 1492
seq r6, r2, r5 // icount 1493
or r0, r5, r4 // icount 1494
and r6, r2, r4 // icount 1495
ror r1, r4, r2 // icount 1496
.rlabel_69:
jal .rlabel_70 // icount 1497
seq r0, r5, r3 // icount 1498
slt r0, r0, r7 // icount 1499
sll r1, r5, r7 // icount 1500
ror r3, r6, r1 // icount 1501
sra r0, r3, r6 // icount 1502
sub r6, r0, r3 // icount 1503
sub r0, r2, r6 // icount 1504
and r4, r1, r4 // icount 1505
add r5, r3, r0 // icount 1506
sra r0, r3, r6 // icount 1507
or r6, r2, r6 // icount 1508
or r6, r5, r0 // icount 1509
or r1, r3, r7 // icount 1510
slt r1, r4, r6 // icount 1511
ror r7, r4, r0 // icount 1512
slt r1, r5, r7 // icount 1513
sco r6, r5, r2 // icount 1514
or r3, r1, r4 // icount 1515
rol r3, r0, r7 // icount 1516
.rlabel_70:
st r7, r6, 4
addi r6, r6, 4
bnez r1, .rlabel_71 // icount 1517
sra r5, r1, r0 // icount 1518
sub r7, r5, r1 // icount 1519
rol r6, r0, r2 // icount 1520
rol r1, r4, r0 // icount 1521
or r4, r4, r1 // icount 1522
seq r3, r6, r0 // icount 1523
sle r1, r3, r2 // icount 1524
sco r3, r1, r5 // icount 1525
sll r5, r3, r5 // icount 1526
add r7, r3, r4 // icount 1527
.rlabel_71:
jal .rlabel_72 // icount 1528
seq r2, r5, r6 // icount 1529
slt r0, r3, r1 // icount 1530
seq r2, r4, r3 // icount 1531
sub r7, r0, r1 // icount 1532
or r0, r6, r5 // icount 1533
sll r5, r5, r0 // icount 1534
rol r2, r0, r3 // icount 1535
sle r5, r2, r1 // icount 1536
seq r4, r3, r4 // icount 1537
sub r1, r0, r2 // icount 1538
rol r7, r5, r7 // icount 1539
.rlabel_72:
bnez r1, .rlabel_73 // icount 1540
ror r6, r1, r6 // icount 1541
add r7, r6, r7 // icount 1542
and r0, r0, r4 // icount 1543
rol r4, r4, r3 // icount 1544
sub r2, r6, r2 // icount 1545
sle r0, r3, r3 // icount 1546
sll r1, r6, r1 // icount 1547
.rlabel_73:
bnez r1, .rlabel_74 // icount 1548
add r7, r5, r3 // icount 1549
and r3, r7, r2 // icount 1550
seq r0, r7, r1 // icount 1551
and r2, r0, r2 // icount 1552
sco r7, r5, r7 // icount 1553
add r4, r3, r7 // icount 1554
sco r7, r4, r6 // icount 1555
slt r3, r4, r2 // icount 1556
seq r0, r2, r5 // icount 1557
and r2, r3, r2 // icount 1558
sra r3, r7, r5 // icount 1559
.rlabel_74:
jal .rlabel_75 // icount 1560
sco r5, r4, r2 // icount 1561
sll r1, r1, r5 // icount 1562
seq r3, r3, r6 // icount 1563
seq r6, r0, r7 // icount 1564
or r0, r1, r5 // icount 1565
rol r3, r6, r4 // icount 1566
sle r4, r6, r5 // icount 1567
and r3, r2, r0 // icount 1568
or r4, r6, r6 // icount 1569
sll r3, r4, r7 // icount 1570
or r3, r0, r2 // icount 1571
sub r3, r5, r5 // icount 1572
rol r0, r7, r2 // icount 1573
rol r0, r5, r6 // icount 1574
sco r3, r5, r3 // icount 1575
.rlabel_75:
ld r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_76 // icount 1576
rol r3, r1, r1 // icount 1577
sco r2, r3, r0 // icount 1578
rol r4, r4, r3 // icount 1579
slt r5, r3, r3 // icount 1580
sco r4, r0, r7 // icount 1581
sle r0, r1, r2 // icount 1582
seq r4, r3, r1 // icount 1583
rol r1, r1, r1 // icount 1584
and r6, r3, r0 // icount 1585
sub r1, r5, r4 // icount 1586
.rlabel_76:
beqz r0, .rlabel_77 // icount 1587
ror r6, r2, r2 // icount 1588
add r2, r1, r6 // icount 1589
sra r0, r6, r7 // icount 1590
sle r5, r3, r2 // icount 1591
sle r2, r7, r0 // icount 1592
sco r6, r4, r6 // icount 1593
rol r1, r6, r5 // icount 1594
add r2, r7, r4 // icount 1595
slt r6, r1, r2 // icount 1596
add r6, r3, r2 // icount 1597
seq r7, r5, r2 // icount 1598
slt r7, r6, r0 // icount 1599
seq r6, r2, r5 // icount 1600
or r3, r1, r3 // icount 1601
.rlabel_77:
ld r7, r6, 14
addi r6, r6, 14
j .rlabel_78 // icount 1602
or r1, r6, r4 // icount 1603
sra r5, r2, r6 // icount 1604
sll r0, r7, r7 // icount 1605
seq r4, r0, r2 // icount 1606
add r0, r2, r2 // icount 1607
ror r2, r5, r2 // icount 1608
sub r1, r7, r6 // icount 1609
sub r6, r6, r2 // icount 1610
add r6, r5, r3 // icount 1611
sll r0, r5, r2 // icount 1612
sll r5, r5, r2 // icount 1613
rol r5, r1, r2 // icount 1614
sub r7, r1, r1 // icount 1615
add r7, r6, r2 // icount 1616
sco r3, r0, r0 // icount 1617
sle r0, r5, r2 // icount 1618
or r7, r5, r7 // icount 1619
add r5, r4, r7 // icount 1620
add r6, r1, r5 // icount 1621
rol r2, r7, r6 // icount 1622
or r5, r6, r1 // icount 1623
ror r4, r2, r7 // icount 1624
sra r6, r4, r1 // icount 1625
and r6, r2, r0 // icount 1626
sra r5, r6, r3 // icount 1627
slt r7, r6, r1 // icount 1628
or r3, r0, r0 // icount 1629
sub r6, r4, r6 // icount 1630
and r1, r1, r1 // icount 1631
sco r2, r7, r7 // icount 1632
rol r6, r5, r6 // icount 1633
sub r6, r7, r4 // icount 1634
sle r6, r6, r4 // icount 1635
or r1, r6, r6 // icount 1636
add r1, r4, r4 // icount 1637
and r5, r7, r7 // icount 1638
sra r0, r2, r5 // icount 1639
add r5, r1, r4 // icount 1640
sra r2, r2, r5 // icount 1641
or r6, r3, r7 // icount 1642
or r4, r6, r6 // icount 1643
seq r3, r5, r4 // icount 1644
sra r1, r1, r0 // icount 1645
sll r7, r6, r1 // icount 1646
and r4, r0, r6 // icount 1647
sra r0, r5, r6 // icount 1648
sco r5, r1, r3 // icount 1649
and r2, r7, r6 // icount 1650
sle r6, r6, r7 // icount 1651
rol r0, r3, r4 // icount 1652
add r7, r6, r7 // icount 1653
slt r7, r4, r6 // icount 1654
sle r2, r5, r7 // icount 1655
sle r0, r0, r4 // icount 1656
ror r3, r0, r2 // icount 1657
.rlabel_78:
st r7, r6, 14
addi r6, r6, 14
beqz r0, .rlabel_79 // icount 1658
add r0, r7, r4 // icount 1659
sll r6, r2, r2 // icount 1660
sll r1, r6, r1 // icount 1661
rol r6, r6, r5 // icount 1662
rol r7, r1, r4 // icount 1663
.rlabel_79:
ld r7, r6, 14
addi r6, r6, 14
j .rlabel_80 // icount 1664
sll r6, r1, r5 // icount 1665
sco r6, r4, r3 // icount 1666
add r6, r7, r5 // icount 1667
sra r6, r5, r5 // icount 1668
ror r1, r7, r3 // icount 1669
and r4, r7, r1 // icount 1670
ror r1, r0, r5 // icount 1671
sco r0, r7, r1 // icount 1672
sub r5, r3, r5 // icount 1673
sco r2, r6, r7 // icount 1674
add r0, r7, r3 // icount 1675
add r7, r4, r5 // icount 1676
sll r5, r5, r3 // icount 1677
add r3, r2, r1 // icount 1678
and r5, r6, r1 // icount 1679
seq r2, r0, r6 // icount 1680
or r2, r5, r4 // icount 1681
ror r7, r1, r2 // icount 1682
sll r5, r2, r1 // icount 1683
or r4, r5, r2 // icount 1684
sll r0, r3, r1 // icount 1685
slt r6, r4, r1 // icount 1686
sub r5, r0, r6 // icount 1687
seq r6, r6, r5 // icount 1688
sll r4, r1, r1 // icount 1689
sra r5, r2, r1 // icount 1690
slt r7, r1, r3 // icount 1691
slt r4, r4, r0 // icount 1692
ror r2, r5, r5 // icount 1693
add r5, r1, r7 // icount 1694
and r5, r1, r0 // icount 1695
add r7, r3, r3 // icount 1696
sle r1, r2, r6 // icount 1697
slt r7, r5, r3 // icount 1698
sll r4, r1, r7 // icount 1699
ror r4, r0, r4 // icount 1700
ror r0, r4, r1 // icount 1701
add r1, r3, r0 // icount 1702
sll r7, r3, r6 // icount 1703
add r0, r5, r5 // icount 1704
sco r0, r4, r5 // icount 1705
ror r4, r6, r0 // icount 1706
sra r6, r6, r3 // icount 1707
add r7, r5, r0 // icount 1708
and r1, r7, r7 // icount 1709
sco r0, r3, r2 // icount 1710
sll r3, r1, r3 // icount 1711
sll r4, r2, r2 // icount 1712
rol r5, r2, r3 // icount 1713
sub r4, r3, r3 // icount 1714
rol r4, r2, r5 // icount 1715
sll r5, r2, r4 // icount 1716
rol r3, r1, r0 // icount 1717
or r4, r0, r7 // icount 1718
rol r7, r7, r5 // icount 1719
sub r4, r0, r6 // icount 1720
sco r2, r0, r2 // icount 1721
rol r2, r2, r3 // icount 1722
rol r2, r4, r3 // icount 1723
sco r7, r1, r7 // icount 1724
sll r2, r7, r1 // icount 1725
add r3, r7, r5 // icount 1726
sll r6, r4, r3 // icount 1727
and r0, r4, r0 // icount 1728
or r3, r0, r2 // icount 1729
sub r1, r2, r2 // icount 1730
rol r4, r0, r3 // icount 1731
sle r3, r7, r5 // icount 1732
sle r1, r5, r0 // icount 1733
seq r4, r5, r7 // icount 1734
sle r4, r7, r4 // icount 1735
seq r2, r7, r5 // icount 1736
sub r4, r7, r5 // icount 1737
add r0, r2, r6 // icount 1738
slt r4, r0, r6 // icount 1739
rol r1, r4, r1 // icount 1740
sll r7, r4, r0 // icount 1741
add r2, r3, r2 // icount 1742
sll r7, r6, r1 // icount 1743
and r3, r3, r2 // icount 1744
sco r6, r3, r5 // icount 1745
add r7, r5, r0 // icount 1746
sll r3, r4, r3 // icount 1747
add r0, r3, r5 // icount 1748
ror r1, r0, r0 // icount 1749
rol r0, r7, r4 // icount 1750
add r0, r4, r6 // icount 1751
sle r5, r1, r0 // icount 1752
sle r1, r3, r2 // icount 1753
rol r5, r7, r0 // icount 1754
add r7, r3, r6 // icount 1755
sll r2, r2, r6 // icount 1756
sub r2, r0, r1 // icount 1757
sco r7, r1, r3 // icount 1758
sco r3, r3, r0 // icount 1759
sle r4, r2, r0 // icount 1760
seq r3, r0, r2 // icount 1761
ror r3, r1, r6 // icount 1762
rol r7, r3, r0 // icount 1763
sco r0, r2, r2 // icount 1764
slt r5, r3, r2 // icount 1765
sra r5, r0, r1 // icount 1766
ror r3, r4, r0 // icount 1767
ror r5, r6, r7 // icount 1768
add r4, r1, r5 // icount 1769
ror r3, r3, r5 // icount 1770
.rlabel_80:
beqz r0, .rlabel_81 // icount 1771
or r2, r7, r0 // icount 1772
or r3, r3, r0 // icount 1773
seq r5, r6, r6 // icount 1774
sle r1, r7, r2 // icount 1775
or r3, r3, r4 // icount 1776
add r2, r3, r1 // icount 1777
ror r3, r0, r7 // icount 1778
or r7, r1, r0 // icount 1779
sub r1, r2, r4 // icount 1780
seq r0, r7, r5 // icount 1781
and r0, r5, r4 // icount 1782
sll r1, r4, r1 // icount 1783
and r6, r4, r7 // icount 1784
sco r7, r4, r5 // icount 1785
add r1, r2, r2 // icount 1786
.rlabel_81:
st r7, r6, 0
addi r6, r6, 0
bnez r1, .rlabel_82 // icount 1787
seq r7, r2, r5 // icount 1788
or r0, r0, r1 // icount 1789
ror r3, r1, r4 // icount 1790
slt r3, r4, r0 // icount 1791
and r0, r0, r5 // icount 1792
ror r1, r7, r0 // icount 1793
or r5, r2, r4 // icount 1794
rol r6, r6, r0 // icount 1795
or r0, r7, r7 // icount 1796
sle r2, r0, r5 // icount 1797
and r0, r2, r2 // icount 1798
.rlabel_82:
st r7, r6, 8
addi r6, r6, 8
jal .rlabel_83 // icount 1799
sub r0, r7, r3 // icount 1800
sra r2, r1, r1 // icount 1801
sra r1, r5, r4 // icount 1802
sra r1, r5, r1 // icount 1803
seq r0, r4, r3 // icount 1804
seq r5, r0, r6 // icount 1805
or r2, r2, r0 // icount 1806
seq r3, r7, r1 // icount 1807
sco r1, r4, r5 // icount 1808
sle r2, r3, r3 // icount 1809
slt r4, r1, r6 // icount 1810
sub r3, r7, r3 // icount 1811
rol r3, r7, r2 // icount 1812
rol r0, r4, r5 // icount 1813
sra r3, r2, r6 // icount 1814
rol r2, r0, r6 // icount 1815
or r1, r4, r5 // icount 1816
rol r0, r1, r6 // icount 1817
sco r4, r1, r0 // icount 1818
sle r7, r1, r2 // icount 1819
sub r4, r7, r6 // icount 1820
slt r4, r6, r1 // icount 1821
sra r2, r1, r5 // icount 1822
add r6, r3, r6 // icount 1823
sll r3, r2, r2 // icount 1824
.rlabel_83:
st r7, r6, 0
addi r6, r6, 0
jal .rlabel_84 // icount 1825
sco r2, r6, r5 // icount 1826
seq r3, r6, r5 // icount 1827
sco r4, r6, r1 // icount 1828
sll r2, r2, r1 // icount 1829
ror r1, r4, r5 // icount 1830
sra r0, r0, r3 // icount 1831
slt r3, r6, r3 // icount 1832
and r3, r7, r6 // icount 1833
sco r1, r3, r4 // icount 1834
sco r4, r1, r6 // icount 1835
sle r0, r0, r2 // icount 1836
sll r1, r6, r7 // icount 1837
sle r3, r3, r5 // icount 1838
rol r7, r0, r2 // icount 1839
rol r3, r5, r2 // icount 1840
seq r0, r0, r6 // icount 1841
seq r0, r7, r0 // icount 1842
ror r2, r4, r6 // icount 1843
seq r4, r3, r3 // icount 1844
sle r0, r6, r5 // icount 1845
sra r3, r0, r4 // icount 1846
ror r5, r7, r2 // icount 1847
or r1, r4, r2 // icount 1848
add r6, r1, r0 // icount 1849
sle r3, r1, r4 // icount 1850
seq r7, r5, r3 // icount 1851
.rlabel_84:
ld r7, r6, 8
addi r6, r6, 8
jal .rlabel_85 // icount 1852
sra r2, r7, r0 // icount 1853
or r0, r3, r6 // icount 1854
add r3, r7, r7 // icount 1855
sle r5, r1, r6 // icount 1856
sub r5, r2, r0 // icount 1857
and r3, r6, r1 // icount 1858
ror r2, r4, r7 // icount 1859
add r0, r2, r5 // icount 1860
sra r5, r7, r5 // icount 1861
or r4, r7, r6 // icount 1862
sra r2, r4, r7 // icount 1863
sra r1, r2, r6 // icount 1864
or r1, r0, r4 // icount 1865
rol r3, r3, r3 // icount 1866
sra r2, r6, r3 // icount 1867
add r0, r4, r6 // icount 1868
add r6, r7, r5 // icount 1869
add r6, r7, r1 // icount 1870
ror r6, r3, r2 // icount 1871
seq r4, r4, r1 // icount 1872
ror r6, r3, r5 // icount 1873
rol r0, r1, r3 // icount 1874
ror r0, r3, r0 // icount 1875
or r3, r7, r3 // icount 1876
and r6, r3, r1 // icount 1877
.rlabel_85:
beqz r0, .rlabel_86 // icount 1878
ror r1, r0, r4 // icount 1879
and r4, r6, r2 // icount 1880
rol r7, r3, r2 // icount 1881
.rlabel_86:
j .rlabel_87 // icount 1882
ror r6, r3, r7 // icount 1883
sra r6, r5, r4 // icount 1884
seq r2, r0, r3 // icount 1885
slt r5, r0, r4 // icount 1886
or r5, r7, r2 // icount 1887
sle r5, r1, r5 // icount 1888
or r6, r3, r6 // icount 1889
sub r1, r7, r5 // icount 1890
slt r2, r1, r4 // icount 1891
sco r2, r5, r6 // icount 1892
seq r3, r7, r0 // icount 1893
add r3, r2, r7 // icount 1894
sll r6, r1, r2 // icount 1895
and r3, r3, r0 // icount 1896
sco r3, r3, r7 // icount 1897
sco r7, r3, r7 // icount 1898
add r2, r2, r0 // icount 1899
sll r7, r7, r5 // icount 1900
sll r1, r3, r4 // icount 1901
or r5, r5, r1 // icount 1902
sub r3, r2, r6 // icount 1903
or r3, r7, r3 // icount 1904
add r6, r3, r7 // icount 1905
sll r4, r6, r3 // icount 1906
sco r6, r4, r6 // icount 1907
rol r6, r5, r5 // icount 1908
seq r0, r3, r0 // icount 1909
and r5, r2, r7 // icount 1910
sra r7, r2, r5 // icount 1911
sle r7, r5, r6 // icount 1912
sll r2, r2, r7 // icount 1913
rol r5, r6, r1 // icount 1914
seq r0, r3, r3 // icount 1915
slt r7, r3, r5 // icount 1916
sle r2, r4, r1 // icount 1917
sub r1, r1, r4 // icount 1918
sra r6, r4, r7 // icount 1919
or r4, r2, r2 // icount 1920
sco r5, r7, r2 // icount 1921
slt r3, r4, r5 // icount 1922
sle r3, r1, r4 // icount 1923
seq r2, r7, r3 // icount 1924
rol r4, r4, r2 // icount 1925
seq r0, r0, r3 // icount 1926
ror r5, r5, r4 // icount 1927
sub r3, r2, r6 // icount 1928
sll r2, r2, r0 // icount 1929
or r3, r6, r1 // icount 1930
sco r1, r3, r6 // icount 1931
rol r1, r6, r7 // icount 1932
and r4, r7, r5 // icount 1933
ror r7, r7, r0 // icount 1934
and r5, r0, r4 // icount 1935
seq r4, r1, r5 // icount 1936
rol r5, r0, r3 // icount 1937
add r5, r3, r1 // icount 1938
or r4, r3, r4 // icount 1939
sle r7, r0, r5 // icount 1940
and r6, r5, r6 // icount 1941
seq r1, r0, r4 // icount 1942
sco r2, r3, r7 // icount 1943
sco r3, r5, r3 // icount 1944
or r0, r3, r0 // icount 1945
rol r5, r7, r2 // icount 1946
and r7, r7, r4 // icount 1947
or r7, r7, r2 // icount 1948
sub r6, r6, r2 // icount 1949
sco r5, r0, r3 // icount 1950
sub r5, r2, r7 // icount 1951
sra r7, r6, r0 // icount 1952
or r4, r3, r3 // icount 1953
sra r4, r7, r0 // icount 1954
seq r1, r7, r2 // icount 1955
ror r6, r2, r2 // icount 1956
or r3, r1, r1 // icount 1957
sll r6, r2, r0 // icount 1958
slt r0, r3, r7 // icount 1959
rol r0, r1, r3 // icount 1960
seq r6, r7, r6 // icount 1961
sra r0, r7, r1 // icount 1962
sco r0, r5, r2 // icount 1963
sll r3, r7, r0 // icount 1964
slt r1, r0, r1 // icount 1965
slt r3, r3, r1 // icount 1966
sra r5, r7, r3 // icount 1967
rol r1, r7, r1 // icount 1968
ror r0, r6, r3 // icount 1969
sra r6, r2, r6 // icount 1970
and r6, r2, r4 // icount 1971
or r0, r7, r1 // icount 1972
sll r6, r4, r0 // icount 1973
slt r1, r7, r0 // icount 1974
ror r7, r4, r0 // icount 1975
seq r0, r3, r2 // icount 1976
and r3, r1, r4 // icount 1977
seq r3, r2, r3 // icount 1978
and r0, r6, r6 // icount 1979
sll r1, r1, r6 // icount 1980
ror r3, r5, r7 // icount 1981
sub r6, r3, r3 // icount 1982
rol r6, r6, r3 // icount 1983
or r1, r0, r6 // icount 1984
sra r5, r2, r0 // icount 1985
sub r5, r1, r4 // icount 1986
sub r0, r3, r2 // icount 1987
seq r0, r7, r6 // icount 1988
sll r4, r1, r7 // icount 1989
sle r4, r6, r2 // icount 1990
sco r1, r7, r2 // icount 1991
ror r3, r7, r4 // icount 1992
rol r7, r4, r7 // icount 1993
add r5, r0, r7 // icount 1994
seq r3, r5, r5 // icount 1995
sco r5, r4, r6 // icount 1996
and r3, r0, r6 // icount 1997
sub r7, r1, r3 // icount 1998
add r5, r1, r6 // icount 1999
and r0, r2, r6 // icount 2000
seq r3, r0, r2 // icount 2001
add r5, r1, r0 // icount 2002
sub r6, r1, r4 // icount 2003
.rlabel_87:
ld r7, r6, 10
addi r6, r6, 10
j .rlabel_88 // icount 2004
sub r5, r7, r4 // icount 2005
sco r5, r7, r0 // icount 2006
add r2, r3, r7 // icount 2007
sll r3, r4, r4 // icount 2008
or r1, r0, r5 // icount 2009
rol r2, r2, r7 // icount 2010
rol r1, r7, r6 // icount 2011
seq r1, r7, r5 // icount 2012
sle r5, r0, r4 // icount 2013
sra r7, r0, r4 // icount 2014
or r1, r4, r7 // icount 2015
sle r3, r5, r7 // icount 2016
ror r2, r1, r2 // icount 2017
.rlabel_88:
st r7, r6, 6
addi r6, r6, 6
j .rlabel_89 // icount 2018
rol r2, r1, r4 // icount 2019
sle r1, r4, r3 // icount 2020
add r2, r4, r4 // icount 2021
sco r1, r0, r2 // icount 2022
or r4, r2, r6 // icount 2023
sll r4, r0, r0 // icount 2024
slt r1, r5, r3 // icount 2025
slt r1, r4, r6 // icount 2026
slt r3, r4, r5 // icount 2027
sub r6, r1, r7 // icount 2028
or r2, r6, r7 // icount 2029
seq r6, r6, r1 // icount 2030
sco r5, r4, r5 // icount 2031
rol r7, r6, r0 // icount 2032
add r7, r0, r4 // icount 2033
rol r2, r0, r6 // icount 2034
sub r1, r4, r2 // icount 2035
sle r4, r0, r2 // icount 2036
ror r5, r6, r1 // icount 2037
sle r4, r1, r3 // icount 2038
sra r4, r2, r7 // icount 2039
rol r5, r2, r1 // icount 2040
add r7, r7, r7 // icount 2041
sco r2, r7, r6 // icount 2042
or r4, r2, r2 // icount 2043
sll r5, r6, r1 // icount 2044
sco r0, r3, r7 // icount 2045
ror r4, r5, r7 // icount 2046
or r1, r7, r6 // icount 2047
sub r2, r5, r4 // icount 2048
add r1, r4, r7 // icount 2049
sle r7, r2, r3 // icount 2050
add r4, r2, r3 // icount 2051
add r7, r7, r2 // icount 2052
sle r5, r0, r1 // icount 2053
rol r0, r3, r4 // icount 2054
rol r3, r7, r1 // icount 2055
ror r2, r7, r3 // icount 2056
sra r4, r0, r3 // icount 2057
sra r1, r7, r4 // icount 2058
or r2, r7, r0 // icount 2059
sub r7, r0, r4 // icount 2060
sco r1, r0, r4 // icount 2061
sco r3, r6, r1 // icount 2062
slt r1, r6, r1 // icount 2063
and r1, r4, r7 // icount 2064
ror r7, r2, r7 // icount 2065
and r0, r6, r2 // icount 2066
sll r5, r3, r2 // icount 2067
or r4, r6, r2 // icount 2068
rol r6, r2, r3 // icount 2069
or r3, r6, r0 // icount 2070
sra r4, r5, r1 // icount 2071
sle r5, r3, r6 // icount 2072
add r2, r4, r4 // icount 2073
sll r1, r1, r4 // icount 2074
sco r5, r2, r1 // icount 2075
sco r7, r2, r5 // icount 2076
and r2, r7, r3 // icount 2077
sle r4, r6, r4 // icount 2078
and r0, r6, r0 // icount 2079
seq r3, r6, r0 // icount 2080
slt r7, r5, r5 // icount 2081
sle r4, r5, r4 // icount 2082
sub r6, r0, r2 // icount 2083
rol r3, r5, r6 // icount 2084
sub r7, r0, r4 // icount 2085
or r1, r7, r1 // icount 2086
seq r4, r2, r0 // icount 2087
sle r1, r4, r0 // icount 2088
and r1, r3, r4 // icount 2089
slt r7, r4, r6 // icount 2090
ror r1, r3, r6 // icount 2091
rol r0, r0, r5 // icount 2092
ror r3, r5, r7 // icount 2093
rol r7, r7, r4 // icount 2094
sll r3, r2, r7 // icount 2095
sll r7, r6, r1 // icount 2096
or r3, r6, r4 // icount 2097
sle r7, r0, r3 // icount 2098
add r3, r7, r1 // icount 2099
sra r1, r3, r2 // icount 2100
add r6, r6, r1 // icount 2101
seq r7, r1, r5 // icount 2102
sco r5, r1, r0 // icount 2103
and r0, r3, r1 // icount 2104
slt r0, r1, r5 // icount 2105
rol r7, r6, r6 // icount 2106
add r1, r5, r2 // icount 2107
sco r3, r6, r6 // icount 2108
rol r4, r5, r3 // icount 2109
add r6, r0, r0 // icount 2110
add r3, r6, r4 // icount 2111
sll r1, r2, r3 // icount 2112
and r4, r6, r2 // icount 2113
and r2, r2, r6 // icount 2114
rol r6, r0, r3 // icount 2115
rol r5, r6, r7 // icount 2116
rol r2, r4, r3 // icount 2117
seq r4, r4, r6 // icount 2118
ror r6, r0, r4 // icount 2119
sle r4, r0, r2 // icount 2120
slt r5, r6, r3 // icount 2121
or r5, r2, r2 // icount 2122
sle r7, r2, r5 // icount 2123
sub r7, r2, r3 // icount 2124
seq r1, r7, r4 // icount 2125
sra r0, r6, r3 // icount 2126
add r4, r6, r7 // icount 2127
or r1, r2, r1 // icount 2128
.rlabel_89:
st r7, r6, 14
addi r6, r6, 14
jal .rlabel_90 // icount 2129
sco r6, r4, r5 // icount 2130
sll r4, r3, r1 // icount 2131
sra r6, r1, r5 // icount 2132
rol r5, r3, r6 // icount 2133
ror r5, r7, r1 // icount 2134
seq r3, r3, r6 // icount 2135
or r3, r4, r1 // icount 2136
and r2, r3, r7 // icount 2137
sle r3, r0, r1 // icount 2138
and r1, r3, r2 // icount 2139
sra r5, r6, r1 // icount 2140
sra r3, r0, r4 // icount 2141
sra r0, r2, r6 // icount 2142
rol r4, r1, r0 // icount 2143
slt r3, r0, r4 // icount 2144
ror r2, r5, r0 // icount 2145
sll r6, r0, r7 // icount 2146
seq r5, r0, r7 // icount 2147
sle r1, r6, r2 // icount 2148
sll r1, r4, r2 // icount 2149
sub r5, r3, r3 // icount 2150
ror r6, r7, r6 // icount 2151
sle r2, r0, r2 // icount 2152
sle r1, r7, r0 // icount 2153
and r4, r0, r0 // icount 2154
or r0, r4, r7 // icount 2155
sco r4, r6, r2 // icount 2156
ror r7, r1, r4 // icount 2157
ror r3, r2, r5 // icount 2158
sco r6, r5, r4 // icount 2159
.rlabel_90:
bnez r1, .rlabel_91 // icount 2160
seq r3, r2, r5 // icount 2161
sub r2, r6, r3 // icount 2162
and r4, r0, r3 // icount 2163
sle r4, r5, r2 // icount 2164
ror r3, r6, r3 // icount 2165
sra r2, r7, r1 // icount 2166
sle r1, r6, r0 // icount 2167
.rlabel_91:
ld r7, r6, 14
addi r6, r6, 14
bnez r1, .rlabel_92 // icount 2168
seq r0, r7, r2 // icount 2169
seq r6, r5, r7 // icount 2170
rol r0, r0, r1 // icount 2171
sco r0, r7, r5 // icount 2172
sle r5, r3, r5 // icount 2173
or r2, r1, r2 // icount 2174
.rlabel_92:
ld r7, r6, 8
addi r6, r6, 8
bnez r1, .rlabel_93 // icount 2175
sll r3, r3, r0 // icount 2176
add r7, r6, r5 // icount 2177
sra r1, r0, r6 // icount 2178
or r7, r6, r4 // icount 2179
seq r5, r0, r0 // icount 2180
and r0, r3, r7 // icount 2181
slt r2, r1, r3 // icount 2182
seq r3, r3, r3 // icount 2183
seq r5, r3, r7 // icount 2184
rol r1, r4, r2 // icount 2185
sll r6, r7, r1 // icount 2186
.rlabel_93:
j .rlabel_94 // icount 2187
or r6, r5, r4 // icount 2188
and r6, r6, r3 // icount 2189
seq r3, r7, r2 // icount 2190
slt r7, r5, r0 // icount 2191
sub r3, r5, r6 // icount 2192
sll r5, r5, r6 // icount 2193
sra r5, r3, r2 // icount 2194
rol r4, r3, r1 // icount 2195
and r1, r5, r0 // icount 2196
and r3, r0, r4 // icount 2197
sll r0, r7, r1 // icount 2198
sll r3, r3, r3 // icount 2199
sll r2, r6, r5 // icount 2200
sub r2, r7, r5 // icount 2201
or r6, r2, r1 // icount 2202
slt r0, r4, r6 // icount 2203
sle r2, r7, r4 // icount 2204
and r7, r2, r2 // icount 2205
slt r2, r0, r7 // icount 2206
sco r6, r3, r5 // icount 2207
and r5, r3, r4 // icount 2208
seq r6, r5, r6 // icount 2209
sco r0, r7, r7 // icount 2210
ror r4, r6, r7 // icount 2211
and r6, r1, r6 // icount 2212
or r3, r3, r1 // icount 2213
seq r3, r4, r5 // icount 2214
or r0, r2, r2 // icount 2215
and r2, r5, r1 // icount 2216
add r1, r1, r2 // icount 2217
add r2, r1, r6 // icount 2218
sub r2, r2, r3 // icount 2219
sll r6, r4, r4 // icount 2220
rol r1, r1, r7 // icount 2221
sll r5, r3, r1 // icount 2222
sle r3, r5, r4 // icount 2223
sll r6, r0, r5 // icount 2224
slt r7, r1, r6 // icount 2225
rol r4, r5, r0 // icount 2226
sub r1, r1, r6 // icount 2227
sco r1, r1, r0 // icount 2228
slt r0, r6, r0 // icount 2229
sll r5, r7, r2 // icount 2230
slt r0, r7, r2 // icount 2231
and r0, r4, r0 // icount 2232
sle r5, r6, r5 // icount 2233
slt r2, r3, r1 // icount 2234
or r7, r4, r7 // icount 2235
or r1, r6, r5 // icount 2236
sub r2, r3, r4 // icount 2237
seq r7, r0, r7 // icount 2238
rol r0, r6, r0 // icount 2239
ror r3, r2, r5 // icount 2240
and r2, r2, r2 // icount 2241
rol r0, r1, r6 // icount 2242
sll r3, r4, r5 // icount 2243
and r4, r2, r0 // icount 2244
ror r7, r3, r3 // icount 2245
ror r1, r0, r6 // icount 2246
sco r5, r4, r3 // icount 2247
or r7, r4, r1 // icount 2248
rol r4, r7, r3 // icount 2249
and r7, r2, r2 // icount 2250
sle r5, r1, r4 // icount 2251
rol r2, r1, r0 // icount 2252
seq r4, r4, r0 // icount 2253
or r4, r6, r7 // icount 2254
seq r4, r4, r0 // icount 2255
sub r1, r2, r2 // icount 2256
and r0, r3, r5 // icount 2257
.rlabel_94:
beqz r0, .rlabel_95 // icount 2258
add r7, r4, r1 // icount 2259
rol r6, r4, r2 // icount 2260
sco r0, r5, r3 // icount 2261
sra r1, r5, r2 // icount 2262
and r6, r4, r5 // icount 2263
.rlabel_95:
bnez r1, .rlabel_96 // icount 2264
or r3, r5, r5 // icount 2265
sle r7, r1, r4 // icount 2266
sll r7, r4, r2 // icount 2267
sco r6, r1, r1 // icount 2268
and r7, r1, r6 // icount 2269
sle r3, r0, r7 // icount 2270
sle r0, r1, r5 // icount 2271
sra r5, r6, r1 // icount 2272
.rlabel_96:
j .rlabel_97 // icount 2273
add r7, r5, r5 // icount 2274
add r0, r7, r6 // icount 2275
or r4, r5, r5 // icount 2276
add r2, r2, r4 // icount 2277
sra r1, r7, r5 // icount 2278
ror r3, r0, r0 // icount 2279
sco r3, r5, r1 // icount 2280
slt r1, r2, r7 // icount 2281
seq r0, r5, r6 // icount 2282
slt r1, r2, r4 // icount 2283
or r4, r1, r4 // icount 2284
slt r6, r2, r3 // icount 2285
sll r3, r0, r6 // icount 2286
sll r2, r3, r2 // icount 2287
seq r0, r5, r5 // icount 2288
ror r2, r3, r6 // icount 2289
ror r7, r6, r3 // icount 2290
and r3, r7, r0 // icount 2291
rol r1, r2, r1 // icount 2292
sll r4, r5, r3 // icount 2293
slt r2, r4, r4 // icount 2294
and r1, r2, r7 // icount 2295
sll r3, r0, r7 // icount 2296
sll r0, r4, r4 // icount 2297
sco r7, r5, r2 // icount 2298
seq r1, r2, r6 // icount 2299
sco r5, r1, r2 // icount 2300
seq r2, r1, r2 // icount 2301
add r0, r6, r1 // icount 2302
seq r0, r5, r1 // icount 2303
sra r4, r1, r2 // icount 2304
seq r4, r4, r2 // icount 2305
ror r4, r4, r0 // icount 2306
seq r3, r4, r6 // icount 2307
and r5, r0, r1 // icount 2308
sra r1, r6, r1 // icount 2309
sco r4, r3, r4 // icount 2310
rol r3, r1, r5 // icount 2311
seq r7, r7, r7 // icount 2312
sra r5, r2, r2 // icount 2313
sle r0, r2, r6 // icount 2314
slt r3, r6, r5 // icount 2315
add r7, r5, r2 // icount 2316
slt r2, r5, r6 // icount 2317
or r3, r4, r6 // icount 2318
or r4, r1, r6 // icount 2319
sra r0, r0, r2 // icount 2320
sra r4, r0, r0 // icount 2321
sco r0, r7, r0 // icount 2322
and r2, r6, r1 // icount 2323
ror r0, r6, r1 // icount 2324
slt r3, r6, r7 // icount 2325
rol r7, r4, r0 // icount 2326
seq r1, r2, r3 // icount 2327
seq r6, r2, r6 // icount 2328
seq r5, r5, r0 // icount 2329
add r1, r7, r3 // icount 2330
rol r6, r0, r1 // icount 2331
or r5, r2, r0 // icount 2332
sub r4, r6, r6 // icount 2333
slt r1, r1, r2 // icount 2334
slt r3, r5, r1 // icount 2335
seq r6, r5, r0 // icount 2336
sra r5, r7, r4 // icount 2337
sle r7, r2, r7 // icount 2338
.rlabel_97:
st r7, r6, 12
addi r6, r6, 12
beqz r0, .rlabel_98 // icount 2339
rol r2, r3, r5 // icount 2340
slt r5, r1, r5 // icount 2341
or r7, r4, r3 // icount 2342
and r5, r3, r5 // icount 2343
and r1, r6, r4 // icount 2344
rol r4, r4, r1 // icount 2345
sle r5, r5, r6 // icount 2346
rol r3, r0, r4 // icount 2347
and r6, r4, r5 // icount 2348
sle r2, r1, r0 // icount 2349
or r7, r4, r4 // icount 2350
sll r4, r7, r0 // icount 2351
or r1, r3, r4 // icount 2352
.rlabel_98:
ld r7, r6, 2
addi r6, r6, 2
bnez r1, .rlabel_99 // icount 2353
sll r0, r6, r2 // icount 2354
sco r3, r1, r5 // icount 2355
rol r7, r0, r3 // icount 2356
sub r7, r3, r1 // icount 2357
or r3, r4, r3 // icount 2358
sll r2, r4, r2 // icount 2359
.rlabel_99:
addi r3, r3, -1 // icount 2360
beqz r3, .done // icount 2361
jr r5, 0 // icount 2362
.done:
halt // icount 2363
halt // icount 2364
