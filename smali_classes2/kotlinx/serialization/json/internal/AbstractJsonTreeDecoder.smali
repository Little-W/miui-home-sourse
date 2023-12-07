.class abstract Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;
.super Lkotlinx/serialization/internal/NamedValueDecoder;

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTreeJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/TreeJsonEncoderKt\n+ 4 WriteMode.kt\nkotlinx/serialization/json/internal/WriteModeKt\n*L\n1#1,274:1\n125#1,4:311\n125#1,4:315\n125#1,4:319\n125#1,4:323\n125#1,4:327\n125#1,4:331\n125#1,4:335\n1#2:275\n202#3,7:276\n202#3,7:287\n202#3,7:296\n202#3,7:304\n40#4,4:283\n44#4,2:294\n47#4:303\n*E\n*S KotlinDebug\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeDecoder\n*L\n103#1,4:311\n104#1,4:315\n105#1,4:319\n106#1,4:323\n109#1,4:327\n116#1,4:331\n122#1,4:335\n59#1,7:276\n62#1,7:287\n63#1,7:296\n65#1,7:304\n60#1,4:283\n60#1,2:294\n60#1:303\n*E\n"
.end annotation


# instance fields
.field protected final configuration:Lkotlinx/serialization/json/internal/JsonConf;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final value:Lkotlinx/serialization/json/JsonElement;


# direct methods
.method private constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/NamedValueDecoder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->configuration:Lkotlinx/serialization/json/internal/JsonConf;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public static final synthetic access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Lkotlinx/serialization/json/JsonElement;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private final currentObject()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getCurrentTagOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 9

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/descriptors/StructureKind$LIST;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$LIST;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", but had "

    const-string v4, " as the serialized body of "

    const-string v5, "Expected "

    const/4 v6, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lkotlinx/serialization/descriptors/PolymorphicKind;

    if-eqz v2, :cond_2

    :goto_0
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    instance-of v2, v0, Lkotlinx/serialization/json/JsonArray;

    if-eqz v2, :cond_1

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V

    check-cast v1, Lkotlinx/serialization/encoding/CompositeDecoder;

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    sget-object v2, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v7

    instance-of v8, v7, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v8, :cond_6

    sget-object v8, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonConf;->allowStructuredMapKeys:Z

    if-eqz v1, :cond_5

    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    instance-of v2, v0, Lkotlinx/serialization/json/JsonArray;

    if-eqz v2, :cond_4

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeListDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_5
    invoke-static {v2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_6
    :goto_1
    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    instance-of v2, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v2, :cond_7

    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v1, p0, v0}, Lkotlinx/serialization/json/internal/JsonTreeMapDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V

    :goto_2
    check-cast v1, Lkotlinx/serialization/encoding/CompositeDecoder;

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_8
    new-instance v7, Lkotlinx/serialization/json/internal/JsonTreeDecoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    instance-of p0, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz p0, :cond_9

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/json/JsonObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlinx/serialization/json/internal/JsonTreeDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v7

    check-cast v1, Lkotlinx/serialization/encoding/CompositeDecoder;

    :goto_3
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method protected composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "parentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "childName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method protected abstract currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
.end method

.method public decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public decodeNotNullMark()Z
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/serialization/json/JsonNull;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decodeTaggedBoolean(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected decodeTaggedBoolean(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Boolean literal for key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be unquoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.serialization.json.JsonLiteral"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getBoolean(Lkotlinx/serialization/json/JsonPrimitive;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic decodeTaggedByte(Ljava/lang/Object;)B
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedByte(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method protected decodeTaggedByte(Ljava/lang/String;)B
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-byte p0, p0

    return p0

    :catchall_0
    const/4 p1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public bridge synthetic decodeTaggedChar(Ljava/lang/Object;)C
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedChar(Ljava/lang/String;)C

    move-result p0

    return p0
.end method

.method protected decodeTaggedChar(Ljava/lang/String;)C
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->single(Ljava/lang/CharSequence;)C

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public bridge synthetic decodeTaggedDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method protected decodeTaggedDouble(Ljava/lang/String;)D
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getDouble(Lkotlinx/serialization/json/JsonPrimitive;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v2

    iget-boolean v2, v2, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidFloatingPointDecoded(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    return-wide v0

    :catchall_0
    const/4 p1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public bridge synthetic decodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedEnum(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p0

    return p0
.end method

.method protected decodeTaggedEnum(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->getElementIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic decodeTaggedFloat(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method protected decodeTaggedFloat(Ljava/lang/String;)F
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getFloat(Lkotlinx/serialization/json/JsonPrimitive;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidFloatingPointDecoded(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    return v0

    :catchall_0
    const/4 p1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public bridge synthetic decodeTaggedInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected decodeTaggedInt(Ljava/lang/String;)I
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public bridge synthetic decodeTaggedLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected decodeTaggedLong(Ljava/lang/String;)J
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getLong(Lkotlinx/serialization/json/JsonPrimitive;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    const/4 p1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public bridge synthetic decodeTaggedNotNullMark(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedNotNullMark(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected decodeTaggedNotNullMark(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    sget-object p1, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic decodeTaggedShort(Ljava/lang/Object;)S
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedShort(Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method protected decodeTaggedShort(Ljava/lang/String;)S
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-short p0, p0

    return p0

    :catchall_0
    const/4 p1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public bridge synthetic decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->decodeTaggedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected decodeTaggedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String literal for key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be quoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.serialization.json.JsonLiteral"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getJson()Lkotlinx/serialization/json/Json;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->json:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->value:Lkotlinx/serialization/json/JsonElement;

    return-object p0
.end method

.method protected getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/json/JsonPrimitive;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected JsonPrimitive at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeDecoder;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
