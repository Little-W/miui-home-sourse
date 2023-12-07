.class public Lcom/google/android/filament/Texture;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Texture$Usage;,
        Lcom/google/android/filament/Texture$Builder;,
        Lcom/google/android/filament/Texture$PrefilterOptions;,
        Lcom/google/android/filament/Texture$PixelBufferDescriptor;,
        Lcom/google/android/filament/Texture$Swizzle;,
        Lcom/google/android/filament/Texture$Type;,
        Lcom/google/android/filament/Texture$Format;,
        Lcom/google/android/filament/Texture$CubemapFace;,
        Lcom/google/android/filament/Texture$CompressedFormat;,
        Lcom/google/android/filament/Texture$InternalFormat;,
        Lcom/google/android/filament/Texture$Sampler;
    }
.end annotation


# static fields
.field public static final BASE_LEVEL:I


# instance fields
.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Texture;->mNativeObject:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/filament/Texture;->mNativeObject:J

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/Texture;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderWidth(JI)V

    return-void
.end method

.method static synthetic access$1000(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Texture;->nDestroyBuilder(J)V

    return-void
.end method

.method static synthetic access$200(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderHeight(JI)V

    return-void
.end method

.method static synthetic access$300(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderDepth(JI)V

    return-void
.end method

.method static synthetic access$400(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderLevels(JI)V

    return-void
.end method

.method static synthetic access$500(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderSampler(JI)V

    return-void
.end method

.method static synthetic access$600(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderFormat(JI)V

    return-void
.end method

.method static synthetic access$700(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderUsage(JI)V

    return-void
.end method

.method static synthetic access$800(JIIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/Texture;->nBuilderSwizzle(JIIII)V

    return-void
.end method

.method static synthetic access$900(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Texture;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isTextureFormatSupported(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$InternalFormat;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Texture$InternalFormat;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/Texture;->nIsTextureFormatSupported(JI)Z

    move-result p0

    return p0
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderDepth(JI)V
.end method

.method private static native nBuilderFormat(JI)V
.end method

.method private static native nBuilderHeight(JI)V
.end method

.method private static native nBuilderLevels(JI)V
.end method

.method private static native nBuilderSampler(JI)V
.end method

.method private static native nBuilderSwizzle(JIIII)V
.end method

.method private static native nBuilderUsage(JI)V
.end method

.method private static native nBuilderWidth(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGenerateMipmaps(JJ)V
.end method

.method private static native nGeneratePrefilterMipmap(JJIILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;IZ)I
.end method

.method private static native nGetDepth(JI)I
.end method

.method private static native nGetHeight(JI)I
.end method

.method private static native nGetInternalFormat(J)I
.end method

.method private static native nGetLevels(J)I
.end method

.method private static native nGetTarget(J)I
.end method

.method private static native nGetWidth(JI)I
.end method

.method private static native nIsStreamValidForTexture(JJ)Z
.end method

.method private static native nIsTextureFormatSupported(JI)Z
.end method

.method private static native nSetExternalImage(JJJ)V
.end method

.method private static native nSetExternalStream(JJJ)V
.end method

.method private static native nSetImage(JJIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImageCompressed(JJIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImageCubemap(JJILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImageCubemapCompressed(JJILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;)I
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Texture;->mNativeObject:J

    return-void
.end method

.method public generateMipmaps(Lcom/google/android/filament/Engine;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/Texture;->nGenerateMipmaps(JJ)V

    return-void
.end method

.method public generatePrefilterMipmap(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$PixelBufferDescriptor;[ILcom/google/android/filament/Texture$PrefilterOptions;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/filament/Texture;->getWidth(I)I

    move-result v8

    invoke-virtual {v0, v3}, Lcom/google/android/filament/Texture;->getHeight(I)I

    move-result v9

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/android/filament/Texture$PrefilterOptions;->sampleCount:I

    iget-boolean v2, v2, Lcom/google/android/filament/Texture$PrefilterOptions;->mirror:Z

    move/from16 v22, v2

    move/from16 v21, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    move/from16 v21, v2

    move/from16 v22, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v6

    iget-object v10, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    iget-object v0, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    iget v12, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->left:I

    iget v13, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->top:I

    iget-object v0, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    invoke-virtual {v0}, Lcom/google/android/filament/Texture$Type;->ordinal()I

    move-result v14

    iget v15, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->alignment:I

    iget v0, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->stride:I

    move/from16 v16, v0

    iget-object v0, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->format:Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v0}, Lcom/google/android/filament/Texture$Format;->ordinal()I

    move-result v17

    iget-object v0, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->handler:Ljava/lang/Object;

    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->callback:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v18, p3

    invoke-static/range {v4 .. v22}, Lcom/google/android/filament/Texture;->nGeneratePrefilterMipmap(JJIILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;IZ)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public getDepth(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->nGetDepth(JI)I

    move-result p0

    return p0
.end method

.method public getFormat()Lcom/google/android/filament/Texture$InternalFormat;
    .locals 3

    invoke-static {}, Lcom/google/android/filament/Texture$InternalFormat;->values()[Lcom/google/android/filament/Texture$InternalFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Texture;->nGetInternalFormat(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getHeight(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->nGetHeight(JI)I

    move-result p0

    return p0
.end method

.method public getLevels()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Texture;->nGetLevels(J)I

    move-result p0

    return p0
.end method

.method public getNativeObject()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Texture;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling method on destroyed Texture"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTarget()Lcom/google/android/filament/Texture$Sampler;
    .locals 3

    invoke-static {}, Lcom/google/android/filament/Texture$Sampler;->values()[Lcom/google/android/filament/Texture$Sampler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Texture;->nGetTarget(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getWidth(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->nGetWidth(JI)I

    move-result p0

    return p0
.end method

.method public setExternalImage(Lcom/google/android/filament/Engine;J)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Texture;->nSetExternalImage(JJJ)V

    return-void
.end method

.method public setExternalStream(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Stream;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/Stream;->getNativeObject()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/filament/Texture;->nIsStreamValidForTexture(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Texture;->nSetExternalStream(JJJ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid texture sampler: When used with a stream, a texture must use a SAMPLER_EXTERNAL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setImage(Lcom/google/android/filament/Engine;IIIIILcom/google/android/filament/Texture$PixelBufferDescriptor;)V
    .locals 22

    move-object/from16 v0, p7

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    sget-object v2, Lcom/google/android/filament/Texture$Type;->COMPRESSED:Lcom/google/android/filament/Texture$Type;

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v5

    iget-object v12, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    iget v14, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->left:I

    iget v15, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->top:I

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    invoke-virtual {v1}, Lcom/google/android/filament/Texture$Type;->ordinal()I

    move-result v16

    iget v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->alignment:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->compressedSizeInBytes:I

    move/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->compressedFormat:Lcom/google/android/filament/Texture$CompressedFormat;

    invoke-virtual {v1}, Lcom/google/android/filament/Texture$CompressedFormat;->ordinal()I

    move-result v19

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->handler:Ljava/lang/Object;

    move-object/from16 v20, v1

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->callback:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v3 .. v21}, Lcom/google/android/filament/Texture;->nSetImageCompressed(JJIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v3

    iget-object v10, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    iget v12, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->left:I

    iget v13, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->top:I

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    invoke-virtual {v5}, Lcom/google/android/filament/Texture$Type;->ordinal()I

    move-result v14

    iget v15, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->alignment:I

    iget v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->stride:I

    move/from16 v16, v5

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->format:Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v5}, Lcom/google/android/filament/Texture$Format;->ordinal()I

    move-result v17

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->handler:Ljava/lang/Object;

    move-object/from16 v18, v5

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->callback:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v19}, Lcom/google/android/filament/Texture;->nSetImage(JJIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public setImage(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$PixelBufferDescriptor;)V
    .locals 8

    invoke-virtual {p0, p2}, Lcom/google/android/filament/Texture;->getWidth(I)I

    move-result v5

    invoke-virtual {p0, p2}, Lcom/google/android/filament/Texture;->getHeight(I)I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/filament/Texture;->setImage(Lcom/google/android/filament/Engine;IIIIILcom/google/android/filament/Texture$PixelBufferDescriptor;)V

    return-void
.end method

.method public setImage(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$PixelBufferDescriptor;[I)V
    .locals 19

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    sget-object v2, Lcom/google/android/filament/Texture$Type;->COMPRESSED:Lcom/google/android/filament/Texture$Type;

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v5

    iget-object v8, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    iget v10, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->left:I

    iget v11, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->top:I

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    invoke-virtual {v1}, Lcom/google/android/filament/Texture$Type;->ordinal()I

    move-result v12

    iget v13, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->alignment:I

    iget v14, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->compressedSizeInBytes:I

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->compressedFormat:Lcom/google/android/filament/Texture$CompressedFormat;

    invoke-virtual {v1}, Lcom/google/android/filament/Texture$CompressedFormat;->ordinal()I

    move-result v15

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->handler:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->callback:Ljava/lang/Runnable;

    move/from16 v7, p2

    move-object/from16 v16, p4

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-static/range {v3 .. v18}, Lcom/google/android/filament/Texture;->nSetImageCubemapCompressed(JJILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v3

    iget-object v6, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    iget v8, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->left:I

    iget v9, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->top:I

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    invoke-virtual {v5}, Lcom/google/android/filament/Texture$Type;->ordinal()I

    move-result v10

    iget v11, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->alignment:I

    iget v12, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->stride:I

    iget-object v5, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->format:Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v5}, Lcom/google/android/filament/Texture$Format;->ordinal()I

    move-result v13

    iget-object v15, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->handler:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->callback:Ljava/lang/Runnable;

    move/from16 v5, p2

    move-object/from16 v14, p4

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v16}, Lcom/google/android/filament/Texture;->nSetImageCubemap(JJILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method
