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

    const v0, 0x7f0b0045

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

    .line 329
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string p1, "com.android.browser.application_id"

    const-string v1, "com.miui.home"

    .line 330
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 331
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Launcher.SearchBar"

    const-string v2, "parseIntentUri error"

    .line 333
    :goto_0
    return-object v0
.end method

.method private getIntentFromUri(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.SearchBar"

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentFromUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 313
    :try_start_0
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 314
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "search_bar_target"

    .line 315
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 p1, 0x10200000

    .line 317
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Launcher.SearchBar"

    const-string v2, "parseIntentUri error"

    .line 319
    :cond_2
    :goto_0
    return-object v1
.end method

.method private jumpTargetBrowser(Landroid/net/Uri;)V
    .locals 3

    .line 116
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getIntentFromBrowserUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "Launcher.SearchBar"

    .line 119
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

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 124
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private jumpTargetSearch(Ljava/lang/String;)V
    .locals 3

    .line 130
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getIntentFromUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "Launcher.SearchBar"

    .line 133
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

    goto :goto_0

    .line 135
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

.method private refreshBlurEnable(Z)V
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isBackdropBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setBlurEnabled(Z)V

    return-void
.end method

.method private declared-synchronized registerObserver()V
    .locals 4

    monitor-enter p0

    .line 215
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

    .line 217
    :try_start_1
    new-instance v0, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout$UpdateStyleObserver;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    .line 218
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_screen_search_bar_show_initiate"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_screen_search_bar_engine_chain_resource"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "Launcher.SearchBar"

    const-string v1, "register switch icon observer"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Launcher.SearchBar"

    const-string v2, "register switch icon observer exception"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .line 225
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

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mUpdateStyleObserver:Landroid/database/ContentObserver;

    const-string v0, "Launcher.SearchBar"

    const-string v1, "unregister switch icon observer"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .line 233
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

    .line 359
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mBlurSearch:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :cond_0
    return-object v0
.end method

.method public getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mBlurSearch:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    :cond_0
    return-object v0
.end method

.method public hideMenu()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->dismiss()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 1

    .line 192
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

    .line 98
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    return v0
.end method

.method public isXiaoaiShow()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->isXiaoaiShow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 145
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
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

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "search_bar_target"

    .line 148
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10200000

    .line 150
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
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

    .line 153
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 204
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onAttachedToWindow()V

    .line 205
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->registerObserver()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData;->getClickTargetUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "mibrowser"

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData;->isSupportBrowser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->jumpTargetBrowser(Landroid/net/Uri;)V

    .line 107
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    const-string v1, "mibrowser"

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarClick(IILjava/lang/String;)V

    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarStyleData;->getExpId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->jumpTargetSearch(Ljava/lang/String;)V

    .line 112
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

    .line 210
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onDetachedFromWindow()V

    .line 211
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->unregisterObserver()V

    return-void
.end method

.method public onDismiss()V
    .locals 4

    .line 185
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScrimView()Lcom/miui/home/launcher/view/ScrimView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScrimView()Lcom/miui/home/launcher/view/ScrimView;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/ScrimView;->setProgressAnim(FI)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01b1

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    const v0, 0x7f0a01b4

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

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 75
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchBarExterior()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBarLongPress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->showMenu()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    .line 346
    iget v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    iget v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/miui/home/launcher/SearchBarDesktopLayout;->MAX_SLIDING_DISTANCE_ON_CLICK:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->cancelLongPress()V

    const/4 p1, 0x0

    return p1

    .line 342
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mStartX:F

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    .line 354
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

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->onWallpaperColorChanged()V

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->onWallpaperColorChanged()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchBarExterior()V

    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->launchGlobalSearch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshSearchBarExterior()V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshStyle()V

    return-void
.end method

.method public refreshStyle()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Lcom/miui/home/launcher/SearchBarLeftIconLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarLeftIconLayout;->refreshStyle()V

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->refreshStyle()V

    .line 264
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMenu()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/HotSeats;->isSeatsFull()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f828f5c    # 1.02f

    goto :goto_0

    :cond_0
    const v0, 0x3f866666    # 1.05f

    .line 173
    :goto_0
    invoke-static {p0, p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getSettingsWindow(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;)Lcom/miui/home/launcher/SearchBarSettingsWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    .line 174
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->show()V

    .line 175
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

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScrimView()Lcom/miui/home/launcher/view/ScrimView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScrimView()Lcom/miui/home/launcher/view/ScrimView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/ScrimView;->setProgressAnim(FI)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelTouchEvent(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsThemesShow:Z

    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSettingShow(II)V

    return-void
.end method
