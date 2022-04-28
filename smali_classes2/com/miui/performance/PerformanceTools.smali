.class public final Lcom/miui/performance/PerformanceTools;
.super Ljava/lang/Object;
.source "PerformanceTools.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPerformanceTools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PerformanceTools.kt\ncom/miui/performance/PerformanceTools\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,151:1\n1245#2,2:152\n13506#2,2:154\n1245#2,2:156\n13506#2,2:158\n*E\n*S KotlinDebug\n*F\n+ 1 PerformanceTools.kt\ncom/miui/performance/PerformanceTools\n*L\n99#1,2:152\n101#1,2:154\n109#1,2:156\n118#1,2:158\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/PerformanceTools;

.field private static bgThread:Landroid/os/HandlerThread;

.field private static bitmapDir:Ljava/io/File;

.field private static context:Landroid/content/Context;

.field private static logDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/miui/performance/PerformanceTools;

    invoke-direct {v0}, Lcom/miui/performance/PerformanceTools;-><init>()V

    sput-object v0, Lcom/miui/performance/PerformanceTools;->INSTANCE:Lcom/miui/performance/PerformanceTools;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ensureInitialized()V
    .locals 2

    .line 147
    sget-object v0, Lcom/miui/performance/PerformanceTools;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PerformanceTools has not been initialized\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final getMonitors()[Lcom/miui/performance/monitor/IMonitor;
    .locals 3

    const/16 v0, 0x8

    .line 39
    new-array v0, v0, [Lcom/miui/performance/monitor/IMonitor;

    .line 40
    sget-object v1, Lcom/miui/performance/monitor/BinderMonitor;->INSTANCE:Lcom/miui/performance/monitor/BinderMonitor;

    check-cast v1, Lcom/miui/performance/monitor/IMonitor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    sget-object v1, Lcom/miui/performance/monitor/BitmapMonitor;->INSTANCE:Lcom/miui/performance/monitor/BitmapMonitor;

    check-cast v1, Lcom/miui/performance/monitor/IMonitor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    sget-object v1, Lcom/miui/performance/monitor/ClassMonitor;->INSTANCE:Lcom/miui/performance/monitor/ClassMonitor;

    check-cast v1, Lcom/miui/performance/monitor/IMonitor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    sget-object v1, Lcom/miui/performance/monitor/EvilMethodMonitor;->INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor;

    check-cast v1, Lcom/miui/performance/monitor/IMonitor;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 44
    sget-object v1, Lcom/miui/performance/monitor/FrameMonitor;->INSTANCE:Lcom/miui/performance/monitor/FrameMonitor;

    check-cast v1, Lcom/miui/performance/monitor/IMonitor;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 45
    sget-object v1, Lcom/miui/performance/monitor/MemoryMonitor;->INSTANCE:Lcom/miui/performance/monitor/MemoryMonitor;

    check-cast v1, Lcom/miui/performance/monitor/IMonitor;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 46
    sget-object v1, Lcom/miui/performance/monitor/MessageMonitor;->INSTANCE:Lcom/miui/performance/monitor/MessageMonitor;

    check-cast v1, Lcom/miui/performance/monitor/IMonitor;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 47
    sget-object v1, Lcom/miui/performance/monitor/ViewLeakMonitor;->INSTANCE:Lcom/miui/performance/monitor/ViewLeakMonitor;

    check-cast v1, Lcom/miui/performance/monitor/IMonitor;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final doInBackground(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/miui/performance/PerformanceTools;->ensureInitialized()V

    .line 123
    sget-object v0, Lcom/miui/performance/PerformanceTools;->bgThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const-string v1, "bgThread"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/performance/PerformanceTools$sam$java_lang_Runnable$0;

    invoke-direct {v1, p1}, Lcom/miui/performance/PerformanceTools$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final execCommand(Ljava/lang/String;)V
    .locals 8

    const-string v0, "cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PerformanceTools"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->parseArgs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "dump"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 97
    new-instance p1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/performance/PerformanceTools;->getLogDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "dump.txt"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "UTF-8"

    invoke-direct {p1, v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/miui/performance/PerformanceTools;->getMonitors()[Lcom/miui/performance/monitor/IMonitor;

    move-result-object v2

    .line 152
    array-length v5, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v2, v1

    .line 99
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/miui/performance/util/ExtensionsKt;->match(Lcom/miui/performance/monitor/IMonitor;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6, v3, p1, v3}, Lcom/miui/performance/monitor/IMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_4

    .line 101
    :cond_3
    invoke-direct {p0}, Lcom/miui/performance/PerformanceTools;->getMonitors()[Lcom/miui/performance/monitor/IMonitor;

    move-result-object v0

    .line 154
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 101
    invoke-interface {v4, v3, p1, v3}, Lcom/miui/performance/monitor/IMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 103
    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 104
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    goto :goto_7

    .line 105
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "clear"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 106
    sget-object p1, Lcom/miui/performance/PerformanceTools;->logDir:Ljava/io/File;

    if-nez p1, :cond_6

    const-string v0, "logDir"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->ensureDirExists(Ljava/io/File;)V

    .line 107
    sget-object p1, Lcom/miui/performance/PerformanceTools;->bitmapDir:Ljava/io/File;

    if-nez p1, :cond_7

    const-string v0, "bitmapDir"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->ensureDirExists(Ljava/io/File;)V

    goto :goto_7

    .line 109
    :cond_8
    invoke-direct {p0}, Lcom/miui/performance/PerformanceTools;->getMonitors()[Lcom/miui/performance/monitor/IMonitor;

    move-result-object v0

    .line 156
    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_a

    aget-object v4, v0, v1

    .line 109
    invoke-static {v4, p1}, Lcom/miui/performance/util/ExtensionsKt;->match(Lcom/miui/performance/monitor/IMonitor;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v3, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v3, :cond_b

    invoke-interface {v3, p1}, Lcom/miui/performance/monitor/IMonitor;->onCommand(Ljava/lang/String;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public final getBgHandler()Landroid/os/Handler;
    .locals 2

    .line 132
    invoke-direct {p0}, Lcom/miui/performance/PerformanceTools;->ensureInitialized()V

    .line 133
    sget-object v0, Lcom/miui/performance/PerformanceTools;->bgThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const-string v1, "bgThread"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "bgThread.threadHandler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBitmapDir()Ljava/io/File;
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/miui/performance/PerformanceTools;->ensureInitialized()V

    .line 143
    sget-object v0, Lcom/miui/performance/PerformanceTools;->bitmapDir:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v1, "bitmapDir"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 2

    .line 127
    invoke-direct {p0}, Lcom/miui/performance/PerformanceTools;->ensureInitialized()V

    .line 128
    sget-object v0, Lcom/miui/performance/PerformanceTools;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLogDir()Ljava/io/File;
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/miui/performance/PerformanceTools;->ensureInitialized()V

    .line 138
    sget-object v0, Lcom/miui/performance/PerformanceTools;->logDir:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v1, "logDir"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final init(Landroid/app/Application;)V
    .locals 6

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/miui/performance/PerformanceTools;->context:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 57
    check-cast p1, Landroid/content/Context;

    sput-object p1, Lcom/miui/performance/PerformanceTools;->context:Landroid/content/Context;

    .line 61
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "bg.performance"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object p1, Lcom/miui/performance/PerformanceTools;->bgThread:Landroid/os/HandlerThread;

    .line 62
    sget-object p1, Lcom/miui/performance/PerformanceTools;->bgThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_1

    const-string v0, "bgThread"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 65
    sget-object p1, Lcom/miui/performance/PerformanceTools;->context:Landroid/content/Context;

    if-nez p1, :cond_2

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const-string v0, "perf"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string v0, "context.getDir(LOG_DIR, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/miui/performance/PerformanceTools;->logDir:Ljava/io/File;

    .line 66
    sget-object p1, Lcom/miui/performance/PerformanceTools;->logDir:Ljava/io/File;

    if-nez p1, :cond_3

    const-string v0, "logDir"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->ensureDirExists(Ljava/io/File;)V

    .line 69
    new-instance p1, Ljava/io/File;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "bitmap"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object p1, Lcom/miui/performance/PerformanceTools;->bitmapDir:Ljava/io/File;

    .line 70
    sget-object p1, Lcom/miui/performance/PerformanceTools;->bitmapDir:Ljava/io/File;

    if-nez p1, :cond_4

    const-string v0, "bitmapDir"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-static {p1}, Lcom/miui/performance/util/ExtensionsKt;->ensureDirExists(Ljava/io/File;)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/performance/PerformanceTools;->context:Landroid/content/Context;

    if-nez v0, :cond_5

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".perf"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object v0, Lcom/miui/performance/PerformanceTools;->context:Landroid/content/Context;

    if-nez v0, :cond_6

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 78
    new-instance v3, Lcom/miui/performance/PerformanceTools$init$2;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, v0, p1, v4}, Lcom/miui/performance/PerformanceTools$init$2;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Handler;)V

    check-cast v3, Landroid/database/ContentObserver;

    .line 75
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    .line 54
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PerformanceTools has been initialized\uff01"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
