.class final Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModelViewer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/utils/ModelViewer;->loadModelGltfAsync(Ljava/nio/Buffer;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.google.android.filament.utils.ModelViewer$loadModelGltfAsync$1"
    f = "ModelViewer.kt"
    l = {
        0xc2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/filament/utils/ModelViewer;


# direct methods
.method constructor <init>(Lcom/google/android/filament/utils/ModelViewer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    iput-object p2, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    iget-object v2, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;-><init>(Lcom/google/android/filament/utils/ModelViewer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 193
    iget v1, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 195
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 194
    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/ModelViewer;->getAsset()Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v3, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/filament/utils/ModelViewer$loadModelGltfAsync$1;->label:I

    invoke-virtual {v1, v2, v3, p0}, Lcom/google/android/filament/utils/ModelViewer;->fetchResources(Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 195
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
