.class public Lcom/miui/home/launcher/LauncherIconImageView;
.super Landroid/widget/ImageView;
.source "LauncherIconImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherIconImageView$_lancet;
    }
.end annotation


# instance fields
.field private mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

.field private mInvalidRunnable:Ljava/lang/Runnable;

.field private mInvalidateDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance p1, Lcom/miui/home/launcher/LauncherIconImageView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/LauncherIconImageView$1;-><init>(Lcom/miui/home/launcher/LauncherIconImageView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherIconImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->draw$___twin___(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$101(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private draw$___twin___(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView$_lancet;->com_miui_home_launcher_aop_ViewTraversalTrace_draw(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidateAdaptiveIconDrawable()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->superInvalidateSelf()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 73
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidateDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mInvalidRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LauncherIconImageView"

    const-string v1, "invalidateDrawable error"

    .line 77
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 46
    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {p1}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public setIconSizeProvider(Lcom/miui/home/launcher/common/IconSizeProvider;)V
    .locals 1

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    :cond_1
    return-void
.end method
