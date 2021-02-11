.class public Lcom/miui/home/launcher/allapps/LauncherModeController;
.super Ljava/lang/Object;
.source "LauncherModeController.java"


# static fields
.field public static final DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

.field public static final DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

.field public static final ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

.field private static sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/miui/home/launcher/allapps/DesktopLauncherMode;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/DesktopLauncherMode;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 21
    new-instance v0, Lcom/miui/home/launcher/allapps/DrawerLauncherMode;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/DrawerLauncherMode;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    .line 22
    new-instance v0, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/ElderlyManLauncherMode;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-void
.end method

.method public static enableAndResetCache()V
    .locals 1

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->loadCurrentLauncherMode(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-void
.end method

.method public static getAllModes()[Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 3

    const/4 v0, 0x3

    .line 34
    new-array v0, v0, [Lcom/miui/home/launcher/allapps/LauncherMode;

    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getCurrentLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;
    .locals 1

    .line 91
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getLauncherCellCountInstance()Lcom/miui/home/launcher/compat/LauncherCellCount;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 1

    .line 87
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object v0
.end method

.method public static isDesktopMode()Z
    .locals 1

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public static isDesktopMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z
    .locals 1

    .line 50
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDrawerMode()Z
    .locals 1

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public static isDrawerMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z
    .locals 1

    .line 46
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDrawerMode(Ljava/lang/String;)Z
    .locals 1

    .line 42
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isMode(Ljava/lang/String;Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p0

    return p0
.end method

.method public static isElderlyManMode()Z
    .locals 1

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result v0

    return v0
.end method

.method public static isElderlyManMode(Lcom/miui/home/launcher/allapps/LauncherMode;)Z
    .locals 1

    .line 54
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isElderlyManMode(Ljava/lang/String;)Z
    .locals 1

    .line 38
    sget-object v0, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isMode(Ljava/lang/String;Lcom/miui/home/launcher/allapps/LauncherMode;)Z

    move-result p0

    return p0
.end method

.method private static isMode(Ljava/lang/String;Lcom/miui/home/launcher/allapps/LauncherMode;)Z
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static loadCurrentLauncherMode(Landroid/content/Context;)Lcom/miui/home/launcher/allapps/LauncherMode;
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/miui/home/launcher/oldman/ElderlyManUtils;->isElderlyManEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 96
    sget-object p0, Lcom/miui/home/launcher/allapps/LauncherModeController;->ELDERLYMAN:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0

    .line 97
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->isDrawerModeEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 98
    sget-object p0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DRAWER:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0

    .line 100
    :cond_1
    sget-object p0, Lcom/miui/home/launcher/allapps/LauncherModeController;->DESKTOP:Lcom/miui/home/launcher/allapps/LauncherMode;

    return-object p0
.end method

.method private static onLauncherModeChanged()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->enableAndResetCache()V

    const-string v0, "LauncherModeController"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherMode changed, new mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onLauncherModeChanged()V

    .line 74
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;

    sget-object v2, Lcom/miui/home/launcher/allapps/LauncherModeController;->sCurrentMode:Lcom/miui/home/launcher/allapps/LauncherMode;

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/LauncherModeChangedMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setDrawerModeEnable(Landroid/content/Context;Z)V
    .locals 0

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p0

    if-eq p0, p1, :cond_0

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->setDrawerModeEnable(Z)V

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->onLauncherModeChanged()V

    :cond_0
    return-void
.end method

.method public static setElderlyManModeEnable(Z)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->onLauncherModeChanged()V

    :cond_0
    return-void
.end method
