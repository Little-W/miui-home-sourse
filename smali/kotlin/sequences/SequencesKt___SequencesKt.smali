.class Lkotlin/sequences/SequencesKt___SequencesKt;
.super Lkotlin/sequences/SequencesKt___SequencesJvmKt;
.source "_Sequences.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Sequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,2110:1\n140#1,2:2111\n267#1,7:2113\n1121#1,3:2120\n674#1,4:2123\n639#1,4:2127\n657#1,4:2131\n710#1,4:2135\n830#1,3:2139\n833#1,3:2149\n850#1,3:2152\n853#1,3:2162\n1121#1,3:2179\n1110#1,2:2182\n352#2,7:2142\n352#2,7:2155\n352#2,7:2165\n352#2,7:2172\n*E\n*S KotlinDebug\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n85#1,2:2111\n95#1,7:2113\n405#1,3:2120\n593#1,4:2123\n609#1,4:2127\n624#1,4:2131\n695#1,4:2135\n801#1,3:2139\n801#1,3:2149\n816#1,3:2152\n816#1,3:2162\n919#1,3:2179\n955#1,2:2182\n801#1,7:2142\n816#1,7:2155\n832#1,7:2165\n852#1,7:2172\n*E\n"
.end annotation


# direct methods
.method public static final asIterable(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$asIterable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1919
    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;-><init>(Lkotlin/sequences/Sequence;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
