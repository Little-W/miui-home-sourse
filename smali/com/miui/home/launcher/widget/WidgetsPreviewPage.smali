.class public Lcom/miui/home/launcher/widget/WidgetsPreviewPage;
.super Landroid/widget/LinearLayout;
.source "WidgetsPreviewPage.java"


# instance fields
.field private mBgMask:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

.field private widgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0603ea

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getPaddingStart()I

    move-result p1

    .line 33
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

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getPaddingEnd()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->getPaddingBottom()I

    move-result v0

    .line 32
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetDetailsView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-object p0
.end method


# virtual methods
.method public onExitAnimationEnd()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAddWidgetEnable(Z)V

    :cond_0
    return-void
.end method

.method public onExitAnimationStart()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAddWidgetEnable(Z)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a02f6

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    const v0, 0x7f0a02ef

    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    .line 42
    new-instance v0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage$1;-><init>(Lcom/miui/home/launcher/widget/WidgetsPreviewPage;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->widgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->widgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->widgetDetailsCallback:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V

    const v0, 0x7f0a02f5

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/view/LauncherActionBar;

    const v1, 0x7f100477

    .line 60
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/view/LauncherActionBar;->setTitle(I)V

    return-void
.end method

.method public resetAdapter()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->resetAdapter()V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setDragController(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method

.method public setScreenType(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setScreenType(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 73
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_LITE_DEVICE:Z

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    goto :goto_1

    .line 77
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

    .line 79
    :catch_0
    iget v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mBgMask:I

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 83
    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->setBackgroundColor(I)V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setAddWidgetEnable(Z)V

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 90
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->releaseMemory()V

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetsPreviewPage;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/widget/WidgetDetailsView;->setVisibility(I)V

    :cond_2
    return-void
.end method
