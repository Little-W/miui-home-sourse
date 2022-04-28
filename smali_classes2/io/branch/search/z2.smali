.class public abstract Lio/branch/search/z2;
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
            "Lio/branch/search/y2;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/z2$a;

    invoke-direct {v0, p0}, Lio/branch/search/z2$a;-><init>(Lio/branch/search/z2;)V

    const-string v1, "local_entities"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/h3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/y2;",
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
            "Lio/branch/search/y2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/y2;",
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
            "Lio/branch/search/y2;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/z2;->b()V

    invoke-virtual {p0, p1}, Lio/branch/search/z2;->b(Ljava/util/List;)V

    return-void
.end method
