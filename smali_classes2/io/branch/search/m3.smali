.class public abstract Lio/branch/search/m3;
.super Ljava/lang/Object;
.source "SourceFile"


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
            "Lio/branch/search/l3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/m3$a;

    invoke-direct {v0, p0}, Lio/branch/search/m3$a;-><init>(Lio/branch/search/m3;)V

    const-string p0, "local_entities"

    invoke-virtual {p1, p0, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Ljava/lang/String;J)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;)V"
        }
    .end annotation
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/m3;->b()V

    invoke-virtual {p0, p1}, Lio/branch/search/m3;->b(Ljava/util/List;)V

    return-void
.end method
