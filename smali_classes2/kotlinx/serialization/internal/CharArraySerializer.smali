.class public final Lkotlinx/serialization/internal/CharArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "PrimitiveArraysSerializers.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer<",
        "Ljava/lang/Character;",
        "[C",
        "Lkotlinx/serialization/internal/CharArrayBuilder;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "[C>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/CharArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 321
    new-instance v0, Lkotlinx/serialization/internal/CharArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/CharArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/CharArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/CharArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 322
    sget-object v0, Lkotlin/jvm/internal/CharCompanionObject;->INSTANCE:Lkotlin/jvm/internal/CharCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/CharCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 321
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/CharArraySerializer;->collectionSize([C)I

    move-result p0

    return p0
.end method

.method protected collectionSize([C)I
    .locals 0

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    array-length p0, p1

    return p0
.end method

.method public bridge synthetic empty()Ljava/lang/Object;
    .locals 0

    .line 321
    invoke-virtual {p0}, Lkotlinx/serialization/internal/CharArraySerializer;->empty()[C

    move-result-object p0

    return-object p0
.end method

.method protected empty()[C
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [C

    return-object p0
.end method

.method public bridge synthetic readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    .line 321
    check-cast p3, Lkotlinx/serialization/internal/CharArrayBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/CharArraySerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/CharArrayBuilder;Z)V

    return-void
.end method

.method protected readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/CharArrayBuilder;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lkotlinx/serialization/internal/CharArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeCharElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)C

    move-result p0

    invoke-virtual {p3, p0}, Lkotlinx/serialization/internal/CharArrayBuilder;->append$kotlinx_serialization_core(C)V

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 321
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/CharArraySerializer;->toBuilder([C)Lkotlinx/serialization/internal/CharArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected toBuilder([C)Lkotlinx/serialization/internal/CharArrayBuilder;
    .locals 0

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    new-instance p0, Lkotlinx/serialization/internal/CharArrayBuilder;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/CharArrayBuilder;-><init>([C)V

    return-object p0
.end method

.method public bridge synthetic writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 0

    .line 321
    check-cast p2, [C

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/CharArraySerializer;->writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;[CI)V

    return-void
.end method

.method protected writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;[CI)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 334
    invoke-virtual {p0}, Lkotlinx/serialization/internal/CharArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    aget-char v2, p2, v0

    invoke-interface {p1, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeCharElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
