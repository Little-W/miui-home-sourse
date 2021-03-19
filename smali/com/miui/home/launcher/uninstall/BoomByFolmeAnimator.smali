.class public Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;
.super Ljava/lang/Object;
.source "BoomByFolmeAnimator.java"

# interfaces
.implements Lcom/miui/home/launcher/common/ParasiticDrawingObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;
    }
.end annotation


# static fields
.field private static MY_DEVICE_LEVEL:I = -0x1

.field private static MY_DEVICE_MAX_SPARK:I = 0x12

.field private static final RADIUS:I

.field private static mSparks:[Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;


# instance fields
.field private TARGET:Ljava/lang/String;

.field private mBegin:Z

.field private mBoomListener:Lmiuix/animation/listener/TransitionListener;

.field private mCol:I

.field mDecelerateAnimator:Landroid/animation/ValueAnimator;

.field private mDecelerateRatio:F

.field private mDragLayer:Lcom/miui/home/launcher/DragLayer;

.field private mFromState:Lmiuix/animation/controller/AnimState;

.field private mIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mRandom:Ljava/util/Random;

.field private mRow:I

.field private mSparkCount:I

.field private mSparkLeft:I

.field private mSparkRight:I

.field private mToState:Lmiuix/animation/controller/AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 59
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->RADIUS:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/DragLayer;Landroid/graphics/Bitmap;[III)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRandom:Ljava/util/Random;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mBegin:Z

    .line 137
    new-instance v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mBoomListener:Lmiuix/animation/listener/TransitionListener;

    .line 66
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    .line 67
    iput p5, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mIndex:I

    .line 68
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initFolmeParam()V

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initDecelerateAnimator()V

    .line 70
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initBoomSpark(Landroid/graphics/Bitmap;[II)V

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateRatio:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Lcom/miui/home/launcher/DragLayer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mBegin:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->TARGET:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 27
    sget v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->MY_DEVICE_LEVEL:I

    return v0
.end method

.method private getVelocity()F
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x428c0000    # 70.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public static initBoomNum()V
    .locals 2

    .line 222
    invoke-static {}, Lmiuix/animation/utils/DeviceUtils;->getDeviceLevel()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->MY_DEVICE_LEVEL:I

    .line 223
    sget v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->MY_DEVICE_LEVEL:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x844

    .line 224
    sput v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->MY_DEVICE_MAX_SPARK:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x510

    .line 226
    sput v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->MY_DEVICE_MAX_SPARK:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x2a4

    .line 228
    sput v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->MY_DEVICE_MAX_SPARK:I

    :goto_0
    return-void
.end method

.method private initBoomSpark(Landroid/graphics/Bitmap;[II)V
    .locals 12

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 94
    sget v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->MY_DEVICE_LEVEL:I

    const/4 v1, 0x2

    const/4 v9, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x844

    .line 95
    div-int/2addr v0, p3

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int p3, v2

    const/16 v0, 0x17

    .line 96
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRow:I

    iput p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mCol:I

    goto :goto_0

    :cond_0
    if-ne v0, v9, :cond_1

    const/16 v0, 0x510

    .line 98
    div-int/2addr v0, p3

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int p3, v2

    const/16 v0, 0x12

    .line 99
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRow:I

    iput p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mCol:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x2a4

    .line 101
    div-int/2addr v0, p3

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int p3, v2

    const/16 v0, 0xd

    .line 102
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRow:I

    iput p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mCol:I

    .line 104
    :goto_0
    iget p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRow:I

    add-int/2addr p3, v1

    div-int p3, v8, p3

    .line 105
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mCol:I

    add-int/2addr v0, v1

    div-int v10, v7, v0

    mul-int v0, v8, v7

    .line 106
    new-array v11, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v11

    move v3, v8

    move v6, v8

    .line 107
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 108
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mCol:I

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRow:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkCount:I

    .line 109
    iget p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mIndex:I

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkCount:I

    mul-int v1, p1, v0

    iput v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkLeft:I

    add-int/2addr p1, v9

    mul-int/2addr p1, v0

    sub-int/2addr p1, v9

    .line 110
    iput p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkRight:I

    .line 111
    sget-object p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    array-length p1, p1

    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkRight:I

    add-int/2addr v0, v9

    if-ge p1, v0, :cond_2

    const-string p1, "BoomByFolmeAnimator"

    const-string p2, "Too many spark"

    .line 112
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p1, 0x0

    move v0, p1

    .line 115
    :goto_1
    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mCol:I

    if-ge v0, v1, :cond_4

    move v1, p1

    .line 116
    :goto_2
    iget v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRow:I

    if-ge v1, v2, :cond_3

    .line 117
    iget v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mCol:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 119
    iget v3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkLeft:I

    add-int/2addr v3, v2

    .line 120
    sget-object v2, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    aget-object v2, v2, v3

    add-int/lit8 v1, v1, 0x1

    mul-int v3, v1, p3

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v10

    sub-int/2addr v4, v9

    mul-int/2addr v4, v8

    add-int/2addr v3, v4

    sub-int/2addr v3, v9

    .line 121
    aget v3, v11, v3

    iget-object v4, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, v3, v8, p2, v4}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->initSpark(II[ILjava/util/Random;)V

    .line 125
    iget-object v3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 126
    invoke-direct {p0, v2, v3, v4}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->initTarget(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;J)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_4
    new-array p2, v9, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->TARGET:Ljava/lang/String;

    aput-object p3, p2, p1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mBoomListener:Lmiuix/animation/listener/TransitionListener;

    invoke-interface {p2, p3}, Lmiuix/animation/IStateStyle;->addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;

    .line 130
    new-array p2, v9, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->TARGET:Ljava/lang/String;

    aput-object p3, p2, p1

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mFromState:Lmiuix/animation/controller/AnimState;

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private initDecelerateAnimator()V
    .locals 3

    .line 77
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateAnimator:Landroid/animation/ValueAnimator;

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initFolmeParam()V
    .locals 5

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BOOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->TARGET:Ljava/lang/String;

    .line 86
    new-instance v2, Lmiuix/animation/controller/AnimState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mFromState:Lmiuix/animation/controller/AnimState;

    .line 87
    new-instance v2, Lmiuix/animation/controller/AnimState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mToState:Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public static initSparkObject()V
    .locals 3

    .line 233
    sget v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->MY_DEVICE_MAX_SPARK:I

    new-array v0, v0, [Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    sput-object v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    const/4 v0, 0x0

    .line 234
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 235
    new-instance v2, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initTarget(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;J)V
    .locals 12

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    const v2, 0x3f333333    # 0.7f

    add-float/2addr v0, v2

    .line 200
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v1

    sget v1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->RADIUS:I

    int-to-float v1, v1

    mul-float/2addr v2, v1

    .line 201
    iput v2, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mRadius:F

    iput v2, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mInitRadius:F

    .line 202
    iput v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mAlpha:F

    iput v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mInitAlpha:F

    .line 203
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mFromState:Lmiuix/animation/controller/AnimState;

    iget-object v1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyX:Lmiuix/animation/property/FloatProperty;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$500(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyY:Lmiuix/animation/property/FloatProperty;

    .line 204
    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$400(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyVisPer:Lmiuix/animation/property/FloatProperty;

    const-wide/16 v2, 0x0

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mToState:Lmiuix/animation/controller/AnimState;

    iget-object v1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyX:Lmiuix/animation/property/FloatProperty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyY:Lmiuix/animation/property/FloatProperty;

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyVisPer:Lmiuix/animation/property/FloatProperty;

    .line 208
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 209
    invoke-direct {p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->getVelocity()F

    move-result v0

    iput v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->velocity:F

    const/4 v0, 0x1

    .line 210
    new-array v1, v0, [F

    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mRandom:Ljava/util/Random;

    .line 212
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, -0x42333333    # -0.1f

    add-float/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, -0x4

    .line 211
    invoke-static {v2, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mToState:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v2}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    .line 214
    new-array v2, v0, [F

    const/high16 v5, 0x442f0000    # 700.0f

    aput v5, v2, v3

    const/16 v5, 0x10

    .line 215
    invoke-static {v5, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    .line 216
    iget-object v5, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyX:Lmiuix/animation/property/FloatProperty;

    new-array v9, v0, [F

    iget v6, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->velocity:F

    const/high16 v7, 0x41f00000    # 30.0f

    add-float/2addr v6, v7

    float-to-double v6, v6

    iget-wide v10, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->cos:D

    mul-double/2addr v6, v10

    double-to-float v6, v6

    aput v6, v9, v3

    move-object v6, v1

    move-wide v7, p2

    invoke-virtual/range {v4 .. v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyY:Lmiuix/animation/property/FloatProperty;

    new-array v9, v0, [F

    iget v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->velocity:F

    float-to-double v6, v0

    iget-wide v10, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->sin:D

    mul-double/2addr v6, v10

    double-to-float v0, v6

    aput v0, v9, v3

    move-object v6, v1

    move-wide v7, p2

    .line 217
    invoke-virtual/range {v4 .. v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    iget-object v7, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->propertyVisPer:Lmiuix/animation/property/FloatProperty;

    iget p1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->velocity:F

    const/high16 p2, 0x40a00000    # 5.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x43480000    # 200.0f

    sub-float/2addr p2, p1

    float-to-long v9, p2

    new-array v11, v3, [F

    move-object v8, v2

    .line 218
    invoke-virtual/range {v6 .. v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    return-void
.end method


# virtual methods
.method public addListener(Lmiuix/animation/listener/TransitionListener;)V
    .locals 3

    const/4 v0, 0x1

    .line 134
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->TARGET:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    .line 171
    iget-boolean v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mBegin:Z

    if-eqz v0, :cond_1

    .line 172
    iget v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkLeft:I

    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkRight:I

    if-ge v0, v1, :cond_0

    .line 173
    sget-object v1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateRatio:F

    invoke-virtual {v1, v2, p1, v3}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->draw(Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isStart()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mBegin:Z

    return v0
.end method

.method public start()V
    .locals 3

    .line 186
    sget-object v0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparks:[Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    array-length v0, v0

    iget v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mSparkRight:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    return-void

    .line 189
    :cond_0
    iput-boolean v2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mBegin:Z

    .line 190
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->TARGET:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mToState:Lmiuix/animation/controller/AnimState;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 191
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDragLayer:Lcom/miui/home/launcher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragLayer;->attachParasiticDrawingObject(Lcom/miui/home/launcher/common/ParasiticDrawingObject;)V

    return-void
.end method
