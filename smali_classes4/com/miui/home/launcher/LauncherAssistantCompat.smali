.class public abstract Lcom/miui/home/launcher/LauncherAssistantCompat;
.super Ljava/lang/Object;
.source "LauncherAssistantCompat.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherCallbacks;


# static fields
.field public static CAN_SWITCH_MINUS_SCREEN:Z

.field public static CLIENT_ID_BASE:Ljava/lang/String;

.field public static CLIENT_ID_BASE_4_0:Ljava/lang/String;

.field public static ONLY_USE_GOOGLE_MINUS_SCREEN:Z


# instance fields
.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ""

    const-string v1, "ro.com.miui.rsa"

    .line 19
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    const-string v1, "ro.com.miui.rsa.search"

    .line 21
    invoke-static {v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE_4_0:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;

    sget-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE_4_0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v3, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12UOTA:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    .line 27
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID_4_0:Ljava/util/HashSet;

    sget-object v3, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE_4_0:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->isL12AOrL12UOTA:Z

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v3, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v3, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    sput-boolean v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 65
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherAssistantCompat;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 4

    .line 37
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "LauncherAssistantCompat"

    if-eqz v0, :cond_3

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isNewGlobalAssistantInstalled()Z

    move-result v0

    const-string v2, "com.google.android.googlequicksearchbox"

    const-string v3, "isUseGoogleMinusScreen"

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "isUseNewMIUIMinusScreen"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;

    const-string v1, "com.mi.globalminusscreen"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    .line 47
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    invoke-direct {v0, p0, v2}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v0, "isUseMIUIMinusScreen"

    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;

    const-string v1, "com.mi.android.globalminusscreen"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string v0, "PACKAGE_PERSONAL_ASSISTANT"

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;

    const-string v1, "com.miui.personalassistant"

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-object v0
.end method

.method public static resetRSAConstants()V
    .locals 3

    const-string v0, "LauncherAssistantCompat"

    const-string v1, "resetRSAConstants"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ro.com.miui.rsa"

    const-string v2, ""

    .line 71
    invoke-static {v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLIENT_ID_BASE-RSA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->SELECT_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v2, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAN_SWITCH_MINUS_SCREEN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/home/launcher/LauncherAssistantCompat;->CAN_SWITCH_MINUS_SCREEN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_REGIONS:Ljava/util/HashSet;

    sget-object v2, Lcom/miui/home/launcher/DeviceConfig;->CURRENT_REGION:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/DeviceConfig;->USE_GOOGLE_MINUS_SCREEN_CLIENT_ID:Ljava/util/HashSet;

    sget-object v2, Lcom/miui/home/launcher/LauncherAssistantCompat;->CLIENT_ID_BASE:Ljava/lang/String;

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ONLY_USE_GOOGLE_MINUS_SCREEN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/home/launcher/LauncherAssistantCompat;->ONLY_USE_GOOGLE_MINUS_SCREEN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public abstract destroyLauncherClient()V
.end method

.method public abstract updateLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
.end method
