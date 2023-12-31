.class public Lmiuix/internal/log/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static LOG_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lmiuix/os/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/internal/log/util/Config;->LOG_NAME:Ljava/lang/String;

    return-void
.end method

.method private static getApplicationCacheLogDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/debug_log/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Config"

    const-string v0, "Fail to getCacheDir"

    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultCacheLogDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lmiuix/internal/log/util/Config;->getApplicationCacheLogDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
