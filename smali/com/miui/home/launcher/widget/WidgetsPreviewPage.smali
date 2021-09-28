.class public Lcom/miui/home/launcher/widget/WidgetsPreviewPage;
.super Landroid/widget/LinearLayout;
.source "WidgetsPreviewPage.java"


# instance fields
.field private mBgMask:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060392

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 29
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getPaddingStart()I

    move-result p1

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getPaddingEnd()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getPaddingBottom()I

    move-result v0

    .line 29
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 36
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0259

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    const v0, 0x7f0a0258

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/LauncherActionBar;

    const v1, 0x7f1003c0

    .line 39
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/view/LauncherActionBar;->setTitle(I)V

    return-void
.end method

.method public resetAdapter()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->resetAdapter()V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method

.method public setScreenType(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setScreenType(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 52
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    goto :goto_1

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getFastBlurColor(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->addTwoColor(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 62
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setBackgroundColor(I)V

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->releaseMemory()V

    :cond_2
    return-void
.end method
