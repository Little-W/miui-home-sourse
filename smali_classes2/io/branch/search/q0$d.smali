.class public final Lio/branch/search/q0$d;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/q0;->a(Lio/branch/search/l;Lio/branch/search/BranchLocalSearchRequest;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.branch.search.internal.interfaces.LocalInterfaceRewriteKt"
    f = "LocalInterfaceRewrite.kt"
    l = {
        0xff,
        0x10f,
        0x113
    }
    m = "localSearch"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:J


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lio/branch/search/q0$d;->a:Ljava/lang/Object;

    iget p1, p0, Lio/branch/search/q0$d;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/branch/search/q0$d;->b:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1, p0}, Lio/branch/search/q0;->a(Lio/branch/search/l;Lio/branch/search/BranchLocalSearchRequest;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
