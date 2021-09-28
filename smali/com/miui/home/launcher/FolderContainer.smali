.class public Lcom/miui/home/launcher/FolderContainer;
.super Landroid/widget/FrameLayout;
.source "FolderContainer.java"


# instance fields
.field private mRecommendAppsSwitch:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/FolderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/FolderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderContainer;->setClipChildren(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderContainer;->setClipToPadding(Z)V

    .line 31
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a018f

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderContainer;->mRecommendAppsSwitch:Landroid/widget/LinearLayout;

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/FolderContainer;->mRecommendAppsSwitch:Landroid/widget/LinearLayout;

    const v1, 0x7f0a01fc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method
