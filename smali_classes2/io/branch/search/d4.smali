.class public abstract Lio/branch/search/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/branch/search/c4;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/branch/search/d4;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/d4;->c:Ljava/util/Map;

    iput-boolean p2, p0, Lio/branch/search/d4;->d:Z

    new-instance p2, Lio/branch/search/a4;

    invoke-direct {p2, p1}, Lio/branch/search/a4;-><init>(I)V

    iput-object p2, p0, Lio/branch/search/d4;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/c4;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {}, Lio/branch/search/e4;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/branch/search/d4$a;

    invoke-direct {v0, p0, p1}, Lio/branch/search/d4$a;-><init>(Lio/branch/search/d4;Lio/branch/search/c4;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/branch/search/c4;->a()Z

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lio/branch/search/c4;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/d4;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/d4;->a(Ljava/lang/String;Lio/branch/search/c4;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lio/branch/search/c4;Ljava/util/concurrent/Executor;)V
    .locals 3

    iget-object v0, p0, Lio/branch/search/d4;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/branch/search/d4;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/c4;

    iget-object v2, p0, Lio/branch/search/d4;->c:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p3}, Lio/branch/search/c4;->a(Ljava/util/concurrent/Executor;)V

    iget-boolean p1, p0, Lio/branch/search/d4;->d:Z

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p3}, Lio/branch/search/d4;->a(Lio/branch/search/c4;Ljava/util/concurrent/Executor;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
