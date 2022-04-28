.class Lorg/brotli/dec/BitReader;
.super Ljava/lang/Object;
.source "BitReader.java"


# instance fields
.field accumulator:J

.field private available:I

.field bitOffset:I

.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private endOfStreamReached:Z

.field private input:Ljava/io/InputStream;

.field private final intBuffer:Ljava/nio/IntBuffer;

.field private final shadowBuffer:[B

.field private tailBytes:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1040

    .line 28
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/brotli/dec/BitReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 29
    iget-object v1, p0, Lorg/brotli/dec/BitReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/brotli/dec/BitReader;->intBuffer:Ljava/nio/IntBuffer;

    .line 30
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/brotli/dec/BitReader;->shadowBuffer:[B

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lorg/brotli/dec/BitReader;->tailBytes:I

    return-void
.end method

.method static checkHealth(Lorg/brotli/dec/BitReader;)V
    .locals 2

    .line 101
    iget-boolean v0, p0, Lorg/brotli/dec/BitReader;->endOfStreamReached:Z

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget v0, p0, Lorg/brotli/dec/BitReader;->available:I

    shl-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/brotli/dec/BitReader;->bitOffset:I

    rsub-int/lit8 v1, v1, 0x40

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 107
    iget p0, p0, Lorg/brotli/dec/BitReader;->tailBytes:I

    rsub-int/lit8 p0, p0, 0x40

    if-ne v0, p0, :cond_1

    return-void

    .line 109
    :cond_1
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v0, "Read after end"

    invoke-direct {p0, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static close(Lorg/brotli/dec/BitReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 164
    iput-object v1, p0, Lorg/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method static fillBitWindow(Lorg/brotli/dec/BitReader;)V
    .locals 6

    .line 117
    iget v0, p0, Lorg/brotli/dec/BitReader;->bitOffset:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    int-to-long v2, v0

    shl-long/2addr v2, v1

    iget-wide v4, p0, Lorg/brotli/dec/BitReader;->accumulator:J

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/brotli/dec/BitReader;->accumulator:J

    .line 119
    iget v0, p0, Lorg/brotli/dec/BitReader;->bitOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/BitReader;->bitOffset:I

    .line 120
    iget v0, p0, Lorg/brotli/dec/BitReader;->available:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/brotli/dec/BitReader;->available:I

    :cond_0
    return-void
.end method

.method static init(Lorg/brotli/dec/BitReader;Ljava/io/InputStream;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 147
    iput-object p1, p0, Lorg/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 148
    iput-wide v0, p0, Lorg/brotli/dec/BitReader;->accumulator:J

    .line 149
    iget-object p1, p0, Lorg/brotli/dec/BitReader;->intBuffer:Ljava/nio/IntBuffer;

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 p1, 0x40

    .line 150
    iput p1, p0, Lorg/brotli/dec/BitReader;->bitOffset:I

    const/4 p1, 0x0

    .line 151
    iput p1, p0, Lorg/brotli/dec/BitReader;->available:I

    .line 152
    iput-boolean p1, p0, Lorg/brotli/dec/BitReader;->endOfStreamReached:Z

    .line 153
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 155
    iget p1, p0, Lorg/brotli/dec/BitReader;->available:I

    if-eqz p1, :cond_0

    .line 158
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 159
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    return-void

    .line 156
    :cond_0
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Can\'t initialize reader"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Bit reader already has associated input stream"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static jumpToByteBoundary(Lorg/brotli/dec/BitReader;)V
    .locals 1

    .line 171
    iget v0, p0, Lorg/brotli/dec/BitReader;->bitOffset:I

    rsub-int/lit8 v0, v0, 0x40

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_1

    .line 173
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v0, "Corrupted padding bits "

    invoke-direct {p0, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static readBits(Lorg/brotli/dec/BitReader;I)I
    .locals 4

    .line 128
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 129
    iget-wide v0, p0, Lorg/brotli/dec/BitReader;->accumulator:J

    iget v2, p0, Lorg/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    shl-int v3, v1, p1

    sub-int/2addr v3, v1

    and-int/2addr v0, v3

    add-int/2addr v2, p1

    .line 130
    iput v2, p0, Lorg/brotli/dec/BitReader;->bitOffset:I

    return v0
.end method

.method static readMoreInput(Lorg/brotli/dec/BitReader;)V
    .locals 6

    .line 67
    iget v0, p0, Lorg/brotli/dec/BitReader;->available:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-boolean v1, p0, Lorg/brotli/dec/BitReader;->endOfStreamReached:Z

    if-eqz v1, :cond_2

    const/4 p0, 0x4

    if-le v0, p0, :cond_1

    return-void

    .line 74
    :cond_1
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v0, "No more input"

    invoke-direct {p0, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_2
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1000

    rsub-int v2, v0, 0x1000

    .line 78
    iget-object v3, p0, Lorg/brotli/dec/BitReader;->shadowBuffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v2, v1, :cond_4

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/brotli/dec/BitReader;->shadowBuffer:[B

    rsub-int v5, v2, 0x1000

    invoke-virtual {v0, v3, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lorg/brotli/dec/BitReader;->endOfStreamReached:Z

    .line 84
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->shadowBuffer:[B

    const/16 v1, 0x40

    invoke-static {v0, v2, v1}, Lorg/brotli/dec/Utils;->fillWithZeroes([BII)V

    add-int/lit8 v2, v2, 0x40

    and-int/lit8 v0, v2, 0x3

    .line 86
    iput v0, p0, Lorg/brotli/dec/BitReader;->tailBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    add-int/2addr v2, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Failed to read input"

    invoke-direct {v0, v1, p0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 94
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 95
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/brotli/dec/BitReader;->shadowBuffer:[B

    const v3, 0xfffc

    and-int/2addr v3, v2

    invoke-virtual {v0, v1, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 96
    iget-object v0, p0, Lorg/brotli/dec/BitReader;->intBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    shr-int/lit8 v0, v2, 0x2

    .line 97
    iput v0, p0, Lorg/brotli/dec/BitReader;->available:I

    return-void
.end method
