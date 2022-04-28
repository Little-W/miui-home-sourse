.class public final Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/LinkEntityResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lio/branch/search/internal/ui/LinkEntityResolver;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-direct {v0}, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "io.branch.search.internal.ui.LinkEntityResolver"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "name"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "primaryImage"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "secondaryImage"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x5

    new-array v5, v4, [Lkotlin/reflect/KClass;

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v10, 0x3

    aput-object v6, v5, v10

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v0

    new-array v6, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v11, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v11, v6, v7

    sget-object v12, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v12, v6, v8

    new-instance v13, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v14, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v15, "AppName"

    invoke-direct {v13, v15, v14}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v6, v9

    new-instance v13, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v15, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v9, "LinkTitle"

    invoke-direct {v13, v9, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v6, v10

    new-instance v9, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v10, "LinkDescription"

    invoke-direct {v9, v10, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v6, v0

    const-string v9, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v2, v9, v3, v5, v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v7

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v5, v4, [Lkotlin/reflect/KClass;

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v7

    const-class v6, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v8

    const-class v6, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v0

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    aput-object v11, v4, v7

    aput-object v12, v4, v8

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v9, "AppName"

    invoke-direct {v6, v9, v14}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x2

    aput-object v6, v4, v9

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v9, "LinkTitle"

    invoke-direct {v6, v9, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x3

    aput-object v6, v4, v9

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v9, "LinkDescription"

    invoke-direct {v6, v9, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v4, v0

    const-string v0, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v2, v0, v3, v5, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v8

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v4, v7

    const-class v5, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v5, v3, [Lkotlinx/serialization/KSerializer;

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v6, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v9, "FromApp"

    invoke-direct {v3, v9, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v5, v7

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v9, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-string v10, "FromLink"

    invoke-direct {v3, v10, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v5, v8

    const-string v3, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v0, v3, v2, v4, v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v4, v2, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v4, v7

    const-class v5, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v4, v8

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v10, "FromApp"

    invoke-direct {v5, v10, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v2, v7

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v6, "FromLink"

    invoke-direct {v5, v6, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v2, v8

    const-string v5, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v0, v5, v3, v4, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    return-object v1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/LinkEntityResolver;
    .locals 23

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v9, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v3, [Lkotlin/reflect/KClass;

    const-class v11, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    aput-object v11, v10, v8

    const-class v11, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    aput-object v11, v10, v7

    const-class v11, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    aput-object v11, v10, v6

    const-class v11, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    aput-object v11, v10, v5

    const-class v11, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    aput-object v11, v10, v4

    new-array v11, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v12, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v12, v11, v8

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v13, v11, v7

    new-instance v14, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v15, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v7, "AppName"

    invoke-direct {v14, v7, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v14, v11, v6

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v14, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v6, "LinkTitle"

    invoke-direct {v7, v6, v14}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v11, v5

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v5, "LinkDescription"

    invoke-direct {v6, v5, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v11, v4

    const-string v5, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v2, v5, v9, v10, v11}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v8, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/ui/StringResolver;

    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v9, v3, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v9, v8

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-class v10, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const-class v10, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-class v10, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v9, v4

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    aput-object v12, v3, v8

    const/4 v10, 0x1

    aput-object v13, v3, v10

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v11, "AppName"

    invoke-direct {v10, v11, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x2

    aput-object v10, v3, v11

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v11, "LinkTitle"

    invoke-direct {v10, v11, v14}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x3

    aput-object v10, v3, v11

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v11, "LinkDescription"

    invoke-direct {v10, v11, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v3, v4

    const-string v4, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v5, v4, v6, v9, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/internal/ui/StringResolver;

    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v7, 0x2

    new-array v9, v7, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v9, v8

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v9, v3

    new-array v10, v7, [Lkotlinx/serialization/KSerializer;

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v12, "FromApp"

    invoke-direct {v7, v12, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v10, v8

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-string v13, "FromLink"

    invoke-direct {v7, v13, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v10, v3

    const-string v3, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v5, v3, v6, v9, v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x2

    invoke-interface {v0, v1, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/internal/ui/ImageResolver;

    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v7, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v9, v3, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v9, v8

    const-class v10, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v14, "FromApp"

    invoke-direct {v10, v14, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v3, v8

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v10, "FromLink"

    invoke-direct {v8, v10, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v3, v13

    const-string v8, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v6, v8, v7, v9, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/ui/ImageResolver;

    const v6, 0x7fffffff

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v17, v6

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    move-object v5, v2

    move-object v7, v5

    move-object v9, v7

    move v6, v8

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v10}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    new-instance v10, Lkotlinx/serialization/SealedClassSerializer;

    const-class v11, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v12, 0x2

    new-array v13, v12, [Lkotlin/reflect/KClass;

    const-class v14, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    aput-object v14, v13, v8

    const-class v14, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    new-array v14, v12, [Lkotlinx/serialization/KSerializer;

    new-instance v12, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v4, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v3, "FromApp"

    invoke-direct {v12, v3, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v12, v14, v8

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v4, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-string v12, "FromLink"

    invoke-direct {v3, v12, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v14, v15

    const-string v3, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v10, v3, v11, v13, v14}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v10, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lio/branch/search/internal/ui/ImageResolver;

    or-int/lit8 v6, v6, 0x8

    goto/16 :goto_1

    :pswitch_1
    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x2

    new-array v11, v10, [Lkotlin/reflect/KClass;

    const-class v12, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    aput-object v12, v11, v8

    const-class v12, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    new-array v12, v10, [Lkotlinx/serialization/KSerializer;

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v14, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v15, "FromApp"

    invoke-direct {v10, v15, v14}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v12, v8

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v14, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-string v15, "FromLink"

    invoke-direct {v10, v15, v14}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v12, v13

    const-string v10, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v3, v10, v4, v11, v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x2

    invoke-interface {v0, v1, v4, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lio/branch/search/internal/ui/ImageResolver;

    or-int/lit8 v6, v6, 0x4

    goto :goto_1

    :pswitch_2
    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x5

    new-array v11, v10, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v11, v8

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-class v10, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const-class v10, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v11, v12

    const-class v10, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x4

    aput-object v10, v11, v12

    const/4 v10, 0x5

    new-array v12, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v10, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v10, v12, v8

    sget-object v10, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    const/4 v13, 0x1

    aput-object v10, v12, v13

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v14, "AppName"

    invoke-direct {v10, v14, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v13, 0x2

    aput-object v10, v12, v13

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v14, "LinkTitle"

    invoke-direct {v10, v14, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v13, 0x3

    aput-object v10, v12, v13

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v14, "LinkDescription"

    invoke-direct {v10, v14, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v13, 0x4

    aput-object v10, v12, v13

    const-string v10, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v3, v10, v4, v11, v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v6, v6, 0x2

    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x4

    goto/16 :goto_0

    :pswitch_3
    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x5

    new-array v11, v10, [Lkotlin/reflect/KClass;

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v11, v8

    const-class v10, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    const-class v10, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const-class v10, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v11, v12

    const-class v10, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v12, 0x4

    aput-object v10, v11, v12

    const/4 v10, 0x5

    new-array v12, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v13, v12, v8

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    new-instance v13, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v15, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v10, "AppName"

    invoke-direct {v13, v10, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x2

    aput-object v13, v12, v10

    new-instance v13, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v15, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v10, "LinkTitle"

    invoke-direct {v13, v10, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x3

    aput-object v13, v12, v10

    new-instance v13, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v15, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v10, "LinkDescription"

    invoke-direct {v13, v10, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x4

    aput-object v13, v12, v10

    const-string v13, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v3, v13, v4, v11, v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v8, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/ui/StringResolver;

    or-int/lit8 v6, v6, 0x1

    move v4, v10

    const/4 v3, 0x5

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move/from16 v17, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    :goto_2
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/internal/ui/LinkEntityResolver;

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/LinkEntityResolver;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lio/branch/search/internal/ui/LinkEntityResolver;->a(Lio/branch/search/internal/ui/LinkEntityResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/internal/ui/LinkEntityResolver;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/internal/ui/LinkEntityResolver;)V

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
