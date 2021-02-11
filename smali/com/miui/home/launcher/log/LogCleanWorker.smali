.class public final Lcom/miui/home/launcher/log/LogCleanWorker;
.super Landroidx/work/Worker;
.source "LogCleanWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/log/LogCleanWorker$_lancet;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogCleanWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogCleanWorker.kt\ncom/miui/home/launcher/log/LogCleanWorker\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,50:1\n3597#2:51\n4050#2,2:52\n11454#2,2:56\n1648#3,2:54\n*E\n*S KotlinDebug\n*F\n+ 1 LogCleanWorker.kt\ncom/miui/home/launcher/log/LogCleanWorker\n*L\n42#1:51\n42#1,2:52\n46#1,2:56\n42#1,2:54\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const-string p1, "Launcher_LogCleanWorker"

    .line 14
    iput-object p1, p0, Lcom/miui/home/launcher/log/LogCleanWorker;->TAG:Ljava/lang/String;

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

.method private final clearExceedLog()V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/log/LogCleanWorker;->TAG:Ljava/lang/String;

    const-string v1, "clearExceedLog"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/log/LogCleanWorker$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->Companion:Lcom/miui/home/launcher/log/LogWorker$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/log/LogWorker$Companion;->getMIUI_284_LOG_DIR_PATH()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/log/LogCleanWorker;->clearLogDir(Ljava/io/File;)V

    .line 26
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->Companion:Lcom/miui/home/launcher/log/LogWorker$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/log/LogWorker$Companion;->getMIUI_APP_LOG_DIR_PATH()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/log/LogCleanWorker;->clearLogDir(Ljava/io/File;)V

    .line 27
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->Companion:Lcom/miui/home/launcher/log/LogWorker$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/log/LogWorker$Companion;->getCACHE_APP_LOG_BACKUP_DIR_PATH()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/log/LogCleanWorker;->clearLogDir(Ljava/io/File;)V

    .line 28
    sget-object v0, Lcom/miui/home/launcher/log/LogWorker;->Companion:Lcom/miui/home/launcher/log/LogWorker$Companion;

    invoke-virtual {v0}, Lcom/miui/home/launcher/log/LogWorker$Companion;->getCACHE_APP_LOG_DIR_PATH()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/log/LogCleanWorker;->clearLogDir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    iget-object v1, p0, Lcom/miui/home/launcher/log/LogCleanWorker;->TAG:Ljava/lang/String;

    const-string v2, "clearExceedLog"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/log/LogCleanWorker$_lancet;->com_miui_home_launcher_aop_LogHooker_adt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final clearLogDir(Ljava/io/File;)V
    .locals 10

    if-eqz p1, :cond_6

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 40
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 41
    sget-object v2, Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$logFiles$1;->INSTANCE:Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$logFiles$1;

    check-cast v2, Ljava/io/FileFilter;

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 52
    array-length v5, v2

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v2, v6

    .line 42
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-gez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 53
    :cond_3
    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 54
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 45
    :cond_4
    sget-object v0, Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$subDirs$1;->INSTANCE:Lcom/miui/home/launcher/log/LogCleanWorker$clearLogDir$subDirs$1;

    check-cast v0, Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 56
    array-length v0, p1

    :goto_3
    if-ge v3, v0, :cond_5

    aget-object v1, p1, v3

    .line 46
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/log/LogCleanWorker;->clearLogDir(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/log/LogCleanWorker;->clearExceedLog()V

    .line 18
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
