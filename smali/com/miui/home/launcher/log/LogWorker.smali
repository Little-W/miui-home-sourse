.class public final Lcom/miui/home/launcher/log/LogWorker;
.super Landroidx/work/Worker;
.source "LogWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/log/LogWorker$Companion;,
        Lcom/miui/home/launcher/log/LogWorker$_lancet;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogWorker.kt\ncom/miui/home/launcher/log/LogWorker\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,74:1\n11454#2,2:75\n11454#2,2:77\n*E\n*S KotlinDebug\n*F\n+ 1 LogWorker.kt\ncom/miui/home/launcher/log/LogWorker\n*L\n41#1,2:75\n48#1,2:77\n*E\n"
.end annotation


# static fields
.field private static final CACHE_APP_LOG_BACKUP_DIR_PATH:Ljava/io/File;

.field private static final CACHE_APP_LOG_DIR_PATH:Ljava/io/File;

.field public static final Companion:Lcom/miui/home/launcher/log/LogWorker$Companion;

.field private static final MIUI_284_LOG_DIR_PATH:Ljava/io/File;

.field private static final MIUI_APP_LOG_DIR_PATH:Ljava/io/File;

.field private static final PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/home/launcher/log/LogWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/log/LogWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/log/LogWorker;->Companion:Lcom/miui/home/launcher/log/LogWorker$Companion;

    .line 64
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const-string v1, "Application.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/log/LogWorker;->PACKAGE_NAME:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "Application.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getDataDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/cache/debug_log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/log/LogWorker;->CACHE_APP_LOG_DIR_PATH:Ljava/io/File;

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "Application.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getDataDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/cache/backup_log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/log/LogWorker;->CACHE_APP_LOG_BACKUP_DIR_PATH:Ljava/io/File;

    .line 71
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/MIUI/debug_log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/home/launcher/log/LogWorker;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/dump/log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/log/LogWorker;->MIUI_APP_LOG_DIR_PATH:Ljava/io/File;

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/MIUI/debug_log/common/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/home/launcher/log/LogWorker;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/log/LogWorker;->MIUI_284_LOG_DIR_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const-string p1, "Launcher_LogWorker"

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/log/LogWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCACHE_APP_LOG_BACKUP_DIR_PATH$cp()Ljava/io/File;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->CACHE_APP_LOG_BACKUP_DIR_PATH:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic access$getCACHE_APP_LOG_DIR_PATH$cp()Ljava/io/File;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->CACHE_APP_LOG_DIR_PATH:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic access$getMIUI_284_LOG_DIR_PATH$cp()Ljava/io/File;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->MIUI_284_LOG_DIR_PATH:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic access$getMIUI_APP_LOG_DIR_PATH$cp()Ljava/io/File;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->MIUI_APP_LOG_DIR_PATH:Ljava/io/File;

    return-object v0
.end method

.method private final backupFiles()V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/log/LogWorker;->TAG:Ljava/lang/String;

    const-string v1, "backupFiles"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/log/LogWorker$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->CACHE_APP_LOG_DIR_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "it"

    .line 49
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/miui/home/launcher/log/LogWorker;->CACHE_APP_LOG_BACKUP_DIR_PATH:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/miui/home/launcher/log/FileExtKt;->copyToDir(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final copyToBugreportDir(Ljava/io/File;)V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/log/LogWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyToBugreportDir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/log/LogWorker$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->CACHE_APP_LOG_DIR_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, "it"

    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1}, Lcom/miui/home/launcher/log/FileExtKt;->copyToDir(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/log/LogWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "data_key_log_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/log/LogWorker;->handle284Log()V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/log/LogWorker;->handleAppLog()V

    .line 60
    :goto_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handle284Log()V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/miui/home/launcher/log/LogWorker;->TAG:Ljava/lang/String;

    const-string v1, "handle284Log"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/log/LogWorker$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/log/LogWorker;->backupFiles()V

    .line 23
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->MIUI_284_LOG_DIR_PATH:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/log/LogWorker;->copyToBugreportDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    iget-object v1, p0, Lcom/miui/home/launcher/log/LogWorker;->TAG:Ljava/lang/String;

    const-string v2, "handle284Log"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/log/LogWorker$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final handleAppLog()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/log/LogWorker;->TAG:Ljava/lang/String;

    const-string v1, "handleAppLog"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/log/LogWorker$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_0
    invoke-direct {p0}, Lcom/miui/home/launcher/log/LogWorker;->backupFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lcom/miui/home/launcher/log/LogWorker;->TAG:Ljava/lang/String;

    const-string v2, "handleAppLog"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/log/LogWorker$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
