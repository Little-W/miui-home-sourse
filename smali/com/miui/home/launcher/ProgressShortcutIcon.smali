.class public Lcom/miui/home/launcher/ProgressShortcutIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "ProgressShortcutIcon.java"


# static fields
.field private static final DARK_FILTER:Landroid/graphics/ColorFilter;

.field private static final DARK_MATRIX:Landroid/graphics/ColorMatrix;


# instance fields
.field private mDetachTime:J

.field private mDragMamlViewPercent:F

.field private mForbidUpdate:Z

.field private mLastResumeAnimationValue:F

.field private mMamlDownloadView:Lcom/miui/maml/component/MamlView;

.field private mMamlPaint:Landroid/graphics/Paint;

.field private mMamlResumeAnimation:Landroid/animation/ValueAnimator;

.field private mNeedInit:Z

.field mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

.field private mOriginBitmap:Landroid/graphics/Bitmap;

.field mPauseTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

.field private mPauseWhenInit:Z

.field private mRestorePercent:Z

.field private mUTime:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    sput-object v0, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_MATRIX:Landroid/graphics/ColorMatrix;

    .line 67
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v1, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v0, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_FILTER:Landroid/graphics/ColorFilter;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x3ccaf334
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x3ccaf334
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x3ccaf334
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDetachTime:J

    .line 221
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    .line 270
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$9FeAKpimhZEQGf6mWk-YtSxeG1c;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$9FeAKpimhZEQGf6mWk-YtSxeG1c;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    .line 291
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$LZSI-JFxoYL5s47Obv52MzYBajM;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$LZSI-JFxoYL5s47Obv52MzYBajM;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    .line 338
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    .line 425
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlPaint:Landroid/graphics/Paint;

    .line 484
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/ProgressShortcutIcon;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/ProgressShortcutIcon;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    return p1
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/launcher/ProgressShortcutIcon;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2

    const-string p2, "tick"

    .line 275
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const-string p2, "uTime"

    .line 279
    iget v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    .line 280
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 282
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resetIconImage()V

    .line 284
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    if-eqz p1, :cond_2

    .line 285
    iget p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/4 p1, 0x0

    .line 286
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseMamlView()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/miui/home/launcher/ProgressShortcutIcon;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    const-string p2, "ProgressShortcutIcon"

    const-string p3, "OnExternCommandListener  onPause"

    .line 293
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "tick"

    .line 294
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/component/MamlView;->onPause()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$startAfterDropAnimation$2(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 374
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 375
    iget v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    sub-float v0, p2, v0

    .line 376
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    .line 377
    iget p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float p2, p2

    iget v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    sub-float/2addr p2, v1

    mul-float/2addr v0, p2

    .line 378
    iget p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 381
    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 385
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateMamlView(F)V

    return-void
.end method

.method private resetIconImage()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 508
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 509
    invoke-super {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private startAfterDropAnimation()V
    .locals 8

    .line 349
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mRestorePercent:Z

    if-eqz v0, :cond_6

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 354
    iget v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    return-void

    .line 357
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDetachTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 361
    iput-boolean v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    const/4 v3, 0x2

    .line 362
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    .line 363
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x258

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 365
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0x5dc

    cmp-long v7, v1, v5

    if-gez v7, :cond_4

    .line 367
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 369
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 371
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/ProgressShortcutIcon$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon$1;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mRestorePercent:Z

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateMamlView(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 415
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    .line 416
    iget p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    return-void
.end method


# virtual methods
.method public destroyDownloadMaml()V
    .locals 3

    .line 461
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resetIconImage()V

    .line 462
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    const-string v0, "ProgressShortcutIcon"

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " destroyDownloadMaml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    .line 464
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 92
    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ShortcutIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    iget-object p3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p3

    iget-object p4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result p4

    add-int/2addr p3, p4

    int-to-float p3, p3

    iget-object p4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 97
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getTop()I

    move-result p4

    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherIconImageView;->getTop()I

    move-result v1

    add-int/2addr p4, v1

    int-to-float p4, p4

    .line 96
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    iget-object p3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p3}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    iget-object p4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p4}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p4, v1

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 99
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result p3

    if-nez p3, :cond_0

    .line 100
    iget-object p3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    invoke-static {p3, p1, p4, v0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 114
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 115
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getTop()I

    move-result v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 113
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ShortcutIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getDownloadTextureView()Landroid/view/TextureView;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v1}, Lcom/miui/maml/component/MamlView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v1, v0}, Lcom/miui/maml/component/MamlView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v1, v0}, Lcom/miui/maml/component/MamlView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadView()Lcom/miui/maml/component/MamlView;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    return-object v0
.end method

