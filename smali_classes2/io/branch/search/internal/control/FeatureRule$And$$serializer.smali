.class public final Lio/branch/search/internal/control/FeatureRule$And$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/FeatureRule$And;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lio/branch/search/internal/control/FeatureRule$And;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/control/FeatureRule$And$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "AND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "rules"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x1

    new-array v0, p0, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/control/FeatureRule;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x5

    new-array v5, v4, [Lkotlin/reflect/KClass;

    const-class v6, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lio/branch/search/internal/control/FeatureRule$Constant;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, p0

    const-class v6, Lio/branch/search/internal/control/FeatureRule$Or;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Lio/branch/search/internal/control/FeatureRule$And;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, Lio/branch/search/internal/control/FeatureRule$Not;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v5, v10

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v6, v4, v7

    sget-object v6, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v6, v4, p0

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object p0, v4, v8

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object p0, v4, v9

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object p0, v4, v10

    const-string p0, "io.branch.search.internal.control.FeatureRule"

    invoke-direct {v2, p0, v3, v5, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v1, v0, v7

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/FeatureRule$And;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const-string v3, "io.branch.search.internal.control.FeatureRule"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    new-instance v11, Lkotlinx/serialization/SealedClassSerializer;

    const-class v12, Lio/branch/search/internal/control/FeatureRule;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-array v13, v8, [Lkotlin/reflect/KClass;

    const-class v14, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    aput-object v14, v13, v10

    const-class v14, Lio/branch/search/internal/control/FeatureRule$Constant;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    aput-object v14, v13, v9

    const-class v14, Lio/branch/search/internal/control/FeatureRule$Or;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    aput-object v14, v13, v7

    const-class v14, Lio/branch/search/internal/control/FeatureRule$And;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    aput-object v14, v13, v6

    const-class v14, Lio/branch/search/internal/control/FeatureRule$Not;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    aput-object v14, v13, v5

    new-array v8, v8, [Lkotlinx/serialization/KSerializer;

    sget-object v14, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v14, v8, v10

    sget-object v14, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v14, v8, v9

    sget-object v9, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object v9, v8, v7

    sget-object v7, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object v7, v8, v6

    sget-object v6, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object v6, v8, v5

    invoke-direct {v11, v3, v12, v13, v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v2, v11}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const v3, 0x7fffffff

    goto :goto_1

    :cond_0
    move v11, v10

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    if-nez v12, :cond_1

    new-instance v12, Lkotlinx/serialization/internal/ArrayListSerializer;

    new-instance v13, Lkotlinx/serialization/SealedClassSerializer;

    const-class v14, Lio/branch/search/internal/control/FeatureRule;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    new-array v15, v8, [Lkotlin/reflect/KClass;

    const-class v16, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v15, v10

    const-class v16, Lio/branch/search/internal/control/FeatureRule$Constant;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v15, v9

    const-class v16, Lio/branch/search/internal/control/FeatureRule$Or;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v15, v7

    const-class v16, Lio/branch/search/internal/control/FeatureRule$And;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v15, v6

    const-class v16, Lio/branch/search/internal/control/FeatureRule$Not;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v15, v5

    new-array v4, v8, [Lkotlinx/serialization/KSerializer;

    sget-object v16, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v16, v4, v10

    sget-object v16, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v16, v4, v9

    sget-object v16, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object v16, v4, v7

    sget-object v16, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object v16, v4, v6

    sget-object v16, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object v16, v4, v5

    invoke-direct {v13, v3, v14, v15, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v12, v13}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v10, v12, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    or-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v12}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    move v3, v11

    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/control/FeatureRule$And;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v2, v1}, Lio/branch/search/internal/control/FeatureRule$And;-><init>(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/control/FeatureRule$And;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/FeatureRule$And;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lio/branch/search/internal/control/FeatureRule$And;->a(Lio/branch/search/internal/control/FeatureRule$And;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/internal/control/FeatureRule$And;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/control/FeatureRule$And;)V

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
