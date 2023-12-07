.class public Lio/branch/search/k4$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/k4;->a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
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
        "Lio/branch/search/j4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/k4;


# direct methods
.method public constructor <init>(Lio/branch/search/k4;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/k4$a;->a:Lio/branch/search/k4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/k4$a;->a:Lio/branch/search/k4;

    invoke-virtual {p0}, Lio/branch/search/k4;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/k4$a;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
