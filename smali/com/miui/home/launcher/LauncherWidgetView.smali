.class public Lcom/miui/home/launcher/LauncherWidgetView;
.super Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;
.source "LauncherWidgetView.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;
.implements Lcom/miui/home/launcher/HostViewContainer;
.implements Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;


# instance fields
.field private isUseOpenWindowTransitionAnim:Z

.field private mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field private mIsAppDataCleared:Z

.field private mIsEnableAutoLayoutAnimation:Z

.field private mLastUpdateTime:J

.field private mSkipNextAutoLayoutAnimation:Z

.field private mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

.field private mVisible:Z

.field private mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

.field private mWidgetCornerSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    .line 40
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return-void
.end method

.method public static synthetic lambda$onVisible$0(Lcom/miui/home/launcher/LauncherWidgetView;)V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate()V

    :cond_0
    return-void
.end method

.method private onAppDataCleared(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Launcher:WidgetView"

    .line 295
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

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    .line 297
    iget-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    if-eqz p1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->onMiuiWidgetUpdate()V

    :cond_0
    return-void
.end method

.method private onMiuiWidgetUpdate()V
    .locals 8

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Launcher:WidgetView"

    const-string v1, "onMiuiWidgetUpdate itemInfo from tag is null!"

    .line 195
    return-void

    .line 198
    :cond_1
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    if-gtz v1, :cond_2

    const-string v0, "Launcher:WidgetView"

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMiuiWidgetUpdate appWidgetId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-void

    .line 203
    :cond_2
    iget-boolean v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    if-nez v2, :cond_3

    const-string v0, "Launcher:WidgetView"

    const-string v1, "onMiuiWidgetUpdate widget is not miuiWidget!"

    .line 204
    return-void

    .line 207
    :cond_3
    iget-boolean v2, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    if-nez v2, :cond_6

    .line 208
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->needRefreshWhenExposure()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "Launcher:WidgetView"

    const-string v1, "onMiuiWidgetUpdate widget dont need refresh!"

    .line 209
    return-void

    .line 212
    :cond_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getMIUIWidgetRefreshMinInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_5

    const-string v0, "Launcher:WidgetView"

    const-string v1, "onMiuiWidgetUpdate widget refreshMinInterval less than zero!"

    .line 214
    return-void

    .line 217
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_6

    const-string v0, "Launcher:WidgetView"

    const-string v1, "onMiuiWidgetUpdate widget update less than minInterval!"

    .line 218
    return-void

    :cond_6
    const/4 v2, 0x1

    .line 223
    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 224
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 223
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->obtainMIUIWidgetUpdateIntent([ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mLastUpdateTime:J

    const-string v1, "Launcher:WidgetView"

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMiuiWidgetUpdate success, mIsAppDataCleared = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    iput-boolean v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsAppDataCleared:Z

    .line 230
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackRefreshMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher:WidgetView"

    const-string v2, "onMiuiWidgetUpdate"

    .line 233
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public doSetFrame(IIII)Z
    .locals 0

    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setFrame(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;IIII)Z

    move-result p1

    return p1
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBindAppPackage()Ljava/lang/String;
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    .line 163
    instance-of v2, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_0

    .line 164
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 165
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

    .line 166
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getContentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v1

    .line 251
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 253
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 254
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 255
    iget-object v3, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->fillRoundCornerColor(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostView()Landroid/appwidget/AppWidgetHostView;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method public bridge synthetic getHostView()Landroid/view/View;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getHostView()Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageView()Landroid/view/View;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method public getIconRadius()F
    .locals 1

    .line 267
    iget v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetCornerSize:F

    return v0
.end method

.method public bridge synthetic getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemInfoFromTag()Lcom/miui/home/launcher/LauncherAppWidgetInfo;
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 239
    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v1, :cond_0

    .line 240
    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkipNextAutoLayoutAnimation()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return v0
.end method

.method public getTargetRootView()Landroid/view/View;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Lcom/miui/home/launcher/TitleTextView;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-object v0
.end method

.method public isEnableAutoLayoutAnimation()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return v0
.end method

.method public isMiuiWidget()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->isMIUIWidget:Z

    return v0
.end method

.method public isUseTransitionAnimation()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onAttachedToWindow()V

    .line 64
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onDetachedFromWindow()V

    .line 72
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onFinishInflate()V

    const v0, 0x7f0a0258

    .line 57
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherWidgetContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    const v0, 0x7f0a0118

    .line 58
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mTitleTextView:Lcom/miui/home/launcher/TitleTextView;

    return-void
.end method

.method public onInvisible()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onInvisible()V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 288
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherWidgetView;->onAppDataCleared(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onVisible()V
    .locals 3

    .line 174
    invoke-super {p0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->onVisible()V

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mVisible:Z

    .line 176
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherWidgetView$juFZigDfeGcxx7W0h52tRukFf0E;-><init>(Lcom/miui/home/launcher/LauncherWidgetView;)V

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/LauncherWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected overrideSetFrame()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEnableAutoLayoutAnimation(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mIsEnableAutoLayoutAnimation:Z

    return-void
.end method

.method public setGhostView(Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;)V
    .locals 0

    return-void
.end method

.method public setSkipNextAutoLayoutAnimation(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mSkipNextAutoLayoutAnimation:Z

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->setTag(Ljava/lang/Object;)V

    .line 80
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setWidget(Landroid/appwidget/AppWidgetHostView;)V
    .locals 4

    .line 87
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetContainer:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->addView(Landroid/view/View;)V

    .line 89
    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1

    .line 90
    move-object v1, p1

    check-cast v1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    .line 91
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidget(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetTransitionAnimation(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->isUseOpenWindowTransitionAnim:Z

    :cond_1
    if-eqz v0, :cond_2

    .line 99
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherWidgetView;->mWidgetCornerSize:F

    :cond_2
    return-void
.end method
