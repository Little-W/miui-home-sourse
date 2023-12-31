.class Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;
.super Ljava/lang/Object;
.source "BlurLayerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLUR_RADIUS:I

.field private static final MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/blur/sdk/backdrop/Pools$SimplePool<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttachedDrawInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlendPaint:Landroid/graphics/Paint;

.field private mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

.field private mBlurRadius:F

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mOutline:Landroid/graphics/Outline;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRenderScript:Landroid/renderscript/RenderScript;

.field private mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

.field private mScale:F

.field private final mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

.field private final mTmpLoc:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpSize:Landroid/graphics/Point;

.field private final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;

    .line 51
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getBlurRadius()I

    move-result v0

    sput v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewRootImpl;Landroid/renderscript/RenderScript;Landroid/os/Handler;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 65
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpSize:Landroid/graphics/Point;

    .line 71
    sget v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 80
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 82
    iput-object p4, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 85
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    invoke-static {p3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 89
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    invoke-virtual {p1, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    return-void
.end method

.method private asyncInvalidateAll()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 176
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    sget-object p0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;

    invoke-interface {v1, p0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 176
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private drawEmpty(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 11

    .line 159
    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getConfigs()[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 162
    iget v4, v3, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    iget-object v3, v3, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-direct {p0, v4, v3}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->setupBlendMode(ILandroid/graphics/BlendMode;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 163
    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    move-result v3

    int-to-float v8, v3

    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    move-result v3

    int-to-float v9, v3

    iget-object v10, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    invoke-interface {p3}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getConfigs()[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 144
    iget v3, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    iget-object v2, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-direct {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->setupBlendMode(ILandroid/graphics/BlendMode;)V

    .line 145
    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 11

    .line 150
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v8, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, p3

    move v7, p3

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 152
    invoke-interface {p4}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getConfigs()[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 153
    iget v3, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    iget-object v2, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-direct {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->setupBlendMode(ILandroid/graphics/BlendMode;)V

    .line 154
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    iget-object v10, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, p3

    move v9, p3

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureBufferHolder(Landroid/graphics/GraphicBuffer;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    .line 265
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;-><init>(IILandroid/renderscript/RenderScript;Landroid/renderscript/ScriptIntrinsicBlur;)V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 267
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$200(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)Landroid/graphics/BitmapShader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 268
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mContext:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 270
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    .line 271
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$000(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScale:F

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 274
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    .line 275
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$000(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScale:F

    :cond_1
    :goto_0
    return-void
.end method

.method private evaluateBlurRadius()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;

    .line 196
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    sget v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    .line 198
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    const/16 v1, 0x18

    .line 200
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 202
    iget v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 203
    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    .line 204
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    :cond_0
    return-void
.end method

.method private invalidateBufferHolder(Landroid/graphics/GraphicBuffer;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$000(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 255
    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$100(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 258
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$w7MvuGsBCRj6F1NL_WGofNt_LDM;

    invoke-direct {v1, p1}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$w7MvuGsBCRj6F1NL_WGofNt_LDM;-><init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    :cond_1
    return-void
.end method

.method static synthetic lambda$evaluateBlurRadius$0(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)I
    .locals 0

    .line 196
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getBlurRadius()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$w7MvuGsBCRj6F1NL_WGofNt_LDM(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->recycle()V

    return-void
.end method

.method private onSampleBufferCollected(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    .line 281
    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->invalidateBufferHolder(Landroid/graphics/GraphicBuffer;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->ensureBufferHolder(Landroid/graphics/GraphicBuffer;)V

    const-string v0, "attachAndProcessBuffer"

    .line 284
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 287
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-virtual {p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->processBlur()V

    .line 288
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->asyncInvalidateAll()V

    .line 289
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private setupBlendMode(ILandroid/graphics/BlendMode;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method private updateLocalMatrixForShader(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    invoke-interface {p1, v3}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getLocationOnScreen([I)V

    .line 118
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    aget v2, p1, v2

    .line 119
    aget p1, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScale:F

    div-float/2addr v1, p0

    .line 122
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix;

    if-nez p0, :cond_1

    .line 124
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    const/high16 v0, 0x43340000    # 180.0f

    .line 129
    invoke-static {p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$000(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$100(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {p0, v0, v3, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_2
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v1, v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    neg-int v0, v2

    int-to-float v0, v0

    neg-int p1, p1

    int-to-float p1, p1

    .line 132
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 134
    sget-object p1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;

    invoke-virtual {p1, p0}, Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 136
    invoke-static {p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$200(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)Landroid/graphics/BitmapShader;

    move-result-object p1

    .line 137
    invoke-virtual {p1, p0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mDestroyed:Z

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurLayerHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    if-eqz v0, :cond_0

    .line 240
    invoke-static {v0}, Landroid/view/MiuiCompositionSamplingListener;->unregister(Landroid/view/MiuiCompositionSamplingListener;)V

    .line 241
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->release(Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;)V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$U1RAfXo1g0bi4-x3sngEfVWKexI;

    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$U1RAfXo1g0bi4-x3sngEfVWKexI;-><init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    if-eqz v0, :cond_3

    .line 94
    sget-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->updateLocalMatrixForShader(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)V

    .line 101
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    invoke-interface {p2, v0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurOutline(Landroid/graphics/Outline;)V

    .line 102
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    iget v0, v0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    iget-object v0, v0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 105
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    .line 108
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->drawEmpty(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method isEmpty()Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$destroy$2$BlurLayerHolder()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->recycle()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    return-void
.end method

.method public synthetic lambda$start$1$BlurLayerHolder(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->onSampleBufferCollected(Landroid/graphics/GraphicBuffer;)V

    :cond_0
    return-void
.end method

.method register(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->evaluateBlurRadius()V

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method start()V
    .locals 5

    .line 213
    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->acquire()Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 214
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$mdkEsEghUmT5LOKufvhCukKPAo4;

    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$mdkEsEghUmT5LOKufvhCukKPAo4;-><init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V

    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->setCallback(Ljava/util/function/Consumer;)V

    .line 220
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;

    .line 221
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    const v1, 0x1312d00

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BlurLayerHolder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getSurfaceControl"

    invoke-static {v1, v4, v3}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 228
    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/miui/blur/sdk/backdrop/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    instance-of v3, v1, Landroid/view/SurfaceControl;

    if-eqz v3, :cond_0

    .line 230
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    check-cast v1, Landroid/view/SurfaceControl;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v2, v1, v3, v0}, Landroid/view/MiuiCompositionSamplingListener;->register(Landroid/view/MiuiCompositionSamplingListener;ILandroid/view/SurfaceControl;FI)V

    :cond_0
    return-void
.end method

.method unregister(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->evaluateBlurRadius()V

    .line 191
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
