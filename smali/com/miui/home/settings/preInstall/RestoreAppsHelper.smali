.class public Lcom/miui/home/settings/preInstall/RestoreAppsHelper;
.super Ljava/lang/Object;
.source "RestoreAppsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/preInstall/RestoreAppsHelper$RestoreAppsHelperHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/settings/preInstall/RestoreAppsHelper$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/miui/home/settings/preInstall/RestoreAppsHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/settings/preInstall/RestoreAppsHelper;
    .locals 1

    .line 28
    invoke-static {}, Lcom/miui/home/settings/preInstall/RestoreAppsHelper$RestoreAppsHelperHolder;->access$100()Lcom/miui/home/settings/preInstall/RestoreAppsHelper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$putAppListToSettings$0(Lcom/miui/home/settings/preInstall/RestoreAppsHelper;Landroid/content/Context;)V
    .locals 4

    .line 38
    invoke-static {}, Lcom/miui/home/settings/preInstall/UninstallAppUtils;->getMiuiSystemDataPackageNameList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-static {v1}, Lcom/miui/launcher/utils/UninstallAppPreInstallUtils;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/home/settings/preInstall/RestoreAppsHelper;->isPathValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/settings/preInstall/RestoreAppsHelper;->putAppListByDefaultPath(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public isPathValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public putAppListByDefaultPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 58
    invoke-static {p2}, Lcom/miui/home/settings/preInstall/UninstallAppUtils;->useDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p1, p2, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putStringToSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public putAppListToSettings(Landroid/content/Context;)V
    .locals 1

    .line 36
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/miui/home/settings/preInstall/-$$Lambda$RestoreAppsHelper$fdzJDjbxfwIZwQkgUYNv1N7-zn0;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/settings/preInstall/-$$Lambda$RestoreAppsHelper$fdzJDjbxfwIZwQkgUYNv1N7-zn0;-><init>(Lcom/miui/home/settings/preInstall/RestoreAppsHelper;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
