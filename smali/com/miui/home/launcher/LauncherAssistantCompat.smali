.class public abstract Lcom/miui/home/launcher/LauncherAssistantCompat;
.super Ljava/lang/Object;
.source "LauncherAssistantCompat.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherCallbacks;


# static fields
.field public static CAN_SWITCH_MINUS_SCREEN:Z

.field public static CLIENT_ID_BASE:Ljava/lang/String;

.field public static ONLY_USE_GOOGLE_MINUS_SCREEN:Z


# instance fields
.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.com.miui.rsa"

    const-string v1, ""

    .line 14
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    .line 18
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 57
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 2

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.mi.android.globalminusscreen"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isNewGlobalAssistantInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;

    const-string v1, "com.mi.globalminusscreen"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 45
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.mi.android.globalminusscreen"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 49
    :cond_5
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;

    const-string v1, "com.miui.personalassistant"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0
.end method

.method public static resetRSAConstants()V
    .locals 2

    const-string v0, "ro.com.miui.rsa"

    const-string v1, ""

    .line 62
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    .line 64
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    return-void
.end method


# virtual methods
.method public abstract destroyLauncherClient()V
.end method

.method public abstract updateLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
.end method
