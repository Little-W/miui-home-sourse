.class public Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "MIUIAutoInstallsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "miui_auto_install"

    .line 23
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;
    .locals 1

    .line 31
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper$Holder;->access$100()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;

    move-result-object v0

    return-object v0
.end method

.method private static isRecommendAppExist()Z
    .locals 2

    .line 56
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/app/recommended"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method static supportAutoInstall()Z
    .locals 3

    .line 35
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MIUIAutoInstalls.Helper"

    const-string v2, "international build not support"

    .line 36
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 39
    :cond_0
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v2

    if-eq v0, v2, :cond_1

    const-string v0, "MIUIAutoInstalls.Helper"

    const-string v2, "only support main space"

    .line 40
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 43
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_10:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/miui/home/launcher/DeviceConfig;->IS_MIUI_11:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->isRecommendAppExist()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MIUIAutoInstalls.Helper"

    const-string v2, "recommend app exist"

    .line 48
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    const-string v0, "MIUIAutoInstalls.Helper"

    const-string v2, "only support miui12"

    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "packageSet/"

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "packageSet/"

    .line 77
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/title"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public canAutoInstall(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "packageSet/"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPackageIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/icon"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPackageTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/title"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
