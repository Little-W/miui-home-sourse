.class public Lcom/miui/home/settings/LauncherGestureController;
.super Ljava/lang/Object;
.source "LauncherGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/LauncherGestureController$_lancet;
    }
.end annotation


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPullDownGesture:Ljava/lang/String;

.field private mSlideUpGesture:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/miui/home/settings/LauncherGestureController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 38
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/LauncherGestureController;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static formatKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "com.miui.home.preferences.%s"

    const/4 v1, 0x1

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSlideUpValue(Landroid/content/Context;)I
    .locals 2

    .line 144
    invoke-static {p0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4ab86e3c

    if-eq v0, v1, :cond_2

    const v1, 0x2174adb

    if-eq v0, v1, :cond_1

    const v1, 0xca9a274

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "no_action"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "content_center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "global_search"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const v0, 0x7f100142

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const p0, 0x7f100144

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const p0, 0x7f100143

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p0, p2

    :cond_0
    return-object p0

    :cond_1
    return-object p2
.end method

.method public static isHomeFeedRunInOS()Z
    .locals 2

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isFeedInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    const-string v1, "com.miui.newhome"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->isDecoupleModule(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/touch/UiFactory;->isShowNews()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportShowHomeFeed()Z
    .locals 1

    .line 162
    invoke-static {}, Lcom/miui/home/settings/LauncherGestureController;->isHomeFeedRunInOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/miui/home/settings/LauncherGestureController;->slideUpIsContentCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onPullDownAction$0(Lcom/miui/home/settings/LauncherGestureController;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/miui/home/settings/LauncherGestureController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelTouchEvent(Landroid/view/View;)V

    return-void
.end method

.method public static putSystemString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Lcom/miui/home/settings/LauncherGestureController;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private slideUpIsContentCenter()Z
    .locals 2

    const-string v0, "content_center"

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getPullDownGesture()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/home/settings/LauncherGestureController;->mPullDownGesture:Ljava/lang/String;

    return-object v0
.end method

.method public getSlideUpGesture()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/settings/LauncherGestureController;->mSlideUpGesture:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-static {p1}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/LauncherGestureController;->mPullDownGesture:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/LauncherGestureController;->mSlideUpGesture:Ljava/lang/String;

    return-void
.end method

.method public isPullDownSearch()Z
    .locals 2

    const-string v0, "global_search"

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownGesture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupportGestureOpenHomeFeed()Z
    .locals 2

    .line 168
    invoke-direct {p0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportShowHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    const-string v1, "com.miui.newhome"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->isDecoupleModule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportSlideOpenHomeFeed()Z
    .locals 2

    .line 173
    invoke-direct {p0}, Lcom/miui/home/settings/LauncherGestureController;->isSupportShowHomeFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    const-string v1, "com.miui.newhome"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->isModuleLoadSuccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPullDownAction()V
    .locals 5

    .line 113
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownGesture()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureController"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAction key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/settings/LauncherGestureController$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4ab86e3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0xca9a274

    if-eq v1, v2, :cond_1

    const v2, 0x6012c6bf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "notification_bar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "no_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "global_search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "GestureController"

    const-string v1, "KEY_NO_ACTION"

    .line 125
    invoke-static {v0, v1}, Lcom/miui/home/settings/LauncherGestureController$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/settings/LauncherGestureController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->expandStatusBar(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/settings/LauncherGestureController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/-$$Lambda$LauncherGestureController$bFz7Z96nni-LLx2x7-6Wcuerd94;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/-$$Lambda$LauncherGestureController$bFz7Z96nni-LLx2x7-6Wcuerd94;-><init>(Lcom/miui/home/settings/LauncherGestureController;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->post(Ljava/lang/Runnable;)Z

    .line 122
    invoke-static {v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    goto :goto_2

    .line 117
    :pswitch_2
    invoke-static {v4}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPullDownGestureChanged(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/miui/home/settings/LauncherGestureController;->getPullDownGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/LauncherGestureController;->mPullDownGesture:Ljava/lang/String;

    return-void
.end method

.method public onSlideUpGestureChanged(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/LauncherGestureController;->mSlideUpGesture:Ljava/lang/String;

    return-void
.end method

.method public slideUpIsSearch()Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/settings/LauncherGestureController;->getSlideUpGesture()Ljava/lang/String;

    move-result-object v0

    const-string v1, "global_search"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
