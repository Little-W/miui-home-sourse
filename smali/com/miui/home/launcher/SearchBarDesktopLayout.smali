.class public Lcom/miui/home/launcher/SearchBarDesktopLayout;
.super Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;
.source "SearchBarDesktopLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;
    }
.end annotation


# static fields
.field private static final BLUR_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field private static final BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field private static final MAX_SLIDING_DISTANCE_ON_CLICK:F


# instance fields
.field private DURATION:I

.field private mBlurSearch:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field private mEndX:F

.field private mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

.field private mIsThemesShow:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

.field private mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

.field private mStartX:F

.field private mUpdateStyleObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurStyle;->THIN_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    invoke-direct {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>(Lcom/miui/blur/sdk/backdrop/BlurStyle;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 42
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    sget-object v2, Lcom/miui/blur/sdk/backdrop/BlurStyle;->THIN_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    invoke-direct {v0, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>(Lcom/miui/blur/sdk/backdrop/BlurStyle;)V

    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 47
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->MAX_SLIDING_DISTANCE_ON_CLICK:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mBlurSearch:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 48
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0049

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    const/4 p2, 0x0

    .line 61
    iput-boolean p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    .line 65
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    return p1
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/SearchBarDesktopLayout;Lcom/miui/blur/sdk/backdrop/BlurStyle;)Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mBlurSearch:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshBlurEnable(Z)V

    return-void
.end method

.method private getIntentFromBrowserUri(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x0

    .line 325
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string p1, "com.android.browser.application_id"

    const-string v1, "com.miui.home"

    .line 326
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 327
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Launcher.SearchBar"

    const-string v2, "parseIntentUri error"

    .line 329
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method private getIntentFromUri(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.SearchBar"

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentFromUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 309
    :try_start_0
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "search_bar_target"

    .line 311
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 p1, 0x10200000

    .line 313
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.SearchBar"

    const-string v2, "parseIntentUri error"

    .line 315
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method private jumpTargetBrowser(Landroid/net/Uri;)V
    .locals 3

    .line 115
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getIntentFromBrowserUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "Launcher.SearchBar"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: search url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 123
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private jumpTargetSearch(Ljava/lang/String;)V
    .locals 3

    .line 129
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getIntentFromUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "Launcher.SearchBar"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: search url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_search_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private refreshBlurEnable(Z)V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isBackdropBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 293
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setBlurEnabled(Z)V

    return-void
.end method

.method private declared-synchronized registerObserver()V
    .locals 4

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 210
    :try_start_1
    new-instance v0, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_screen_search_bar_show_initiate"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_screen_search_bar_engine_chain_resource"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/launcher/utils/MiuiSettingsUtils;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "Launcher.SearchBar"

    const-string v1, "register switch icon observer"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Launcher.SearchBar"

    const-string v2, "register switch icon observer exception"

    .line 216
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterObserver()V
    .locals 2

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    const-string v0, "Launcher.SearchBar"

    const-string v1, "unregister switch icon observer"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mBlurSearch:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :cond_0
    return-object v0
.end method

.method public getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mBlurSearch:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :cond_0
    return-object v0
.end method

.method public hideMenu()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->dismiss()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isThemesShow()I
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    return v0
.end method

.method public isXiaoaiShow()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->isXiaoaiShow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 144
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qsb://query?ref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "search_bar_target"

    .line 147
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10200000

    .line 149
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Launcher.SearchBar"

    const-string p2, "Global search activity not found"

    .line 152
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 197
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onAttachedToWindow()V

    .line 198
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->registerObserver()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData;->getClickTargetUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "mibrowser"

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData;->isSupportBrowser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->jumpTargetBrowser(Landroid/net/Uri;)V

    .line 106
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    const-string v1, "mibrowser"

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarClick(IILjava/lang/String;)V

    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData;->getExpId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->jumpTargetSearch(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    const-string v1, "qsb"

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarClick(IILjava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 203
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onDetachedFromWindow()V

    .line 204
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->unregisterObserver()V

    return-void
.end method

.method public onDismiss()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 71
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0214

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    const v0, 0x7f0a0217

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarExtraLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    const/4 v0, 0x1

    .line 74
    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x3e3851ec    # 0.18f

    invoke-interface {v0, v3, v2, v2, v2}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/-$$Lambda$SearchBarDesktopLayout$PbQ4pecBPpfNPSCyV64rVRXYw-A;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarDesktopLayout$PbQ4pecBPpfNPSCyV64rVRXYw-A;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v2, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;[Lmiuix/animation/base/AnimConfig;)V

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchBarExterior()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBarLongPress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->showMenu()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 341
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    .line 342
    iget v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    iget v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/miui/home/launcher/SearchBarDesktopLayout;->MAX_SLIDING_DISTANCE_ON_CLICK:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->cancelLongPress()V

    const/4 p1, 0x0

    return p1

    .line 338
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mStartX:F

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    .line 350
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->onWallpaperColorChanged()V

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->onWallpaperColorChanged()V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchBarExterior()V

    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshSearchBarExterior()V
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshStyle()V

    return-void
.end method

.method public refreshStyle()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->refreshStyle()V

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->refreshStyle()V

    .line 258
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMenu()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->isSeatsFull()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f828f5c    # 1.02f

    goto :goto_0

    :cond_0
    const v0, 0x3f866666    # 1.05f

    .line 172
    :goto_0
    invoke-static {p0, p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getSettingsWindow(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;)Lcom/miui/home/launcher/SearchBarSettingsWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    .line 173
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->show()V

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelTouchEvent(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSettingShow(II)V

    return-void
.end method
