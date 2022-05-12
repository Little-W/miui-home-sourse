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

    .line 62
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    sput-object v0, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_MATRIX:Landroid/graphics/ColorMatrix;

    .line 68
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

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDetachTime:J

    .line 208
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    .line 260
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$9FeAKpimhZEQGf6mWk-YtSxeG1c;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$9FeAKpimhZEQGf6mWk-YtSxeG1c;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    .line 281
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$LZSI-JFxoYL5s47Obv52MzYBajM;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$LZSI-JFxoYL5s47Obv52MzYBajM;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    .line 328
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    .line 415
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlPaint:Landroid/graphics/Paint;

    .line 474
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/ProgressShortcutIcon;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/ProgressShortcutIcon;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    return p1
.end method

.method public static synthetic lambda$new$0(Lcom/miui/home/launcher/ProgressShortcutIcon;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2

    const-string p2, "tick"

    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const-string p2, "uTime"

    .line 269
    iget v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    .line 270
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

    .line 271
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resetIconImage()V

    .line 274
    :cond_1
    iget-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    if-eqz p1, :cond_2

    .line 275
    iget p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/4 p1, 0x0

    .line 276
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 277
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

    .line 283
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "tick"

    .line 284
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/component/MamlView;->onPause()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$startAfterDropAnimation$2(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 364
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 365
    iget v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    sub-float v0, p2, v0

    .line 366
    iput p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    .line 367
    iget p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float p2, p2

    iget v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    sub-float/2addr p2, v1

    mul-float/2addr v0, p2

    .line 368
    iget p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mLastResumeAnimationValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 371
    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 375
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateMamlView(F)V

    return-void
.end method

.method private resetIconImage()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 498
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 499
    invoke-super {p0, v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private startAfterDropAnimation()V
    .locals 8

    .line 339
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mRestorePercent:Z

    if-eqz v0, :cond_6

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 344
    iget v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    return-void

    .line 347
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

    .line 351
    iput-boolean v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    const/4 v3, 0x2

    .line 352
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    .line 353
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x258

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 355
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    const-wide/16 v5, 0x5dc

    cmp-long v7, v1, v5

    if-gez v7, :cond_4

    .line 357
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 359
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 361
    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$ProgressShortcutIcon$YND2TESmdCpExS-z2i9URGNxDQ0;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/progress/ProgressShortcutInfo;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/ProgressShortcutIcon$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon$1;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlResumeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 399
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

    .line 405
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    .line 406
    iget p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    return-void
.end method


# virtual methods
.method public destroyDownloadMaml()V
    .locals 3

    .line 451
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resetIconImage()V

    .line 452
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    const-string v0, "ProgressShortcutIcon"

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " destroyDownloadMaml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    .line 454
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->isDrawingInThumbnailView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 97
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconContainer:Landroid/widget/FrameLayout;

    .line 98
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getTop()I

    move-result v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 96
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ShortcutIcon;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawDragView(Landroid/graphics/Canvas;)V
    .locals 5

    .line 419
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->drawDragView(Landroid/graphics/Canvas;)V

    .line 420
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getIconContainer()Landroid/view/View;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v2}, Lcom/miui/maml/component/MamlView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 428
    check-cast v2, Landroid/graphics/Bitmap;

    .line 429
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 430
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlPaint:Landroid/graphics/Paint;

    .line 428
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 433
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDownloadTextureView()Landroid/view/TextureView;
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v1}, Lcom/miui/maml/component/MamlView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v1, v0}, Lcom/miui/maml/component/MamlView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 192
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

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    return-object v0
.end method

.method public initMamlIfNeed(II)V
    .locals 1

    .line 477
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    if-eqz v0, :cond_3

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    .line 484
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNeedInit:Z

    .line 488
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/home/launcher/ProgressShortcutIcon;->initMamlView(Landroid/graphics/Bitmap;II)V

    .line 490
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz p1, :cond_4

    const-string p2, "iconBitmap"

    .line 491
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public initMamlView(Landroid/graphics/Bitmap;II)V
    .locals 6

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 128
    invoke-virtual {v0}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->canAutoInstall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x4

    const/4 v1, 0x0

    if-eq p3, v0, :cond_8

    const/4 v0, -0x5

    if-ne p3, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const v0, 0x7f0a02e2

    .line 137
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->onIconSetNull()V

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/component/MamlView;

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    instance-of v0, v0, Lcom/miui/home/launcher/ProgressIconImageView;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    check-cast v0, Lcom/miui/home/launcher/ProgressIconImageView;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/ProgressIconImageView;->setIsDrawMaml(Z)V

    :cond_2
    const-string v0, "ProgressShortcutIcon"

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflate Maml viewstub success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 149
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v3, :cond_7

    .line 151
    invoke-virtual {v3, v1}, Lcom/miui/maml/component/MamlView;->setClickable(Z)V

    .line 152
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v3, v1}, Lcom/miui/maml/component/MamlView;->setLongClickable(Z)V

    .line 153
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v3, v1}, Lcom/miui/maml/component/MamlView;->setFocusable(Z)V

    .line 155
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v3

    .line 156
    iget-object v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v4}, Lcom/miui/maml/component/MamlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-interface {v3}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    iget-object v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v4}, Lcom/miui/maml/component/MamlView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-interface {v3}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/IconCache;->getMamlDownloadLight()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 160
    iget-object v4, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v5, "lightBitmap"

    invoke-virtual {v4, v5, v3}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v4, "iconBitmap"

    invoke-virtual {v3, v4, p1}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v3, "uWavePer"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v3, v4, v5}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    if-eqz v0, :cond_5

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    const-string v0, "SetNeedDrawTick"

    invoke-virtual {p1, v0, v4, v5}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    int-to-float p1, p2

    .line 166
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    iget-object p2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {p1, p2}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    if-ltz p3, :cond_6

    const/16 p1, 0x64

    if-gt p3, p1, :cond_6

    .line 170
    iput-boolean v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    goto :goto_1

    .line 172
    :cond_6
    iput-boolean v2, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 174
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resumeMamlView()V

    const-string p1, "ProgressShortcutIcon"

    const-string p2, "Maml view init success"

    .line 175
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_7
    const-string p1, "ProgressShortcutIcon"

    const-string p2, "Maml view init fail"

    .line 180
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    .line 133
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    .line 134
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    return-void
.end method

