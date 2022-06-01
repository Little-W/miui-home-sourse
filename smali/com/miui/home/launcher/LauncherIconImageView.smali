.class public Lcom/miui/home/launcher/LauncherIconImageView;
.super Landroid/widget/ImageView;
.source "LauncherIconImageView.java"


# instance fields
.field private mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

.field private mInvalidRunnable:Ljava/lang/Runnable;

.field private mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Lcom/miui/home/launcher/LauncherIconImageView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/LauncherIconImageView$1;-><init>(Lcom/miui/home/launcher/LauncherIconImageView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherIconImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$101(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$startLightAnim$0(Lcom/miui/home/launcher/LauncherIconImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    return-void
.end method


# virtual methods
.method public invalidateAdaptiveIconDrawable()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->superInvalidateSelf()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 77
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LauncherIconImageView"

    const-string v1, "invalidateDrawable error"

    .line 81
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 48
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 50
    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->drawLight(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {p1}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public setIconSizeProvider(Lcom/miui/home/launcher/common/IconSizeProvider;)V
    .locals 1

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public startLightAnim(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;-><init>(Landroid/graphics/Bitmap;Lcom/miui/home/launcher/LauncherIconImageView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    .line 103
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$6YDtgzP4FC7HQQ0HbRIVRD8XfFQ;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$6YDtgzP4FC7HQQ0HbRIVRD8XfFQ;-><init>(Lcom/miui/home/launcher/LauncherIconImageView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->setAnimFinishCallBack(Ljava/lang/Runnable;)V

    .line 104
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->start()V

    :cond_0
    return-void
.end method
