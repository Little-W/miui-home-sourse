.class public Lcom/google/android/filament/Stream;
.super Ljava/lang/Object;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Stream$Builder;,
        Lcom/google/android/filament/Stream$StreamType;
    }
.end annotation


# instance fields
.field private mNativeEngine:J

.field private mNativeObject:J


# direct methods
.method constructor <init>(JLcom/google/android/filament/Engine;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/google/android/filament/Stream;->mNativeObject:J

    .line 52
    invoke-virtual {p3}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/Stream;->mNativeEngine:J

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 32
    invoke-static {}, Lcom/google/android/filament/Stream;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JLjava/lang/Object;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Stream;->nBuilderStreamSource(JLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(JJ)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Stream;->nBuilderStream(JJ)V

    return-void
.end method

.method static synthetic access$300(JI)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Stream;->nBuilderWidth(JI)V

    return-void
.end method

.method static synthetic access$400(JI)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Stream;->nBuilderHeight(JI)V

    return-void
.end method

.method static synthetic access$500(JJ)J
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Stream;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(J)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/google/android/filament/Stream;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderHeight(JI)V
.end method

.method private static native nBuilderStream(JJ)V
.end method

.method private static native nBuilderStreamSource(JLjava/lang/Object;)V
.end method

.method private static native nBuilderWidth(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetStreamType(J)I
.end method

.method private static native nGetTimestamp(J)J
.end method

.method private static native nReadPixels(JJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetAcquiredImage(JJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method private static native nSetDimensions(JII)V
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 310
    iput-wide v0, p0, Lcom/google/android/filament/Stream;->mNativeObject:J

    return-void
.end method

.method public getNativeObject()J
    .locals 4

    .line 303
    iget-wide v0, p0, Lcom/google/android/filament/Stream;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamType()Lcom/google/android/filament/Stream$StreamType;
    .locals 3

    .line 176
    invoke-static {}, Lcom/google/android/filament/Stream$StreamType;->values()[Lcom/google/android/filament/Stream$StreamType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Stream;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Stream;->nGetStreamType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/google/android/filament/Stream;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Stream;->nGetTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readPixels(IIIILcom/google/android/filament/Texture$PixelBufferDescriptor;)V
    .locals 20

    move-object/from16 v0, p5

    .line 275
    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Stream;->getNativeObject()J

    move-result-wide v2

    move-object/from16 v1, p0

    iget-wide v4, v1, Lcom/google/android/filament/Stream;->mNativeEngine:J

    iget-object v10, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    iget-object v6, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    .line 281
    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    iget v12, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->left:I

    iget v13, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->top:I

    iget-object v6, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    .line 282
    invoke-virtual {v6}, Lcom/google/android/filament/Texture$Type;->ordinal()I

    move-result v14

    iget v15, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->alignment:I

    iget v6, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->stride:I

    move/from16 v16, v6

    iget-object v6, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->format:Lcom/google/android/filament/Texture$Format;

    .line 283
    invoke-virtual {v6}, Lcom/google/android/filament/Texture$Format;->ordinal()I

    move-result v17

    iget-object v6, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->handler:Ljava/lang/Object;

    move-object/from16 v18, v6

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->callback:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 279
    invoke-static/range {v2 .. v19}, Lcom/google/android/filament/Stream;->nReadPixels(JJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    move-object/from16 v1, p0

    .line 276
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public setAcquiredImage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 7

    .line 190
    invoke-virtual {p0}, Lcom/google/android/filament/Stream;->getNativeObject()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/filament/Stream;->mNativeEngine:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/Stream;->nSetAcquiredImage(JJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/google/android/filament/Stream;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Stream;->nSetDimensions(JII)V

    return-void
.end method
