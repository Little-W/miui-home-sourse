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

.field private final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;

    .line 43
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getBlurRadius()I

    move-result v0

    sput v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewRootImpl;Landroid/renderscript/RenderScript;Landroid/os/Handler;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    .line 62
    sget v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 71
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 73
    iput-object p4, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 76
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    invoke-static {p3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 80
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    iget p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    invoke-virtual {p1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    return-void
.end method

.method private asyncInvalidateAll()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    sget-object v0, Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$CxwrBN88dJdPTZMSH3WFwUWKqjU;

    invoke-interface {v1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception v1

    .line 159
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private drawEmpty(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 11

    .line 142
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

    .line 144
    invoke-interface {p2}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getConfigs()[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 145
    iget v4, v3, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    iget-object v3, v3, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-direct {p0, v4, v3}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->setupBlendMode(ILandroid/graphics/BlendMode;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 146
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

    .line 124
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 126
    invoke-interface {p3}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getConfigs()[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 127
    iget v3, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    iget-object v2, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-direct {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->setupBlendMode(ILandroid/graphics/BlendMode;)V

    .line 128
    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 11

    .line 133
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

    .line 135
    invoke-interface {p4}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getConfigs()[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 136
    iget v3, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mColor:I

    iget-object v2, v2, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-direct {p0, v3, v2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->setupBlendMode(ILandroid/graphics/BlendMode;)V

    .line 137
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
    .locals 7

    .line 242
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;-><init>(IILandroid/renderscript/RenderScript;Landroid/renderscript/ScriptIntrinsicBlur;Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$1;)V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 245
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$000(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)Landroid/graphics/BitmapShader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 247
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    .line 248
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$100(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScale:F

    :cond_0
    return-void
.end method

.method private evaluateBlurRadius()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$bhBTy4mu-XmyfiXaGiBe0vVokmY;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    sget v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    const/16 v1, 0x18

    .line 183
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 185
    iget v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 186
    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    .line 187
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    :cond_0
    return-void
.end method

.method private invalidateBufferHolder(Landroid/graphics/GraphicBuffer;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$100(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 233
    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$200(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 236
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$w7MvuGsBCRj6F1NL_WGofNt_LDM;

    invoke-direct {v1, p1}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$w7MvuGsBCRj6F1NL_WGofNt_LDM;-><init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 237
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$destroy$2(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->recycle()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    return-void
.end method

.method static synthetic lambda$evaluateBlurRadius$0(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)I
    .locals 0

    .line 179
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BlurStyle;->getBlurRadius()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$start$1(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;Landroid/graphics/GraphicBuffer;)V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->onSampleBufferCollected(Landroid/graphics/GraphicBuffer;)V

    :cond_0
    return-void
.end method

.method private onSampleBufferCollected(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    .line 253
    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->invalidateBufferHolder(Landroid/graphics/GraphicBuffer;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->ensureBufferHolder(Landroid/graphics/GraphicBuffer;)V

    const-string v0, "attachAndProcessBuffer"

    .line 256
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 259
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-virtual {p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->processBlur()V

    .line 260
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->asyncInvalidateAll()V

    .line 261
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private setupBlendMode(ILandroid/graphics/BlendMode;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method private updateLocalMatrixForShader(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    invoke-interface {p1, v0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getLocationOnScreen([I)V

    .line 106
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    .line 107
    aget p1, p1, v1

    .line 109
    iget v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    .line 110
    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;

    invoke-virtual {v1}, Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 114
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int p1, p1

    int-to-float p1, p1

    .line 116
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    sget-object p1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;

    invoke-virtual {p1, v1}, Lcom/miui/blur/sdk/backdrop/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 119
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    invoke-static {p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->access$000(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;)Landroid/graphics/BitmapShader;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 3

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mDestroyed:Z

    const-string v0, "BlurLayerHolder"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregister "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    if-eqz v0, :cond_0

    .line 218
    invoke-static {v0}, Landroid/view/MiuiCompositionSamplingListener;->unregister(Landroid/view/MiuiCompositionSamplingListener;)V

    .line 219
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->release(Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;)V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$U1RAfXo1g0bi4-x3sngEfVWKexI;

    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$U1RAfXo1g0bi4-x3sngEfVWKexI;-><init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->updateLocalMatrixForShader(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    .line 91
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    invoke-interface {p2, v0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurOutline(Landroid/graphics/Outline;)V

    .line 92
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    iget v0, v0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    iget-object v0, v0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 95
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->getRect(Landroid/graphics/Rect;)Z

    .line 98
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    invoke-virtual {v1}, Landroid/graphics/Outline;->getRadius()F

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;FLcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->drawEmpty(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method register(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->evaluateBlurRadius()V

    .line 167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method start()V
    .locals 5

    .line 196
    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->acquire()Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 197
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$mdkEsEghUmT5LOKufvhCukKPAo4;

    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/backdrop/-$$Lambda$BlurLayerHolder$mdkEsEghUmT5LOKufvhCukKPAo4;-><init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V

    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->setCallback(Ljava/util/function/Consumer;)V

    .line 203
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;->INSTANCE:Lcom/miui/blur/sdk/backdrop/-$$Lambda$W3MK_dMcpgVgl_xQ2qWSLX5btIg;

    .line 204
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    const v1, 0x1312d00

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    const-string v1, "BlurLayerHolder"

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 210
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    .line 209
    invoke-static {v1, v3, v2, v4, v0}, Landroid/view/MiuiCompositionSamplingListener;->register(Landroid/view/MiuiCompositionSamplingListener;ILandroid/view/SurfaceControl;FI)V

    return-void
.end method

.method unregister(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->evaluateBlurRadius()V

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
