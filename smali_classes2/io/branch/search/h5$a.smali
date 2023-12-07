.class public Lio/branch/search/h5$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/h5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic c:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/h5$a;->b:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lio/branch/search/h5$a;->c:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/branch/search/h5$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/branch/search/h5$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/h5$a;->b:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/h5$a;->a:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/branch/search/h5$a;->b:Landroidx/lifecycle/MediatorLiveData;

    iget-object p0, p0, Lio/branch/search/h5$a;->c:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/branch/search/h5$a;->a(Ljava/util/List;)V

    return-void
.end method
