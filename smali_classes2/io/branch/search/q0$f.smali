.class public final Lio/branch/search/q0$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/q0;->a(Lio/branch/search/l;Lio/branch/search/BranchLocalSearchRequest;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/branch/search/c0;",
        "Ljava/util/List<",
        "Lio/branch/search/BranchLocalAppResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/l;

.field public final synthetic b:Lio/branch/search/BranchLocalSearchRequest;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/BranchLocalSearchRequest;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/q0$f;->a:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/q0$f;->b:Lio/branch/search/BranchLocalSearchRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/c0;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/c0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    const-string v0, "vr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/q0$f;->a:Lio/branch/search/l;

    iget-object v0, v0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    const-string v1, "branchSearch.localInterface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/branch/search/internal/interfaces/LocalInterface;->d()Lio/branch/search/u1;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/q0$f;->b:Lio/branch/search/BranchLocalSearchRequest;

    invoke-virtual {v0, v1, p1}, Lio/branch/search/u1;->a(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/c0;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/c0;

    invoke-virtual {p0, p1}, Lio/branch/search/q0$f;->a(Lio/branch/search/c0;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
