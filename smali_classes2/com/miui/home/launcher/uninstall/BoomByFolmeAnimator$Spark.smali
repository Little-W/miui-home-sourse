.class public Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;
.super Ljava/lang/Object;
.source "BoomByFolmeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spark"
.end annotation


# instance fields
.field public cos:D

.field public mAlpha:F

.field private mColor:I

.field private mDecelerateRatio:F

.field public mInitAlpha:F

.field public mInitRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPerlinOffsetY:F

.field public mRadius:F

.field public mVisPer:F

.field private mX:F

.field private mY:F

.field final propertyVisPer:Lmiuix/animation/property/FloatProperty;

.field final propertyX:Lmiuix/animation/property/FloatProperty;

.field final propertyY:Lmiuix/animation/property/FloatProperty;

.field public sin:D

.field protected velocity:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPaint:Landroid/graphics/Paint;

    .line 296
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyX:Lmiuix/animation/property/FloatProperty;

    .line 309
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$2;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyY:Lmiuix/animation/property/FloatProperty;

    .line 320
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visPer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyVisPer:Lmiuix/animation/property/FloatProperty;

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F
    .locals 0

    .line 274
    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;F)F
    .locals 0

    .line 274
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F
    .locals 0

    .line 274
    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mX:F

    return p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;F)F
    .locals 0

    .line 274
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mX:F

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F
    .locals 0

    .line 274
    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mDecelerateRatio:F

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)I
    .locals 0

    .line 274
    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)Landroid/graphics/Paint;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private perlin(F)F
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 369
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-double v0, p0

    float-to-double p0, p1

    const-wide v2, 0x4000cccccccccccdL    # 2.1

    add-double/2addr v2, p0

    .line 370
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x3ff1ef9db22d0e56L    # 1.121

    mul-double/2addr v2, p0

    const-wide v4, 0x3ffb851eb851eb85L    # 1.72

    add-double/2addr v2, v4

    .line 371
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x3fdbf7ced916872bL    # 0.437

    mul-double/2addr v2, p0

    const-wide v4, 0x4001c49ba5e353f8L    # 2.221

    add-double/2addr v2, v4

    .line 372
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x40111374bc6a7efaL    # 4.269

    mul-double/2addr p0, v2

    const-wide v2, 0x4008e5c91d14e3bdL    # 3.1122

    add-double/2addr p0, v2

    .line 373
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    double-to-float p0, v0

    float-to-double p0, p0

    const-wide v0, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 356
    iput p2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mDecelerateRatio:F

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$900()I

    move-result p2

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 359
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$900()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    iget v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->velocity:F

    div-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    goto :goto_1

    .line 360
    :cond_1
    :goto_0
    iget p2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    iget v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->velocity:F

    div-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPerlinOffsetY:F

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mRadius:F

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 361
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->perlin(F)F

    move-result v0

    const/high16 v1, 0x420c0000    # 35.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 365
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mX:F

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public initSpark(III[ILjava/util/Random;)V
    .locals 4

    .line 339
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mColor:I

    const/4 p1, 0x0

    .line 340
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    .line 341
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 342
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->cos:D

    .line 343
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->sin:D

    .line 344
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPerlinOffsetY:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 345
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mDecelerateRatio:F

    .line 347
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p5

    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {p1, v0, p5}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result p1

    int-to-float p2, p2

    div-float/2addr p2, p1

    int-to-float p3, p3

    div-float/2addr p3, p1

    const/4 p1, 0x0

    .line 350
    aget p1, p4, p1

    int-to-float p1, p1

    iget-wide v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->cos:D

    double-to-float p5, v0

    mul-float/2addr p2, p5

    add-float/2addr p1, p2

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->px2dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mX:F

    const/4 p1, 0x1

    .line 351
    aget p1, p4, p1

    int-to-float p1, p1

    iget-wide p4, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->sin:D

    double-to-float p2, p4

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->px2dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    .line 352
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
