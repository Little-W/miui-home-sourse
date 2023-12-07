.class public abstract Lio/branch/search/h4;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/h4$a;

    invoke-direct {v0, p0}, Lio/branch/search/h4$a;-><init>(Lio/branch/search/h4;)V

    const-string v1, "app_usage_event"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/h4$b;

    invoke-direct {v2, p0}, Lio/branch/search/h4$b;-><init>(Lio/branch/search/h4;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/h5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Lkotlin/sequences/Sequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/branch/search/h4;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d0

    invoke-virtual {p0, p1}, Lio/branch/search/h4;->b(I)V

    return-void
.end method

.method public abstract b(I)V
.end method
