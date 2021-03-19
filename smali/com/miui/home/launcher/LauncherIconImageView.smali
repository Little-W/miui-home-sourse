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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->draw$___twin___(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$001(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private draw$___twin___(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic lambda$invalidateDrawable$0(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->access$001(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView$_lancet;->com_miui_home_launcher_aop_ViewTraversalTrace_draw(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$b0neLQiu7w0DEap9qvsDy5r9-8o;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherIconImageView$b0neLQiu7w0DEap9qvsDy5r9-8o;-><init>(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 44
    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {p1}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 53
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public setIconSizeProvider(Lcom/miui/home/launcher/common/IconSizeProvider;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherIconImageView;->mIconSizeProvider:Lcom/miui/home/launcher/common/IconSizeProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/IconSizeProvider;->getLauncherIconHeight()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherIconImageView;->requestLayout()V

    :cond_1
    return-void
.end method
