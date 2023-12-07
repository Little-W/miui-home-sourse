.class public final Lio/branch/search/internal/ui/StringResolver$Template$$serializer;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/StringResolver$Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lio/branch/search/internal/ui/StringResolver$Template;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "Template"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const/4 v0, 0x0

    const-string v2, "template"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "field"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    const/4 p0, 0x2

    new-array v0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x5

    new-array v5, v4, [Lkotlin/reflect/KClass;

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v2

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, p0

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v5, v9

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v6, v4, v2

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v2, v4, v7

    new-instance v2, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v10, "AppName"

    invoke-direct {v2, v10, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v4, p0

    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v6, "LinkTitle"

    invoke-direct {p0, v6, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object p0, v4, v8

    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v2, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v6, "LinkDescription"

    invoke-direct {p0, v6, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object p0, v4, v9

    const-string p0, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v1, p0, v3, v5, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    aput-object v1, v0, v7

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/StringResolver$Template;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const-string v3, "io.branch.search.internal.ui.StringResolver"

    const-string v4, "LinkDescription"

    const-string v5, "LinkTitle"

    const-string v6, "AppName"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Lkotlinx/serialization/SealedClassSerializer;

    const-class v15, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    new-array v7, v10, [Lkotlin/reflect/KClass;

    const-class v16, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v7, v12

    const-class v16, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v7, v13

    const-class v16, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v7, v11

    const-class v16, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v7, v9

    const-class v16, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    aput-object v16, v7, v8

    new-array v10, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v16, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v16, v10, v12

    sget-object v12, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v12, v10, v13

    new-instance v12, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v12, v6, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v12, v10, v11

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v6, v5, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v10, v9

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v5, v4, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v10, v8

    invoke-direct {v14, v3, v15, v7, v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v7, 0x1

    invoke-interface {v0, v1, v7, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/ui/StringResolver;

    const v4, 0x7fffffff

    move v14, v4

    goto/16 :goto_1

    :cond_0
    move v7, v13

    move v14, v12

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v15

    const/4 v8, -0x1

    if-eq v15, v8, :cond_3

    if-eqz v15, :cond_2

    if-ne v15, v7, :cond_1

    new-instance v8, Lkotlinx/serialization/SealedClassSerializer;

    const-class v15, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    new-array v9, v10, [Lkotlin/reflect/KClass;

    const-class v18, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    aput-object v18, v9, v12

    const-class v18, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    aput-object v18, v9, v7

    const-class v7, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v9, v11

    const-class v7, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/16 v17, 0x3

    aput-object v7, v9, v17

    const-class v7, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/16 v16, 0x4

    aput-object v7, v9, v16

    new-array v7, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v18, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v18, v7, v12

    sget-object v18, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    const/16 v19, 0x1

    aput-object v18, v7, v19

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v10, v6, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v7, v11

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v10, v5, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v12, 0x3

    aput-object v10, v7, v12

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v10, v4, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x4

    aput-object v10, v7, v11

    invoke-direct {v8, v3, v15, v9, v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v7, 0x1

    invoke-interface {v0, v1, v7, v8, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v14, v14, 0x2

    move v8, v11

    move v9, v12

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v15}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    move v8, v12

    const/4 v11, 0x4

    move v12, v9

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v14, v14, 0x1

    const/4 v10, 0x5

    move v12, v8

    move v8, v11

    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_3
    move-object v3, v13

    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$Template;

    const/4 v1, 0x0

    invoke-direct {v0, v14, v2, v3, v1}, Lio/branch/search/internal/ui/StringResolver$Template;-><init>(ILjava/lang/String;Lio/branch/search/internal/ui/StringResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/StringResolver$Template;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/StringResolver$Template;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lio/branch/search/internal/ui/StringResolver$Template;->a(Lio/branch/search/internal/ui/StringResolver$Template;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/StringResolver$Template;)V

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
