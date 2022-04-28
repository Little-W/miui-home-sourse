.class public Lcom/miui/home/launcher/LauncherWidgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "LauncherWidgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/HostViewContainer;
.implements Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;
.implements Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;
.implements Lcom/miui/miuiwidget/LargeScreenTouchTarget;


# instance fields
.field private isUseOpenWindowTransitionAnim:Z

.field private mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field private mBoundsOnScreen:Landroid/graphics/Rect;

.field private mBroadCastRetryCount:I

.field private mIsAppDataCleared:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mIsPushRefresh:Z

.field private mLastBroadcastRetryTime:J

.field private mLastBroadcastTime:J

.field private mLastUpdateTime:J

.field private mLocationOnScreen:[I

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

.field private mWidgetCornerSize:F

.field private mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method private getBoundsOnScreenInternal()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLocationOnScreen:[I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 466
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLocationOnScreen:[I

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLocationOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getLocationOnScreen([I)V

    .line 469
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLocationOnScreen:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    .line 470
    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 471
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 472
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;
    .locals 5

    .line 435
    invoke-virtual {p2, p4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 436
    aget v1, p4, v0

    const/4 v2, 0x1

    aget v3, p4, v2

    aget v0, p4, v0

    .line 438
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    aget p4, p4, v2

    .line 439
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr p4, v2

    .line 436
    invoke-virtual {p3, v1, v3, v0, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 440
    instance-of p4, p2, Lcom/miui/miuiwidget/LargeScreenSupporter;

    if-eqz p4, :cond_1

    .line 441
    move-object p4, p2

    check-cast p4, Lcom/miui/miuiwidget/LargeScreenSupporter;

    .line 442
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-nez p2, :cond_1

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Launcher:WidgetView"

    const-string p2, "find touch view"

    .line 443
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-interface {p4}, Lcom/miui/miuiwidget/LargeScreenSupporter;->getLargeScreenOptions()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;
    .locals 5

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    .line 410
    new-array v1, v1, [I

    .line 411
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    .line 416
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 417
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 418
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    .line 423
    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 424
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$onProviderChanged$1(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    iget-boolean p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$onProviderChanged$2(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 3

    .line 353
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    const-string v0, "Launcher:WidgetView"

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMiuiAttribute isMIUIWidget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$onVisible$0(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onAppDataCleared(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Launcher:WidgetView"

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppDataCleared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isVisible = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 341
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    .line 342
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 343
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onMiuiWidgetUpdate(Ljava/lang/String;)V
    .locals 12

    .line 213
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "Launcher:WidgetView"

    const-string v0, "onMiuiWidgetUpdate itemInfo from tag is null!"

    .line 218
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_1
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    if-gtz v1, :cond_2

    const-string p1, "Launcher:WidgetView"

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMiuiWidgetUpdate appWidgetId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_2
    iget-boolean v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-nez v2, :cond_3

    const-string p1, "Launcher:WidgetView"

    const-string v0, "onMiuiWidgetUpdate widget is not miuiWidget!"

    .line 227
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_3
    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsPushRefresh:Z

    if-nez v2, :cond_9

    .line 233
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needRefreshWhenExposure()Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "Launcher:WidgetView"

    const-string v0, "onMiuiWidgetUpdate widget dont need refresh!"

    .line 234
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 237
    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getMIUIWidgetRefreshMinInterval()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gtz v2, :cond_5

    const-string p1, "Launcher:WidgetView"

    const-string v0, "onMiuiWidgetUpdate widget refreshMinInterval less than zero!"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 243
    iget-wide v9, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastTime:J

    sub-long v9, v7, v9

    cmp-long v2, v9, v5

    if-gtz v2, :cond_9

    const-string v2, "Launcher:WidgetView"

    const-string v5, "onMiuiWidgetUpdate widget update less than minInterval!"

    .line 244
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-wide v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    sub-long/2addr v7, v5

    const v2, 0xea60

    iget v9, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    add-int/lit8 v10, v9, 0x1

    mul-int/2addr v10, v2

    int-to-long v10, v10

    cmp-long v2, v7, v10

    if-gez v2, :cond_6

    const-string p1, "Launcher:WidgetView"

    const-string v0, "onMiuiWidgetUpdate widget update less than minRetryInterval!"

    .line 248
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_6
    iget-wide v7, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_7

    const-string p1, "Launcher:WidgetView"

    const-string v0, "onMiuiWidgetUpdate widget update after broadcast!"

    .line 251
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v2, 0x3

    if-lt v9, v2, :cond_8

    const-string p1, "Launcher:WidgetView"

    const-string v0, "onMiuiWidgetUpdate retryCount more than 3"

    .line 257
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string v2, "Launcher:WidgetView"

    const-string v5, "onMiuiWidgetUpdate no update received after 1 minutes of broadcast"

    .line 261
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    move v2, v3

    goto :goto_0

    :cond_9
    move v2, v4

    .line 269
    :goto_0
    :try_start_0
    new-array v3, v3, [I

    aput v1, v3, v4

    iget-object v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 270
    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 269
    invoke-virtual {v0, v3, v5}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->obtainMIUIWidgetUpdateIntent([ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "push_extra"

    .line 273
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    :cond_a
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v2, :cond_b

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    goto :goto_1

    .line 279
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastTime:J

    .line 280
    iget-wide v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastTime:J

    iput-wide v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    :goto_1
    const-string p1, "Launcher:WidgetView"

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMiuiWidgetUpdate success, mIsAppDataCleared = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsPushRefresh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsPushRefresh:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " appWidgetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput-boolean v4, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    .line 285
    iput-boolean v4, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsPushRefresh:Z

    .line 286
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEditMode:Z

    if-nez p1, :cond_c

    .line 287
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackRefreshMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "Launcher:WidgetView"

    const-string v1, "onMiuiWidgetUpdate"

    .line 291
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_2
    return-void
.end method

.method private onPushRefreshed(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Launcher:WidgetView"

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPushRefreshed  isVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string p1, "Launcher:WidgetView"

    const-string v0, "onPushRefreshed interval since last update is less then minInterval!"

    .line 385
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsPushRefresh:Z

    .line 389
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private onWidgetTouched(Landroid/view/MotionEvent;)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    if-eqz v0, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getBoundsOnScreenInternal()V

    .line 492
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    invoke-interface {v0, p1, p0}, Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;->onWidgetTouched(Landroid/view/MotionEvent;Landroid/view/View;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onWidgetTouched(Landroid/view/MotionEvent;)V

    .line 486
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 479
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onWidgetTouched(Landroid/view/MotionEvent;)V

    .line 480
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 137
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    return p1
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBindAppPackage()Ljava/lang/String;
    .locals 3

    .line 175
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    .line 177
    instance-of v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    .line 178
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 179
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getBoundsOnScreen()Landroid/graphics/Rect;
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getBoundsOnScreenInternal()V

    .line 458
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostView()Landroid/appwidget/AppWidgetHostView;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method public bridge synthetic getHostView()Landroid/view/View;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method public getIconRadius()F
    .locals 1

    .line 312
    iget v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetCornerSize:F

    return v0
.end method

.method public bridge synthetic getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 2

    .line 296
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 297
    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v1, :cond_0

    .line 298
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object v0
.end method

.method public getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 0

    .line 405
    invoke-direct {p0, p1, p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getWidgetId()I
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method public isMiuiWidget()Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    return v0
.end method

.method public isUseTransitionAnimation()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onAttachedToWindow()V

    .line 83
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDetachedFromWindow()V

    .line 91
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a02dc

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a0144

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/TitleTextView;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onInvisible()V
    .locals 0

    .line 198
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 333
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->onAppDataCleared(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 361
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 362
    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshMessage;->getPushRefreshBean()Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshMessage;->getPushRefreshBean()Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;

    move-result-object p1

    .line 366
    iget v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 368
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 372
    iget-object v2, p1, Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;->widgetId:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;->widgetProviderName:Ljava/lang/String;

    .line 373
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object p1, p1, Lcom/miui/home/launcher/widget/pushrefresh/PushRefreshBean;->extra:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onPushRefreshed(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onProviderChanged()V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$HlJI5XUsFTj8w_iqzasjcWvFV0I;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$HlJI5XUsFTj8w_iqzasjcWvFV0I;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 502
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method

.method public onVisible()V
    .locals 3

    .line 188
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    .line 189
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/LauncherWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onWidgetUpdate(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 203
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez p1, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p1

    const-string v0, "Launcher:WidgetView"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWidgetUpdate id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    const/4 p1, 0x0

    .line 209
    iput p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method setWidget(Landroid/appwidget/AppWidgetHostView;)V
    .locals 3

    .line 97
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->addView(Landroid/view/View;)V

    .line 99
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_2

    .line 100
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 101
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetTransitionAnimation(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetCornerSize:F

    .line 108
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->bindWidgetUpdateListener(Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;)V

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setWidgetTouchDetector(Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    return-void
.end method

.method public touchIn(Landroid/graphics/Rect;)Z
    .locals 1

    .line 399
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .line 400
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method
