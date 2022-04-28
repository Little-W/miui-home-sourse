.class public abstract Lio/branch/search/u3;
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/h3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/u3$a;

    invoke-direct {v0, p0}, Lio/branch/search/u3$a;-><init>(Lio/branch/search/u3;)V

    const-string v1, "app_usage_event"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/h3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lio/branch/search/u3$b;

    invoke-direct {v1, p0}, Lio/branch/search/u3$b;-><init>(Lio/branch/search/u3;)V

    const-string v2, "app_usage_event"

    invoke-virtual {p1, v2, v1}, Lio/branch/search/h3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-static {v0, p1}, Lio/branch/search/v4;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/u3;->b(Ljava/util/List;)V

    const/16 p1, 0x7d0

    invoke-virtual {p0, p1}, Lio/branch/search/u3;->b(I)V

    return-void
.end method

.method public abstract b(I)V
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;)V"
        }
    .end annotation
.end method
