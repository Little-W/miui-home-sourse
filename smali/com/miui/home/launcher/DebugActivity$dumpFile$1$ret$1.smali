.class final Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DebugActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.home.launcher.DebugActivity$dumpFile$1$ret$1"
    f = "DebugActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/miui/home/launcher/DebugActivity$dumpFile$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DebugActivity$dumpFile$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->this$0:Lcom/miui/home/launcher/DebugActivity$dumpFile$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;

    iget-object v1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->this$0:Lcom/miui/home/launcher/DebugActivity$dumpFile$1;

    invoke-direct {v0, v1, p2}, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;-><init>(Lcom/miui/home/launcher/DebugActivity$dumpFile$1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 40
    iget v0, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    .line 41
    new-array p1, p1, [Ljava/io/File;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->this$0:Lcom/miui/home/launcher/DebugActivity$dumpFile$1;

    iget-object v1, v1, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->this$0:Lcom/miui/home/launcher/DebugActivity;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DebugActivity;->getDataDir()Ljava/io/File;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;->this$0:Lcom/miui/home/launcher/DebugActivity$dumpFile$1;

    iget-object v1, v1, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->this$0:Lcom/miui/home/launcher/DebugActivity;

    invoke-static {v1}, Lcom/miui/home/launcher/DebugActivity;->access$getHprofDirectory$p(Lcom/miui/home/launcher/DebugActivity;)Ljava/io/File;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "/sdcard/miuihome.zip"

    invoke-static {p1, v0}, Lcom/miui/home/launcher/common/ZipHelper;->zipFiles([Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
