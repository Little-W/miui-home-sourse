.class public Lcom/miui/home/launcher/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private static sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private static sGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method private static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 40
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 28
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "com.mi.android.globalminusscreen"

    .line 29
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const-string v0, "cannon,cannong,lime,apollo"

    const-string v2, ","

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.miui.newhome"

    const/16 v2, 0x80

    .line 33
    invoke-static {p0, v0, v2}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_1
    const-string v0, "com.miui.personalassistant"

    .line 35
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    return-void
.end method

.method public static isAssistantInstalled()Z
    .locals 1

    .line 55
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFeedDecouple()Z
    .locals 2

    .line 48
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "supportSimpleDecouple"

    .line 50
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

.method public static isFeedInstalled()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

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

    .line 59
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
