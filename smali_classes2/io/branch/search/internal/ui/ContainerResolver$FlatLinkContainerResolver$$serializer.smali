.class public final Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "FlatLinkContainer"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const/4 v0, 0x0

    const-string v2, "containerType"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "entities"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "includeAppAtTop"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "cType"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x5

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v7, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v7, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-interface {v0, v1, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/internal/ui/LinkEntityResolver;

    sget-object v7, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-interface {v0, v1, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/ui/AppEntityResolver;

    sget-object v7, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const v7, 0x7fffffff

    move-object v15, v2

    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move v14, v7

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move v12, v4

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    if-eqz v13, :cond_5

    if-eq v13, v7, :cond_4

    if-eq v13, v6, :cond_3

    if-eq v13, v3, :cond_2

    if-ne v13, v5, :cond_1

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v5, v13, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    or-int/lit8 v12, v12, 0x10

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v13}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    sget-object v13, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-interface {v0, v1, v3, v13, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/branch/search/internal/ui/AppEntityResolver;

    or-int/lit8 v12, v12, 0x8

    goto :goto_0

    :cond_3
    sget-object v13, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-interface {v0, v1, v6, v13, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/branch/search/internal/ui/LinkEntityResolver;

    or-int/lit8 v12, v12, 0x4

    goto :goto_0

    :cond_4
    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v7, v13, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    or-int/lit8 v12, v12, 0x2

    goto :goto_0

    :cond_5
    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v4, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_6
    move-object v15, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move v14, v12

    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    const/16 v20, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a(Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method
