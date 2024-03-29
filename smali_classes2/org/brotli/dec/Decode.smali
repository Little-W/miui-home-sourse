.class final Lorg/brotli/dec/Decode;
.super Ljava/lang/Object;
.source "Decode.java"


# static fields
.field private static final CODE_LENGTH_CODE_ORDER:[I

.field private static final DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

.field private static final DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

.field private static final FIXED_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lorg/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 45
    fill-array-data v1, :array_1

    sput-object v1, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    new-array v1, v0, [I

    .line 49
    fill-array-data v1, :array_2

    sput-object v1, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    new-array v0, v0, [I

    .line 56
    fill-array-data v0, :array_3

    sput-object v0, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data
.end method

.method private static copyUncompressedData(Lorg/brotli/dec/State;)V
    .locals 5

    .line 537
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    .line 538
    iget-object v1, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 539
    iget v2, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    add-int/lit8 v2, v2, -0x1

    .line 541
    :cond_0
    iget v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-lez v3, :cond_1

    .line 542
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 544
    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v3, v2

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 545
    iget v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 546
    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    .line 547
    sget-object v0, Lorg/brotli/dec/RunningState;->COPY_UNCOMPRESSED:Lorg/brotli/dec/RunningState;

    iput-object v0, p0, Lorg/brotli/dec/State;->nextRunningState:Lorg/brotli/dec/RunningState;

    .line 548
    iget v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v0, p0, Lorg/brotli/dec/State;->bytesToWrite:I

    const/4 v0, 0x0

    .line 549
    iput v0, p0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 550
    sget-object v0, Lorg/brotli/dec/RunningState;->WRITE:Lorg/brotli/dec/RunningState;

    iput-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    return-void

    .line 554
    :cond_1
    sget-object v0, Lorg/brotli/dec/RunningState;->BLOCK_START:Lorg/brotli/dec/RunningState;

    iput-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    return-void
.end method

.method private static decodeBlockTypeAndLength(Lorg/brotli/dec/State;I)V
    .locals 7

    .line 342
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    .line 343
    iget-object v1, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    mul-int/lit8 v2, p1, 0x2

    .line 345
    iget-object v3, p0, Lorg/brotli/dec/State;->blockTypeTrees:[I

    mul-int/lit16 v4, p1, 0x438

    invoke-static {v3, v4, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v3

    .line 347
    iget-object v5, p0, Lorg/brotli/dec/State;->blockLength:[I

    iget-object v6, p0, Lorg/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v6, v4, v0}, Lorg/brotli/dec/Decode;->readBlockLength([IILorg/brotli/dec/BitReader;)I

    move-result v0

    aput v0, v5, p1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 351
    aget v3, v1, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 353
    aget v3, v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x2

    .line 357
    :goto_0
    iget-object v0, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v0, v0, p1

    if-lt v3, v0, :cond_2

    .line 358
    iget-object p0, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget p0, p0, p1

    sub-int/2addr v3, p0

    :cond_2
    add-int/lit8 p0, v2, 0x1

    .line 360
    aget p1, v1, p0

    aput p1, v1, v2

    .line 361
    aput v3, v1, p0

    return-void
.end method

.method private static decodeCommandBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 3

    const/4 v0, 0x1

    .line 376
    invoke-static {p0, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;I)V

    .line 377
    iget-object v0, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget-object v1, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->treeCommandOffset:I

    return-void
.end method

.method private static decodeContextMap(I[BLorg/brotli/dec/BitReader;)I
    .locals 8

    .line 299
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 300
    invoke-static {p2}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/BitReader;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 303
    invoke-static {p1, v2, p0}, Lorg/brotli/dec/Utils;->fillWithZeroes([BII)V

    return v0

    .line 307
    :cond_0
    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x4

    .line 310
    invoke-static {p2, v3}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/16 v4, 0x438

    new-array v4, v4, [I

    add-int v5, v0, v3

    .line 313
    invoke-static {v5, v4, v2, p2}, Lorg/brotli/dec/Decode;->readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V

    move v5, v2

    :cond_3
    :goto_2
    if-ge v5, p0, :cond_7

    .line 315
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 316
    invoke-static {v4, v2, p2}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v6

    if-nez v6, :cond_4

    .line 318
    aput-byte v2, p1, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-gt v6, v3, :cond_6

    shl-int v7, v1, v6

    .line 321
    invoke-static {p2, v6}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v6

    add-int/2addr v7, v6

    :goto_4
    if-eqz v7, :cond_3

    if-ge v5, p0, :cond_5

    .line 326
    aput-byte v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 324
    :cond_5
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted context map"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sub-int/2addr v6, v3

    int-to-byte v6, v6

    .line 331
    aput-byte v6, p1, v5

    goto :goto_3

    .line 335
    :cond_7
    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p2

    if-ne p2, v1, :cond_8

    .line 336
    invoke-static {p1, p0}, Lorg/brotli/dec/Decode;->inverseMoveToFrontTransform([BI)V

    :cond_8
    return v0
.end method

.method private static decodeDistanceBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 3

    const/4 v0, 0x2

    .line 381
    invoke-static {p0, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;I)V

    .line 382
    iget-object v1, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    shl-int/lit8 v0, v1, 0x2

    iput v0, p0, Lorg/brotli/dec/State;->distContextMapSlice:I

    return-void
.end method

.method private static decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 4

    const/4 v0, 0x0

    .line 365
    invoke-static {p0, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;I)V

    .line 366
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    shl-int/lit8 v2, v0, 0x6

    .line 367
    iput v2, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    .line 368
    iget-object v2, p0, Lorg/brotli/dec/State;->contextMap:[B

    iget v3, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/brotli/dec/State;->literalTreeIndex:I

    .line 369
    iget-object v2, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v2, v2, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget v3, p0, Lorg/brotli/dec/State;->literalTreeIndex:I

    aget v2, v2, v3

    iput v2, p0, Lorg/brotli/dec/State;->literalTree:I

    .line 370
    iget-object v2, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v0, v2, v0

    .line 371
    sget-object v2, Lorg/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    aget v2, v2, v0

    iput v2, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    .line 372
    sget-object v2, Lorg/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    add-int/2addr v0, v1

    aget v0, v2, v0

    iput v0, p0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    return-void
.end method

.method private static decodeMetaBlockLength(Lorg/brotli/dec/BitReader;Lorg/brotli/dec/State;)V
    .locals 9

    const/4 v0, 0x1

    .line 77
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lorg/brotli/dec/State;->inputEnd:Z

    .line 78
    iput v2, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 79
    iput-boolean v2, p1, Lorg/brotli/dec/State;->isUncompressed:Z

    .line 80
    iput-boolean v2, p1, Lorg/brotli/dec/State;->isMetadata:Z

    .line 81
    iget-boolean v1, p1, Lorg/brotli/dec/State;->inputEnd:Z

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 84
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const/4 v5, 0x7

    const-string v6, "Exuberant nibble"

    if-ne v3, v5, :cond_6

    .line 86
    iput-boolean v0, p1, Lorg/brotli/dec/State;->isMetadata:Z

    .line 87
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 90
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_9

    const/16 v4, 0x8

    .line 95
    invoke-static {p0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    if-ne v5, v1, :cond_4

    if-gt v1, v0, :cond_3

    goto :goto_2

    .line 97
    :cond_3
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_4
    :goto_2
    iget v5, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v7, v3, 0x8

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    iput v4, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :cond_5
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted reserved bit"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_9

    .line 103
    invoke-static {p0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v7, v1, 0x1

    if-ne v7, v3, :cond_8

    if-gt v3, v4, :cond_7

    goto :goto_4

    .line 105
    :cond_7
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_8
    :goto_4
    iget v7, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v8, v1, 0x4

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    iput v5, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 110
    :cond_9
    iget v1, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/2addr v1, v0

    iput v1, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 111
    iget-boolean v1, p1, Lorg/brotli/dec/State;->inputEnd:Z

    if-nez v1, :cond_b

    .line 112
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p0

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    iput-boolean v0, p1, Lorg/brotli/dec/State;->isUncompressed:Z

    :cond_b
    return-void
.end method

.method private static decodeVarLenUnsignedByte(Lorg/brotli/dec/BitReader;)I
    .locals 2

    const/4 v0, 0x1

    .line 65
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 66
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 70
    :cond_0
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p0

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static decompress(Lorg/brotli/dec/State;)V
    .locals 17

    move-object/from16 v0, p0

    .line 583
    iget-object v1, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v2, Lorg/brotli/dec/RunningState;->UNINITIALIZED:Lorg/brotli/dec/RunningState;

    if-eq v1, v2, :cond_20

    .line 586
    iget-object v1, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v2, Lorg/brotli/dec/RunningState;->CLOSED:Lorg/brotli/dec/RunningState;

    if-eq v1, v2, :cond_1f

    .line 589
    iget-object v1, v0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    .line 590
    iget v2, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 591
    iget-object v4, v0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 593
    :cond_0
    :goto_0
    iget-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v6, Lorg/brotli/dec/RunningState;->FINISHED:Lorg/brotli/dec/RunningState;

    const-string v7, "Invalid metablock length"

    if-eq v5, v6, :cond_1c

    .line 595
    sget-object v5, Lorg/brotli/dec/Decode$1;->$SwitchMap$org$brotli$dec$RunningState:[I

    iget-object v6, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    invoke-virtual {v6}, Lorg/brotli/dec/RunningState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, "Invalid backward reference"

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v11, 0x0

    packed-switch v5, :pswitch_data_0

    .line 828
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 820
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->writeRingBuffer(Lorg/brotli/dec/State;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 824
    :cond_1
    iget-object v5, v0, Lorg/brotli/dec/State;->nextRunningState:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto :goto_0

    .line 816
    :pswitch_1
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->copyUncompressedData(Lorg/brotli/dec/State;)V

    goto :goto_0

    .line 805
    :goto_1
    :pswitch_2
    iget v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-lez v5, :cond_2

    .line 806
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    const/16 v5, 0x8

    .line 808
    invoke-static {v1, v5}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    .line 809
    iget v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v5, v3

    iput v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    goto :goto_1

    .line 811
    :cond_2
    sget-object v5, Lorg/brotli/dec/RunningState;->BLOCK_START:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto :goto_0

    .line 799
    :pswitch_3
    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v6, v0, Lorg/brotli/dec/State;->copyDst:I

    iget v7, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v4, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    sget-object v5, Lorg/brotli/dec/RunningState;->MAIN_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto :goto_0

    .line 766
    :pswitch_4
    iget v5, v0, Lorg/brotli/dec/State;->copyLength:I

    if-lt v5, v8, :cond_5

    iget v5, v0, Lorg/brotli/dec/State;->copyLength:I

    const/16 v7, 0x18

    if-gt v5, v7, :cond_5

    .line 768
    sget-object v5, Lorg/brotli/dec/Dictionary;->OFFSETS_BY_LENGTH:[I

    iget v7, v0, Lorg/brotli/dec/State;->copyLength:I

    aget v5, v5, v7

    .line 769
    iget v7, v0, Lorg/brotli/dec/State;->distance:I

    iget v8, v0, Lorg/brotli/dec/State;->maxDistance:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    .line 770
    sget-object v8, Lorg/brotli/dec/Dictionary;->SIZE_BITS_BY_LENGTH:[I

    iget v9, v0, Lorg/brotli/dec/State;->copyLength:I

    aget v8, v8, v9

    shl-int v9, v3, v8

    sub-int/2addr v9, v3

    and-int/2addr v9, v7

    ushr-int/2addr v7, v8

    .line 774
    iget v8, v0, Lorg/brotli/dec/State;->copyLength:I

    mul-int/2addr v9, v8

    add-int v8, v5, v9

    .line 775
    sget-object v5, Lorg/brotli/dec/Transform;->TRANSFORMS:[Lorg/brotli/dec/Transform;

    array-length v5, v5

    if-ge v7, v5, :cond_4

    .line 776
    iget v6, v0, Lorg/brotli/dec/State;->copyDst:I

    .line 777
    invoke-static {}, Lorg/brotli/dec/Dictionary;->getData()[B

    move-result-object v9

    iget v10, v0, Lorg/brotli/dec/State;->copyLength:I

    sget-object v5, Lorg/brotli/dec/Transform;->TRANSFORMS:[Lorg/brotli/dec/Transform;

    aget-object v12, v5, v7

    move-object v5, v4

    move-object v7, v9

    move v9, v10

    move-object v10, v12

    .line 776
    invoke-static/range {v5 .. v10}, Lorg/brotli/dec/Transform;->transformDictionaryWord([BI[BIILorg/brotli/dec/Transform;)I

    move-result v5

    .line 779
    iget v6, v0, Lorg/brotli/dec/State;->copyDst:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/brotli/dec/State;->copyDst:I

    .line 780
    iget v6, v0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/brotli/dec/State;->pos:I

    .line 781
    iget v6, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v6, v5

    iput v6, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 782
    iget v5, v0, Lorg/brotli/dec/State;->copyDst:I

    iget v6, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-lt v5, v6, :cond_3

    .line 783
    sget-object v5, Lorg/brotli/dec/RunningState;->COPY_WRAP_BUFFER:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->nextRunningState:Lorg/brotli/dec/RunningState;

    .line 784
    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v5, v0, Lorg/brotli/dec/State;->bytesToWrite:I

    .line 785
    iput v11, v0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 786
    sget-object v5, Lorg/brotli/dec/RunningState;->WRITE:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto/16 :goto_0

    .line 795
    :cond_3
    sget-object v5, Lorg/brotli/dec/RunningState;->MAIN_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto/16 :goto_0

    .line 790
    :cond_4
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_5
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :pswitch_5
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->readMetablockHuffmanCodesAndContextMaps(Lorg/brotli/dec/State;)V

    .line 608
    sget-object v5, Lorg/brotli/dec/RunningState;->MAIN_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    .line 612
    :pswitch_6
    iget v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gtz v5, :cond_6

    .line 614
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    const v6, 0x3fffffff    # 1.9999999f

    and-int/2addr v5, v6

    iput v5, v0, Lorg/brotli/dec/State;->pos:I

    .line 615
    sget-object v5, Lorg/brotli/dec/RunningState;->BLOCK_START:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto/16 :goto_0

    .line 618
    :cond_6
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 619
    iget-object v5, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v5, v5, v3

    if-nez v5, :cond_7

    .line 620
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeCommandBlockSwitch(Lorg/brotli/dec/State;)V

    .line 622
    :cond_7
    iget-object v5, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v7, v5, v3

    sub-int/2addr v7, v3

    aput v7, v5, v3

    .line 623
    iget-object v5, v0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v5, v5, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget v7, v0, Lorg/brotli/dec/State;->treeCommandOffset:I

    invoke-static {v5, v7, v1}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v5

    ushr-int/lit8 v7, v5, 0x6

    .line 625
    iput v11, v0, Lorg/brotli/dec/State;->distanceCode:I

    if-lt v7, v9, :cond_8

    add-int/lit8 v7, v7, -0x2

    const/4 v10, -0x1

    .line 628
    iput v10, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 630
    :cond_8
    sget-object v10, Lorg/brotli/dec/Prefix;->INSERT_RANGE_LUT:[I

    aget v10, v10, v7

    ushr-int/lit8 v12, v5, 0x3

    and-int/lit8 v12, v12, 0x7

    add-int/2addr v10, v12

    .line 631
    sget-object v12, Lorg/brotli/dec/Prefix;->COPY_RANGE_LUT:[I

    aget v7, v12, v7

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v7, v5

    .line 632
    sget-object v5, Lorg/brotli/dec/Prefix;->INSERT_LENGTH_OFFSET:[I

    aget v5, v5, v10

    sget-object v12, Lorg/brotli/dec/Prefix;->INSERT_LENGTH_N_BITS:[I

    aget v10, v12, v10

    .line 633
    invoke-static {v1, v10}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v10

    add-int/2addr v5, v10

    iput v5, v0, Lorg/brotli/dec/State;->insertLength:I

    .line 634
    sget-object v5, Lorg/brotli/dec/Prefix;->COPY_LENGTH_OFFSET:[I

    aget v5, v5, v7

    sget-object v10, Lorg/brotli/dec/Prefix;->COPY_LENGTH_N_BITS:[I

    aget v7, v10, v7

    .line 635
    invoke-static {v1, v7}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v7

    add-int/2addr v5, v7

    iput v5, v0, Lorg/brotli/dec/State;->copyLength:I

    .line 637
    iput v11, v0, Lorg/brotli/dec/State;->j:I

    .line 638
    sget-object v5, Lorg/brotli/dec/RunningState;->INSERT_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    .line 642
    :pswitch_7
    iget-boolean v5, v0, Lorg/brotli/dec/State;->trivialLiteralContext:Z

    if-eqz v5, :cond_b

    .line 643
    :cond_9
    iget v5, v0, Lorg/brotli/dec/State;->j:I

    iget v7, v0, Lorg/brotli/dec/State;->insertLength:I

    if-ge v5, v7, :cond_e

    .line 644
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 645
    iget-object v5, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v5, v5, v11

    if-nez v5, :cond_a

    .line 646
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V

    .line 648
    :cond_a
    iget-object v5, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v7, v5, v11

    sub-int/2addr v7, v3

    aput v7, v5, v11

    .line 649
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v5, v2

    iget-object v7, v0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v7, v7, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget v10, v0, Lorg/brotli/dec/State;->literalTree:I

    invoke-static {v7, v10, v1}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 651
    iget v5, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v5, v3

    iput v5, v0, Lorg/brotli/dec/State;->j:I

    .line 652
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v7, v5, 0x1

    iput v7, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_9

    .line 653
    sget-object v5, Lorg/brotli/dec/RunningState;->INSERT_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->nextRunningState:Lorg/brotli/dec/RunningState;

    .line 654
    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v5, v0, Lorg/brotli/dec/State;->bytesToWrite:I

    .line 655
    iput v11, v0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 656
    sget-object v5, Lorg/brotli/dec/RunningState;->WRITE:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto/16 :goto_2

    .line 661
    :cond_b
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    sub-int/2addr v5, v3

    and-int/2addr v5, v2

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    .line 662
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    sub-int/2addr v7, v9

    and-int/2addr v7, v2

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    :cond_c
    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    .line 663
    iget v10, v0, Lorg/brotli/dec/State;->j:I

    iget v12, v0, Lorg/brotli/dec/State;->insertLength:I

    if-ge v10, v12, :cond_e

    .line 664
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 665
    iget-object v10, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v10, v10, v11

    if-nez v10, :cond_d

    .line 666
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V

    .line 668
    :cond_d
    iget-object v10, v0, Lorg/brotli/dec/State;->contextMap:[B

    iget v12, v0, Lorg/brotli/dec/State;->contextMapSlice:I

    sget-object v13, Lorg/brotli/dec/Context;->LOOKUP:[I

    iget v14, v0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    add-int/2addr v14, v7

    aget v13, v13, v14

    sget-object v14, Lorg/brotli/dec/Context;->LOOKUP:[I

    iget v15, v0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    add-int/2addr v15, v5

    aget v5, v14, v15

    or-int/2addr v5, v13

    add-int/2addr v12, v5

    aget-byte v5, v10, v12

    and-int/lit16 v5, v5, 0xff

    .line 671
    iget-object v10, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v12, v10, v11

    sub-int/2addr v12, v3

    aput v12, v10, v11

    .line 673
    iget-object v10, v0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v10, v10, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget-object v12, v0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v12, v12, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v5, v12, v5

    invoke-static {v10, v5, v1}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v5

    .line 675
    iget v10, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v10, v2

    int-to-byte v12, v5

    aput-byte v12, v4, v10

    .line 676
    iget v10, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v10, v3

    iput v10, v0, Lorg/brotli/dec/State;->j:I

    .line 677
    iget v10, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v10, v2

    if-ne v10, v2, :cond_c

    .line 678
    sget-object v5, Lorg/brotli/dec/RunningState;->INSERT_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->nextRunningState:Lorg/brotli/dec/RunningState;

    .line 679
    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v5, v0, Lorg/brotli/dec/State;->bytesToWrite:I

    .line 680
    iput v11, v0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 681
    sget-object v5, Lorg/brotli/dec/RunningState;->WRITE:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    .line 686
    :cond_e
    :goto_2
    iget-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v7, Lorg/brotli/dec/RunningState;->INSERT_LOOP:Lorg/brotli/dec/RunningState;

    if-eq v5, v7, :cond_f

    goto/16 :goto_0

    .line 689
    :cond_f
    iget v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    iget v7, v0, Lorg/brotli/dec/State;->insertLength:I

    sub-int/2addr v5, v7

    iput v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 690
    iget v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gtz v5, :cond_10

    .line 691
    sget-object v5, Lorg/brotli/dec/RunningState;->MAIN_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto/16 :goto_0

    .line 694
    :cond_10
    iget v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    const/4 v7, 0x3

    if-gez v5, :cond_13

    .line 695
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 696
    iget-object v5, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v5, v5, v9

    if-nez v5, :cond_11

    .line 697
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeDistanceBlockSwitch(Lorg/brotli/dec/State;)V

    .line 699
    :cond_11
    iget-object v5, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v10, v5, v9

    sub-int/2addr v10, v3

    aput v10, v5, v9

    .line 700
    iget-object v5, v0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v5, v5, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget-object v10, v0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v10, v10, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget-object v12, v0, Lorg/brotli/dec/State;->distContextMap:[B

    iget v13, v0, Lorg/brotli/dec/State;->distContextMapSlice:I

    iget v14, v0, Lorg/brotli/dec/State;->copyLength:I

    if-le v14, v8, :cond_12

    move v14, v7

    goto :goto_3

    :cond_12
    iget v14, v0, Lorg/brotli/dec/State;->copyLength:I

    sub-int/2addr v14, v9

    :goto_3
    add-int/2addr v13, v14

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    invoke-static {v5, v10, v1}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v5

    iput v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 703
    iget v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget v10, v0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    if-lt v5, v10, :cond_13

    .line 704
    iget v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget v10, v0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    sub-int/2addr v5, v10

    iput v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 705
    iget v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget v10, v0, Lorg/brotli/dec/State;->distancePostfixMask:I

    and-int/2addr v5, v10

    .line 706
    iget v10, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget v12, v0, Lorg/brotli/dec/State;->distancePostfixBits:I

    ushr-int/2addr v10, v12

    iput v10, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 707
    iget v10, v0, Lorg/brotli/dec/State;->distanceCode:I

    ushr-int/2addr v10, v3

    add-int/2addr v10, v3

    .line 708
    iget v12, v0, Lorg/brotli/dec/State;->distanceCode:I

    and-int/2addr v12, v3

    add-int/2addr v12, v9

    shl-int v9, v12, v10

    sub-int/2addr v9, v8

    .line 709
    iget v8, v0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    add-int/2addr v8, v5

    .line 710
    invoke-static {v1, v10}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v5

    add-int/2addr v9, v5

    iget v5, v0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int v5, v9, v5

    add-int/2addr v8, v5

    iput v8, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 716
    :cond_13
    iget v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget-object v8, v0, Lorg/brotli/dec/State;->distRb:[I

    iget v9, v0, Lorg/brotli/dec/State;->distRbIdx:I

    invoke-static {v5, v8, v9}, Lorg/brotli/dec/Decode;->translateShortCodes(I[II)I

    move-result v5

    iput v5, v0, Lorg/brotli/dec/State;->distance:I

    .line 717
    iget v5, v0, Lorg/brotli/dec/State;->distance:I

    if-ltz v5, :cond_1a

    .line 721
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    iget v8, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-ge v5, v8, :cond_14

    iget v5, v0, Lorg/brotli/dec/State;->maxDistance:I

    iget v8, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-eq v5, v8, :cond_14

    .line 723
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    iput v5, v0, Lorg/brotli/dec/State;->maxDistance:I

    goto :goto_4

    .line 725
    :cond_14
    iget v5, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    iput v5, v0, Lorg/brotli/dec/State;->maxDistance:I

    .line 728
    :goto_4
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v5, v2

    iput v5, v0, Lorg/brotli/dec/State;->copyDst:I

    .line 729
    iget v5, v0, Lorg/brotli/dec/State;->distance:I

    iget v8, v0, Lorg/brotli/dec/State;->maxDistance:I

    if-le v5, v8, :cond_15

    .line 730
    sget-object v5, Lorg/brotli/dec/RunningState;->TRANSFORM:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto/16 :goto_0

    .line 734
    :cond_15
    iget v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    if-lez v5, :cond_16

    .line 735
    iget-object v5, v0, Lorg/brotli/dec/State;->distRb:[I

    iget v8, v0, Lorg/brotli/dec/State;->distRbIdx:I

    and-int/2addr v7, v8

    iget v8, v0, Lorg/brotli/dec/State;->distance:I

    aput v8, v5, v7

    .line 736
    iget v5, v0, Lorg/brotli/dec/State;->distRbIdx:I

    add-int/2addr v5, v3

    iput v5, v0, Lorg/brotli/dec/State;->distRbIdx:I

    .line 739
    :cond_16
    iget v5, v0, Lorg/brotli/dec/State;->copyLength:I

    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gt v5, v7, :cond_19

    .line 742
    iput v11, v0, Lorg/brotli/dec/State;->j:I

    .line 743
    sget-object v5, Lorg/brotli/dec/RunningState;->COPY_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    .line 746
    :cond_17
    :pswitch_8
    iget v5, v0, Lorg/brotli/dec/State;->j:I

    iget v6, v0, Lorg/brotli/dec/State;->copyLength:I

    if-ge v5, v6, :cond_18

    .line 747
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v5, v2

    iget v6, v0, Lorg/brotli/dec/State;->pos:I

    iget v7, v0, Lorg/brotli/dec/State;->distance:I

    sub-int/2addr v6, v7

    and-int/2addr v6, v2

    aget-byte v6, v4, v6

    aput-byte v6, v4, v5

    .line 750
    iget v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v5, v3

    iput v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 751
    iget v5, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v5, v3

    iput v5, v0, Lorg/brotli/dec/State;->j:I

    .line 752
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_17

    .line 753
    sget-object v5, Lorg/brotli/dec/RunningState;->COPY_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->nextRunningState:Lorg/brotli/dec/RunningState;

    .line 754
    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v5, v0, Lorg/brotli/dec/State;->bytesToWrite:I

    .line 755
    iput v11, v0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 756
    sget-object v5, Lorg/brotli/dec/RunningState;->WRITE:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    .line 760
    :cond_18
    iget-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v6, Lorg/brotli/dec/RunningState;->COPY_LOOP:Lorg/brotli/dec/RunningState;

    if-ne v5, v6, :cond_0

    .line 761
    sget-object v5, Lorg/brotli/dec/RunningState;->MAIN_LOOP:Lorg/brotli/dec/RunningState;

    iput-object v5, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto/16 :goto_0

    .line 740
    :cond_19
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1a
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Negative distance"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_9
    iget v2, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-ltz v2, :cond_1b

    .line 600
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->readMetablockInfo(Lorg/brotli/dec/State;)V

    .line 602
    iget v2, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    sub-int/2addr v2, v3

    .line 603
    iget-object v4, v0, Lorg/brotli/dec/State;->ringBuffer:[B

    goto/16 :goto_0

    .line 598
    :cond_1b
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v7}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_1c
    iget-object v2, v0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v3, Lorg/brotli/dec/RunningState;->FINISHED:Lorg/brotli/dec/RunningState;

    if-ne v2, v3, :cond_1e

    .line 832
    iget v2, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-ltz v2, :cond_1d

    .line 835
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->jumpToByteBoundary(Lorg/brotli/dec/BitReader;)V

    .line 836
    iget-object v0, v0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    invoke-static {v0}, Lorg/brotli/dec/BitReader;->checkHealth(Lorg/brotli/dec/BitReader;)V

    goto :goto_5

    .line 833
    :cond_1d
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v7}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_5
    return-void

    .line 587
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress after close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress until initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static inverseMoveToFrontTransform([BI)V
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 158
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p1, :cond_2

    .line 161
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    .line 162
    aget v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    if-eqz v0, :cond_1

    .line 164
    invoke-static {v1, v0}, Lorg/brotli/dec/Decode;->moveToFront([II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static maybeReallocateRingBuffer(Lorg/brotli/dec/State;)V
    .locals 6

    .line 386
    iget v0, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    int-to-long v1, v0

    .line 387
    iget-wide v3, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    cmp-long v1, v1, v3

    const/16 v2, 0x4000

    if-lez v1, :cond_1

    .line 389
    iget-wide v3, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    long-to-int v1, v3

    iget-object v3, p0, Lorg/brotli/dec/State;->customDictionary:[B

    array-length v3, v3

    add-int/2addr v1, v3

    :goto_0
    shr-int/lit8 v3, v0, 0x1

    if-le v3, v1, :cond_0

    move v0, v3

    goto :goto_0

    .line 393
    :cond_0
    iget-boolean v1, p0, Lorg/brotli/dec/State;->inputEnd:Z

    if-nez v1, :cond_1

    if-ge v0, v2, :cond_1

    iget v1, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    if-lt v1, v2, :cond_1

    move v0, v2

    .line 397
    :cond_1
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v0, 0x25

    .line 401
    new-array v1, v1, [B

    .line 402
    iget-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 403
    iget-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v4, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 406
    :cond_3
    iget-object v2, p0, Lorg/brotli/dec/State;->customDictionary:[B

    array-length v2, v2

    if-eqz v2, :cond_5

    .line 407
    iget-object v2, p0, Lorg/brotli/dec/State;->customDictionary:[B

    array-length v2, v2

    .line 409
    iget v4, p0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-le v2, v4, :cond_4

    .line 410
    iget v4, p0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    sub-int/2addr v2, v4

    .line 411
    iget v4, p0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    goto :goto_1

    :cond_4
    move v4, v2

    move v2, v3

    .line 413
    :goto_1
    iget-object v5, p0, Lorg/brotli/dec/State;->customDictionary:[B

    invoke-static {v5, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iput v4, p0, Lorg/brotli/dec/State;->pos:I

    .line 415
    iput v4, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    .line 418
    :cond_5
    :goto_2
    iput-object v1, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 419
    iput v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    return-void
.end method

.method private static moveToFront([II)V
    .locals 2

    .line 148
    aget v0, p0, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 150
    aget v1, p0, v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 152
    aput v0, p0, p1

    return-void
.end method

.method private static readBlockLength([IILorg/brotli/dec/BitReader;)I
    .locals 1

    .line 133
    invoke-static {p0, p1, p2}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result p0

    .line 134
    sget-object p1, Lorg/brotli/dec/Prefix;->BLOCK_LENGTH_N_BITS:[I

    aget p1, p1, p0

    .line 135
    sget-object v0, Lorg/brotli/dec/Prefix;->BLOCK_LENGTH_OFFSET:[I

    aget p0, v0, p0

    invoke-static {p2, p1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p3

    .line 232
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 234
    new-array v2, v0, [I

    const/4 v3, 0x2

    .line 235
    invoke-static {v1, v3}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    add-int/lit8 v4, v0, -0x1

    const/4 v7, 0x4

    new-array v8, v7, [I

    .line 240
    invoke-static {v1, v3}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v9

    add-int/2addr v9, v6

    move v10, v5

    :goto_0
    if-eqz v4, :cond_0

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {v2, v5, v0}, Lorg/brotli/dec/Utils;->fillWithZeroes([III)V

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_1

    .line 247
    invoke-static {v1, v10}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v11

    rem-int/2addr v11, v0

    aput v11, v8, v4

    .line 248
    aget v11, v8, v4

    aput v3, v2, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 250
    :cond_1
    aget v4, v8, v5

    aput v6, v2, v4

    if-eq v9, v6, :cond_e

    if-eq v9, v3, :cond_7

    const/4 v4, 0x3

    if-eq v9, v4, :cond_5

    if-eq v9, v7, :cond_2

    goto/16 :goto_7

    .line 262
    :cond_2
    aget v7, v8, v5

    aget v9, v8, v6

    if-eq v7, v9, :cond_3

    aget v7, v8, v5

    aget v9, v8, v3

    if-eq v7, v9, :cond_3

    aget v7, v8, v5

    aget v9, v8, v4

    if-eq v7, v9, :cond_3

    aget v7, v8, v6

    aget v9, v8, v3

    if-eq v7, v9, :cond_3

    aget v7, v8, v6

    aget v9, v8, v4

    if-eq v7, v9, :cond_3

    aget v7, v8, v3

    aget v9, v8, v4

    if-eq v7, v9, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v5

    .line 264
    :goto_2
    invoke-static {v1, v6}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 265
    aget v1, v8, v3

    aput v4, v2, v1

    .line 266
    aget v1, v8, v4

    aput v4, v2, v1

    goto :goto_3

    .line 268
    :cond_4
    aget v1, v8, v5

    aput v3, v2, v1

    :goto_3
    move v6, v7

    goto/16 :goto_7

    .line 259
    :cond_5
    aget v1, v8, v5

    aget v4, v8, v6

    if-eq v1, v4, :cond_6

    aget v1, v8, v5

    aget v4, v8, v3

    if-eq v1, v4, :cond_6

    aget v1, v8, v6

    aget v3, v8, v3

    if-eq v1, v3, :cond_6

    goto :goto_7

    :cond_6
    :goto_4
    move v6, v5

    goto :goto_7

    .line 255
    :cond_7
    aget v1, v8, v5

    aget v3, v8, v6

    if-eq v1, v3, :cond_8

    move v5, v6

    .line 256
    :cond_8
    aget v1, v8, v6

    aput v6, v2, v1

    goto :goto_4

    :cond_9
    const/16 v3, 0x12

    new-array v7, v3, [I

    const/16 v8, 0x20

    move v10, v5

    move v9, v8

    :goto_5
    if-ge v4, v3, :cond_b

    if-lez v9, :cond_b

    .line 277
    sget-object v11, Lorg/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    aget v11, v11, v4

    .line 278
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 279
    iget-wide v12, v1, Lorg/brotli/dec/BitReader;->accumulator:J

    iget v14, v1, Lorg/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v12, v14

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0xf

    .line 281
    iget v13, v1, Lorg/brotli/dec/BitReader;->bitOffset:I

    sget-object v14, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    aget v15, v14, v12

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v13, v15

    iput v13, v1, Lorg/brotli/dec/BitReader;->bitOffset:I

    .line 282
    aget v12, v14, v12

    const v13, 0xffff

    and-int/2addr v12, v13

    .line 283
    aput v12, v7, v11

    if-eqz v12, :cond_a

    shr-int v11, v8, v12

    sub-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    if-eq v10, v6, :cond_d

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    move v6, v5

    .line 290
    :cond_d
    :goto_6
    invoke-static {v7, v0, v2, v1}, Lorg/brotli/dec/Decode;->readHuffmanCodeLengths([II[ILorg/brotli/dec/BitReader;)V

    :cond_e
    :goto_7
    if-eqz v6, :cond_f

    const/16 v1, 0x8

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 295
    invoke-static {v3, v4, v1, v2, v0}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)V

    return-void

    .line 293
    :cond_f
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Can\'t readHuffmanCode"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readHuffmanCodeLengths([II[ILorg/brotli/dec/BitReader;)V
    .locals 11

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/16 v3, 0x12

    .line 178
    invoke-static {v0, v1, v2, p0, v3}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)V

    const p0, 0x8000

    const/16 v2, 0x8

    move v3, p0

    move v5, v1

    move v6, v5

    move v4, v2

    move v2, v6

    :goto_0
    if-ge v2, p1, :cond_8

    if-lez v3, :cond_8

    .line 181
    invoke-static {p3}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 182
    invoke-static {p3}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 183
    iget-wide v7, p3, Lorg/brotli/dec/BitReader;->accumulator:J

    iget v9, p3, Lorg/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    .line 184
    iget v8, p3, Lorg/brotli/dec/BitReader;->bitOffset:I

    aget v9, v0, v7

    const/16 v10, 0x10

    shr-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p3, Lorg/brotli/dec/BitReader;->bitOffset:I

    .line 185
    aget v7, v0, v7

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ge v7, v10, :cond_1

    add-int/lit8 v6, v2, 0x1

    .line 188
    aput v7, p2, v2

    if-eqz v7, :cond_0

    shr-int v2, p0, v7

    sub-int/2addr v3, v2

    move v2, v6

    move v4, v7

    goto :goto_1

    :cond_0
    move v2, v6

    :goto_1
    move v6, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v7, -0xe

    if-ne v7, v10, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    if-eq v5, v7, :cond_3

    move v6, v1

    move v5, v7

    :cond_3
    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x2

    shl-int/2addr v7, v8

    goto :goto_3

    :cond_4
    move v7, v6

    .line 208
    :goto_3
    invoke-static {p3, v8}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    sub-int v6, v7, v6

    add-int v8, v2, v6

    if-gt v8, p1, :cond_7

    move v8, v2

    move v2, v1

    :goto_4
    if-ge v2, v6, :cond_5

    add-int/lit8 v9, v8, 0x1

    .line 214
    aput v5, p2, v8

    add-int/lit8 v2, v2, 0x1

    move v8, v9

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    rsub-int/lit8 v2, v5, 0xf

    shl-int v2, v6, v2

    sub-int/2addr v3, v2

    :cond_6
    move v6, v7

    move v2, v8

    goto :goto_0

    .line 211
    :cond_7
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "symbol + repeatDelta > numSymbols"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v3, :cond_9

    sub-int/2addr p1, v2

    .line 225
    invoke-static {p2, v2, p1}, Lorg/brotli/dec/Utils;->fillWithZeroes([III)V

    return-void

    .line 222
    :cond_9
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unused space"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readMetablockHuffmanCodesAndContextMaps(Lorg/brotli/dec/State;)V
    .locals 11

    .line 467
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 470
    iget-object v3, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    invoke-static {v0}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/BitReader;)I

    move-result v6

    add-int/2addr v6, v5

    aput v6, v3, v2

    .line 471
    iget-object v3, p0, Lorg/brotli/dec/State;->blockLength:[I

    const/high16 v6, 0x10000000

    aput v6, v3, v2

    .line 472
    iget-object v3, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v3, v3, v2

    if-le v3, v5, :cond_0

    .line 473
    iget-object v3, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v3, v3, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/brotli/dec/State;->blockTypeTrees:[I

    mul-int/lit16 v5, v2, 0x438

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/Decode;->readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V

    const/16 v3, 0x1a

    .line 475
    iget-object v4, p0, Lorg/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/Decode;->readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V

    .line 477
    iget-object v3, p0, Lorg/brotli/dec/State;->blockLength:[I

    iget-object v4, p0, Lorg/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v4, v5, v0}, Lorg/brotli/dec/Decode;->readBlockLength([IILorg/brotli/dec/BitReader;)I

    move-result v4

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 483
    invoke-static {v0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v2

    iput v2, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    const/4 v2, 0x4

    .line 485
    invoke-static {v0, v2}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v6

    iget v7, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    .line 486
    iget v6, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int v6, v5, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lorg/brotli/dec/State;->distancePostfixMask:I

    .line 487
    iget v6, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    const/16 v7, 0x30

    iget v8, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 489
    iget-object v7, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/State;->contextModes:[B

    move v7, v1

    .line 490
    :goto_1
    iget-object v8, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v1

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v7, 0x60

    .line 492
    iget-object v9, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_2

    .line 494
    iget-object v9, p0, Lorg/brotli/dec/State;->contextModes:[B

    invoke-static {v0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v10

    shl-int/2addr v10, v5

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 496
    :cond_2
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    goto :goto_1

    .line 500
    :cond_3
    iget-object v7, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    shl-int/lit8 v7, v7, 0x6

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/State;->contextMap:[B

    .line 501
    iget-object v7, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    shl-int/lit8 v7, v7, 0x6

    iget-object v8, p0, Lorg/brotli/dec/State;->contextMap:[B

    invoke-static {v7, v8, v0}, Lorg/brotli/dec/Decode;->decodeContextMap(I[BLorg/brotli/dec/BitReader;)I

    move-result v7

    .line 503
    iput-boolean v5, p0, Lorg/brotli/dec/State;->trivialLiteralContext:Z

    move v8, v1

    .line 504
    :goto_3
    iget-object v9, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v9, v9, v1

    shl-int/lit8 v9, v9, 0x6

    if-ge v8, v9, :cond_5

    .line 505
    iget-object v9, p0, Lorg/brotli/dec/State;->contextMap:[B

    aget-byte v9, v9, v8

    shr-int/lit8 v10, v8, 0x6

    if-eq v9, v10, :cond_4

    .line 506
    iput-boolean v1, p0, Lorg/brotli/dec/State;->trivialLiteralContext:Z

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 512
    :cond_5
    :goto_4
    iget-object v8, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v4

    shl-int/2addr v8, v4

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/brotli/dec/State;->distContextMap:[B

    .line 513
    iget-object v8, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v4

    shl-int/2addr v8, v4

    iget-object v9, p0, Lorg/brotli/dec/State;->distContextMap:[B

    invoke-static {v8, v9, v0}, Lorg/brotli/dec/Decode;->decodeContextMap(I[BLorg/brotli/dec/BitReader;)I

    move-result v8

    .line 516
    iget-object v9, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    const/16 v10, 0x100

    invoke-static {v9, v10, v7}, Lorg/brotli/dec/HuffmanTreeGroup;->init(Lorg/brotli/dec/HuffmanTreeGroup;II)V

    .line 517
    iget-object v7, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    const/16 v9, 0x2c0

    iget-object v10, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v10, v10, v5

    invoke-static {v7, v9, v10}, Lorg/brotli/dec/HuffmanTreeGroup;->init(Lorg/brotli/dec/HuffmanTreeGroup;II)V

    .line 518
    iget-object v7, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-static {v7, v6, v8}, Lorg/brotli/dec/HuffmanTreeGroup;->init(Lorg/brotli/dec/HuffmanTreeGroup;II)V

    .line 520
    iget-object v6, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lorg/brotli/dec/HuffmanTreeGroup;->decode(Lorg/brotli/dec/HuffmanTreeGroup;Lorg/brotli/dec/BitReader;)V

    .line 521
    iget-object v6, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lorg/brotli/dec/HuffmanTreeGroup;->decode(Lorg/brotli/dec/HuffmanTreeGroup;Lorg/brotli/dec/BitReader;)V

    .line 522
    iget-object v6, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lorg/brotli/dec/HuffmanTreeGroup;->decode(Lorg/brotli/dec/HuffmanTreeGroup;Lorg/brotli/dec/BitReader;)V

    .line 524
    iput v1, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    .line 525
    iput v1, p0, Lorg/brotli/dec/State;->distContextMapSlice:I

    .line 526
    sget-object v0, Lorg/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    iget-object v6, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v6, v6, v1

    aget v0, v0, v6

    iput v0, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    .line 527
    sget-object v0, Lorg/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    iget-object v6, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v6, v6, v1

    add-int/2addr v6, v5

    aget v0, v0, v6

    iput v0, p0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    .line 528
    iput v1, p0, Lorg/brotli/dec/State;->literalTreeIndex:I

    .line 529
    iget-object v0, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->literalTree:I

    .line 530
    iget-object v0, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->treeCommandOffset:I

    .line 532
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    iget-object v6, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    iget-object v7, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    aput v5, v7, v2

    aput v5, v6, v4

    aput v5, v0, v1

    .line 533
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    iget-object v2, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    iget-object p0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v4, 0x5

    aput v1, p0, v4

    aput v1, v2, v3

    aput v1, v0, v5

    return-void
.end method

.method private static readMetablockInfo(Lorg/brotli/dec/State;)V
    .locals 4

    .line 428
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    .line 430
    iget-boolean v1, p0, Lorg/brotli/dec/State;->inputEnd:Z

    if-eqz v1, :cond_0

    .line 431
    sget-object v0, Lorg/brotli/dec/RunningState;->FINISHED:Lorg/brotli/dec/RunningState;

    iput-object v0, p0, Lorg/brotli/dec/State;->nextRunningState:Lorg/brotli/dec/RunningState;

    .line 432
    iget v0, p0, Lorg/brotli/dec/State;->pos:I

    iget v1, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->bytesToWrite:I

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 434
    sget-object v0, Lorg/brotli/dec/RunningState;->WRITE:Lorg/brotli/dec/RunningState;

    iput-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    return-void

    .line 438
    :cond_0
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 439
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 440
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 441
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 442
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 443
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 445
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 446
    invoke-static {v0, p0}, Lorg/brotli/dec/Decode;->decodeMetaBlockLength(Lorg/brotli/dec/BitReader;Lorg/brotli/dec/State;)V

    .line 447
    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/brotli/dec/State;->isMetadata:Z

    if-nez v1, :cond_1

    return-void

    .line 450
    :cond_1
    iget-boolean v1, p0, Lorg/brotli/dec/State;->isUncompressed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/brotli/dec/State;->isMetadata:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 454
    :cond_2
    sget-object v0, Lorg/brotli/dec/RunningState;->COMPRESSED_BLOCK_START:Lorg/brotli/dec/RunningState;

    iput-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    goto :goto_2

    .line 451
    :cond_3
    :goto_0
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->jumpToByteBoundary(Lorg/brotli/dec/BitReader;)V

    .line 452
    iget-boolean v0, p0, Lorg/brotli/dec/State;->isMetadata:Z

    if-eqz v0, :cond_4

    sget-object v0, Lorg/brotli/dec/RunningState;->READ_METADATA:Lorg/brotli/dec/RunningState;

    goto :goto_1

    :cond_4
    sget-object v0, Lorg/brotli/dec/RunningState;->COPY_UNCOMPRESSED:Lorg/brotli/dec/RunningState;

    :goto_1
    iput-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    .line 457
    :goto_2
    iget-boolean v0, p0, Lorg/brotli/dec/State;->isMetadata:Z

    if-eqz v0, :cond_5

    return-void

    .line 460
    :cond_5
    iget-wide v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    iget v2, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    .line 461
    iget v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v1, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    if-ge v0, v1, :cond_6

    .line 462
    invoke-static {p0}, Lorg/brotli/dec/Decode;->maybeReallocateRingBuffer(Lorg/brotli/dec/State;)V

    :cond_6
    return-void
.end method

.method private static readSymbol([IILorg/brotli/dec/BitReader;)I
    .locals 8

    .line 120
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 121
    iget-wide v0, p2, Lorg/brotli/dec/BitReader;->accumulator:J

    iget v2, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    .line 122
    aget v0, p0, p1

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, -0x8

    const v1, 0xffff

    if-lez v0, :cond_0

    .line 124
    iget v2, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    .line 125
    aget v2, p0, p1

    and-int/2addr v2, v1

    add-int/2addr p1, v2

    int-to-long v2, p1

    .line 126
    iget-wide v4, p2, Lorg/brotli/dec/BitReader;->accumulator:J

    iget p1, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v4, p1

    const/4 p1, 0x1

    shl-int v0, p1, v0

    sub-int/2addr v0, p1

    int-to-long v6, v0

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int p1, v2

    .line 128
    :cond_0
    iget v0, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    aget v2, p0, p1

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    iput v0, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    .line 129
    aget p0, p0, p1

    and-int/2addr p0, v1

    return p0
.end method

.method static setCustomDictionary(Lorg/brotli/dec/State;[B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    .line 576
    :cond_0
    iput-object p1, p0, Lorg/brotli/dec/State;->customDictionary:[B

    return-void
.end method

.method private static translateShortCodes(I[II)I
    .locals 1

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 140
    sget-object v0, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    aget v0, v0, p0

    add-int/2addr p2, v0

    and-int/lit8 p2, p2, 0x3

    .line 142
    aget p1, p1, p2

    sget-object p2, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    aget p0, p2, p0

    add-int/2addr p1, p0

    return p1

    :cond_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static writeRingBuffer(Lorg/brotli/dec/State;)Z
    .locals 7

    .line 559
    iget v0, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 560
    iget v0, p0, Lorg/brotli/dec/State;->bytesWritten:I

    iget v2, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 561
    iput v1, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    .line 563
    :cond_0
    iget v0, p0, Lorg/brotli/dec/State;->outputLength:I

    iget v2, p0, Lorg/brotli/dec/State;->outputUsed:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/brotli/dec/State;->bytesToWrite:I

    iget v3, p0, Lorg/brotli/dec/State;->bytesWritten:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v3, p0, Lorg/brotli/dec/State;->bytesWritten:I

    iget-object v4, p0, Lorg/brotli/dec/State;->output:[B

    iget v5, p0, Lorg/brotli/dec/State;->outputOffset:I

    iget v6, p0, Lorg/brotli/dec/State;->outputUsed:I

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    iget v2, p0, Lorg/brotli/dec/State;->outputUsed:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/State;->outputUsed:I

    .line 569
    iget v2, p0, Lorg/brotli/dec/State;->bytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 572
    :cond_1
    iget v0, p0, Lorg/brotli/dec/State;->outputUsed:I

    iget p0, p0, Lorg/brotli/dec/State;->outputLength:I

    if-ge v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
