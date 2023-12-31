.class public final Lio/branch/search/d1$b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/d1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/branch/search/m0;",
        "Lio/branch/search/BranchQueryHintResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/d1$b;


# direct methods
.method public constructor <init>(Lio/branch/search/d1$b;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/d1$b$b;->a:Lio/branch/search/d1$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/m0;)Lio/branch/search/BranchQueryHintResult;
    .locals 1

    const-string v0, "vr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/d1$b$b;->a:Lio/branch/search/d1$b;

    iget-object p0, p0, Lio/branch/search/d1$b;->c:Lio/branch/search/l;

    iget-object p0, p0, Lio/branch/search/l;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    const-string v0, "branchSearch.localInterface"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->d()Lio/branch/search/h2;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/search/h2;->a(Lio/branch/search/m0;)Lio/branch/search/BranchQueryHintResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/m0;

    invoke-virtual {p0, p1}, Lio/branch/search/d1$b$b;->a(Lio/branch/search/m0;)Lio/branch/search/BranchQueryHintResult;

    move-result-object p0

    return-object p0
.end method
