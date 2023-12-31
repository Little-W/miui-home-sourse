.class public Lio/branch/search/BranchAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lio/branch/search/b;
.implements Lio/branch/search/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchAnalytics$c;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/Object;

.field public static t:Ljava/lang/String; = "BRANCH_ANALYTICS_NO_VAL"

.field public static final u:Ljava/lang/Object;

.field public static final v:Ljava/lang/Object;

.field public static final w:Ljava/lang/Object;


# instance fields
.field public final a:Lio/branch/search/l;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/json/JSONArray;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public final n:[Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field public final o:Lio/branch/search/d0;

.field public p:I

.field public final q:Lio/branch/search/h;

.field public r:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/BranchAnalytics;->s:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/BranchAnalytics;->v:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/BranchAnalytics;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/branch/search/BranchAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lio/branch/search/BranchAnalytics;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lio/branch/search/BranchAnalytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lio/branch/search/BranchAnalytics;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lio/branch/search/BranchAnalytics;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lio/branch/search/BranchAnalytics;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, p0, Lio/branch/search/BranchAnalytics;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v8, p0, Lio/branch/search/BranchAnalytics;->l:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v9, p0, Lio/branch/search/BranchAnalytics;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    iput-object v10, p0, Lio/branch/search/BranchAnalytics;->n:[Ljava/util/concurrent/ConcurrentHashMap;

    iput v11, p0, Lio/branch/search/BranchAnalytics;->p:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    new-instance v0, Lio/branch/search/d0;

    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/d0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/d0;

    new-instance v0, Lio/branch/search/n1;

    invoke-direct {v0, p1}, Lio/branch/search/n1;-><init>(Lio/branch/search/l;)V

    iput-object v0, p1, Lio/branch/search/l;->g:Lio/branch/search/n1;

    new-instance v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    invoke-direct {v0, p1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;-><init>(Lio/branch/search/l;)V

    invoke-virtual {p1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/branch/search/BranchConfiguration;->a(Lio/branch/search/o;)V

    new-instance v0, Lio/branch/search/h;

    invoke-direct {v0, p1}, Lio/branch/search/h;-><init>(Lio/branch/search/l;)V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->g()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/BranchAnalytics;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/branch/search/BranchAnalytics;->s:Ljava/lang/Object;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/branch/search/BranchAnalytics;->t:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getClickJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "trackClick"

    const-string v2, "handler"

    invoke-static {v1, v0, v2, p2}, Lio/branch/search/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    :try_start_0
    const-string p2, "isDynamic"

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "id"

    :try_start_1
    const-string v1, "id"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/branch/search/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p2, "trackClick"

    const-string v1, "extras"

    invoke-static {p2, v0, v1, p3}, Lio/branch/search/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "BranchAnalytics.trackClick"

    invoke-virtual {p0, p3, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object p3, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_4

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    :cond_4
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lio/branch/search/BranchConfiguration;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object p1, p1, Lio/branch/search/l;->g:Lio/branch/search/n1;

    invoke-virtual {p1}, Lio/branch/search/n1;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/d0;

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object v0, v0, Lio/branch/search/l;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object v1, v1, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->q()I

    move-result v1

    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object v2, v2, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {v2}, Lio/branch/search/KBranchRemoteConfiguration;->p()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/branch/search/d0;->a(Ljava/lang/String;IJ)Lkotlin/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object p1, p1, Lio/branch/search/l;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v4, Lio/branch/search/s5;->o:Lio/branch/search/s5;

    iget-object v5, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    invoke-static/range {v1 .. v6}, Lio/branch/search/c1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/q1;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BranchAnalytics.onConfigurationSynced"

    const-string v1, "Failed uploading persisted analytics data"

    invoke-virtual {p0, v0, v1, p1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/d0;

    invoke-virtual {p0, p1}, Lio/branch/search/d0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "timestamp"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_0

    const-string p1, "extras"

    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    const-string p2, "failures"

    invoke-virtual {p0, p2, v0, p1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/d0;

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object p0, p0, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {p0}, Lio/branch/search/KBranchRemoteConfiguration;->l()I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lio/branch/search/d0;->a(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p3, Lio/branch/search/BranchAnalytics;->w:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->h()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->b(Z)V

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    invoke-virtual {p0}, Lio/branch/search/h;->a()V

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEvent;)Z
    .locals 2

    iget-object v0, p1, Lio/branch/search/AnalyticsEvent;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lio/branch/search/AnalyticsEvent;->a()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lio/branch/search/e0;->a()Lio/branch/search/g0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/search/g0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .locals 5

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->n:[Ljava/util/concurrent/ConcurrentHashMap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz p1, :cond_0

    iget-object v4, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "timestamp"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "branch_key"

    :try_start_1
    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object v2, v2, Lio/branch/search/l;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v2}, Lio/branch/search/BranchConfiguration;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "analytics_window_id"

    :try_start_2
    sget-object v2, Lio/branch/search/BranchAnalytics;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "empty_sessions"

    :try_start_3
    iget v2, p0, Lio/branch/search/BranchAnalytics;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "prev_analytics_window_id"

    :try_start_4
    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/d0;

    invoke-virtual {v2}, Lio/branch/search/d0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/BranchAnalytics;->n:[Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lio/branch/search/a;->a(Lorg/json/JSONObject;[Ljava/util/Map;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_clicks"

    invoke-static {v0, v2, v3}, Lio/branch/search/a;->a(Lorg/json/JSONObject;[Ljava/util/Map;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Lio/branch/search/h;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "_impressions"

    invoke-static {v0, v1, p0}, Lio/branch/search/a;->a(Lorg/json/JSONObject;[Ljava/util/Map;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analytics payload loading failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BranchAnalytics.getAnalyticsData"

    invoke-static {v0, v1, p0}, Lio/branch/search/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()V
    .locals 1

    new-instance v0, Lio/branch/search/BranchAnalytics$b;

    invoke-direct {v0, p0}, Lio/branch/search/BranchAnalytics$b;-><init>(Lio/branch/search/BranchAnalytics;)V

    invoke-static {v0}, Lio/branch/search/f5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()Z
    .locals 4

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object v0, v0, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->b()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/internal/control/AllFeatures;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    invoke-virtual {v0, v1}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/l;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Lio/branch/search/a;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->f()Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Lio/branch/search/a;->a(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMoveToBackground()V
    .locals 7
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "Moving to background"

    invoke-static {v0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    invoke-virtual {v0}, Lio/branch/search/h;->b()V

    sget-object v0, Lio/branch/search/BranchAnalytics;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->c()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lio/branch/search/BranchAnalytics$a;

    invoke-direct {v3, p0, v0}, Lio/branch/search/BranchAnalytics$a;-><init>(Lio/branch/search/BranchAnalytics;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    new-instance v4, Lio/branch/search/d5;

    sget-object v5, Lio/branch/search/s5;->D:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lio/branch/search/d5;-><init>(J)V

    invoke-static {v2, v3, v0, v4}, Lio/branch/search/p;->a(Lorg/json/JSONObject;Lio/branch/search/BranchAnalytics$c;Lio/branch/search/l;Lio/branch/search/d5;)V

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/d0;

    sget-object v2, Lio/branch/search/BranchAnalytics;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/branch/search/d0;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->i()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/branch/search/BranchAnalytics;->p:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput v0, p0, Lio/branch/search/BranchAnalytics;->p:I

    invoke-virtual {p0, v2}, Lio/branch/search/BranchAnalytics;->a(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lio/branch/search/BranchAnalytics;->a(Z)V

    :goto_1
    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/l;

    iget-object p0, p0, Lio/branch/search/l;->g:Lio/branch/search/n1;

    invoke-virtual {p0}, Lio/branch/search/n1;->h()V

    const-string p0, "BRANCH_ANALYTICS_NO_VAL"

    sput-object p0, Lio/branch/search/BranchAnalytics;->t:Ljava/lang/String;

    return-void
.end method

.method public onMoveToForeground()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string p0, "Returning to foreground"

    invoke-static {p0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/branch/search/BranchAnalytics;->t:Ljava/lang/String;

    return-void
.end method
