.class public Lnet/lucode/hackware/magicindicator/MagicIndicator;
.super Landroid/widget/FrameLayout;


# instance fields
.field private mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getNavigator()Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    return-object p0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V
    .locals 1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onDetachFromMagicIndicator()V

    :cond_1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->removeAllViews()V

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/MagicIndicator;->mNavigator:Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;

    invoke-interface {p0}, Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;->onAttachToMagicIndicator()V

    :cond_2
    return-void
.end method
