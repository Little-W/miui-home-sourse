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

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$1;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyX:Lmiuix/animation/property/FloatProperty;

    .line 272
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$2;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyY:Lmiuix/animation/property/FloatProperty;

    .line 283
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

    .line 240
    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;F)F
    .locals 0

    .line 240
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F
    .locals 0

    .line 240
    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mX:F

    return p0
.end method

.method static synthetic access$502(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;F)F
    .locals 0

    .line 240
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mX:F

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F
    .locals 0

    .line 240
    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mDecelerateRatio:F

    return p0
.end method

.method private perlin(F)F
    .locals 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 334
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    float-to-double v2, p1

    const-wide v4, 0x4000cccccccccccdL    # 2.1

    add-double/2addr v4, v2

    .line 335
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4012000000000000L    # 4.5

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v4, 0x3ff1ef9db22d0e56L    # 1.121

    mul-double/2addr v4, v2

    const-wide v6, 0x3ffb851eb851eb85L    # 1.72

    add-double/2addr v4, v6

    .line 336
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v4, 0x3fdbf7ced916872bL    # 0.437

    mul-double/2addr v4, v2

    const-wide v6, 0x4001c49ba5e353f8L    # 2.221

    add-double/2addr v4, v6

    .line 337
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v4, 0x40111374bc6a7efaL    # 4.269

    mul-double/2addr v2, v4

    const-wide v4, 0x4008e5c91d14e3bdL    # 3.1122

    add-double/2addr v2, v4

    .line 338
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V
    .locals 4

    .line 315
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 316
    iput p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mDecelerateRatio:F

    .line 317
    iget p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mColor:I

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mAlpha:F

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 318
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 320
    iget p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$700()I

    move-result p3

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    if-eq p3, v1, :cond_1

    .line 323
    invoke-static {}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$700()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->velocity:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    goto :goto_1

    .line 324
    :cond_1
    :goto_0
    iget p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mY:F

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    iget v3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->velocity:F

    div-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr p3, v1

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPerlinOffsetY:F

    iget v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mRadius:F

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 325
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->perlin(F)F

    move-result v1

    const/high16 v2, 0x420c0000    # 35.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    add-float/2addr p3, v1

    .line 329
    :goto_1
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mX:F

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, v0, p3, p1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public initSpark(III[ILjava/util/Random;)V
    .locals 4

    .line 299
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mColor:I

    const/4 p1, 0x0

    .line 300
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    .line 301
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 302
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->cos:D

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->sin:D

    .line 304
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mPerlinOffsetY:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 305
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mDecelerateRatio:F

    .line 307
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

    .line 310
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

    .line 311
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

    return-void
.end method
