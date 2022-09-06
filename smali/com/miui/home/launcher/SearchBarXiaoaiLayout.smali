.class public Lcom/miui/home/launcher/SearchBarXiaoaiLayout;
.super Landroid/widget/FrameLayout;
.source "SearchBarXiaoaiLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarXiaoaiLayout$XiaoaiObserver;
    }
.end annotation


# instance fields
.field private mIsThemesShow:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mXiaoai:Landroid/widget/ImageView;

.field private mXiaoaiObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mIsThemesShow:Z

    .line 49
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mIsThemesShow:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mIsThemesShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoai:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->refreshXiaoAi()V

    return-void
.end method

.method public static synthetic lambda$BW4GpVeQ9o36wpP2GvvZidLYqJw(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->registerObserver()V

    return-void
.end method

.method public static synthetic lambda$mjZygN2tX3RA_R64om5iwdlMrVc(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->unregisterObserver()V

    return-void
.end method

.method private launchXiaoAi()V
    .locals 4

    .line 69
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.voiceassist"

    const-string v3, "com.xiaomi.voiceassistant.VoiceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "voice_assist_start_from_key"

    const-string v2, "home_search"

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.Xiaoai"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start xiaoai error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onPackageChange(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.voiceassist"

    .line 190
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->refreshXiaoAi()V

    :cond_0
    return-void
.end method

.method private refreshXiaoAi()V
    .locals 1

    .line 159
    new-instance v0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;-><init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoaiObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$XiaoaiObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$XiaoaiObserver;-><init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;Landroid/os/Handler;Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoaiObserver:Landroid/database/ContentObserver;

    const-string v1, "key_home_screen_search_bar_show_xiaoai_icon"

    .line 132
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoaiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoaiObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoaiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoaiObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public isXiaoaiShow()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoai:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 113
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$SearchBarXiaoaiLayout$BW4GpVeQ9o36wpP2GvvZidLYqJw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarXiaoaiLayout$BW4GpVeQ9o36wpP2GvvZidLYqJw;-><init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 114
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->launchXiaoAi()V

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mIsThemesShow:Z

    invoke-static {p1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarXiaoAiClick(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 122
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$SearchBarXiaoaiLayout$mjZygN2tX3RA_R64om5iwdlMrVc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarXiaoaiLayout$mjZygN2tX3RA_R64om5iwdlMrVc;-><init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 123
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03f6

    .line 55
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoai:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->refreshXiaoAi()V

    const/4 v0, 0x1

    .line 58
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->mXiaoai:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageAddMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageAddMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->onPackageChange(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->onPackageChange(Ljava/lang/String;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isSearchBarAreaLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080195

    goto :goto_0

    :cond_0
    const v0, 0x7f080194

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public refreshStyle()V
    .locals 1

    .line 89
    new-instance v0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$1;-><init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
