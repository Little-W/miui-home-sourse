.class public final Lcom/miui/home/launcher/DebugActivity;
.super Landroid/app/Activity;
.source "DebugActivity.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DebugActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/DebugActivity$Companion;

.field public static sIsReporterOn:Z


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/coroutines/CoroutineScope;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/DebugActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/DebugActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/DebugActivity;->Companion:Lcom/miui/home/launcher/DebugActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/DebugActivity;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getHprofDirectory$p(Lcom/miui/home/launcher/DebugActivity;)Ljava/io/File;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/DebugActivity;->getHprofDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final getHprofDirectory()Ljava/io/File;
    .locals 3

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    check-cast v1, Ljava/io/File;

    const-string v1, "mounted"

    .line 58
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/DebugActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/DebugActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 63
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "matrix_resource"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private final hideViewsForMonitor(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final initViews()V
    .locals 2

    .line 29
    sget v0, Lcom/miui/home/R$id;->dump_heap:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DebugActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "dump_heap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DebugActivity;->hideViewsForMonitor(Landroid/view/View;)V

    .line 30
    sget v0, Lcom/miui/home/R$id;->fps_reporter:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/DebugActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "fps_reporter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/DebugActivity;->hideViewsForMonitor(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/DebugActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/DebugActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DebugActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/DebugActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/miui/home/launcher/common/StorageContextGetter;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final dumpFile(Landroid/view/View;)V
    .locals 7

    .line 38
    new-instance p1, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;-><init>(Lcom/miui/home/launcher/DebugActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final dumpHeap(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->dumpHeap()V

    return-void
.end method

.method public final fpsReporter(Landroid/view/View;)V
    .locals 2

    .line 71
    sget-boolean p1, Lcom/miui/home/launcher/DebugActivity;->sIsReporterOn:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 72
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string v1, "start fps reporter"

    .line 73
    check-cast v1, Ljava/lang/CharSequence;

    .line 72
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->startFpsReporter()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->stopFpsReporter()V

    .line 78
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string v1, "stop fsp reporter"

    .line 79
    check-cast v1, Ljava/lang/CharSequence;

    .line 78
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->startFpsReporter()V

    const/4 v0, 0x0

    .line 71
    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/DebugActivity;->sIsReporterOn:Z

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/DebugActivity;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DebugActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/DebugActivity;->initViews()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 93
    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
