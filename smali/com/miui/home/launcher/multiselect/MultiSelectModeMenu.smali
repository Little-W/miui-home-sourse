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

    .line 19
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->TOP_MENU_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setTopMargin(Landroid/view/View;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getEditModeTopMenuMarginTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public changeFinishContainerToGoneState(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/FinishContainer;->changeToGoneState(Z)V

    return-void
.end method

.method public changeFinishContainerToNormalState(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/FinishContainer;->changeToNormalState(Z)V

    return-void
.end method

.method public changeGroupContainerToGoneState(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->changeToGoneState(Z)V

    return-void
.end method

.method public changeGroupContainerToNormalState(Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/multiselect/GroupContainer;->changeToNormalState(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a010b

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/FinishContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    const v0, 0x7f0a00f5

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/multiselect/GroupContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->setTopMargin(Landroid/view/View;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mFinishContainer:Lcom/miui/home/launcher/multiselect/FinishContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/FinishContainer;->onWallpaperColorChanged()V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectModeMenu;->mGroupContainer:Lcom/miui/home/launcher/multiselect/GroupContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/GroupContainer;->onWallpaperColorChanged()V

    return-void
.end method
