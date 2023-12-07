.class public abstract Lio/branch/search/x3;
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
            "Lio/branch/search/w3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/x3$a;

    invoke-direct {v0, p0}, Lio/branch/search/x3$a;-><init>(Lio/branch/search/x3;)V

    const-string p0, "tracking_status_history"

    invoke-virtual {p1, p0, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lio/branch/search/w3;)V
.end method

.method public abstract b()I
.end method

.method public b(Lio/branch/search/w3;)V
    .locals 2

    invoke-virtual {p0}, Lio/branch/search/x3;->b()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lio/branch/search/x3;->c()V

    :cond_0
    invoke-virtual {p0, p1}, Lio/branch/search/x3;->a(Lio/branch/search/w3;)V

    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()Lio/branch/search/w3;
.end method
