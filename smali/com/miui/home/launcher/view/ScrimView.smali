.class public Lcom/miui/home/launcher/view/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# static fields
.field public static final PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/view/ScrimView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBottomRadius:I

.field protected mCurrentFlatColor:I

.field private mCurrentProgressAnimator:Landroid/animation/Animator;

.field private mDrawPath:Landroid/graphics/Path;

.field protected mEndFlatColor:I

.field protected mEndFlatColorAlpha:I

.field private mPaint:Landroid/graphics/Paint;

.field protected mProgress:F

.field private mTopRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/miui/home/launcher/view/ScrimView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "progress"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/view/ScrimView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/view/ScrimView;->PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 63
    iput p2, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    .line 75
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/view/ScrimView;->mDrawPath:Landroid/graphics/Path;

    .line 76
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    .line 77
    iget-object p2, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object p2, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    invoke-static {p1}, Lcom/miui/home/launcher/common/PhoneCornerRadius;->getTopPhoneRadius(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/view/ScrimView;->mTopRadius:I

    .line 80
    invoke-static {p1}, Lcom/miui/home/launcher/common/PhoneCornerRadius;->getBottomPhoneRadius(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mBottomRadius:I

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/ScrimView;->setFocusable(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/ScrimView;->setColorValue(Landroid/content/Context;)V

    return-void
.end method

.method private static resetRoundRectPath(Landroid/graphics/Path;IIIIII)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v0, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->reset()V

    add-int v1, v9, p5

    int-to-float v1, v1

    add-int v2, v0, p5

    int-to-float v12, v2

    .line 146
    invoke-virtual {v8, v1, v12}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v13, v9

    int-to-float v14, v0

    mul-int/lit8 v15, p5, 0x2

    add-int v1, v9, v15

    int-to-float v3, v1

    add-int/2addr v0, v15

    int-to-float v7, v0

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v4, v7

    move/from16 v17, v7

    move/from16 v7, v16

    .line 147
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    sub-int v0, v10, p5

    int-to-float v0, v0

    .line 148
    invoke-virtual {v8, v0, v14}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int v0, v10, v15

    int-to-float v1, v0

    int-to-float v15, v10

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v3, v15

    move/from16 v4, v17

    .line 149
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    sub-int v0, v11, p6

    int-to-float v0, v0

    .line 150
    invoke-virtual {v8, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    mul-int/lit8 v14, p6, 0x2

    sub-int v0, v10, v14

    int-to-float v1, v0

    sub-int v0, v11, v14

    int-to-float v10, v0

    int-to-float v11, v11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v10

    move v4, v11

    .line 151
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    add-int v0, v9, p6

    int-to-float v0, v0

    .line 152
    invoke-virtual {v8, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v0, v9, v14

    int-to-float v3, v0

    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    move v1, v13

    .line 153
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 154
    invoke-virtual {v8, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private setAndUpdateColors()V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/ScrimView;->setColorValue(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->updateColors()V

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->invalidate()V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 161
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/miui/home/launcher/view/ScrimView;->setAndUpdateColors()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 170
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 136
    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentFlatColor:I

    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v2, p0, Lcom/miui/home/launcher/view/ScrimView;->mDrawPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 139
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    iget v7, p0, Lcom/miui/home/launcher/view/ScrimView;->mTopRadius:I

    iget v8, p0, Lcom/miui/home/launcher/view/ScrimView;->mBottomRadius:I

    .line 138
    invoke-static/range {v2 .. v8}, Lcom/miui/home/launcher/view/ScrimView;->resetRoundRectPath(Landroid/graphics/Path;IIIIII)V

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mDrawPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/home/launcher/view/ScrimView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 177
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/view/ScrimView;->setAndUpdateColors()V

    :cond_1
    return-void
.end method

.method public setColorValue(Landroid/content/Context;)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getBackgroundColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColor:I

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 97
    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 98
    iput p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->updateColors()V

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/ScrimView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressAnim(FI)V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 108
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColor:I

    .line 109
    iget v1, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    .line 110
    sget-object v2, Lcom/miui/home/launcher/view/ScrimView;->PROGRESS:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentProgressAnimator:Landroid/animation/Animator;

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentProgressAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/miui/home/launcher/view/ScrimView$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/launcher/view/ScrimView$2;-><init>(Lcom/miui/home/launcher/view/ScrimView;II)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    iget-object p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentProgressAnimator:Landroid/animation/Animator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 126
    iget-object p1, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected updateColors()V
    .locals 3

    .line 130
    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColor:I

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mEndFlatColorAlpha:I

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 131
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 130
    invoke-static {v2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/home/launcher/view/ScrimView;->mCurrentFlatColor:I

    return-void
.end method
