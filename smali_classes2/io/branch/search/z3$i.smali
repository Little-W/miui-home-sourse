.class public Lio/branch/search/z3$i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/z3;->e(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lio/branch/search/c4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/z3;


# direct methods
.method public constructor <init>(Lio/branch/search/z3;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/z3$i;->a:Lio/branch/search/z3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/c4;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/z3$i;->a:Lio/branch/search/z3;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lio/branch/search/z3;->e(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/z3$i;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
