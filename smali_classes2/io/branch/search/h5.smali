.class public Lio/branch/search/h5;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    new-instance v1, Lio/branch/search/h5$a;

    invoke-direct {v1, v0, p0}, Lio/branch/search/h5$a;-><init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance p0, Lio/branch/search/h5$b;

    invoke-direct {p0, v0}, Lio/branch/search/h5$b;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-object v0
.end method
