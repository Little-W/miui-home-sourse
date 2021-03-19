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
        Lcom/miui/home/launcher/SearchBarDesktopLayout$SwitchIconObserver;
    }
.end annotation


# static fields
.field private static final BLUR_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field private static final BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field private static final MAX_SLIDING_DISTANCE_ON_CLICK:F


# instance fields
.field private DURATION:I

.field private mEndX:F

.field private mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

.field private mIsSupportSwitchIcon:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSearchIcon:Landroid/widget/ImageView;

.field private mSearchIconLayout:Landroid/widget/FrameLayout;

.field private mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

.field private mStartX:F

.field private mSwitchIconObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurStyle;->THIN_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    invoke-direct {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>(Lcom/miui/blur/sdk/backdrop/BlurStyle;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 38
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    sget-object v2, Lcom/miui/blur/sdk/backdrop/BlurStyle;->THIN_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    invoke-direct {v0, v2}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;-><init>(Lcom/miui/blur/sdk/backdrop/BlurStyle;)V

    invoke-virtual {v0, v1}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->setBlurRadius(I)Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle$Builder;->build()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 44
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->MAX_SLIDING_DISTANCE_ON_CLICK:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0036

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    .line 62
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsSupportSwitchIcon:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsSupportSwitchIcon:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getIntentFromUri()Landroid/content/Intent;
    .locals 5

    .line 262
    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mIsSupportSwitchIcon:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.SearchBar"

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentFromUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 270
    :try_start_0
    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v0, 0x10200000

    .line 271
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Launcher.SearchBar"

    const-string v3, "parseIntentUri error"

    .line 273
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method private refreshBlurEnable()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isBackdropBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setBlurEnabled(Z)V

    :cond_0
    return-void
.end method

.method private declared-synchronized registerObserver()V
    .locals 4

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSwitchIconObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 194
    :try_start_1
    new-instance v0, Lcom/miui/home/launcher/SearchBarDesktopLayout$SwitchIconObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout$SwitchIconObserver;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSwitchIconObserver:Landroid/database/ContentObserver;

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_home_screen_search_bar_icon_uri"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSwitchIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v0, "Launcher.SearchBar"

    const-string v1, "register switch icon observer"

    .line 197
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

    .line 199
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
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

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSwitchIconObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSwitchIconObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSwitchIconObserver:Landroid/database/ContentObserver;

    const-string v0, "Launcher.SearchBar"

    const-string v1, "unregister switch icon observer"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
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

    .line 300
    sget-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    return-object v0
.end method

.method public getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 1

    .line 305
    sget-object v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->BLUR_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    return-object v0
.end method

.method public hideMenu()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->dismiss()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 1

    .line 169
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

.method public isXiaoaiShow()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->isXiaoaiShow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchGlobalSearch(Ljava/lang/String;)V
    .locals 3

    .line 125
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
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

    const/high16 p1, 0x10200000

    .line 127
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Launcher.SearchBar"

    const-string v0, "Global search activity not found"

    .line 130
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 181
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onAttachedToWindow()V

    .line 182
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->registerObserver()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getIntentFromUri()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getGlobalSearchActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string v0, "Launcher.SearchBar"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: search url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "home_search_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->launchGlobalSearch(Ljava/lang/String;)V

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarClick(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 187
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onDetachedFromWindow()V

    .line 188
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->unregisterObserver()V

    return-void
.end method

.method public onDismiss()V
    .locals 4

    .line 162
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

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScrimView()Lcom/miui/home/launcher/view/ScrimView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScrimView()Lcom/miui/home/launcher/view/ScrimView;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/ScrimView;->setProgressAnim(FI)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 68
    invoke-super {p0}, Lcom/miui/blur/sdk/backdrop/BackdropBlurRelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0172

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0173

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0176

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarExtraLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    const/4 v0, 0x1

    .line 72
    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p0, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 73
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIcon:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Landroid/widget/FrameLayout;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchIcon()V

    .line 79
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshBlurEnable()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBarLongPress(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->showMenu()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    .line 287
    iget v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    iget v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/miui/home/launcher/SearchBarDesktopLayout;->MAX_SLIDING_DISTANCE_ON_CLICK:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->cancelLongPress()V

    const/4 p1, 0x0

    return p1

    .line 283
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mStartX:F

    iput v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mEndX:F

    .line 295
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
    .locals 2

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isSearchBarAreaLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f080083

    goto :goto_0

    :cond_0
    const v1, 0x7f080080

    .line 85
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setBackgroundResource(I)V

    .line 86
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSearchIconLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const v0, 0x7f08007f

    goto :goto_1

    :cond_1
    const v0, 0x7f08007e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchIcon()V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mExtraLayout:Lcom/miui/home/launcher/SearchBarExtraLayout;

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarExtraLayout;->onWallpaperColorChanged()V

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshBlurEnable()V

    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->launchGlobalSearch(Ljava/lang/String;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isHomeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;-><init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showMenu()V
    .locals 3

    .line 147
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

    .line 150
    :goto_0
    invoke-static {p0, p0}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->getSettingsWindow(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;)Lcom/miui/home/launcher/SearchBarSettingsWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    .line 151
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mSettingWindow:Lcom/miui/home/launcher/SearchBarSettingsWindow;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarSettingsWindow;->show()V

    .line 152
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

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScrimView()Lcom/miui/home/launcher/view/ScrimView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getScrimView()Lcom/miui/home/launcher/view/ScrimView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->DURATION:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/view/ScrimView;->setProgressAnim(FI)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->cancelTouchEvent(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarSettingShow(I)V

    return-void
.end method
