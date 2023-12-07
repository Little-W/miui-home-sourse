.class public Lio/branch/search/f0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/f0$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/f0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/branch/search/f0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lio/branch/search/f0$a;)V
    .locals 4

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/branch/search/f0$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/f0$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/f0$a;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/branch/search/f0;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lio/branch/search/f0$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/f0$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/f0$a;->c:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, p0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lio/branch/search/l;)V
    .locals 5

    sget-object v0, Lio/branch/search/f0;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/f0$a;

    iget-object v3, v2, Lio/branch/search/f0$a;->a:Ljava/lang/String;

    iget-object v4, v2, Lio/branch/search/f0$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lio/branch/search/f0$a;->c:Ljava/util/Map;

    invoke-virtual {p0, v3, v4, v2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lio/branch/search/f0;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lio/branch/search/f0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/branch/search/f0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lio/branch/search/f0;->a(Lio/branch/search/f0$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lio/branch/search/f0$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lio/branch/search/f0$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/branch/search/f0;->a(Lio/branch/search/f0$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