.method protected initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .locals 1

    .line 506
    new-instance v0, Lcom/miui/home/launcher/ProgressShortcutIcon$2;

    invoke-direct {v0, p0, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon$2;-><init>(Lcom/miui/home/launcher/ProgressShortcutIcon;Lcom/miui/home/launcher/ItemIcon;)V

    return-object v0
.end method

.method public needPostWhenDrop()Z
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseSelfIfNeed()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 301
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onAttachedToWindow()V

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "MamlView Attached To Window"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->restoreIconStatus()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 311
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onDetachedFromWindow()V

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "MamlView Detached From Window"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    .line 317
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->recordDragStatus()V

    return-void
.end method

.method public onIconRemoved()V
    .locals 0

    .line 462
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onIconRemoved()V

    .line 463
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    return-void
.end method

.method public onIconSetNull()V
    .locals 1

    .line 468
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onIconSetNull()V

    .line 469
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onProgressStatusChanged()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onProgressStatusChanged()V

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 78
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->updateDownloadView(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public pauseMamlView()V
    .locals 2

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "pause in"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    const-string v0, "ProgressShortcutIcon"

    const-string v1, "pause aborting"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    return-void
.end method

.method public pauseSelfIfNeed()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 202
    iget v1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ltz v1, :cond_0

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->pauseMamlView()V

    :cond_1
    return-void
.end method

.method public putMamlPercent(F)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    const-string v1, "icon_percent"

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    sub-float/2addr v2, p1

    float-to-double v2, v2

    .line 229
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public putMamlStatus(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 239
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

    .line 244
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mPauseWhenInit:Z

    .line 245
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->resumeMamlView()V

    goto :goto_1

    .line 241
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 242
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->destroyDownloadMaml()V

    :goto_1
    return-void
.end method

.method public recordDragStatus()V
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDragMamlViewPercent:F

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mRestorePercent:Z

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mDetachTime:J

    .line 325
    iget v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mUTime:F

    return-void
.end method

.method public restoreIconStatus()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v0, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->startAfterDropAnimation()V

    :cond_0
    return-void
.end method

.method public resumeMamlView()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mNormalTickCallback:Lcom/miui/maml/component/MamlView$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onResume()V

    :cond_0
    return-void
.end method

.method public setDownloadTag()V
    .locals 2

    .line 439
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->setDownloadTag()V

    .line 440
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getDownloadView()Lcom/miui/maml/component/MamlView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/maml/component/MamlView;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 111
    invoke-static {}, Lcom/miui/home/launcher/common/CpuLevelUtils;->needMamlDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 112
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 113
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 115
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mOriginBitmap:Landroid/graphics/Bitmap;

    .line 117
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/ProgressShortcutIcon;->DARK_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 121
    iget p2, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->initMamlIfNeed(II)V

    return-void
.end method

.method public updateDownloadView(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 2

    .line 212
    check-cast p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    .line 213
    iget v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    iget v1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ProgressShortcutIcon;->initMamlIfNeed(II)V

    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mForbidUpdate:Z

    if-nez v0, :cond_0

    .line 218
    iget v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressStatus:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlStatus(I)V

    .line 219
    iget v0, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->putMamlPercent(F)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    instance-of v0, v0, Lcom/miui/home/launcher/ProgressIconImageView;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    check-cast v0, Lcom/miui/home/launcher/ProgressIconImageView;

    iget p1, p1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ProgressIconImageView;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public updateMamlDownloadVisible()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;->mMamlDownloadView:Lcom/miui/maml/component/MamlView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/miui/maml/component/MamlView;->setVisibility(I)V

    :cond_0
    return-void
.end method
