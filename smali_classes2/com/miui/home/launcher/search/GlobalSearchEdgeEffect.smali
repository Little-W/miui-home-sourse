.class public Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;
.super Lcom/miui/home/launcher/search/SearchEdgeEffect;
.source "GlobalSearchEdgeEffect.java"


# instance fields
.field private mGlobalBrowser:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/search/SearchEdgeEffect;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;II)V

    return-void
.end method

.method private findGlobalBrowser()Ljava/lang/String;
    .locals 4

    .line 116
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 119
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherModel;->getAllAppList()Lcom/miui/home/launcher/AllAppsList;

    move-result-object v0

    const-string v2, "com.mi.globalbrowser"

    .line 120
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/AllAppsList;->isInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "com.mi.globalbrowser"

    return-object v0

    :cond_1
    const-string v2, "com.android.browser"

    .line 123
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/AllAppsList;->isInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.browser"

    return-object v0

    :cond_2
    return-object v1
.end method

.method private launchGlobalBrowser()Z
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->mGlobalBrowser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->findGlobalBrowser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->mGlobalBrowser:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->mGlobalBrowser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.browser_search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->mGlobalBrowser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "launcher"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private launchMinusScreen()Z
    .locals 4

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mi.android.globalminusscreen.tab.news.NEWS_PAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.mi.android.globalminusscreen"

    .line 101
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "from"

    const-string v3, "launcher"

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/Application;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method canShowEffect()Z
    .locals 2

    .line 43
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->isShown()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)Z
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method getDrawableResource()I
    .locals 1

    const v0, 0x7f0802a4

    return v0
.end method

.method public bridge synthetic getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDarkModeChanged(Z)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onDarkModeChanged(Z)V

    return-void
.end method

.method public bridge synthetic onPull(FI)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onPull(FI)V

    return-void
.end method

.method public bridge synthetic onRelease(I)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->onRelease(I)V

    return-void
.end method

.method open()V
    .locals 5

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchBrowserEnable(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->getGlobalSwipeUpPackage(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->launchGlobalBrowser()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isNewGlobalAssistantInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->launchMinusScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->launchGlobalBrowser()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/search/GlobalSearchEdgeEffect;->getPosition()Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    move-result-object v1

    sget-object v3, Lcom/miui/home/launcher/search/SearchEdgeEffect;->TOP:Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;

    if-ne v1, v3, :cond_3

    const-string v1, "home_swipe_down"

    goto :goto_0

    :cond_3
    const-string v1, "home_swipe_up"

    .line 70
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "swipe_mode"

    .line 71
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 72
    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/miui/home/launcher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    const v1, 0x7f010034

    const v3, 0x7f010035

    .line 73
    invoke-virtual {v0, v1, v3}, Lcom/miui/home/launcher/Launcher;->overridePendingTransition(II)V

    .line 74
    invoke-static {v2}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackVerticalGesture(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic setCurveBottom(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setCurveBottom(F)V

    return-void
.end method

.method public bridge synthetic setCurveTop(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/search/SearchEdgeEffect;->setCurveTop(F)V

    return-void
.end method
