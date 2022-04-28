.class public final Lio/branch/search/h3$b;
.super Landroidx/room/InvalidationTracker$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/h3;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/h3;

.field public final synthetic b:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lio/branch/search/h3;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData;",
            "Lkotlin/jvm/functions/Function0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/branch/search/h3$b;->a:Lio/branch/search/h3;

    iput-object p2, p0, Lio/branch/search/h3$b;->b:Landroidx/lifecycle/MutableLiveData;

    iput-object p3, p0, Lio/branch/search/h3$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p5, p6}, Landroidx/room/InvalidationTracker$Observer;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lio/branch/search/h3$b;->a:Lio/branch/search/h3;

    invoke-static {p1}, Lio/branch/search/h3;->a(Lio/branch/search/h3;)Landroidx/room/RoomDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/branch/search/h3$b;->b:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lio/branch/search/h3$b;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SafeRoomObservableProvider.getObservable"

    invoke-static {v0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
