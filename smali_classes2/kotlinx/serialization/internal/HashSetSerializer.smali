.class public final Lkotlinx/serialization/internal/HashSetSerializer;
.super Lkotlinx/serialization/internal/ListLikeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/serialization/internal/ListLikeSerializer<",
        "TE;",
        "Ljava/util/Set<",
        "+TE;>;",
        "Ljava/util/HashSet<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "eSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/ListLikeSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlinx/serialization/internal/HashSetClassDesc;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/HashSetClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    iput-object v0, p0, Lkotlinx/serialization/internal/HashSetSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public bridge synthetic builder()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/HashSetSerializer;->builder()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method protected builder()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public bridge synthetic builderSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;->builderSize(Ljava/util/HashSet;)I

    move-result p0

    return p0
.end method

.method protected builderSize(Ljava/util/HashSet;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "TE;>;)I"
        }
    .end annotation

    const-string p0, "$this$builderSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic checkCapacity(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/HashSetSerializer;->checkCapacity(Ljava/util/HashSet;I)V

    return-void
.end method

.method protected checkCapacity(Ljava/util/HashSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "TE;>;I)V"
        }
    .end annotation

    const-string p0, "$this$checkCapacity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;->collectionIterator(Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method protected collectionIterator(Ljava/util/Set;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    const-string p0, "$this$collectionIterator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;->collectionSize(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method protected collectionSize(Ljava/util/Set;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TE;>;)I"
        }
    .end annotation

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/HashSetSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/HashSetSerializer;->insert(Ljava/util/HashSet;ILjava/lang/Object;)V

    return-void
.end method

.method protected insert(Ljava/util/HashSet;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "TE;>;ITE;)V"
        }
    .end annotation

    const-string p0, "$this$insert"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;->toBuilder(Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method protected toBuilder(Ljava/util/Set;)Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Ljava/util/HashSet;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    check-cast p0, Ljava/util/HashSet;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/util/HashSet;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_1
    return-object p0
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;->toResult(Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method protected toResult(Ljava/util/HashSet;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    const-string p0, "$this$toResult"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method
