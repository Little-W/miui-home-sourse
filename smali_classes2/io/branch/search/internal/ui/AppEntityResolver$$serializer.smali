.class public final Lio/branch/search/internal/ui/AppEntityResolver$$serializer;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/AppEntityResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lio/branch/search/internal/ui/AppEntityResolver;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "io.branch.search.internal.ui.AppEntityResolver"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "name"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v2, "description"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "primaryImage"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "secondaryImage"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v1, v0, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v4, v0, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v4, v10

    new-array v5, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v11, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v11, v5, v6

    sget-object v12, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v12, v5, v7

    new-instance v13, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v14, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v15, "AppName"

    invoke-direct {v13, v15, v14}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v5, v8

    new-instance v13, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v8, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v7, "LinkTitle"

    invoke-direct {v13, v7, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v5, v9

    new-instance v13, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v9, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v0, "LinkDescription"

    invoke-direct {v13, v0, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v5, v10

    const-string v13, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v2, v13, v3, v4, v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v6

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x5

    new-array v5, v4, [Lkotlin/reflect/KClass;

    const-class v4, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v5, v6

    const-class v4, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v16, 0x1

    aput-object v4, v5, v16

    const-class v4, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v18, 0x2

    aput-object v4, v5, v18

    const-class v4, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/16 v17, 0x3

    aput-object v4, v5, v17

    const-class v4, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v5, v10

    const/4 v4, 0x5

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    aput-object v11, v4, v6

    const/4 v11, 0x1

    aput-object v12, v4, v11

    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v11, v15, v14}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v12, 0x2

    aput-object v11, v4, v12

    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v11, v7, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x3

    aput-object v11, v4, v7

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v7, v0, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v4, v10

    invoke-direct {v2, v13, v3, v5, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lkotlin/reflect/KClass;

    const-class v7, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v5, v6

    const-class v7, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v5, v2

    new-array v7, v4, [Lkotlinx/serialization/KSerializer;

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v8, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v9, "FromApp"

    invoke-direct {v4, v9, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v7, v6

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-string v12, "FromLink"

    invoke-direct {v4, v12, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v7, v2

    const-string v2, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v0, v2, v3, v5, v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x2

    aput-object v0, v1, v3

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v5, v3, [Lkotlin/reflect/KClass;

    const-class v7, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v5, v6

    const-class v7, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v13, 0x1

    aput-object v7, v5, v13

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v7, v9, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v3, v6

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v7, v12, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v3, v13

    invoke-direct {v0, v2, v4, v5, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lio/branch/search/internal/ui/ExtraResolver;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-array v3, v13, [Lkotlin/reflect/KClass;

    const-class v4, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v3, v6

    new-array v4, v13, [Lkotlinx/serialization/KSerializer;

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    const-string v8, "FromAppStoreLink"

    invoke-direct {v5, v8, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v4, v6

    const-string v5, "io.branch.search.internal.ui.ExtraResolver"

    invoke-direct {v0, v5, v2, v3, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v10

    return-object v1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/AppEntityResolver;
    .locals 35

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const-string v3, "FromAppStoreLink"

    const-string v4, "io.branch.search.internal.ui.ImageResolver"

    const-string v5, "FromLink"

    const-string v6, "FromApp"

    const-string v7, "io.branch.search.internal.ui.StringResolver"

    const-string v8, "LinkDescription"

    const-string v9, "LinkTitle"

    const-string v10, "AppName"

    const/4 v11, 0x5

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v16, Lio/branch/search/internal/ui/StringResolver;

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-array v14, v11, [Lkotlin/reflect/KClass;

    const-class v17, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    aput-object v17, v14, v15

    const-class v17, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    aput-object v17, v14, v13

    const-class v17, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    const/16 v16, 0x2

    aput-object v17, v14, v16

    const-class v17, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    const/16 v18, 0x3

    aput-object v17, v14, v18

    const-class v17, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    const/16 v18, 0x4

    aput-object v17, v14, v18

    new-array v13, v11, [Lkotlinx/serialization/KSerializer;

    sget-object v18, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v18, v13, v15

    sget-object v19, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    const/16 v17, 0x1

    aput-object v19, v13, v17

    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v15, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v11, v10, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v16, 0x2

    aput-object v11, v13, v16

    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    move-object/from16 v22, v3

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v11, v9, v3}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v23, 0x3

    aput-object v11, v13, v23

    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    move-object/from16 v23, v4

    sget-object v4, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v11, v8, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v24, 0x4

    aput-object v11, v13, v24

    invoke-direct {v2, v7, v12, v14, v13}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/ui/StringResolver;

    new-instance v12, Lkotlinx/serialization/SealedClassSerializer;

    const-class v13, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    const/4 v14, 0x5

    new-array v11, v14, [Lkotlin/reflect/KClass;

    const-class v14, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const/16 v21, 0x0

    aput-object v14, v11, v21

    const-class v14, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v11, v17

    const-class v14, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const/16 v16, 0x2

    aput-object v14, v11, v16

    const-class v14, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const/16 v24, 0x3

    aput-object v14, v11, v24

    const-class v14, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const/16 v24, 0x4

    aput-object v14, v11, v24

    const/4 v14, 0x5

    new-array v14, v14, [Lkotlinx/serialization/KSerializer;

    const/16 v20, 0x0

    aput-object v18, v14, v20

    move-object/from16 v18, v2

    const/4 v2, 0x1

    aput-object v19, v14, v2

    new-instance v2, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v2, v10, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x2

    aput-object v2, v14, v10

    new-instance v2, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v2, v9, v3}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v14, v3

    new-instance v2, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v2, v8, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v2, v14, v3

    invoke-direct {v12, v7, v13, v11, v14}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/ui/StringResolver;

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v9, v2

    new-array v10, v8, [Lkotlinx/serialization/KSerializer;

    new-instance v12, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-direct {v12, v6, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v12, v10, v11

    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-direct {v11, v5, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v11, v10, v2

    move-object/from16 v2, v23

    invoke-direct {v4, v2, v7, v9, v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v8, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/internal/ui/ImageResolver;

    new-instance v7, Lkotlinx/serialization/SealedClassSerializer;

    const-class v9, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v8, [Lkotlin/reflect/KClass;

    const-class v11, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v10, v14

    const-class v11, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v15, 0x1

    aput-object v11, v10, v15

    new-array v8, v8, [Lkotlinx/serialization/KSerializer;

    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v11, v6, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v11, v8, v14

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-direct {v6, v5, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v8, v15

    invoke-direct {v7, v2, v9, v10, v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/ui/ImageResolver;

    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lio/branch/search/internal/ui/ExtraResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v7, v15, [Lkotlin/reflect/KClass;

    const-class v8, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-array v8, v15, [Lkotlinx/serialization/KSerializer;

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    move-object/from16 v12, v22

    invoke-direct {v10, v12, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v8, v9

    const-string v9, "io.branch.search.internal.ui.ExtraResolver"

    invoke-direct {v5, v9, v6, v7, v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v6, 0x4

    invoke-interface {v0, v1, v6, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/internal/ui/ExtraResolver;

    const v6, 0x7fffffff

    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v33, v5

    move/from16 v28, v6

    move-object/from16 v29, v18

    goto/16 :goto_3

    :cond_0
    move-object v12, v3

    move-object v2, v4

    const/4 v3, 0x0

    move-object v11, v3

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v18, v15

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v4

    move-object/from16 v19, v11

    const/4 v11, -0x1

    if-eq v4, v11, :cond_6

    if-eqz v4, :cond_5

    const/4 v11, 0x1

    if-eq v4, v11, :cond_4

    const/4 v11, 0x2

    if-eq v4, v11, :cond_3

    const/4 v11, 0x3

    if-eq v4, v11, :cond_2

    const/4 v11, 0x4

    if-ne v4, v11, :cond_1

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v11, Lio/branch/search/internal/ui/ExtraResolver;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const/4 v7, 0x1

    new-array v8, v7, [Lkotlin/reflect/KClass;

    const-class v17, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    const/16 v21, 0x0

    aput-object v17, v8, v21

    move-object/from16 v24, v9

    new-array v9, v7, [Lkotlinx/serialization/KSerializer;

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    move-object/from16 v25, v10

    sget-object v10, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-direct {v7, v12, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v9, v21

    const-string v7, "io.branch.search.internal.ui.ExtraResolver"

    invoke-direct {v4, v7, v11, v8, v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v7, 0x4

    invoke-interface {v0, v1, v7, v4, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lio/branch/search/internal/ui/ExtraResolver;

    or-int/lit8 v3, v3, 0x10

    move-object/from16 v11, v19

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v4}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/16 v17, 0x1

    aput-object v10, v9, v17

    new-array v10, v8, [Lkotlinx/serialization/KSerializer;

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    move-object/from16 v26, v12

    sget-object v12, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-direct {v8, v6, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v10, v11

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-direct {v8, v5, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v10, v17

    invoke-direct {v4, v2, v7, v9, v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v7, 0x3

    invoke-interface {v0, v1, v7, v4, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/branch/search/internal/ui/ImageResolver;

    or-int/lit8 v3, v3, 0x8

    goto :goto_1

    :cond_3
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v9, v12

    new-array v10, v8, [Lkotlinx/serialization/KSerializer;

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-direct {v8, v6, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v10, v11

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-direct {v8, v5, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-direct {v4, v2, v7, v9, v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v7, 0x2

    invoke-interface {v0, v1, v7, v4, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lio/branch/search/internal/ui/ImageResolver;

    or-int/lit8 v3, v3, 0x4

    :goto_1
    move-object/from16 v11, v19

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v12, v26

    goto/16 :goto_0

    :cond_4
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v8, 0x5

    new-array v9, v8, [Lkotlin/reflect/KClass;

    const-class v8, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const-class v8, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v9, v10

    const-class v8, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v9, v10

    const-class v8, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v9, v10

    const-class v8, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v9, v10

    const/4 v8, 0x5

    new-array v10, v8, [Lkotlinx/serialization/KSerializer;

    sget-object v8, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    sget-object v8, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    const/4 v11, 0x1

    aput-object v8, v10, v11

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    move-object/from16 v12, v25

    invoke-direct {v8, v12, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x2

    aput-object v8, v10, v11

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    invoke-direct {v8, v2, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x3

    aput-object v8, v10, v11

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    move-object/from16 v24, v5

    move-object/from16 v5, v23

    invoke-direct {v8, v5, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x4

    aput-object v8, v10, v11

    move-object/from16 v8, v22

    invoke-direct {v4, v8, v7, v9, v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v7, v19

    const/4 v9, 0x1

    invoke-interface {v0, v1, v9, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v3, v3, 0x2

    move-object v9, v2

    move-object v7, v8

    move-object v10, v12

    goto/16 :goto_2

    :cond_5
    move-object/from16 v25, v2

    move-object/from16 v24, v5

    move-object v5, v8

    move-object v2, v9

    move-object/from16 v26, v12

    move-object v8, v7

    move-object v12, v10

    move-object/from16 v7, v19

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v9, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const/4 v10, 0x5

    new-array v11, v10, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/16 v19, 0x0

    aput-object v10, v11, v19

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/16 v17, 0x1

    aput-object v10, v11, v17

    const-class v10, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/16 v16, 0x2

    aput-object v10, v11, v16

    const-class v10, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/16 v19, 0x3

    aput-object v10, v11, v19

    const-class v10, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/16 v19, 0x4

    aput-object v10, v11, v19

    move-object/from16 v19, v6

    const/4 v10, 0x5

    new-array v6, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v20, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    const/16 v21, 0x0

    aput-object v20, v6, v21

    sget-object v20, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    const/16 v17, 0x1

    aput-object v20, v6, v17

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    move-object/from16 v22, v7

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-direct {v10, v12, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x2

    aput-object v10, v6, v7

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v10, v2, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x3

    aput-object v10, v6, v7

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v10, v5, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x4

    aput-object v10, v6, v7

    invoke-direct {v4, v8, v9, v11, v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    move-object/from16 v6, v18

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9, v4, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v3, v3, 0x1

    move-object v9, v2

    move-object v7, v8

    move-object v10, v12

    move-object/from16 v6, v19

    move-object/from16 v11, v22

    :goto_2
    move-object/from16 v2, v25

    move-object/from16 v12, v26

    move-object v8, v5

    move-object/from16 v5, v24

    goto/16 :goto_0

    :cond_6
    move-object/from16 v6, v18

    move-object/from16 v22, v19

    move/from16 v28, v3

    move-object/from16 v29, v6

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    move-object/from16 v30, v22

    :goto_3
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/AppEntityResolver;

    const/16 v34, 0x0

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v34}, Lio/branch/search/internal/ui/AppEntityResolver;-><init>(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ExtraResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/AppEntityResolver;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lio/branch/search/internal/ui/AppEntityResolver;->a(Lio/branch/search/internal/ui/AppEntityResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/AppEntityResolver;)V

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
