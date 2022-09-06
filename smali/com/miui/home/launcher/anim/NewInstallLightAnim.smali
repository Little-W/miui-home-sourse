.class public final Lcom/miui/home/launcher/anim/NewInstallLightAnim;
.super Ljava/lang/Object;
.source "NewInstallLightAnim.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewInstallLightAnim.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewInstallLightAnim.kt\ncom/miui/home/launcher/anim/NewInstallLightAnim\n*L\n1#1,97:1\n*E\n"
.end annotation


# instance fields
.field private mAnimFinishCallback:Ljava/lang/Runnable;

.field private mBoundsRect:Landroid/graphics/Rect;

.field private final mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field private mLightBitmap:Landroid/graphics/Bitmap;

.field private mLightBounds:Landroid/graphics/Rect;

.field private mLightHeight:I

.field private mLightPaint:Landroid/graphics/Paint;

.field private mLightTranslation:I

.field private mLightWidth:I

.field private final mSourceBitmap:Landroid/graphics/Bitmap;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mSourcePaint:Landroid/graphics/Paint;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/miui/home/launcher/LauncherIconImageView;)V
    .locals 2

    const-string v0, "mSourceBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mImageView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourceBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mBoundsRect:Landroid/graphics/Rect;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBounds:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourceBounds:Landroid/graphics/Rect;

    const/16 p1, -0x2710

    .line 20
    iput p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightTranslation:I

    .line 26
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewWidth:I

    .line 27
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewHeight:I

    .line 30
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourceBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08062e

    .line 31
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory.decodeReso\u2026tallation_light\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBitmap:Landroid/graphics/Bitmap;

    .line 35
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast p2, Landroid/graphics/Xfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 37
    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourcePaint:Landroid/graphics/Paint;

    .line 41
    iget p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewWidth:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightWidth:I

    .line 42
    iget p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewHeight:I

    iput p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightHeight:I

    return-void
.end method

.method public static final synthetic access$getMAnimFinishCallback$p(Lcom/miui/home/launcher/anim/NewInstallLightAnim;)Ljava/lang/Runnable;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mAnimFinishCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$release(Lcom/miui/home/launcher/anim/NewInstallLightAnim;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->release()V

    return-void
.end method

.method private final release()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method


# virtual methods
.method public final drawLight(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mBoundsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightTranslation:I

    iget v3, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightWidth:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightHeight:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mBoundsRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 83
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mBoundsRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewWidth:I

    iget v3, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewHeight:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    iget-object v1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourceBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourceBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mBoundsRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mSourcePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final setAnimFinishCallBack(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "finishCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mAnimFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final setLightTranslation(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 90
    iput p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightTranslation:I

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherIconImageView;->invalidate()V

    return-void
.end method

.method public final start()V
    .locals 9

    const v0, 0x3e75c28f    # 0.24f

    const v1, 0x3f1eb852    # 0.62f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3f6b851f    # 0.92f

    .line 50
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    const-string v1, "lightTranslation"

    const/4 v2, 0x2

    .line 54
    new-array v3, v2, [I

    iget v4, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightWidth:I

    neg-int v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewWidth:I

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x226

    .line 56
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0x258

    .line 57
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 58
    move-object v7, v0

    check-cast v7, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    const-string v1, "lightTranslation"

    .line 62
    new-array v2, v2, [I

    iget v8, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mViewWidth:I

    aput v8, v2, v5

    iget v5, p0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->mLightWidth:I

    neg-int v5, v5

    aput v5, v2, v6

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x672

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 66
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    new-instance v2, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$$inlined$apply$lambda$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim$start$$inlined$apply$lambda$1;-><init>(Lcom/miui/home/launcher/anim/NewInstallLightAnim;Landroid/view/animation/Interpolator;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 73
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
