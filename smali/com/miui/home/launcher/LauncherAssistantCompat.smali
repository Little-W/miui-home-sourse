.class public abstract Lcom/miui/home/launcher/LauncherAssistantCompat;
.super Ljava/lang/Object;
.source "LauncherAssistantCompat.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherCallbacks;


# instance fields
.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 48
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 2

    .line 18
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.mi.android.globalminusscreen"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isNewGlobalAssistantInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 30
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;

    const-string v1, "com.mi.globalminusscreen"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 33
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 36
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.mi.android.globalminusscreen"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 40
    :cond_5
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;

    const-string v1, "com.miui.personalassistant"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
.end method

.method public abstract destroyLauncherClient()V
.end method

.method public abstract updateLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
.end method
