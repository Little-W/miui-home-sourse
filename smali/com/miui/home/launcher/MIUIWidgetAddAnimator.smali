.class public Lcom/miui/home/launcher/MIUIWidgetAddAnimator;
.super Ljava/lang/Object;
.source "MIUIWidgetAddAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;,
        Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;
    }
.end annotation


# instance fields
.field private mContainer:Lcom/miui/home/launcher/CellLayout;

.field private mHandler:Landroid/os/Handler;

.field private mMaxSpeed:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPivotWidget:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

.field private mRadius:D

.field private mStarted:Z

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mStarted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;F)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->checkWave(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->onAnimationEnd()V

    return-void
.end method

.method private checkWave(F)V
    .locals 20

    move-object/from16 v0, p0

    .line 137
    iget v1, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mMaxSpeed:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    div-float v1, p1, v1

    .line 138
    iget-object v2, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPaint:Landroid/graphics/Paint;

    float-to-double v3, v1

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v5, v3

    const-wide v7, 0x406fe00000000000L    # 255.0

    mul-double/2addr v5, v7

    double-to-int v1, v5

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x43200000    # 160.0f

    .line 140
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    .line 141
    iget-object v2, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    .line 142
    iget-boolean v6, v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->hasWaved:Z

    if-eqz v6, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-wide v6, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mRadius:D

    iget v8, v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->distance:F

    float-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    .line 150
    iput-boolean v6, v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->hasWaved:Z

    .line 151
    iget v7, v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->mass:I

    int-to-double v7, v7

    const-wide v9, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .line 152
    iget-object v9, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPivotWidget:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    iget v9, v9, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->mass:I

    int-to-double v9, v9

    div-double/2addr v9, v7

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v9, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v9, v13, v9

    .line 154
    iget v15, v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->width:I

    iget v11, v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->height:I

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 155
    iget-object v12, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPivotWidget:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    if-ne v12, v5, :cond_2

    sub-int v9, v11, v1

    int-to-double v9, v9

    int-to-double v11, v11

    div-double/2addr v9, v11

    :cond_2
    sub-double/2addr v9, v13

    mul-double/2addr v9, v3

    add-double/2addr v9, v13

    new-array v11, v6, [Landroid/view/View;

    .line 160
    iget-object v12, v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->view:Landroid/view/View;

    const/4 v15, 0x0

    aput-object v12, v11, v15

    invoke-static {v11}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v11

    invoke-interface {v11}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v11

    const-string v12, "first"

    .line 161
    invoke-interface {v11, v12}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v11

    sget-object v13, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    double-to-float v9, v9

    .line 162
    invoke-interface {v11, v13, v9}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v10

    sget-object v11, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 163
    invoke-interface {v10, v11, v9}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v9

    const/4 v10, -0x2

    const/4 v11, 0x2

    new-array v11, v11, [F

    const v13, 0x3f666666    # 0.9f

    aput v13, v11, v15

    iget v13, v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->mass:I

    int-to-double v13, v13

    const-wide v18, 0x3fc999999999999aL    # 0.2

    div-double v13, v18, v13

    const-wide v16, 0x3fb999999999999aL    # 0.1

    add-double v13, v13, v16

    double-to-float v13, v13

    aput v13, v11, v6

    .line 164
    invoke-static {v10, v11}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v6

    new-array v10, v15, [Lmiuix/animation/property/FloatProperty;

    invoke-interface {v9, v6, v10}, Lmiuix/animation/IStateStyle;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;

    move-result-object v6

    new-array v9, v15, [Lmiuix/animation/base/AnimConfig;

    .line 165
    invoke-interface {v6, v12, v9}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 167
    iget-object v6, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/miui/home/launcher/-$$Lambda$MIUIWidgetAddAnimator$xUR8RvllKvvgbM0dZg-LffiEbDo;

    invoke-direct {v9, v5}, Lcom/miui/home/launcher/-$$Lambda$MIUIWidgetAddAnimator$xUR8RvllKvvgbM0dZg-LffiEbDo;-><init>(Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;)V

    div-double v7, v18, v7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 172
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v10

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v10

    double-to-long v7, v7

    .line 167
    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method static synthetic lambda$checkWave$1(Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 167
    iget-object v2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->view:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v2, "second"

    .line 168
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 169
    invoke-interface {v1, v4, v0}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 170
    invoke-interface {v1, v4, v0}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [F

    const v5, 0x3f333333    # 0.7f

    aput v5, v4, v3

    iget p0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->distance:F

    float-to-double v5, p0

    const-wide v7, 0x3f2a36e2eb1c432dL    # 2.0E-4

    mul-double/2addr v5, v7

    const-wide v7, 0x3fd999999999999aL    # 0.4

    add-double/2addr v5, v7

    double-to-float p0, v5

    aput p0, v4, v0

    const/4 p0, -0x2

    .line 171
    invoke-static {p0, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p0

    new-array v0, v3, [Lmiuix/animation/property/FloatProperty;

    invoke-interface {v1, p0, v0}, Lmiuix/animation/IStateStyle;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v0, v3, [Lmiuix/animation/base/AnimConfig;

    .line 172
    invoke-interface {p0, v2, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private onAnimationEnd()V
    .locals 3

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mStarted:Z

    const/4 v1, 0x0

    .line 197
    iput-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPivotWidget:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    .line 198
    iput-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mWidgets:Ljava/util/List;

    .line 199
    iget-object v2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mContainer:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/CellLayout;->setOnDrawCallback(Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;)V

    .line 200
    iput-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mContainer:Lcom/miui/home/launcher/CellLayout;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    aput-object p0, v1, v0

    .line 201
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    return-void
.end method

.method private startPrepare(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)V
    .locals 11

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mContainer:Lcom/miui/home/launcher/CellLayout;

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mContainer:Lcom/miui/home/launcher/CellLayout;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$bBwl6zuPShlLEw-TDu9e7puKSl0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$bBwl6zuPShlLEw-TDu9e7puKSl0;-><init>(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setOnDrawCallback(Lcom/miui/home/launcher/MIUIWidgetAddAnimator$OnDrawCallback;)V

    .line 61
    new-instance v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;-><init>(Landroid/view/View;)V

    .line 62
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v1

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 65
    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ItemInfo;

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    if-ne v4, p2, :cond_1

    move-object v6, v0

    goto :goto_1

    .line 75
    :cond_1
    new-instance v6, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    invoke-direct {v6, v4}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;-><init>(Landroid/view/View;)V

    .line 77
    :goto_1
    iget v4, v5, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v5, v5, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    mul-int/2addr v4, v5

    iput v4, v6, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->mass:I

    .line 79
    iget v4, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->centerX:F

    iget v5, v6, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->centerX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    .line 80
    iget v7, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->centerY:F

    iget v8, v6, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->centerY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 81
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v6, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->distance:F

    .line 82
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_2
    iput-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPivotWidget:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    .line 86
    iput-object v2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mWidgets:Ljava/util/List;

    .line 87
    iget p1, v0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->mass:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mMaxSpeed:I

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMaxSpeed = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mMaxSpeed:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WidgetAddAnimator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPivotWidget:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPivotWidget:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    iget v1, v1, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->centerX:F

    iget-object v2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPivotWidget:Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;

    iget v2, v2, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$AnimationWidget;->centerY:F

    iget-wide v3, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mRadius:D

    double-to-float v3, v3

    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$start$0$MIUIWidgetAddAnimator()V
    .locals 5

    .line 130
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const v4, 0x3f4ccccd    # 0.8f

    aput v4, v2, v3

    const/4 v4, -0x4

    .line 131
    invoke-static {v4, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 132
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const-string v2, "add"

    invoke-interface {p0, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "radius"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-interface {p0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public setRadius(D)V
    .locals 0

    .line 182
    iput-wide p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mRadius:D

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mContainer:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout;->invalidate()V

    return-void
.end method

.method public start(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)V
    .locals 6

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->startPrepare(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)V

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mStarted:Z

    new-array p2, p1, [Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    .line 95
    invoke-static {p2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    new-array p2, p1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    .line 96
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    const-string v1, "add"

    invoke-interface {p2, v1}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "radius"

    aput-object v4, v3, v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, p1

    invoke-interface {p2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 97
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v3, p1, [F

    iget v5, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mMaxSpeed:I

    int-to-float v5, v5

    aput v5, v3, v0

    const/4 v5, -0x3

    .line 98
    invoke-static {v5, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {p2, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-array v3, p1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;-><init>(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)V

    aput-object v5, v3, v0

    .line 99
    invoke-virtual {p2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-array v3, p1, [Ljava/lang/Object;

    aput-object p0, v3, v0

    .line 122
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    invoke-interface {v3, v1}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, p1

    aput-object p2, v3, v2

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    const-wide/16 p1, 0x0

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->setRadius(D)V

    .line 124
    iget p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mMaxSpeed:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->checkWave(F)V

    .line 129
    iget-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$MIUIWidgetAddAnimator$LBaSTwQYliGbDKGSQkwARtLWCeo;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$MIUIWidgetAddAnimator$LBaSTwQYliGbDKGSQkwARtLWCeo;-><init>(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
