.class public Lcom/miui/home/launcher/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static final PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

.field private static final WORLD_CIRCULATE_URI:Landroid/net/Uri;

.field private static sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private static sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private static sIsProtectedDataAppAvailable:Z

.field public static sIsSupportPushAppEnterWorldCirculate:Z

.field private static sNewGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.milink.service"

    const-string v2, "com.miui.circulate.world.AppCirculateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

    const-string v0, "content://com.milink.service.circulate"

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->WORLD_CIRCULATE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 37
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsProtectedDataAppAvailable:Z

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsSupportPushAppEnterWorldCirculate:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->canTaskPushEnterWorldCirculate()Z

    move-result v0

    return v0
.end method

.method private static canTaskPushEnterWorldCirculate()Z
    .locals 5

    .line 125
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/ApplicationConfig;->WORLD_CIRCULATE_URI:Landroid/net/Uri;

    const-string v2, "check_permission"

    const-string v3, "recentlist_app"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ApplicationConfig_"

    const-string v2, "canTaskPushEnterWorldCirculate"

    .line 128
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationConfig;->getWorldCirculateMeta(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appcirculate_support_recentlist"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkAndUpdateWorldCirculateView(Ljava/lang/String;)V
    .locals 2

    .line 138
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p0, "ApplicationConfig_checkAndUpdateWorldCirculateView"

    const-string v0, "no in main space"

    .line 139
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_13:Z

    if-eqz v0, :cond_1

    const-string v0, "com.milink.service"

    .line 143
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 144
    new-instance p0, Lcom/miui/home/launcher/ApplicationConfig$1;

    invoke-direct {p0}, Lcom/miui/home/launcher/ApplicationConfig$1;-><init>()V

    invoke-static {p0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 58
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getWorldCirculateMeta(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 5

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v2, 0xc0080

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ApplicationConfig_getWorldCirculateMeta"

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ComponentName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_0

    .line 117
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 41
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.mi.globalminusscreen"

    const/4 v1, 0x0

    .line 42
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sNewGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const-string v0, "com.miui.newhome"

    const/16 v1, 0x80

    .line 44
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v0, "com.miui.personalassistant"

    .line 45
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    :goto_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_1

    .line 48
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5:Z

    xor-int/lit8 p0, p0, 0x1

    sput-boolean p0, Lcom/miui/home/launcher/ApplicationConfig;->sIsProtectedDataAppAvailable:Z

    :cond_1
    const-string p0, "com.milink.service"

    .line 50
    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationConfig;->checkAndUpdateWorldCirculateView(Ljava/lang/String;)V

    return-void
.end method

.method public static initFeed(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.miui.newhome"

    const/16 v1, 0x80

    .line 54
    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/ApplicationConfig;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    sput-object p0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public static isAssistantInstalled()Z
    .locals 1

    .line 83
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

    .line 87
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "supportOverlay"

    .line 89
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

    .line 62
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

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->getInstance()Lcom/miui/home/launcher/module/ModuleManagerCompat;

    move-result-object v0

    const-string v1, "com.miui.newhome"

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->isModuleLoadSuccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFeedSupport()Z
    .locals 1

    .line 66
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

    .line 70
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "supportSimpleDecouple"

    .line 72
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

    .line 77
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sFeedApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "supportOverlay"

    .line 79
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

.method public static isNewGlobalAssistantInstalled()Z
    .locals 1

    .line 96
    sget-object v0, Lcom/miui/home/launcher/ApplicationConfig;->sNewGlobalAssistantApplicationInfo:Landroid/content/pm/ApplicationInfo;

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

    .line 104
    sget-boolean v0, Lcom/miui/home/launcher/ApplicationConfig;->sIsProtectedDataAppAvailable:Z

    return v0
.end method
