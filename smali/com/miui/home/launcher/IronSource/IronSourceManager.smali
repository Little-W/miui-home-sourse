.class public Lcom/miui/home/launcher/IronSource/IronSourceManager;
.super Ljava/lang/Object;
.source "IronSourceManager.java"


# static fields
.field private static sRecommendFolderAppPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/IronSource/IronSourceManager;->sRecommendFolderAppPackageNames:Ljava/util/Set;

    return-void
.end method

.method public static addPackageName(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/miui/home/launcher/IronSource/IronSourceManager;->sRecommendFolderAppPackageNames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->saveSetToPreference()V

    :cond_0
    return-void
.end method

.method public static isInstallToRecommendFolder(Ljava/lang/String;)Z
    .locals 2

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 41
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/IronSource/IronSourceManager;->sRecommendFolderAppPackageNames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.aura.oobe.xiaomi"

    .line 44
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public static loadIronSource()V
    .locals 3

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/IronSource/IronSourceManager;->sRecommendFolderAppPackageNames:Ljava/util/Set;

    const-string v2, "IronSource_packageName"

    .line 32
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/IronSource/IronSourceManager;->sRecommendFolderAppPackageNames:Ljava/util/Set;

    return-void
.end method

.method public static removePackageName(Ljava/lang/String;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/miui/home/launcher/IronSource/IronSourceManager;->sRecommendFolderAppPackageNames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lcom/miui/home/launcher/IronSource/IronSourceManager;->saveSetToPreference()V

    return-void
.end method

.method private static saveSetToPreference()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/IronSource/IronSourceManager;->sRecommendFolderAppPackageNames:Ljava/util/Set;

    const-string v2, "IronSource_packageName"

    .line 25
    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
