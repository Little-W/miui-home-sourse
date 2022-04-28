.class public final Lkotlinx/serialization/internal/FloatArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "PrimitiveArraysSerializers.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer<",
        "Ljava/lang/Float;",
        "[F",
        "Lkotlinx/serialization/internal/FloatArrayBuilder;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "[F>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/FloatArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 221
    new-instance v0, Lkotlinx/serialization/internal/FloatArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/FloatArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/FloatArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 222
    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/FloatCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 221
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/FloatArraySerializer;->collectionSize([F)I

    move-result p1

    return p1
.end method

.method protected collectionSize([F)I
    .locals 1

    const-string v0, "$this$collectionSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    array-length p1, p1

    return p1
.end method

.method public bridge synthetic empty()Ljava/lang/Object;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lkotlinx/serialization/internal/FloatArraySerializer;->empty()[F

    move-result-object v0

    return-object v0
.end method

.method protected empty()[F
    .locals 1

    const/4 v0, 0x0

    .line 226
    new-array v0, v0, [F

    return-object v0
.end method

.method public bridge synthetic readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    .line 221
    check-cast p3, Lkotlinx/serialization/internal/FloatArrayBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/FloatArraySerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/FloatArrayBuilder;Z)V

    return-void
.end method

.method protected readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/FloatArrayBuilder;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lkotlinx/serialization/internal/FloatArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F

    move-result p1

    invoke-virtual {p3, p1}, Lkotlinx/serialization/internal/FloatArrayBuilder;->append$kotlinx_serialization_core(F)V

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/FloatArraySerializer;->toBuilder([F)Lkotlinx/serialization/internal/FloatArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected toBuilder([F)Lkotlinx/serialization/internal/FloatArrayBuilder;
    .locals 1

    const-string v0, "$this$toBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    new-instance v0, Lkotlinx/serialization/internal/FloatArrayBuilder;

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/FloatArrayBuilder;-><init>([F)V

    return-object v0
.end method

.method public bridge synthetic writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 0

    .line 221
    check-cast p2, [F

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/FloatArraySerializer;->writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;[FI)V

    return-void
.end method

.method protected writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;[FI)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 234
    invoke-virtual {p0}, Lkotlinx/serialization/internal/FloatArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    aget v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
