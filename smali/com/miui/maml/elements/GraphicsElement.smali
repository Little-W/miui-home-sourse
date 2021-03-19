.class public Lcom/miui/maml/elements/GraphicsElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;,
        Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;,
        Lcom/miui/maml/elements/GraphicsElement$Callbacks;
    }
.end annotation


# static fields
.field public static final LINEAR_GRADIENT:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "MAML_Graphics"

.field public static final RADIAL_GRADIENT:I = 0x2

.field public static final TAG_NAME:Ljava/lang/String; = "Graphics"


# instance fields
.field private mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCanvasBounds:Landroid/graphics/Rect;

.field private mCurrentX:F

.field private mCurrentY:F

.field protected mFillPaint:Landroid/graphics/Paint;

.field private mInitRawHeight:F

.field private mInitRawWidth:F

.field private mLastAlpha:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;

.field private mPath:Landroid/graphics/Path;

.field private mRenderListener:Lcom/miui/maml/elements/FunctionElement;

.field protected mStrokePaint:Landroid/graphics/Paint;

.field private mXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 99
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 103
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    .line 106
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    .line 113
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    .line 114
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    const-string p2, "OnDraw"

    .line 121
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 123
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    invoke-direct {v0, p2, p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "xfermodeNum"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GraphicsElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    const-string p2, "xfermode"

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GraphicsElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 128
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 129
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 130
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 131
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1
    return-void
.end method

.method private getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;
    .locals 9

    .line 348
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ltz p6, :cond_0

    .line 349
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v1

    array-length v1, v1

    if-ge p6, v1, :cond_0

    .line 350
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v0

    aget-object v0, v0, p6

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p6

    invoke-virtual {p6, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    const/4 v8, 0x0

    if-nez p6, :cond_1

    .line 357
    new-instance p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    invoke-direct {p6, v8}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    const/4 v1, 0x1

    .line 359
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 362
    :goto_0
    instance-of p5, p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    if-eqz p5, :cond_4

    .line 363
    move-object p5, p6

    check-cast p5, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    if-nez v1, :cond_2

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    .line 365
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    move-result v1

    move p6, v1

    goto :goto_1

    :cond_2
    move p6, v1

    :goto_1
    if-eqz p6, :cond_3

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    .line 367
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object v8

    .line 370
    :cond_3
    invoke-direct {p0, p6, p5, p1, p4}, Lcom/miui/maml/elements/GraphicsElement;->resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V

    return-object p5

    :cond_4
    return-object v8
.end method

.method private isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .locals 2

    .line 324
    iget-object v0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 325
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$100(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)I

    move-result v0

    if-ne p2, v0, :cond_5

    array-length p2, p3

    iget-object v0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    array-length v0, v0

    if-ne p2, v0, :cond_5

    if-eqz p4, :cond_0

    iget-object p2, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    if-nez p2, :cond_1

    :cond_0
    if-nez p4, :cond_5

    iget-object p2, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    if-nez p2, :cond_5

    .line 328
    :cond_1
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$200(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    if-ne p6, p2, :cond_5

    .line 329
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$000(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    move p5, p2

    .line 331
    :goto_0
    array-length p6, p3

    if-ge p5, p6, :cond_4

    .line 332
    iget-object p6, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    aget p6, p6, p5

    aget v0, p3, p5

    if-eq p6, v0, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_3

    .line 335
    iget-object p6, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    aget p6, p6, p5

    aget v0, p4, p5

    cmpl-float p6, p6, v0

    if-eqz p6, :cond_3

    return v1

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method private isValid()Z
    .locals 2

    .line 257
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "MAML_Graphics"

    const-string v1, "Call maml graphics api not in onDraw callback"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V
    .locals 7

    .line 300
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 301
    instance-of v0, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_3

    .line 304
    check-cast p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-nez p1, :cond_0

    .line 305
    iget-boolean p1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    if-eqz p1, :cond_3

    .line 307
    :cond_0
    invoke-virtual {p4}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->reset()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 p3, 0x4

    .line 309
    new-array v2, p3, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    iget-object v4, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->setPolyToPoly([FI[FII)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 312
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p3, p3, p1

    neg-float p3, p3

    iget-object v2, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v2, v2, v0

    neg-float v2, v2

    invoke-virtual {p4, p3, v2}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->preTranslate(FF)Z

    .line 313
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p3, p3, v1

    iget-object v1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    neg-float v1, v1

    invoke-virtual {p4, p3, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->setScale(FF)V

    .line 314
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p3, p3, p1

    iget-object v1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v0, v1, v0

    invoke-virtual {p4, p3, v0}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->postTranslate(FF)Z

    .line 316
    :cond_2
    :goto_0
    iput-boolean p1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 317
    iget-object p1, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {p1, p4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .locals 12

    move-object v0, p1

    move v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 277
    new-instance v11, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, v11

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 280
    new-instance v3, Landroid/graphics/RadialGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v4, v3

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    .line 286
    :goto_0
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    if-eqz p4, :cond_1

    .line 288
    invoke-virtual/range {p4 .. p4}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    move-object/from16 v3, p5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 290
    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    move-object/from16 v3, p5

    .line 292
    :goto_1
    invoke-static {p1, v3}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$002(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-static {p1, p2}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$102(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I)I

    move-object/from16 v1, p6

    .line 294
    invoke-static {p1, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$202(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    return v2

    :cond_2
    const-string v0, "MAML_Graphics"

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong shader type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private setColorFilterInternal(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 271
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public beginFill(I)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 266
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 420
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 423
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public createOrUpdateGradientBox(FFFFLjava/lang/String;)V
    .locals 5

    .line 386
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    .line 390
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    :cond_0
    instance-of p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-eqz p5, :cond_2

    .line 393
    check-cast v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 394
    iget-object p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 v1, 0x0

    aget p5, p5, v1

    cmpl-float p5, p5, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p5, :cond_1

    iget-object p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p5, p5, v4

    cmpl-float p5, p5, p2

    if-nez p5, :cond_1

    iget-object p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p5, p5, v3

    cmpl-float p5, p5, p3

    if-nez p5, :cond_1

    iget-object p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p5, p5, v2

    cmpl-float p5, p5, p4

    if-eqz p5, :cond_2

    .line 399
    :cond_1
    iget-object p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p1, p5, v1

    .line 400
    iget-object p1, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p2, p1, v4

    .line 401
    iget-object p1, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p3, p1, v3

    .line 402
    iget-object p1, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p4, p1, v2

    .line 403
    iput-boolean v4, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    :cond_2
    return-void
.end method

.method public cubicCurveTo(FFFFFF)V
    .locals 11

    move-object v0, p0

    .line 532
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 534
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 535
    iget-object v4, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 536
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v1, p5

    .line 537
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    move/from16 v1, p6

    .line 538
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public curveTo(FFFF)V
    .locals 3

    .line 512
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 514
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 515
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 516
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 517
    iput p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 518
    iput p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 5

    .line 189
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getWidth()F

    move-result v0

    float-to-int v0, v0

    .line 190
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getHeight()F

    move-result v1

    float-to-int v1, v1

    .line 191
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 192
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 193
    iget-object v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-lez v2, :cond_0

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v1, :cond_1

    move v1, v3

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 202
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 203
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 204
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p1}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->perform()V

    .line 207
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    if-eqz p1, :cond_3

    .line 208
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    :cond_3
    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method protected doTick(J)V
    .locals 0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 159
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 164
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    if-eq p1, p2, :cond_1

    .line 165
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 166
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 167
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 171
    :cond_1
    iget p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    iget p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAlpha:I

    if-eq p1, p2, :cond_2

    .line 172
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 174
    iget p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAlpha:I

    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 176
    :cond_2
    iget-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mTintChanged:Z

    if-eqz p1, :cond_3

    .line 177
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    :cond_3
    return-void
.end method

.method public drawCircle(FFF)V
    .locals 3

    .line 543
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 545
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawEllipse(FFFF)V
    .locals 9

    .line 553
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_1

    cmpg-float v1, p4, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    sub-float v8, p2, p4

    add-float/2addr p2, p4

    div-float/2addr p3, v1

    sub-float p4, p1, p3

    add-float/2addr p1, p3

    .line 561
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    move v3, p4

    move v4, v8

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 562
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 564
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    div-float/2addr p3, v1

    sub-float v3, p4, p3

    sub-float v4, v8, p3

    add-float v5, p1, p3

    add-float v6, p2, p3

    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public drawRect(FFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 574
    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    return-void
.end method

.method public drawRoundRect(FFFFFF)V
    .locals 20

    move-object/from16 v0, p0

    .line 578
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x0

    cmpg-float v1, p3, v9

    if-ltz v1, :cond_1

    cmpg-float v1, p4, v9

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    add-float v10, p2, p4

    add-float v11, p1, p3

    .line 586
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v11

    move v5, v10

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 587
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    cmpl-float v2, v1, v9

    if-lez v2, :cond_2

    .line 589
    iget-object v12, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v13, p1, v1

    sub-float v14, p2, v1

    add-float v15, v11, v1

    add-float v16, v10, v1

    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    move/from16 v17, p5

    move/from16 v18, p6

    move-object/from16 v19, v1

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public finish()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 228
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->finish()V

    :cond_0
    return-void
.end method

.method public getScaleX()F
    .locals 4

    .line 138
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getWidthRaw()F

    move-result v0

    .line 139
    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 140
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getHeightRaw()F

    move-result v0

    .line 149
    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 150
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 236
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getWidthRaw()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    .line 237
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getHeightRaw()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    .line 238
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->init()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->evaluateAlpha()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    return-void
.end method

.method public lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 440
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 443
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public lineStyle(FIIIF)V
    .locals 3

    .line 458
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ltz p3, :cond_0

    .line 459
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    array-length v1, v1

    if-ge p3, v1, :cond_0

    .line 460
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    aget-object v0, v0, p3

    .line 462
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    if-ltz p4, :cond_1

    .line 463
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v2

    array-length v2, v2

    if-ge p4, v2, :cond_1

    .line 464
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object p4

    aget-object v1, p4, p3

    .line 467
    :cond_1
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p3, 0x0

    cmpl-float p4, p1, p3

    if-ltz p4, :cond_2

    .line 469
    iget-object p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 471
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 473
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    cmpl-float p1, p5, p3

    if-lez p1, :cond_3

    .line 475
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_3
    return-void
.end method

.method public lineTo(FF)V
    .locals 7

    .line 485
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    iget-object v6, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 487
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 488
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    .line 498
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 500
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 251
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->resume()V

    .line 220
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->resume()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRenderListener(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    return-void
.end method
