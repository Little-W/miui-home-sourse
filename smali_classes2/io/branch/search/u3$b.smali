.class public final Lio/branch/search/u3$b;
.super Landroidx/room/InvalidationTracker$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/u3;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/u3;

.field public final synthetic b:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lio/branch/search/u3;Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
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

    iput-object p1, p0, Lio/branch/search/u3$b;->a:Lio/branch/search/u3;

    iput-object p2, p0, Lio/branch/search/u3$b;->b:Landroidx/lifecycle/MutableLiveData;

    iput-object p3, p0, Lio/branch/search/u3$b;->c:Lkotlin/jvm/functions/Function0;

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

    iget-object p1, p0, Lio/branch/search/u3$b;->a:Lio/branch/search/u3;

    invoke-static {p1}, Lio/branch/search/u3;->a(Lio/branch/search/u3;)Lio/branch/search/n4;

    move-result-object p1

    new-instance v0, Lio/branch/search/u3$b$a;

    invoke-direct {v0, p0}, Lio/branch/search/u3$b$a;-><init>(Lio/branch/search/u3$b;)V

    invoke-virtual {p1, v0}, Lio/branch/search/n4;->a(Ljava/lang/Runnable;)V

    return-void
.end method
