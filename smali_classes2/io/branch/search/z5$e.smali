.class public Lio/branch/search/z5$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/z5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/z5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/l;Lio/branch/search/s5;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lio/branch/search/s5;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lio/branch/search/x5;

    invoke-direct {v0}, Lio/branch/search/x5;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    new-instance v0, Lio/branch/search/p5;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lio/branch/search/p5;-><init>(ZLio/branch/search/b;Lio/branch/search/s5;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/branch/search/b6;

    iget-object v1, p1, Lio/branch/search/l;->f:Lio/branch/search/o3;

    invoke-direct {v0, p1, v1, p2}, Lio/branch/search/b6;-><init>(Lio/branch/search/l;Lio/branch/search/o3;Lio/branch/search/s5;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/branch/search/u5;

    iget-object v1, p1, Lio/branch/search/l;->f:Lio/branch/search/o3;

    new-instance v2, Lio/branch/search/d5;

    sget-object v3, Lio/branch/search/s5;->D:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lio/branch/search/d5;-><init>(J)V

    invoke-direct {v0, p1, v1, p2, v2}, Lio/branch/search/u5;-><init>(Lio/branch/search/l;Lio/branch/search/o3;Lio/branch/search/s5;Lio/branch/search/d5;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lio/branch/search/z5;->a:Ljava/lang/String;

    const-string p2, "Interceptors created without BranchSearchInternal"

    invoke-static {p1, p2}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Lio/branch/search/d6;

    const-string p2, "branch.io"

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    const-string v0, "X-Branch-Retry"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lio/branch/search/d6;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