.method public initMamlIfNeed(II)V
    .locals 1

    .line 487
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz v0, :cond_3

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    .line 494
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    .line 498
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/ProgressShortcutIcon;->initMamlView(Landroid/graphics/Bitmap;II)V

    .line 500
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz p1, :cond_4

    const-string p2, "iconBitmap"

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public initMamlView(Landroid/graphics/Bitmap;II)V
    .locals 6

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 144
    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->canAutoInstall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x4

    const/4 v1, 0x0

    if-eq p3, v0, :cond_7

    const/4 v0, -0x5

    if-ne p3, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const v0, 0x7f0a024f

    .line 153
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->onIconSetNull()V

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/component/MamlView;

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v0, "ProgressShortcutIcon"

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflate Maml viewstub success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    .line 160
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 162
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v3, :cond_6

    .line 164
    invoke-virtual {v3, v1}, Lcom/miui/maml/component/MamlView;->setClickable(Z)V

    .line 165
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v3, v1}, Lcom/miui/maml/component/MamlView;->setLongClickable(Z)V

    .line 166
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v3, v1}, Lcom/miui/maml/component/MamlView;->setFocusable(Z)V

    .line 168
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v3

    .line 169
    iget-object v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v4}, Lcom/miui/maml/component/MamlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-interface {v3}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    iget-object v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v4}, Lcom/miui/maml/component/MamlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-interface {v3}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/IconCache;->getMamlDownloadLight()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 173
    iget-object v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v5, "lightBitmap"

    invoke-virtual {v4, v5, v3}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v4, "iconBitmap"

    invoke-virtual {v3, v4, p1}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v3, "uWavePer"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v3, v4, v5}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    if-eqz v0, :cond_4

    .line 178
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v0, "SetNeedDrawTick"

    invoke-virtual {p1, v0, v4, v5}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    int-to-float p1, p2

    .line 179
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    .line 181
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    iget-object p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {p1, p2}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    if-ltz p3, :cond_5

    const/16 p1, 0x64

    if-gt p3, p1, :cond_5

    .line 183
    iput-boolean v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    goto :goto_1

    .line 185
    :cond_5
    iput-boolean v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 187
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resumeMamlView()V

    const-string p1, "ProgressShortcutIcon"

    const-string p2, "Maml view init success"

    .line 188
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    const-string p1, "ProgressShortcutIcon"

    const-string p2, "Maml view init fail"

    .line 193
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    .line 149
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    .line 150
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    return-void
.end method

.method public needPostWhenDrop()Z
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseSelfIfNeed()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 311
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onAttachedToWindow()V

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "MamlView Attached To Window"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->restoreIconStatus()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 321
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onDetachedFromWindow()V

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "MamlView Detached From Window"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    .line 327
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->recordDragStatus()V

    return-void
.end method

.method public onIconRemoved()V
    .locals 0

    .line 472
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onIconRemoved()V

    .line 473
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    return-void
.end method

.method public onIconSetNull()V
    .locals 1

    .line 478
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onIconSetNull()V

    .line 479
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onProgressStatusChanged()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onProgressStatusChanged()V

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateDownloadView(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public pauseMamlView()V
    .locals 2

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "pause in"

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "pause aborting"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    return-void
.end method

.method public pauseSelfIfNeed()V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 215
    iget v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ltz v1, :cond_0

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseMamlView()V

    :cond_1
    return-void
.end method

.method public putMamlPercent(F)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    const-string v1, "icon_percent"

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    sub-float/2addr v2, p1

    float-to-double v2, v2

    .line 239
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public putMamlStatus(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resumeMamlView()V

    goto :goto_1

    :cond_0
    const/4 v0, -0x4

    if-eq p1, v0, :cond_2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 255
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resumeMamlView()V

    goto :goto_1

    .line 251
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 252
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    :goto_1
    return-void
.end method

.method public recordDragStatus()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mRestorePercent:Z

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDetachTime:J

    .line 335
    iget v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    return-void
.end method

.method public restoreIconStatus()V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->startAfterDropAnimation()V

    :cond_0
    return-void
.end method

.method public resumeMamlView()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onResume()V

    :cond_0
    return-void
.end method

.method public setDownloadTag()V
    .locals 2

    .line 449
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->setDownloadTag()V

    .line 450
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadView()Lcom/miui/maml/component/MamlView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/maml/component/MamlView;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 127
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 128
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 129
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 131
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 133
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 137
    iget p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->initMamlIfNeed(II)V

    return-void
.end method

.method public updateDownloadView(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 225
    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 226
    iget v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    iget v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->initMamlIfNeed(II)V

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    if-nez v0, :cond_0

    .line 231
    iget v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlStatus(I)V

    .line 232
    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    :cond_0
    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    :cond_0
    return-void
.end method
