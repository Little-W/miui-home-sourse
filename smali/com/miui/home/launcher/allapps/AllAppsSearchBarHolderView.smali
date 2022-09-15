.class public Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "AllAppsSearchBarHolderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getContainerHeight(Landroid/content/Context;)I
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0705c3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method private refreshPadding()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v0

    .line 48
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 49
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getSearchBarParallax()F
    .locals 2

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarHolderVerticalPadding(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->onFinishInflate()V

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->refreshPadding()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContainerHeight(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 29
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->refreshPadding()V

    return-void
.end method
