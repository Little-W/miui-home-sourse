.class public Lcom/miui/home/launcher/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo; = null

.field private static sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo; = null

.field private static sGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo; = null

.field private static sIsProtectedDataAppAvailable:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 44
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 28
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.mi.android.globalminusscreen"

    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const-string v0, "com.miui.newhome"

    const/16 v1, 0x80

    .line 31
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v0, "com.miui.personalassistant"

    .line 32
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 33
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_1

    .line 34
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5:Z

    xor-int/lit8 p0, p0, 0x1

    sput-boolean p0, Lcom/miui/home/launcher/ApplicationConfig;->sIsProtectedDataAppAvailable:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static initFeed(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.miui.newhome"

    const/16 v1, 0x80

    .line 40
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public static isAssistantInstalled()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAssistantSupportOverlay()Z
    .locals 2

    .line 73
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "supportOverlay"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedInstalled()Z
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedModuleLoaded()Z
    .locals 2

    .line 83
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    const-string v1, "com.miui.newhome"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->isModuleLoadSuccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFeedSupport()Z
    .locals 1

    .line 52
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedSupportDecouple()Z
    .locals 2

    .line 56
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "supportSimpleDecouple"

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lmiui/os/Build;->TOTAL_RAM:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedSupportOverlay()Z
    .locals 2

    .line 63
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "supportOverlay"

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGlobalAssistantInstalled()Z
    .locals 1

    .line 79
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProtectedDataAppAvailable()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsProtectedDataAppAvailable:Z

    return v0
.end method
