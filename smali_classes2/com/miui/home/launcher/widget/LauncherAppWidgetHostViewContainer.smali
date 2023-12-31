.class public Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.super Lcom/miui/launcher/views/LauncherRelativeLayout;
.source "LauncherAppWidgetHostViewContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/IEditable;


# instance fields
.field protected mBoundsOnScreen:Landroid/graphics/Rect;

.field private mIsDrawingInThumbnailView:Z

.field protected mIsEditMode:Z

.field protected mLocationOnScreen:[I

.field protected mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

.field private mStartShowingTime:J

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherRelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    .line 34
    new-instance p1, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;-><init>(Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 28
    iput-wide p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    .line 34
    new-instance p1, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;-><init>(Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    return-void
.end method

.method private trackExposeEvent()V
    .locals 6

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    if-nez v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    invoke-static {v2, v3, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;J)V

    .line 79
    :cond_0
    iput-wide v4, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;->preDrawChild(Landroid/view/View;)I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherRelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 120
    iget-object p3, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    iget-boolean p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInThumbnailView:Z

    invoke-virtual {p3, p1, p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;->afterDrawChild(Landroid/graphics/Canvas;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method protected getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mBoundsOnScreen:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mBoundsOnScreen:Landroid/graphics/Rect;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mLocationOnScreen:[I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 137
    iput-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mLocationOnScreen:[I

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mLocationOnScreen:[I

    iget-object p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mBoundsOnScreen:Landroid/graphics/Rect;

    invoke-interface {p1, v0, p0}, Lcom/miui/home/launcher/HostViewContainer;->getHostViewBoundsOnScreen([ILandroid/graphics/Rect;)V

    return-void
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherRelativeLayout;->onFinishInflate()V

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;->onBindElementFinishInflate()V

    return-void
.end method

.method public onInvisible()V
    .locals 2

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInvisible "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.widget"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    return-void
.end method

.method public onVisible()V
    .locals 2

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher.widget"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mContext:Landroid/content/Context;

    const v1, 0x7f1205ea

    const v2, 0x7f1205ed

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 91
    invoke-virtual {v0}, Lcom/miui/home/launcher/TitleTextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 97
    iget-boolean p2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    if-eqz p2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    goto :goto_0

    .line 100
    :cond_0
    iget-boolean p2, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mVisible:Z

    if-eqz p2, :cond_1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    .line 104
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsEditMode:Z

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordWidgetAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mIsDrawingInThumbnailView:Z

    return-void
.end method
