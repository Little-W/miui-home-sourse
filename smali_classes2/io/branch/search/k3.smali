.class public abstract Lio/branch/search/k3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/h3;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/h3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/j3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/k3$a;

    invoke-direct {v0, p0}, Lio/branch/search/k3$a;-><init>(Lio/branch/search/k3;)V

    const-string v1, "tracking_status_history"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/h3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/j3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lio/branch/search/j3;)V
.end method

.method public abstract b()I
.end method

.method public b(Lio/branch/search/j3;)V
    .locals 2

    invoke-virtual {p0}, Lio/branch/search/k3;->b()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lio/branch/search/k3;->c()V

    :cond_0
    invoke-virtual {p0, p1}, Lio/branch/search/k3;->a(Lio/branch/search/j3;)V

    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()Lio/branch/search/j3;
.end method
