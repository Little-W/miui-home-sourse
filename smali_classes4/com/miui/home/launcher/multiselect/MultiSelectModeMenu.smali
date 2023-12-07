.class public Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;
.super Landroid/widget/FrameLayout;
.source "MultiSelectModeMenu.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# static fields
.field public static final TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

.field private mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setLeftMargin(Landroid/view/View;)V
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070144

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRightMargin(Landroid/view/View;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070144

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTopMargin(Landroid/view/View;)V
    .locals 1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v0

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 39
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public changeFinishContainerToGoneState(Z)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/FinishContainer;->changeToGoneState(Z)V

    return-void
.end method

.method public changeFinishContainerToNormalState(Z)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/FinishContainer;->changeToNormalState(Z)V

    return-void
.end method

.method public changeGroupContainerToGoneState(Z)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->changeToGoneState(Z)V

    return-void
.end method

.method public changeGroupContainerToNormalState(Z)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->changeToNormalState(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a015a

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/FinishContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    const v0, 0x7f0a013c

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/GroupContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 84
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setLeftMargin(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setRightMargin(Landroid/view/View;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/FinishContainer;->onWallpaperColorChanged()V

    .line 62
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->onWallpaperColorChanged()V

    return-void
.end method
