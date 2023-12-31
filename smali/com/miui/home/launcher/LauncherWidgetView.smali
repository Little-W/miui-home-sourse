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

.field private mBroadCastRetryCount:I

.field private mIsAppDataCleared:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mLastBroadcastRetryTime:J

.field private mLastBroadcastTime:J

.field private mLastUpdateTime:J

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

.field private mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 48
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 48
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 48
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method private getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;
    .locals 4

    .line 408
    invoke-virtual {p2, p4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 409
    aget v0, p4, p0

    const/4 v1, 0x1

    aget v2, p4, v1

    aget p0, p4, p0

    .line 411
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr p0, v3

    aget p4, p4, v1

    .line 412
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    .line 409
    invoke-virtual {p3, v0, v2, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 413
    instance-of p0, p2, Lcom/miui/miuiwidget/LargeScreenSupporter;

    if-eqz p0, :cond_1

    .line 414
    move-object p0, p2

    check-cast p0, Lcom/miui/miuiwidget/LargeScreenSupporter;

    .line 415
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-nez p2, :cond_1

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "Launcher:WidgetView"

    const-string p2, "find touch view"

    .line 416
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {p0}, Lcom/miui/miuiwidget/LargeScreenSupporter;->getLargeScreenOptions()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;
    .locals 5

    .line 382
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 384
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    .line 389
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 390
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 391
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;[I)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    .line 396
    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 397
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v3}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private onAppDataCleared(Ljava/lang/String;)V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppDataCleared "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isVisible = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher:WidgetView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 335
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    .line 336
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    if-eqz p1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate()V

    :cond_0
    return-void
.end method

.method private onMiuiWidgetUpdate()V
    .locals 13

    .line 211
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "Launcher:WidgetView"

    if-nez v0, :cond_1

    const-string p0, "onMiuiWidgetUpdate itemInfo from tag is null!"

    .line 216
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 219
    :cond_1
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    if-gtz v1, :cond_2

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMiuiWidgetUpdate appWidgetId is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_2
    iget-boolean v3, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-nez v3, :cond_3

    const-string p0, "onMiuiWidgetUpdate widget is not miuiWidget!"

    .line 225
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_3
    iget-boolean v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_9

    .line 230
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needRefreshWhenExposure()Z

    move-result v3

    if-nez v3, :cond_4

    const-string p0, "onMiuiWidgetUpdate widget dont need refresh!"

    .line 231
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getMIUIWidgetRefreshMinInterval()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_5

    const-string p0, "onMiuiWidgetUpdate widget refreshMinInterval less than zero!"

    .line 236
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 240
    iget-wide v10, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastTime:J

    sub-long v10, v8, v10

    cmp-long v3, v10, v6

    if-gtz v3, :cond_9

    const-string v3, "onMiuiWidgetUpdate widget update less than minInterval!"

    .line 241
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-wide v6, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    sub-long/2addr v8, v6

    const v3, 0xea60

    iget v10, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    add-int/lit8 v11, v10, 0x1

    mul-int/2addr v11, v3

    int-to-long v11, v11

    cmp-long v3, v8, v11

    if-gez v3, :cond_6

    const-string p0, "onMiuiWidgetUpdate widget update less than minRetryInterval!"

    .line 245
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_6
    iget-wide v8, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_7

    const-string p0, "onMiuiWidgetUpdate widget update after broadcast!"

    .line 248
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v3, 0x3

    if-lt v10, v3, :cond_8

    const-string p0, "onMiuiWidgetUpdate retryCount more than 3"

    .line 254
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string v3, "onMiuiWidgetUpdate no update received after 1 minutes of broadcast"

    .line 258
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    move v3, v5

    goto :goto_0

    :cond_9
    move v3, v4

    :goto_0
    :try_start_0
    new-array v5, v5, [I

    aput v1, v5, v4

    .line 266
    iget-object v6, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 267
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 266
    invoke-virtual {v0, v5, v6}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->obtainMIUIWidgetUpdateIntent([ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 269
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v3, :cond_a

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    goto :goto_1

    .line 273
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastTime:J

    .line 274
    iget-wide v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastTime:J

    iput-wide v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastBroadcastRetryTime:J

    .line 276
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMiuiWidgetUpdate broadcasst success, mIsAppDataCleared = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " appWidgetId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iput-boolean v4, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    .line 280
    iget-boolean v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEditMode:Z

    if-nez v1, :cond_b

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackRefreshMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "onMiuiWidgetUpdate"

    .line 285
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_2
    return-void
.end method

.method private onWidgetTouched(Landroid/view/MotionEvent;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V

    .line 453
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    invoke-interface {v0, p1, p0}, Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;->onWidgetTouched(Landroid/view/MotionEvent;Landroid/view/View;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLocationOnScreen:[I

    .line 478
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onWidgetTouched(Landroid/view/MotionEvent;)V

    .line 447
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 435
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureSoscController;->isForbidLaunchSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dispatchTouchEvent: isForbidLaunchSplit = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher:WidgetView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 440
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherWidgetView;->onWidgetTouched(Landroid/view/MotionEvent;)V

    .line 441
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public doSetFrame(IIII)Z
    .locals 0

    .line 135
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p0

    return p0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getBindAppPackage()Ljava/lang/String;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 175
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 176
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 177
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getBoundsOnScreen()Landroid/graphics/Rect;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 426
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getBoundsOnScreenInternal(Lcom/miui/home/launcher/HostViewContainer;)V

    .line 428
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBoundsOnScreen:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 470
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result p0

    return p0

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHostView()Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object p0
.end method

.method public bridge synthetic getHostView()Landroid/view/View;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object p0
.end method

.method public getIconRadius()F
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getCornerRadius()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object p0

    .line 291
    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 292
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return p0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 0

    .line 311
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object p0
.end method

.method public getTouchViewOptions(Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 0

    .line 378
    invoke-direct {p0, p1, p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTouchViewOptions(Landroid/graphics/Rect;Landroid/view/ViewGroup;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getWidgetId()I
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return p0
.end method

.method public isMiuiWidget()Z
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    return p0
.end method

.method public isUseTransitionAnimation()Z
    .locals 0

    .line 316
    iget-boolean p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return p0
.end method

.method public synthetic lambda$onProviderChanged$1$LauncherWidgetView(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 349
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    iget-boolean p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onProviderChanged$2$LauncherWidgetView(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    .line 347
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->initMiuiAttribute(Landroid/content/ComponentName;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMiuiAttribute isMIUIWidget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher:WidgetView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$PRSJCk9wvHaQkyZLZtXbywrVgBQ;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onVisible$0$LauncherWidgetView()V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onAttachedToWindow()V

    .line 82
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDetachedFromWindow()V

    .line 90
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a03e7

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a01b5

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/TitleTextView;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onInvisible()V
    .locals 0

    .line 196
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 327
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->onAppDataCleared(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProviderChanged()V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$HlJI5XUsFTj8w_iqzasjcWvFV0I;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$HlJI5XUsFTj8w_iqzasjcWvFV0I;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    invoke-static {v1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 462
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v0, p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 463
    check-cast p0, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method

.method public onVisible()V
    .locals 3

    .line 186
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    .line 187
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/LauncherWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onWidgetUpdate(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 201
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWidgetUpdate id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher:WidgetView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    const/4 p1, 0x0

    .line 207
    iput p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mBroadCastRetryCount:I

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method setWidget(Landroid/appwidget/AppWidgetHostView;)V
    .locals 3

    .line 96
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->addView(Landroid/view/View;)V

    .line 98
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_2

    .line 99
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 100
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
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

    .line 106
    :cond_1
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->bindWidgetUpdateListener(Lcom/miui/home/launcher/LauncherAppWidgetHostView$WidgetUpdateListener;)V

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setWidgetTouchDetector(Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetTouchDetector:Lcom/miui/home/launcher/widget/device/WidgetTouchDetector;

    return-void
.end method

.method public touchIn(Landroid/graphics/Rect;)Z
    .locals 6

    .line 360
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p0

    .line 361
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 367
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 368
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    .line 369
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/graphics/Rect;->right:I

    .line 370
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 371
    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v0, v2, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr p0, v0

    int-to-float p0, p0

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
