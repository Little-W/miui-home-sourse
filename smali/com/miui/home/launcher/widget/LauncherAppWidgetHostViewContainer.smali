.class public Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.super Lcom/miui/launcher/views/LauncherRelativeLayout;
.source "LauncherAppWidgetHostViewContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# instance fields
.field private mStartShowingTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherRelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 21
    iput-wide p1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    return-void
.end method

.method private trackExposeEvent()V
    .locals 6

    .line 59
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

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    invoke-static {v2, v3, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackExposeMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;J)V

    .line 63
    :cond_0
    iput-wide v4, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    return-void
.end method


# virtual methods
.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    return-void
.end method

.method public onInvisible()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->trackExposeEvent()V

    const-string v1, "Launcher.widget"

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInvisible "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    return-void
.end method

.method public onVisible()V
    .locals 4

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mStartShowingTime:J

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    const-string v1, "Launcher.widget"

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisible "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f1102eb

    const v3, 0x7f1102ee

    invoke-static {v1, v0, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 75
    invoke-virtual {v0}, Lcom/miui/home/launcher/TitleTextView;->invalidate()V

    :cond_0
    return-void
.end method
