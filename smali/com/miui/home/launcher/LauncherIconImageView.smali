.class public Lcom/miui/home/launcher/LauncherIconImageView;
.super Landroid/widget/ImageView;
.source "LauncherIconImageView.java"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field protected mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

.field private mInvalidRunnable:Ljava/lang/Runnable;

.field private mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance p1, Lcom/miui/home/launcher/LauncherIconImageView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/LauncherIconImageView$1;-><init>(Lcom/miui/home/launcher/LauncherIconImageView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherIconImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$101(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getHeightMeasureSpec(I)I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {p0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method protected getWidthMeasureSpec(I)I
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {p0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public invalidateAdaptiveIconDrawable()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->superInvalidateSelf()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 83
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 87
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LauncherIconImageView"

    const-string v0, "invalidateDrawable error"

    .line 91
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$startLightAnim$0$LauncherIconImageView()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 52
    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->drawLight(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->getWidthMeasureSpec(I)I

    move-result p1

    .line 60
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherIconImageView;->getHeightMeasureSpec(I)I

    move-result p2

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    return-void
.end method

.method public setIconSizeProvider(Lcom/miui/home/launcher/common/IconSizeProvider;)V
    .locals 1

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public startLightAnim(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-direct {v0, p1, p0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;-><init>(Landroid/graphics/Bitmap;Lcom/miui/home/launcher/LauncherIconImageView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    .line 113
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$6YDtgzP4FC7HQQ0HbRIVRD8XfFQ;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$6YDtgzP4FC7HQQ0HbRIVRD8XfFQ;-><init>(Lcom/miui/home/launcher/LauncherIconImageView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->setAnimFinishCallBack(Ljava/lang/Runnable;)V

    .line 114
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mNewInstallLightAnimController:Lcom/miui/home/launcher/anim/NewInstallLightAnim;

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/NewInstallLightAnim;->start()V

    :cond_0
    return-void
.end method
