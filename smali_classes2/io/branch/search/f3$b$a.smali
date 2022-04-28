.class public Lio/branch/search/f3$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f3$b;->a()Lkotlin/Unit;
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
        "Lio/branch/search/g3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/f3$b;


# direct methods
.method public constructor <init>(Lio/branch/search/f3$b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/f3$b$a;->a:Lio/branch/search/f3$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/g3;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/branch/search/f3$b$a;->a:Lio/branch/search/f3$b;

    iget-object v0, v0, Lio/branch/search/f3$b;->c:Lio/branch/search/f3;

    iget-object v0, v0, Lio/branch/search/f3;->b:Lio/branch/search/b4;

    new-instance v1, Lio/branch/search/f3$b$a$a;

    invoke-direct {v1, p0, p1}, Lio/branch/search/f3$b$a$a;-><init>(Lio/branch/search/f3$b$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/b4;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/branch/search/f3$b$a;->a(Ljava/util/List;)V

    return-void
.end method
