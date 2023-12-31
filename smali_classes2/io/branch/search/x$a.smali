.class public final Lio/branch/search/x$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/x;-><init>(Lio/branch/search/w;Lio/branch/search/w3;Lio/branch/search/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/branch/search/w3;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/x;

.field public final synthetic b:Lio/branch/search/y;


# direct methods
.method public constructor <init>(Lio/branch/search/x;Lio/branch/search/y;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/x$a;->a:Lio/branch/search/x;

    iput-object p2, p0, Lio/branch/search/x$a;->b:Lio/branch/search/y;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/w3;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lio/branch/search/w3;->a:I

    iget-object v1, p0, Lio/branch/search/x$a;->a:Lio/branch/search/x;

    invoke-static {v1}, Lio/branch/search/x;->a(Lio/branch/search/x;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/w3;

    iget v1, v1, Lio/branch/search/w3;->a:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/branch/search/x$a;->b:Lio/branch/search/y;

    invoke-interface {v0, p1}, Lio/branch/search/y;->b(Lio/branch/search/w3;)V

    iget-object v0, p0, Lio/branch/search/x$a;->b:Lio/branch/search/y;

    invoke-interface {v0, p1}, Lio/branch/search/y;->a(Lio/branch/search/w3;)V

    iget-object p0, p0, Lio/branch/search/x$a;->a:Lio/branch/search/x;

    invoke-static {p0}, Lio/branch/search/x;->a(Lio/branch/search/x;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/branch/search/w3;

    invoke-virtual {p0, p1}, Lio/branch/search/x$a;->a(Lio/branch/search/w3;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
