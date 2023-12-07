.class public final Lio/branch/search/internal/local/appUsage/AppUsageMonitor;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicLong;

.field public final b:Lio/branch/search/l;

.field public final c:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->Companion:Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "app_usages_last_save_time"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a(J)V

    return-void
.end method

.method public static final b(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->Companion:Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;

    invoke-virtual {v0, p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .locals 2

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_usages_last_save_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->Companion:Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;

    invoke-virtual {p0, p1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 1

    iget-object p0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {p0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lio/branch/search/a5$a;->a:Lio/branch/search/a5$a;

    invoke-static {p0, v0}, Lio/branch/search/a5;->a(Landroid/content/Context;Lio/branch/search/a5$a;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "BranchSharedPrefs.get(br\u2026redPrefs.Files.analytics)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()Lio/branch/search/m1;
    .locals 3

    new-instance v0, Lio/branch/search/m1;

    iget-object p0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {p0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object p0

    const-string v1, "usagestats"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/app/usage/UsageStatsManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, v2}, Lio/branch/search/m1;-><init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.app.usage.UsageStatsManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$c;

    invoke-direct {v0, p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$c;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;)V

    invoke-static {v0}, Lio/branch/search/f5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMoveToForeground()V
    .locals 15
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->e()Lio/branch/search/internal/interfaces/LocalInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "branchSearch.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a()J

    move-result-wide v5

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v4, Lio/branch/search/k1;

    invoke-virtual {p0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->c()Lio/branch/search/m1;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lio/branch/search/k1;-><init>(Lio/branch/search/m1;Ljava/util/Set;)V

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v12, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;

    const/4 v9, 0x0

    move-object v1, v12

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/k1;JJLkotlin/coroutines/Continuation;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object v9, v0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method
