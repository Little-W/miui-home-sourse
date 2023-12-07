.class public abstract Lio/branch/search/k4;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/k4$a;

    invoke-direct {v0, p0}, Lio/branch/search/k4$a;-><init>(Lio/branch/search/k4;)V

    const-string p0, "app_usage_stats"

    invoke-virtual {p1, p0, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Lio/branch/search/j4;)Ljava/lang/Long;
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Ljava/lang/String;JJ)V
.end method

.method public a(Lkotlin/sequences/Sequence;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Lio/branch/search/j4;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/j4;

    invoke-virtual {p0, v0}, Lio/branch/search/k4;->a(Lio/branch/search/j4;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v3, v0, Lio/branch/search/j4;->a:Ljava/lang/String;

    iget-wide v4, v0, Lio/branch/search/j4;->b:J

    iget-wide v6, v0, Lio/branch/search/j4;->c:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lio/branch/search/k4;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Lio/branch/search/k4;->a(I)V

    return-void
.end method
