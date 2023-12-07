.class public Lcom/google/android/filament/Renderer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Renderer$ClearOptions;,
        Lcom/google/android/filament/Renderer$FrameRateOptions;,
        Lcom/google/android/filament/Renderer$DisplayInfo;
    }
.end annotation


# static fields
.field public static final MIRROR_FRAME_FLAG_CLEAR:I = 0x4

.field public static final MIRROR_FRAME_FLAG_COMMIT:I = 0x1

.field public static final MIRROR_FRAME_FLAG_SET_PRESENTATION_TIME:I = 0x2


# instance fields
.field private mClearOptions:Lcom/google/android/filament/Renderer$ClearOptions;

.field private mDisplayInfo:Lcom/google/android/filament/Renderer$DisplayInfo;

.field private final mEngine:Lcom/google/android/filament/Engine;

.field private mFrameRateOptions:Lcom/google/android/filament/Renderer$FrameRateOptions;

.field private mNativeObject:J


# direct methods
.method constructor <init>(Lcom/google/android/filament/Engine;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->mEngine:Lcom/google/android/filament/Engine;

    iput-wide p2, p0, Lcom/google/android/filament/Renderer;->mNativeObject:J

    return-void
.end method

.method private static native nBeginFrame(JJJ)Z
.end method

.method private static native nCopyFrame(JJIIIIIIIII)V
.end method

.method private static native nEndFrame(J)V
.end method

.method private static native nGetUserTime(J)D
.end method

.method private static native nReadPixels(JJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nReadPixelsEx(JJJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nRender(JJ)V
.end method

.method private static native nResetUserTime(J)V
.end method

.method private static native nSetClearOptions(JFFFFZZ)V
.end method

.method private static native nSetDisplayInfo(JFJJ)V
.end method

.method private static native nSetFrameRateOptions(JFFFI)V
.end method


# virtual methods
.method public beginFrame(Lcom/google/android/filament/SwapChain;J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->getNativeObject()J

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Renderer;->nBeginFrame(JJJ)Z

    move-result p0

    return p0
.end method

.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Renderer;->mNativeObject:J

    return-void
.end method

.method public copyFrame(Lcom/google/android/filament/SwapChain;Lcom/google/android/filament/Viewport;Lcom/google/android/filament/Viewport;I)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->getNativeObject()J

    move-result-wide v4

    iget v6, v0, Lcom/google/android/filament/Viewport;->left:I

    iget v7, v0, Lcom/google/android/filament/Viewport;->bottom:I

    iget v8, v0, Lcom/google/android/filament/Viewport;->width:I

    iget v9, v0, Lcom/google/android/filament/Viewport;->height:I

    iget v10, v1, Lcom/google/android/filament/Viewport;->left:I

    iget v11, v1, Lcom/google/android/filament/Viewport;->bottom:I

    iget v12, v1, Lcom/google/android/filament/Viewport;->width:I

    iget v13, v1, Lcom/google/android/filament/Viewport;->height:I

    move-wide v0, v2

    move-wide v2, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lcom/google/android/filament/Renderer;->nCopyFrame(JJIIIIIIIII)V

    return-void
.end method

.method public endFrame()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nEndFrame(J)V

    return-void
.end method

.method public getClearOptions()Lcom/google/android/filament/Renderer$ClearOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/Renderer;->mClearOptions:Lcom/google/android/filament/Renderer$ClearOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Renderer$ClearOptions;

    invoke-direct {v0}, Lcom/google/android/filament/Renderer$ClearOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/Renderer;->mClearOptions:Lcom/google/android/filament/Renderer$ClearOptions;

    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/Renderer;->mClearOptions:Lcom/google/android/filament/Renderer$ClearOptions;

    return-object p0
.end method

.method public getDisplayInfo()Lcom/google/android/filament/Renderer$DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/Renderer;->mDisplayInfo:Lcom/google/android/filament/Renderer$DisplayInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Renderer$DisplayInfo;

    invoke-direct {v0}, Lcom/google/android/filament/Renderer$DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/Renderer;->mDisplayInfo:Lcom/google/android/filament/Renderer$DisplayInfo;

    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/Renderer;->mDisplayInfo:Lcom/google/android/filament/Renderer$DisplayInfo;

    return-object p0
.end method

.method public getEngine()Lcom/google/android/filament/Engine;
    .locals 0

    iget-object p0, p0, Lcom/google/android/filament/Renderer;->mEngine:Lcom/google/android/filament/Engine;

    return-object p0
.end method

.method public getFrameRateOptions()Lcom/google/android/filament/Renderer$FrameRateOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/Renderer;->mFrameRateOptions:Lcom/google/android/filament/Renderer$FrameRateOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Renderer$FrameRateOptions;

    invoke-direct {v0}, Lcom/google/android/filament/Renderer$FrameRateOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/Renderer;->mFrameRateOptions:Lcom/google/android/filament/Renderer$FrameRateOptions;

    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/Renderer;->mFrameRateOptions:Lcom/google/android/filament/Renderer$FrameRateOptions;

    return-object p0
.end method

.method public getNativeObject()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Renderer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling method on destroyed Renderer"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserTime()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nGetUserTime(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public mirrorFrame(Lcom/google/android/filament/SwapChain;Lcom/google/android/filament/Viewport;Lcom/google/android/filament/Viewport;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/filament/Renderer;->copyFrame(Lcom/google/android/filament/SwapChain;Lcom/google/android/filament/Viewport;Lcom/google/android/filament/Viewport;I)V

    return-void
.end method

.method public readPixels(IIIILcom/google/android/filament/Texture$PixelBufferDescriptor;)V
    .locals 20

    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v2

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/filament/Renderer;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v4

    iget-object v10, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    iget v12, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->left:I

    iget v13, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->top:I

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->type:Lcom/google/android/filament/Texture$Type;

    invoke-virtual {v1}, Lcom/google/android/filament/Texture$Type;->ordinal()I

    move-result v14

    iget v15, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->alignment:I

    iget v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->stride:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->format:Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v1}, Lcom/google/android/filament/Texture$Format;->ordinal()I

    move-result v17

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->handler:Ljava/lang/Object;

    move-object/from16 v18, v1

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->callback:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v2 .. v19}, Lcom/google/android/filament/Renderer;->nReadPixels(JJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public readPixels(Lcom/google/android/filament/RenderTarget;IIIILcom/google/android/filament/Texture$PixelBufferDescriptor;)V
    .locals 22

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->storage:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v2

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/filament/Renderer;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/RenderTarget;->getNativeObject()J

    move-result-wide v6

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

    iget v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->stride:I

    move/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->format:Lcom/google/android/filament/Texture$Format;

    invoke-virtual {v1}, Lcom/google/android/filament/Texture$Format;->ordinal()I

    move-result v19

    iget-object v1, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->handler:Ljava/lang/Object;

    move-object/from16 v20, v1

    iget-object v0, v0, Lcom/google/android/filament/Texture$PixelBufferDescriptor;->callback:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v2 .. v21}, Lcom/google/android/filament/Renderer;->nReadPixelsEx(JJJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public render(Lcom/google/android/filament/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/Renderer;->nRender(JJ)V

    return-void
.end method

.method public resetUserTime()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nResetUserTime(J)V

    return-void
.end method

.method public setClearOptions(Lcom/google/android/filament/Renderer$ClearOptions;)V
    .locals 8

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->mClearOptions:Lcom/google/android/filament/Renderer$ClearOptions;

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v0

    iget-object p0, p1, Lcom/google/android/filament/Renderer$ClearOptions;->clearColor:[F

    const/4 v2, 0x0

    aget v2, p0, v2

    iget-object p0, p1, Lcom/google/android/filament/Renderer$ClearOptions;->clearColor:[F

    const/4 v3, 0x1

    aget v3, p0, v3

    iget-object p0, p1, Lcom/google/android/filament/Renderer$ClearOptions;->clearColor:[F

    const/4 v4, 0x2

    aget v4, p0, v4

    iget-object p0, p1, Lcom/google/android/filament/Renderer$ClearOptions;->clearColor:[F

    const/4 v5, 0x3

    aget v5, p0, v5

    iget-boolean v6, p1, Lcom/google/android/filament/Renderer$ClearOptions;->clear:Z

    iget-boolean v7, p1, Lcom/google/android/filament/Renderer$ClearOptions;->discard:Z

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/Renderer;->nSetClearOptions(JFFFFZZ)V

    return-void
.end method

.method public setDisplayInfo(Lcom/google/android/filament/Renderer$DisplayInfo;)V
    .locals 7

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->mDisplayInfo:Lcom/google/android/filament/Renderer$DisplayInfo;

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/Renderer$DisplayInfo;->refreshRate:F

    iget-wide v3, p1, Lcom/google/android/filament/Renderer$DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v5, p1, Lcom/google/android/filament/Renderer$DisplayInfo;->vsyncOffsetNanos:J

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/Renderer;->nSetDisplayInfo(JFJJ)V

    return-void
.end method

.method public setFrameRateOptions(Lcom/google/android/filament/Renderer$FrameRateOptions;)V
    .locals 6

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->mFrameRateOptions:Lcom/google/android/filament/Renderer$FrameRateOptions;

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/Renderer$FrameRateOptions;->interval:F

    iget v3, p1, Lcom/google/android/filament/Renderer$FrameRateOptions;->headRoomRatio:F

    iget v4, p1, Lcom/google/android/filament/Renderer$FrameRateOptions;->scaleRate:F

    iget v5, p1, Lcom/google/android/filament/Renderer$FrameRateOptions;->history:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Renderer;->nSetFrameRateOptions(JFFFI)V

    return-void
.end method
