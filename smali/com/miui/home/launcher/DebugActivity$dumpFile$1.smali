.class final Lcom/miui/home/launcher/DebugActivity$dumpFile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DebugActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DebugActivity;->dumpFile(Landroid/view/View;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.home.launcher.DebugActivity$dumpFile$1"
    f = "DebugActivity.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/miui/home/launcher/DebugActivity;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DebugActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->this$0:Lcom/miui/home/launcher/DebugActivity;

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

    new-instance v0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;

    iget-object v1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->this$0:Lcom/miui/home/launcher/DebugActivity;

    invoke-direct {v0, v1, p2}, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;-><init>(Lcom/miui/home/launcher/DebugActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 38
    iget v1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 39
    iget-object v1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->this$0:Lcom/miui/home/launcher/DebugActivity;

    sget v3, Lcom/miui/home/R$id;->dump_all:I

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/DebugActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v3, "dumping..."

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/home/launcher/DebugActivity$dumpFile$1$ret$1;-><init>(Lcom/miui/home/launcher/DebugActivity$dumpFile$1;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->this$0:Lcom/miui/home/launcher/DebugActivity;

    check-cast p1, Landroid/content/Context;

    const-string v0, "dump home data success /sdcard/miuihome.zip"

    .line 45
    check-cast v0, Ljava/lang/CharSequence;

    .line 44
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->this$0:Lcom/miui/home/launcher/DebugActivity;

    check-cast p1, Landroid/content/Context;

    const-string v0, "failed dump data"

    .line 48
    check-cast v0, Ljava/lang/CharSequence;

    .line 47
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 50
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/DebugActivity$dumpFile$1;->this$0:Lcom/miui/home/launcher/DebugActivity;

    sget v0, Lcom/miui/home/R$id;->dump_all:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DebugActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "dumpFile"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
