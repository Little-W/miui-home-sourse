.class public final Lkotlinx/serialization/internal/ReferenceArraySerializer;
.super Lkotlinx/serialization/internal/ListLikeSerializer;
.source "CollectionSerializers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ElementKlass:",
        "Ljava/lang/Object;",
        "Element::TElementKlass;>",
        "Lkotlinx/serialization/internal/ListLikeSerializer<",
        "TElement;[TElement;",
        "Ljava/util/ArrayList<",
        "TElement;>;>;"
    }
.end annotation


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private final kClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TElementKlass;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TElementKlass;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TElement;>;)V"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p2, v0}, Lkotlinx/serialization/internal/ListLikeSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/ReferenceArraySerializer;->kClass:Lkotlin/reflect/KClass;

    .line 188
    new-instance p1, Lkotlinx/serialization/internal/ArrayClassDesc;

    invoke-interface {p2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    iput-object p1, p0, Lkotlinx/serialization/internal/ReferenceArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public bridge synthetic builder()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lkotlinx/serialization/internal/ReferenceArraySerializer;->builder()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected builder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TElement;>;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public bridge synthetic builderSize(Ljava/lang/Object;)I
    .locals 0

    .line 184
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ReferenceArraySerializer;->builderSize(Ljava/util/ArrayList;)I

    move-result p1

    return p1
.end method

.method protected builderSize(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TElement;>;)I"
        }
    .end annotation

    const-string v0, "$this$builderSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public bridge synthetic checkCapacity(Ljava/lang/Object;I)V
    .locals 0

    .line 184
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/ReferenceArraySerializer;->checkCapacity(Ljava/util/ArrayList;I)V

    return-void
.end method

.method protected checkCapacity(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TElement;>;I)V"
        }
    .end annotation

    const-string v0, "$this$checkCapacity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method public bridge synthetic collectionIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    .line 184
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ReferenceArraySerializer;->collectionIterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method protected collectionIterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TElement;)",
            "Ljava/util/Iterator<",
            "TElement;>;"
        }
    .end annotation

    const-string v0, "$this$collectionIterator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 184
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ReferenceArraySerializer;->collectionSize([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected collectionSize([Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TElement;)I"
        }
    .end annotation

    const-string v0, "$this$collectionSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    array-length p1, p1

    return p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 188
    iget-object v0, p0, Lkotlinx/serialization/internal/ReferenceArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/ReferenceArraySerializer;->insert(Ljava/util/ArrayList;ILjava/lang/Object;)V

    return-void
.end method

.method protected insert(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TElement;>;ITElement;)V"
        }
    .end annotation

    const-string v0, "$this$insert"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ReferenceArraySerializer;->toBuilder([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected toBuilder([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TElement;)",
            "Ljava/util/ArrayList<",
            "TElement;>;"
        }
    .end annotation

    const-string v0, "$this$toBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ReferenceArraySerializer;->toResult(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected toResult(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TElement;>;)[TElement;"
        }
    .end annotation

    const-string v0, "$this$toResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lkotlinx/serialization/internal/ReferenceArraySerializer;->kClass:Lkotlin/reflect/KClass;

    invoke-static {p1, v0}, Lkotlinx/serialization/internal/PlatformKt;->toNativeArrayImpl(Ljava/util/ArrayList;Lkotlin/reflect/KClass;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
