.class final Lorg/brotli/dec/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field final blockLenTrees:[I

.field final blockLength:[I

.field final blockTypeRb:[I

.field final blockTypeTrees:[I

.field final br:Lorg/brotli/dec/BitReader;

.field bytesToIgnore:I

.field bytesToWrite:I

.field bytesWritten:I

.field contextLookupOffset1:I

.field contextLookupOffset2:I

.field contextMap:[B

.field contextMapSlice:I

.field contextModes:[B

.field copyDst:I

.field copyLength:I

.field customDictionary:[B

.field distContextMap:[B

.field distContextMapSlice:I

.field final distRb:[I

.field distRbIdx:I

.field distance:I

.field distanceCode:I

.field distancePostfixBits:I

.field distancePostfixMask:I

.field expectedTotalSize:J

.field final hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

.field final hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

.field final hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

.field inputEnd:Z

.field insertLength:I

.field isMetadata:Z

.field isUncompressed:Z

.field j:I

.field literalTree:I

.field literalTreeIndex:I

.field maxBackwardDistance:I

.field maxDistance:I

.field maxRingBufferSize:I

.field metaBlockLength:I

.field nextRunningState:Lorg/brotli/dec/RunningState;

.field final numBlockTypes:[I

.field numDirectDistanceCodes:I

.field output:[B

.field outputLength:I

.field outputOffset:I

.field outputUsed:I

.field pos:I

.field ringBuffer:[B

.field ringBufferSize:I

.field runningState:Lorg/brotli/dec/RunningState;

.field treeCommandOffset:I

.field trivialLiteralContext:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lorg/brotli/dec/RunningState;->UNINITIALIZED:Lorg/brotli/dec/RunningState;

    iput-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    .line 19
    new-instance v0, Lorg/brotli/dec/BitReader;

    invoke-direct {v0}, Lorg/brotli/dec/BitReader;-><init>()V

    iput-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    const/16 v0, 0xca8

    .line 21
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/brotli/dec/State;->blockTypeTrees:[I

    .line 22
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/State;->blockLenTrees:[I

    .line 30
    new-instance v0, Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-direct {v0}, Lorg/brotli/dec/HuffmanTreeGroup;-><init>()V

    iput-object v0, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    .line 31
    new-instance v0, Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-direct {v0}, Lorg/brotli/dec/HuffmanTreeGroup;-><init>()V

    iput-object v0, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    .line 32
    new-instance v0, Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-direct {v0}, Lorg/brotli/dec/HuffmanTreeGroup;-><init>()V

    iput-object v0, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    const/4 v0, 0x3

    .line 33
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/brotli/dec/State;->blockLength:[I

    .line 34
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    const/4 v0, 0x6

    .line 35
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/brotli/dec/State;->distRb:[I

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lorg/brotli/dec/State;->pos:I

    .line 38
    iput v0, p0, Lorg/brotli/dec/State;->maxDistance:I

    .line 39
    iput v0, p0, Lorg/brotli/dec/State;->distRbIdx:I

    .line 40
    iput-boolean v0, p0, Lorg/brotli/dec/State;->trivialLiteralContext:Z

    .line 41
    iput v0, p0, Lorg/brotli/dec/State;->literalTreeIndex:I

    .line 62
    iput v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    const-wide/16 v1, 0x0

    .line 63
    iput-wide v1, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    .line 64
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/brotli/dec/State;->customDictionary:[B

    .line 65
    iput v0, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0xf
        0xb
        0x4
    .end array-data
.end method

.method static close(Lorg/brotli/dec/State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v1, Lorg/brotli/dec/RunningState;->UNINITIALIZED:Lorg/brotli/dec/RunningState;

    if-eq v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v1, Lorg/brotli/dec/RunningState;->CLOSED:Lorg/brotli/dec/RunningState;

    if-ne v0, v1, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v0, Lorg/brotli/dec/RunningState;->CLOSED:Lorg/brotli/dec/RunningState;

    iput-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    .line 118
    iget-object p0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    invoke-static {p0}, Lorg/brotli/dec/BitReader;->close(Lorg/brotli/dec/BitReader;)V

    return-void

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State MUST be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decodeWindowBits(Lorg/brotli/dec/BitReader;)I
    .locals 3

    const/4 v0, 0x1

    .line 76
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    const/4 v0, 0x3

    .line 79
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_1

    add-int/2addr v1, v2

    return v1

    .line 83
    :cond_1
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 p0, p0, 0x8

    return p0

    :cond_2
    return v2
.end method

.method static setInput(Lorg/brotli/dec/State;Ljava/io/InputStream;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    sget-object v1, Lorg/brotli/dec/RunningState;->UNINITIALIZED:Lorg/brotli/dec/RunningState;

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    invoke-static {v0, p1}, Lorg/brotli/dec/BitReader;->init(Lorg/brotli/dec/BitReader;Ljava/io/InputStream;)V

    .line 101
    iget-object p1, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    invoke-static {p1}, Lorg/brotli/dec/State;->decodeWindowBits(Lorg/brotli/dec/BitReader;)I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 105
    iput p1, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    .line 106
    iget p1, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    add-int/lit8 p1, p1, -0x10

    iput p1, p0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    .line 107
    sget-object p1, Lorg/brotli/dec/RunningState;->BLOCK_START:Lorg/brotli/dec/RunningState;

    iput-object p1, p0, Lorg/brotli/dec/State;->runningState:Lorg/brotli/dec/RunningState;

    return-void

    .line 103
    :cond_0
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Invalid \'windowBits\' code"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State MUST be uninitialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
