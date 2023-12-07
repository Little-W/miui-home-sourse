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

    .line 27
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;
    .locals 1

    .line 35
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

.method public static supportAutoInstall()Z
    .locals 4

    .line 39
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Lcom/miui/launcher/utils/LauncherUtils;->getUserSystemId()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MIUIAutoInstalls.Helper"

    if-eq v0, v1, :cond_0

    const-string v0, "only support main space"

    .line 40
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 43
    :cond_0
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_10:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->IS_MIUI_11:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    sget-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->isRecommendAppExist()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "recommend app exist"

    .line 48
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    const-string v0, "only support miui12"

    .line 44
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method addPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "packageSet/"

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 76
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

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

.method addPreinstallPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "preInstallPackageSet/"

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 103
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
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

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    move-result-object p0

    return-object p0
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

    move-result-object p0

    return-object p0
.end method

.method public getPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "packageSet/"

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/install/MIUIAutoInstallsHelper;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    .line 93
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
