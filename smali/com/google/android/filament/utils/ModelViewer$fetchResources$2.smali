.class final Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ModelViewer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/utils/ModelViewer;->fetchResources(Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelViewer.kt\ncom/google/android/filament/utils/ModelViewer$fetchResources$2\n*L\n1#1,350:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.filament.utils.ModelViewer$fetchResources$2"
    f = "ModelViewer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $asset:Lcom/google/android/filament/gltfio/FilamentAsset;

.field final synthetic $items:Ljava/util/HashMap;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/google/android/filament/utils/ModelViewer;


# direct methods
.method constructor <init>(Lcom/google/android/filament/utils/ModelViewer;Ljava/util/HashMap;Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    iput-object p2, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->$items:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->$asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    iget-object v2, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->$items:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->$asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;-><init>(Lcom/google/android/filament/utils/ModelViewer;Ljava/util/HashMap;Lcom/google/android/filament/gltfio/FilamentAsset;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 311
    iget v0, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 312
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->$items:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/Buffer;

    .line 313
    iget-object v2, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v2}, Lcom/google/android/filament/utils/ModelViewer;->access$getResourceLoader$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/gltfio/ResourceLoader;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->addResourceData(Ljava/lang/String;Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/ResourceLoader;

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {p1}, Lcom/google/android/filament/utils/ModelViewer;->access$getResourceLoader$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/gltfio/ResourceLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->$asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->asyncBeginLoad(Lcom/google/android/filament/gltfio/FilamentAsset;)Z

    .line 316
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->$asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->getAnimator()Lcom/google/android/filament/gltfio/Animator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/filament/utils/ModelViewer;->access$setAnimator$p(Lcom/google/android/filament/utils/ModelViewer;Lcom/google/android/filament/gltfio/Animator;)V

    .line 317
    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer$fetchResources$2;->$asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/FilamentAsset;->releaseSourceData()V

    .line 318
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
