.class public Lcom/miui/home/launcher/touch/UiFactory;
.super Ljava/lang/Object;
.source "UiFactory.java"


# static fields
.field static sMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static createRecentsViewStateController(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
    .locals 1

    .line 42
    new-instance v0, Lcom/miui/home/recents/RecentsViewStateController;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/RecentsViewStateController;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-object v0
.end method

.method public static getRelectMethod()Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    const-string v0, "com.miui.newhome.util.WhiteListUtils"

    .line 59
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCanUseNewHome"

    const/4 v2, 0x0

    .line 60
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/touch/UiFactory;->sMethod:Ljava/lang/reflect/Method;

    .line 61
    sget-object v0, Lcom/miui/home/launcher/touch/UiFactory;->sMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    sget-object v0, Lcom/miui/home/launcher/touch/UiFactory;->sMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStateHandler(Lcom/miui/home/launcher/Launcher;)[Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
    .locals 6

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v5

    aput-object v5, v0, v3

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    invoke-static {p0}, Lcom/miui/home/launcher/touch/UiFactory;->createRecentsViewStateController(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    move-result-object p0

    aput-object p0, v0, v4

    return-object v0

    .line 36
    :cond_0
    new-array v0, v4, [Lcom/miui/home/launcher/LauncherStateManager$StateHandler;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v4

    aput-object v4, v0, v3

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static isShowNews()Z
    .locals 4

    .line 46
    sget-object v0, Lcom/miui/home/launcher/touch/UiFactory;->sMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/touch/UiFactory;->getRelectMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/touch/UiFactory;->sMethod:Ljava/lang/reflect/Method;

    :cond_0
    const/4 v0, 0x0

    .line 50
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/touch/UiFactory;->sMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/miui/home/launcher/touch/UiFactory;->sMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
