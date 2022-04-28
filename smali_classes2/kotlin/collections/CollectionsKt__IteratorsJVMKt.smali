.class Lkotlin/collections/CollectionsKt__IteratorsJVMKt;
.super Lkotlin/collections/CollectionsKt__IterablesKt;
.source "IteratorsJVM.kt"


# direct methods
.method public static final iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lkotlin/collections/CollectionsKt__IteratorsJVMKt$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt$iterator$1;-><init>(Ljava/util/Enumeration;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
