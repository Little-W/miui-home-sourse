.class public Lcom/miui/maml/NotifierManager$DarkModeNotifier;
.super Lcom/miui/maml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkModeNotifier"
.end annotation


# static fields
.field public static final DARK_MODE:I = 0x1

.field public static final DARK_WALLPAPER_MODE:I = 0x2


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mDarkModeName:Ljava/lang/String;

.field private mDarkModeObserver:Landroid/database/ContentObserver;

.field private mDarkWallpaperModeName:Ljava/lang/String;

.field private mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

.field private mIsDarkMode:Z

.field private mIsDarkWallpaperMode:Z

.field private mIsUIModeNight:Z

.field private mMamlDarkMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 490
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 455
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$1;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    .line 463
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;

    invoke-direct {p1, p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    .line 471
    new-instance p1, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;

    invoke-direct {p1, p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier$3;-><init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 491
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SettingsSecure_UI_NIGHT_MODE()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 492
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/content/res/Configuration;)V
    .locals 0

    .line 442
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private checkIfNeedToNotify()V
    .locals 4

    .line 555
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsUIModeNight:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 558
    :goto_1
    iget-boolean v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkWallpaperMode:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 561
    :cond_2
    iget v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    if-eq v0, v1, :cond_3

    .line 562
    iput v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    .line 563
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    const-string v1, "NotifierManager"

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maml dark mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateDarkMode()V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkMode:Z

    return-void
.end method

.method private updateDarkWallpaperMode()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsDarkWallpaperMode:Z

    return-void
.end method

.method private updateUIModeNight(Landroid/content/res/Configuration;)V
    .locals 1

    .line 549
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mIsUIModeNight:Z

    return-void
.end method


# virtual methods
.method protected onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 2

    .line 535
    iget v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mMamlDarkMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lcom/miui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected onRegister()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 501
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    .line 502
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 501
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 505
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    .line 506
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    .line 505
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 508
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    :goto_0
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkMode()V

    .line 514
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateDarkWallpaperMode()V

    .line 515
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->updateUIModeNight(Landroid/content/res/Configuration;)V

    .line 516
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->checkIfNeedToNotify()V

    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 525
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 526
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mDarkWallpaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 527
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method
