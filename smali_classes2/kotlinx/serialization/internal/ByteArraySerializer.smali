.class public final Lkotlinx/serialization/internal/ByteArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "PrimitiveArraysSerializers.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer<",
        "Ljava/lang/Byte;",
        "[B",
        "Lkotlinx/serialization/internal/ByteArrayBuilder;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lkotlinx/serialization/internal/ByteArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/ByteArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    sget-object v0, Lkotlin/jvm/internal/ByteCompanionObject;->INSTANCE:Lkotlin/jvm/internal/ByteCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ByteArraySerializer;->collectionSize([B)I

    move-result p0

    return p0
.end method

.method protected collectionSize([B)I
    .locals 0

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    array-length p0, p1

    return p0
.end method

.method public bridge synthetic empty()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lkotlinx/serialization/internal/ByteArraySerializer;->empty()[B

    move-result-object p0

    return-object p0
.end method

.method protected empty()[B
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public bridge synthetic readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    .line 20
    check-cast p3, Lkotlinx/serialization/internal/ByteArrayBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/ByteArraySerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/ByteArrayBuilder;Z)V

    return-void
.end method

.method protected readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/ByteArrayBuilder;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lkotlinx/serialization/internal/ByteArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeByteElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)B

    move-result p0

    invoke-virtual {p3, p0}, Lkotlinx/serialization/internal/ByteArrayBuilder;->append$kotlinx_serialization_core(B)V

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ByteArraySerializer;->toBuilder([B)Lkotlinx/serialization/internal/ByteArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected toBuilder([B)Lkotlinx/serialization/internal/ByteArrayBuilder;
    .locals 0

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p0, Lkotlinx/serialization/internal/ByteArrayBuilder;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/ByteArrayBuilder;-><init>([B)V

    return-object p0
.end method

.method public bridge synthetic writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/ByteArraySerializer;->writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;[BI)V

    return-void
.end method

.method protected writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;[BI)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 33
    invoke-virtual {p0}, Lkotlinx/serialization/internal/ByteArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    aget-byte v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeByteElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
