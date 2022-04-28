.class final synthetic Lkotlinx/coroutines/flow/FlowKt__TransformKt;
.super Ljava/lang/Object;
.source "Transform.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,119:1\n20#1:126\n22#1:130\n50#2:120\n55#2:122\n50#2:123\n55#2:125\n50#2:127\n55#2:129\n50#2:131\n55#2:133\n50#2:134\n55#2:136\n50#2:137\n55#2:139\n50#2:141\n55#2:143\n106#3:121\n106#3:124\n106#3:128\n106#3:132\n106#3:135\n106#3:138\n106#3:140\n106#3:142\n106#3:144\n106#3:145\n*E\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n35#1:126\n35#1:130\n20#1:120\n20#1:122\n27#1:123\n27#1:125\n35#1:127\n35#1:129\n40#1:131\n40#1:133\n47#1:134\n47#1:136\n54#1:137\n54#1:139\n72#1:141\n72#1:143\n20#1:121\n27#1:124\n35#1:128\n40#1:132\n47#1:135\n54#1:138\n62#1:140\n72#1:142\n87#1:144\n108#1:145\n*E\n"
.end annotation


# direct methods
.method public static final onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 142
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method
