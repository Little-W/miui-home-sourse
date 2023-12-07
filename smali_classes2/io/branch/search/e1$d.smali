.class public final Lio/branch/search/e1$d;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1;->a(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.branch.search.internal.interfaces.LocalJob"
    f = "LocalInterfaceRewrite.kt"
    l = {
        0x189,
        0x18e
    }
    m = "awaitFor"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/e1;

.field public d:Ljava/lang/Object;

.field public e:J


# direct methods
.method public constructor <init>(Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/e1$d;->c:Lio/branch/search/e1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lio/branch/search/e1$d;->a:Ljava/lang/Object;

    iget p1, p0, Lio/branch/search/e1$d;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/branch/search/e1$d;->b:I

    iget-object p1, p0, Lio/branch/search/e1$d;->c:Lio/branch/search/e1;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Lio/branch/search/e1;->a(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
