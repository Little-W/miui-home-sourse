.class public final Lio/branch/search/internal/ui/StringResolver$Template$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

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

    const-string v0, "template"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "field"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

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
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x5

    new-array v6, v5, [Lkotlin/reflect/KClass;

    const-class v7, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v3

    const-class v7, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v0

    const-class v7, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const-class v7, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v10, 0x4

    aput-object v7, v6, v10

    new-array v5, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v7, v5, v3

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v3, v5, v8

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v11, "AppName"

    invoke-direct {v3, v11, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v5, v0

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v7, "LinkTitle"

    invoke-direct {v0, v7, v3}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v0, v5, v9

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v7, "LinkDescription"

    invoke-direct {v0, v7, v3}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v0, v5, v10

    const-string v0, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v2, v0, v4, v6, v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v8

    return-object v1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/StringResolver$Template;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lkotlinx/serialization/SealedClassSerializer;

    const-class v11, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    new-array v12, v6, [Lkotlin/reflect/KClass;

    const-class v13, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    aput-object v13, v12, v8

    const-class v13, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    aput-object v13, v12, v9

    const-class v13, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    aput-object v13, v12, v7

    const-class v13, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    aput-object v13, v12, v5

    const-class v13, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    aput-object v13, v12, v4

    new-array v6, v6, [Lkotlinx/serialization/KSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v13, v6, v8

    sget-object v8, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v8, v6, v9

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v14, "AppName"

    invoke-direct {v8, v14, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v6, v7

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v8, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v13, "LinkTitle"

    invoke-direct {v7, v13, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v6, v5

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v8, "LinkDescription"

    invoke-direct {v5, v8, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v6, v4

    const-string v4, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v10, v4, v11, v12, v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/internal/ui/StringResolver;

    const v5, 0x7fffffff

    goto/16 :goto_1

    :cond_0
    move v11, v8

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    if-eqz v12, :cond_2

    if-ne v12, v9, :cond_1

    new-instance v12, Lkotlinx/serialization/SealedClassSerializer;

    const-class v13, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    new-array v14, v6, [Lkotlin/reflect/KClass;

    const-class v15, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    aput-object v15, v14, v8

    const-class v15, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    aput-object v15, v14, v9

    const-class v15, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    aput-object v15, v14, v7

    const-class v15, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    aput-object v15, v14, v5

    const-class v15, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    aput-object v15, v14, v4

    new-array v15, v6, [Lkotlinx/serialization/KSerializer;

    sget-object v16, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v16, v15, v8

    sget-object v16, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v16, v15, v9

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v8, "AppName"

    invoke-direct {v6, v8, v3}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v15, v7

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v8, "LinkTitle"

    invoke-direct {v3, v8, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v15, v5

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v8, "LinkDescription"

    invoke-direct {v3, v8, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v15, v4

    const-string v3, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v12, v3, v13, v14, v15}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v9, v12, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v11, v11, 0x2

    const/4 v6, 0x5

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v12}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    move v3, v8

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v11, v11, 0x1

    const/4 v6, 0x5

    goto/16 :goto_0

    :cond_3
    move-object v4, v10

    move v5, v11

    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$Template;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v2, v4, v1}, Lio/branch/search/internal/ui/StringResolver$Template;-><init>(ILjava/lang/String;Lio/branch/search/internal/ui/StringResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/StringResolver$Template;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/StringResolver$Template;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lio/branch/search/internal/ui/StringResolver$Template;->a(Lio/branch/search/internal/ui/StringResolver$Template;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/StringResolver$Template;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
