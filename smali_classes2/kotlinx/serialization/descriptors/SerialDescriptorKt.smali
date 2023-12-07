.class public final Lkotlinx/serialization/descriptors/SerialDescriptorKt;
.super Ljava/lang/Object;


# direct methods
.method public static final getElementDescriptors(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ")",
            "Ljava/lang/Iterable<",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$elementDescriptors"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
