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
.field private mAutoScale:Z

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

    .line 122
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

    const/4 p2, 0x1

    .line 117
    iput-boolean p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    const-string p2, "OnDraw"

    .line 123
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 125
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    invoke-direct {v0, p2, p0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string/jumbo v0, "xfermodeNum"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GraphicsElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    const-string/jumbo p2, "xfermode"

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GraphicsElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 129
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    invoke-static {p2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 131
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 132
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1
    const-string p2, "autoScale"

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/GraphicsElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    :cond_2
    return-void
.end method

.method private getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;
    .locals 9

    .line 363
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ltz p6, :cond_0

    .line 364
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v1

    array-length v1, v1

    if-ge p6, v1, :cond_0

    .line 365
    invoke-static {}, Landroid/graphics/Shader$TileMode;->values()[Landroid/graphics/Shader$TileMode;

    move-result-object v0

    aget-object v0, v0, p6

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p6

    invoke-virtual {p6, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    const/4 v8, 0x0

    if-nez p6, :cond_1

    .line 372
    new-instance p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    invoke-direct {p6, v8}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    const/4 v1, 0x1

    .line 374
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 377
    :goto_0
    instance-of p5, p6, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    if-eqz p5, :cond_4

    .line 378
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

    .line 380
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

    .line 382
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/elements/GraphicsElement;->resetShader(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object v8

    .line 385
    :cond_3
    invoke-direct {p0, p6, p5, p1, p4}, Lcom/miui/maml/elements/GraphicsElement;->resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V

    return-object p5

    :cond_4
    return-object v8
.end method

.method private isShaderParmsChanged(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I[I[FLjava/lang/String;Landroid/graphics/Shader$TileMode;)Z
    .locals 2

    .line 339
    iget-object v0, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 340
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

    .line 343
    :cond_1
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$200(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;

    move-result-object p2

    if-ne p6, p2, :cond_5

    .line 344
    invoke-static {p1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$000(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    move p5, p2

    .line 346
    :goto_0
    array-length p6, p3

    if-ge p5, p6, :cond_4

    .line 347
    iget-object p6, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    aget p6, p6, p5

    aget v0, p3, p5

    if-eq p6, v0, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_3

    .line 350
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

    .line 272
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

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private resetMatrixIfNecessary(ZLcom/miui/maml/elements/GraphicsElement$GraphicsShader;ILjava/lang/String;)V
    .locals 7

    .line 315
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 316
    instance-of v0, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_3

    .line 319
    check-cast p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-nez p1, :cond_0

    .line 320
    iget-boolean p1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    if-eqz p1, :cond_3

    .line 322
    :cond_0
    invoke-virtual {p4}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->reset()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 p3, 0x4

    .line 324
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

    .line 327
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p3, p3, p1

    neg-float p3, p3

    iget-object v2, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v2, v2, v0

    neg-float v2, v2

    invoke-virtual {p4, p3, v2}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->preTranslate(FF)Z

    .line 328
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p3, p3, v1

    iget-object v1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    neg-float v1, v1

    invoke-virtual {p4, p3, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->setScale(FF)V

    .line 329
    iget-object p3, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget p3, p3, p1

    iget-object v1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aget v0, v1, v0

    invoke-virtual {p4, p3, v0}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->postTranslate(FF)Z

    .line 331
    :cond_2
    :goto_0
    iput-boolean p1, p4, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    .line 332
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

    .line 292
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

    .line 295
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

    .line 301
    :goto_0
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    if-eqz p4, :cond_1

    .line 303
    invoke-virtual/range {p4 .. p4}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    move-object/from16 v3, p5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 305
    iput-object v3, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    move-object/from16 v3, p5

    .line 307
    :goto_1
    invoke-static {p1, v3}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$002(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    invoke-static {p1, p2}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$102(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I)I

    move-object/from16 v1, p6

    .line 309
    invoke-static {p1, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->access$202(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    return v2

    :cond_2
    const-string v0, "MAML_Graphics"

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong shader type "

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

    .line 285
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 286
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public beginFill(I)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 281
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public beginGradientFill(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 435
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 438
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public createOrUpdateGradientBox(FFFFLjava/lang/String;)V
    .locals 5

    .line 401
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;-><init>(Lcom/miui/maml/elements/GraphicsElement$1;)V

    .line 405
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    :cond_0
    instance-of p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    if-eqz p5, :cond_2

    .line 408
    check-cast v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;

    .line 409
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

    .line 414
    :cond_1
    iget-object p5, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p1, p5, v1

    .line 415
    iget-object p1, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p2, p1, v4

    .line 416
    iget-object p1, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p3, p1, v3

    .line 417
    iget-object p1, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mParm:[F

    aput p4, p1, v2

    .line 418
    iput-boolean v4, v0, Lcom/miui/maml/elements/GraphicsElement$GraphicsMatrix;->mChanged:Z

    :cond_2
    return-void
.end method

.method public cubicCurveTo(FFFFFF)V
    .locals 11

    move-object v0, p0

    .line 547
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 549
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 550
    iget-object v4, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 551
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move/from16 v1, p5

    .line 552
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    move/from16 v1, p6

    .line 553
    iput v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public curveTo(FFFF)V
    .locals 3

    .line 527
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 529
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 530
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 531
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 532
    iput p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 533
    iput p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 5

    .line 195
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getWidth()F

    move-result v0

    float-to-int v0, v0

    .line 196
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getHeight()F

    move-result v1

    float-to-int v1, v1

    .line 197
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 198
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 199
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

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvasBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 214
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRenderMutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 215
    :try_start_0
    iput v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 216
    iput v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    .line 217
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 218
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    invoke-virtual {p1}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->perform()V

    .line 221
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    if-eqz p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    :cond_3
    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected doTick(J)V
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 165
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 170
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    if-eq p1, p2, :cond_1

    .line 171
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    .line 172
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 173
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 174
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mXferMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 177
    :cond_1
    iget p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    iget p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAlpha:I

    if-eq p1, p2, :cond_2

    .line 178
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    iget p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAlpha:I

    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    .line 182
    :cond_2
    iget-boolean p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mTintChanged:Z

    if-eqz p1, :cond_3

    .line 183
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    :cond_3
    return-void
.end method

.method public drawCircle(FFF)V
    .locals 3

    .line 558
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 560
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 562
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

    .line 568
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

    .line 576
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    move v3, p4

    move v4, v8

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 577
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 579
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

    .line 589
    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/GraphicsElement;->drawRoundRect(FFFFFF)V

    return-void
.end method

.method public drawRoundRect(FFFFFF)V
    .locals 20

    move-object/from16 v0, p0

    .line 593
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

    .line 601
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v11

    move v5, v10

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 602
    iget-object v1, v0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    cmpl-float v2, v1, v9

    if-lez v2, :cond_2

    .line 604
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

    .line 242
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 243
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->finish()V

    :cond_0
    return-void
.end method

.method public getScaleX()F
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getWidthRaw()F

    move-result v0

    .line 145
    iget-boolean v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 146
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 4

    .line 154
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getHeightRaw()F

    move-result v0

    .line 155
    iget-boolean v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mAutoScale:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    div-float/2addr v0, v1

    .line 156
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .line 250
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 251
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getWidthRaw()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawWidth:F

    .line 252
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->getHeightRaw()F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mInitRawHeight:F

    .line 253
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 254
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 257
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->init()V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/GraphicsElement;->evaluateAlpha()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mLastAlpha:I

    return-void
.end method

.method public lineGradientStyle(I[I[FLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 455
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-direct/range {p0 .. p6}, Lcom/miui/maml/elements/GraphicsElement;->getGraphicsShader(I[I[FLjava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 458
    iget-object p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShader:Landroid/graphics/Shader;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public lineStyle(FIIIF)V
    .locals 3

    .line 473
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ltz p3, :cond_0

    .line 474
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    array-length v1, v1

    if-ge p3, v1, :cond_0

    .line 475
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    aget-object v0, v0, p3

    .line 477
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    if-ltz p4, :cond_1

    .line 478
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v2

    array-length v2, v2

    if-ge p4, v2, :cond_1

    .line 479
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object p4

    aget-object v1, p4, p3

    .line 482
    :cond_1
    iget-object p3, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 p3, 0x0

    cmpl-float p4, p1, p3

    if-ltz p4, :cond_2

    .line 484
    iget-object p4, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 486
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 488
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    cmpl-float p1, p5, p3

    if-lez p1, :cond_3

    .line 490
    iget-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_3
    return-void
.end method

.method public lineTo(FF)V
    .locals 7

    .line 500
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    iget v3, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    iget-object v6, p0, Lcom/miui/maml/elements/GraphicsElement;->mStrokePaint:Landroid/graphics/Paint;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 502
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 503
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    .line 513
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentX:F

    .line 515
    iput p2, p0, Lcom/miui/maml/elements/GraphicsElement;->mCurrentY:F

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 266
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 234
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->resume()V

    .line 235
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement;->mCallbacks:Lcom/miui/maml/elements/GraphicsElement$Callbacks;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->resume()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GraphicsElement;->setColorFilterInternal(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRenderListener(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement;->mRenderListener:Lcom/miui/maml/elements/FunctionElement;

    return-void
.end method
