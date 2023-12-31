.class public final Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;
.super Ljava/lang/Object;
.source "MsaUtils.java"


# static fields
.field private static final MSA_GLOBAL_PACKAGE_NAME:Ljava/lang/String; = "com.miui.msa.global"

.field private static final MSA_PACKAGE_NAME:Ljava/lang/String; = "com.miui.systemAdSolution"

.field private static final MSA_VERSION_NEW_PREINSTALL:I = 0x7876a304

.field private static final PACKAGE_DISABLE:I = -0x2

.field private static final PACKAGE_NOT_INSTALL:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMsaPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.msa.global"

    .line 41
    invoke-static {p0, v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "com.miui.systemAdSolution"

    return-object p0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 2

    const-string v0, "com.miui.systemAdSolution"

    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 33
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    const/4 p0, -0x2

    return p0

    .line 36
    :cond_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0
.end method

.method private static isInternationalBuild()Z
    .locals 2

    :try_start_0
    const-string v0, "miui.os.Build"

    .line 64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "IS_INTERNATIONAL_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNewPreinstallVersion(Landroid/content/Context;)Z
    .locals 3

    .line 22
    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    const v0, 0x7876a304    # 2.0009553E34f

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "versionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",isNew="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MsaUtils"

    invoke-static {v1, p0}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, p1, v0}, Lcom/miui/msa/internal/preinstall/v2/utils/MsaUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 50
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
