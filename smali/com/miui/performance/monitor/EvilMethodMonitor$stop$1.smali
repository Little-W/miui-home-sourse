.class final Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EvilMethodMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/EvilMethodMonitor;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEvilMethodMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EvilMethodMonitor.kt\ncom/miui/performance/monitor/EvilMethodMonitor$stop$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1022#2:84\n1819#2,2:85\n*E\n*S KotlinDebug\n*F\n+ 1 EvilMethodMonitor.kt\ncom/miui/performance/monitor/EvilMethodMonitor$stop$1\n*L\n62#1:84\n62#1,2:85\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;

    invoke-direct {v0}, Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;-><init>()V

    sput-object v0, Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;->INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/miui/performance/monitor/EvilMethodMonitor;->INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor;

    invoke-static {v3}, Lcom/miui/performance/monitor/EvilMethodMonitor;->access$getLogDir$p(Lcom/miui/performance/monitor/EvilMethodMonitor;)Ljava/io/File;

    move-result-object v3

    const-string v4, "evil-method.txt"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    check-cast v1, Ljava/io/Writer;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 62
    sget-object v1, Lcom/miui/performance/monitor/EvilMethodMonitor;->INSTANCE:Lcom/miui/performance/monitor/EvilMethodMonitor;

    invoke-static {v1}, Lcom/miui/performance/monitor/EvilMethodMonitor;->access$getTraces$p(Lcom/miui/performance/monitor/EvilMethodMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "traces.entries"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 84
    new-instance v2, Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1$$special$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/miui/performance/monitor/EvilMethodMonitor$stop$1$$special$$inlined$sortedByDescending$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 85
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "EvilMethodMonitor"

    const-string v2, "stop"

    .line 68
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
