.class public final Lcom/miui/performance/monitor/ClassMonitor;
.super Ljava/lang/Object;
.source "ClassMonitor.kt"

# interfaces
.implements Lcom/miui/performance/monitor/IMonitor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassMonitor.kt\ncom/miui/performance/monitor/ClassMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1819#2,2:153\n1819#2,2:155\n1819#2,2:157\n734#2:159\n825#2,2:160\n1022#2:162\n1819#2,2:163\n*E\n*S KotlinDebug\n*F\n+ 1 ClassMonitor.kt\ncom/miui/performance/monitor/ClassMonitor\n*L\n88#1,2:153\n97#1,2:155\n106#1,2:157\n147#1:159\n147#1,2:160\n147#1:162\n147#1,2:163\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/ClassMonitor;

.field private static final classCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final classes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static interval:J

.field private static final track:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/miui/performance/monitor/ClassMonitor;

    invoke-direct {v0}, Lcom/miui/performance/monitor/ClassMonitor;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/ClassMonitor;->INSTANCE:Lcom/miui/performance/monitor/ClassMonitor;

    .line 22
    sget-object v0, Lcom/miui/performance/monitor/ClassMonitor$track$1;->INSTANCE:Lcom/miui/performance/monitor/ClassMonitor$track$1;

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lcom/miui/performance/monitor/ClassMonitor;->track:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/miui/performance/monitor/ClassMonitor;->classes:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    const-wide/32 v0, 0x927c0

    .line 26
    sput-wide v0, Lcom/miui/performance/monitor/ClassMonitor;->interval:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getClassCountMap$p(Lcom/miui/performance/monitor/ClassMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 13
    sget-object p0, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getLogDir$p(Lcom/miui/performance/monitor/ClassMonitor;)Ljava/io/File;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->getLogDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$increasing(Lcom/miui/performance/monitor/ClassMonitor;Ljava/util/List;)Z
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/miui/performance/monitor/ClassMonitor;->increasing(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$increment(Lcom/miui/performance/monitor/ClassMonitor;Ljava/util/List;)J
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/miui/performance/monitor/ClassMonitor;->increment(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$track(Lcom/miui/performance/monitor/ClassMonitor;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->track()V

    return-void
.end method

.method private final getBgHandler()Landroid/os/Handler;
    .locals 1

    .line 19
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 18
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private final getLogDir()Ljava/io/File;
    .locals 1

    .line 20
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    invoke-virtual {v0}, Lcom/miui/performance/PerformanceTools;->getLogDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final increasing(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/miui/performance/monitor/ClassMonitor;->increment(Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final increment(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v2, p1

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private final readClasses()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/performance/reflect/DexPathList;->getDexPaths(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "dexPath"

    .line 107
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ".apk"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v3, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/io/Closeable;

    move-object v1, v5

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v2

    check-cast v6, Ljava/util/zip/ZipFile;

    .line 109
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 110
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 111
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    const-string v9, "zipEntry"

    .line 112
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "zipEntry.name"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, ".dex"

    invoke-static {v9, v10, v4, v3, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "temp"

    const-string v10, ".dex"

    .line 113
    invoke-static {v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 114
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v11, Ljava/io/OutputStream;

    invoke-direct {v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v10, Ljava/io/Closeable;

    move-object v11, v5

    check-cast v11, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v12, v10

    check-cast v12, Ljava/io/BufferedOutputStream;

    .line 115
    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    const-string v13, "zipFile.getInputStream(zipEntry)"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/io/OutputStream;

    invoke-static {v8, v12, v4, v3, v5}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 117
    sget-object v8, Lcom/miui/performance/monitor/ClassMonitor;->INSTANCE:Lcom/miui/performance/monitor/ClassMonitor;

    const-string v10, "file"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "file.absolutePath"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Lcom/miui/performance/monitor/ClassMonitor;->readDexClasses(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 114
    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 121
    :cond_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    const-string v2, ".dex"

    .line 122
    invoke-static {v1, v2, v4, v3, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    sget-object v2, Lcom/miui/performance/monitor/ClassMonitor;->INSTANCE:Lcom/miui/performance/monitor/ClassMonitor;

    invoke-direct {v2, v1}, Lcom/miui/performance/monitor/ClassMonitor;->readDexClasses(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_4
    sget-object v0, Lcom/miui/performance/monitor/ClassMonitor;->classes:Ljava/util/List;

    return-object v0
.end method

.method private final readDexClasses(Ljava/lang/String;)V
    .locals 6

    .line 130
    new-instance v0, Ldalvik/system/DexFile;

    invoke-direct {v0, p1}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 131
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "className"

    .line 133
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ".R"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v5, "R$"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Manifest"

    .line 135
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BuildConfig"

    .line 136
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5, v4, v3, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    sget-object v1, Lcom/miui/performance/monitor/ClassMonitor;->classes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final restart()V
    .locals 1

    .line 55
    sget-object v0, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 56
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->start()V

    return-void
.end method

.method private final start()V
    .locals 4

    .line 46
    sget-object v0, Lcom/miui/performance/monitor/ClassMonitor;->classes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->readClasses()Ljava/util/List;

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ClassMonitor;->track:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ClassMonitor;->track:Ljava/lang/Runnable;

    sget-wide v2, Lcom/miui/performance/monitor/ClassMonitor;->interval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private final stop()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ClassMonitor;->track:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    sget-object v0, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    sget-object v1, Lcom/miui/performance/monitor/ClassMonitor$stop$1;->INSTANCE:Lcom/miui/performance/monitor/ClassMonitor$stop$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/miui/performance/PerformanceTools;->doInBackground(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method private final track()V
    .locals 4

    .line 97
    sget-object v0, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "classCountMap.entries"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 155
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "it.key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 99
    invoke-static {v2}, Lcom/miui/performance/reflect/VMDebug;->countInstancesOfClass(Ljava/lang/String;)J

    move-result-wide v2

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/miui/performance/monitor/ClassMonitor;->track:Ljava/lang/Runnable;

    sget-wide v2, Lcom/miui/performance/monitor/ClassMonitor;->interval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final trackClassCount(Ljava/lang/String;)V
    .locals 7

    .line 88
    sget-object v0, Lcom/miui/performance/monitor/ClassMonitor;->classes:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    sget-object v2, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {v1}, Lcom/miui/performance/reflect/VMDebug;->countInstancesOfClass(Ljava/lang/String;)J

    move-result-wide v2

    .line 91
    sget-object v5, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    check-cast v5, Ljava/util/Map;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object p1, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<<ClassMonitor:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/performance/monitor/ClassMonitor;->classes:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ">>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "----------------"

    .line 146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    sget-object p1, Lcom/miui/performance/monitor/ClassMonitor;->classCountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string p3, "classCountMap.entries"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 159
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 160
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    sget-object v2, Lcom/miui/performance/monitor/ClassMonitor;->INSTANCE:Lcom/miui/performance/monitor/ClassMonitor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "it.value"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1}, Lcom/miui/performance/monitor/ClassMonitor;->increasing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_2
    check-cast p3, Ljava/util/List;

    .line 159
    check-cast p3, Ljava/lang/Iterable;

    .line 162
    new-instance p1, Lcom/miui/performance/monitor/ClassMonitor$dump$$inlined$sortedByDescending$1;

    invoke-direct {p1}, Lcom/miui/performance/monitor/ClassMonitor$dump$$inlined$sortedByDescending$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 163
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    const-string v1, "it.value"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p3

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 150
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 4

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5a5a978

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x4861547b

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "class.interval"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/miui/performance/monitor/ClassMonitor;->interval:J

    goto :goto_1

    :cond_1
    const-string v1, "class"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x360802

    if-eq v1, v2, :cond_4

    const v2, 0x68ac462

    if-eq v1, v2, :cond_3

    const v2, 0x416a9e0f

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "restart"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->restart()V

    goto :goto_1

    :cond_3
    const-string v1, "start"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->start()V

    goto :goto_1

    :cond_4
    const-string v1, "stop"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/performance/monitor/ClassMonitor;->stop()V

    goto :goto_1

    .line 36
    :cond_5
    :goto_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/performance/monitor/ClassMonitor;->trackClassCount(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
