.class public final Lkotlinx/serialization/internal/DoubleArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "PrimitiveArraysSerializers.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer<",
        "Ljava/lang/Double;",
        "[D",
        "Lkotlinx/serialization/internal/DoubleArrayBuilder;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "[D>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/DoubleArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 271
    new-instance v0, Lkotlinx/serialization/internal/DoubleArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/DoubleArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/DoubleArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 272
    sget-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/DoubleCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 271
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/DoubleArraySerializer;->collectionSize([D)I

    move-result p0

    return p0
.end method

.method protected collectionSize([D)I
    .locals 0

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    array-length p0, p1

    return p0
.end method

.method public bridge synthetic empty()Ljava/lang/Object;
    .locals 0

    .line 271
    invoke-virtual {p0}, Lkotlinx/serialization/internal/DoubleArraySerializer;->empty()[D

    move-result-object p0

    return-object p0
.end method

.method protected empty()[D
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [D

    return-object p0
.end method

.method public bridge synthetic readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    .line 271
    check-cast p3, Lkotlinx/serialization/internal/DoubleArrayBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/DoubleArraySerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/DoubleArrayBuilder;Z)V

    return-void
.end method

.method protected readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/DoubleArrayBuilder;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lkotlinx/serialization/internal/DoubleArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Lkotlinx/serialization/internal/DoubleArrayBuilder;->append$kotlinx_serialization_core(D)V

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 271
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/DoubleArraySerializer;->toBuilder([D)Lkotlinx/serialization/internal/DoubleArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected toBuilder([D)Lkotlinx/serialization/internal/DoubleArrayBuilder;
    .locals 0

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance p0, Lkotlinx/serialization/internal/DoubleArrayBuilder;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/DoubleArrayBuilder;-><init>([D)V

    return-object p0
.end method

.method public bridge synthetic writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 0

    .line 271
    check-cast p2, [D

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/DoubleArraySerializer;->writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;[DI)V

    return-void
.end method

.method protected writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;[DI)V
    .locals 4

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 284
    invoke-virtual {p0}, Lkotlinx/serialization/internal/DoubleArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-interface {p1, v1, v0, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
