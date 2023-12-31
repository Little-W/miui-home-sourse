.class public final Lkotlinx/serialization/internal/NullableSerializer;
.super Ljava/lang/Object;
.source "NullableSerializer.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private final serializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    .line 18
    new-instance p1, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    iget-object v0, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlinx/serialization/internal/SerialDescriptorForNullable;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    iput-object p1, p0, Lkotlinx/serialization/internal/NullableSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeNotNullMark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeNull()Ljava/lang/Void;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 34
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/internal/NullableSerializer;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    check-cast p1, Lkotlinx/serialization/internal/NullableSerializer;

    .line 37
    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    iget-object p1, p1, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 18
    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 42
    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 22
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->encodeNotNullMark()V

    .line 23
    iget-object p0, p0, Lkotlinx/serialization/internal/NullableSerializer;->serializer:Lkotlinx/serialization/KSerializer;

    check-cast p0, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->encodeNull()V

    :goto_0
    return-void
.end method
