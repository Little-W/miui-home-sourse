.class public final Lio/branch/search/o1$j;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/o1;->a(Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.branch.search.internal.network.HttpPool"
    f = "HttpPool.kt"
    l = {
        0x86
    }
    m = "handle"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/o1;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/branch/search/o1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/o1$j;->c:Lio/branch/search/o1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lio/branch/search/o1$j;->a:Ljava/lang/Object;

    iget p1, p0, Lio/branch/search/o1$j;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/branch/search/o1$j;->b:I

    iget-object p1, p0, Lio/branch/search/o1$j;->c:Lio/branch/search/o1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lio/branch/search/o1;->a(Lokhttp3/Request;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
