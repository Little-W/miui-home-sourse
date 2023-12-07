.class public final Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field private final kind:Lkotlinx/serialization/descriptors/PrimitiveKind;

.field private final serialName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->serialName:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/PrimitiveKind;

    return-void
.end method

.method private final error()Ljava/lang/Void;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Primitive descriptor does not have elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->error()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public getElementIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->error()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public getElementName(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->error()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public getElementsCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/PrimitiveKind;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->kind:Lkotlinx/serialization/descriptors/PrimitiveKind;

    return-object p0
.end method

.method public bridge synthetic getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/PrimitiveKind;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/SerialKind;

    return-object p0
.end method

.method public getSerialName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->serialName:Ljava/lang/String;

    return-object p0
.end method

.method public isNullable()Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$DefaultImpls;->isNullable(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimitiveDescriptor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
