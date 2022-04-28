.class public final Lio/branch/search/internal/ui/LinkEntityResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/LinkEntityResolver$Companion;,
        Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/LinkEntityResolver$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/ui/StringResolver;

.field public final b:Lio/branch/search/internal/ui/StringResolver;

.field public final c:Lio/branch/search/internal/ui/ImageResolver;

.field public final d:Lio/branch/search/internal/ui/ImageResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/LinkEntityResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/LinkEntityResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/LinkEntityResolver;->Companion:Lio/branch/search/internal/ui/LinkEntityResolver$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p6, p1, 0x1

    if-eqz p6, :cond_3

    iput-object p2, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_2

    iput-object p3, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_0

    iput-object p4, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    iput-object p2, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    :goto_0
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    iput-object p5, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    :goto_1
    return-void

    :cond_2
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "description"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryImage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    iput-object p2, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    iput-object p3, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    iput-object p4, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    sget-object p3, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/branch/search/internal/ui/LinkEntityResolver;-><init>(Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/ImageResolver;Lio/branch/search/internal/ui/ImageResolver;)V

    return-void
.end method

.method public static final a(Lio/branch/search/internal/ui/LinkEntityResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "self"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "output"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "serialDesc"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x5

    new-array v6, v5, [Lkotlin/reflect/KClass;

    const-class v7, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const-class v7, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v6, v11

    const-class v7, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v12, 0x4

    aput-object v7, v6, v12

    new-array v7, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v13, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v13, v7, v8

    sget-object v14, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v14, v7, v9

    new-instance v15, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v9, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v5, "AppName"

    invoke-direct {v15, v5, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v15, v7, v10

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v15, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v10, "LinkTitle"

    invoke-direct {v5, v10, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v7, v11

    new-instance v5, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v11, "LinkDescription"

    invoke-direct {v5, v11, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v7, v12

    const-string v5, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v3, v5, v4, v6, v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object v4, v0, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-interface {v1, v2, v8, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x5

    new-array v6, v5, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v6, v8

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const-class v5, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v6, v7

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v6, v12

    const/4 v5, 0x5

    new-array v5, v5, [Lkotlinx/serialization/KSerializer;

    aput-object v13, v5, v8

    const/4 v7, 0x1

    aput-object v14, v5, v7

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v11, "AppName"

    invoke-direct {v7, v11, v9}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x2

    aput-object v7, v5, v9

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v9, "LinkTitle"

    invoke-direct {v7, v9, v15}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x3

    aput-object v7, v5, v9

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v9, "LinkDescription"

    invoke-direct {v7, v9, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v5, v12

    const-string v7, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v3, v7, v4, v6, v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object v4, v0, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v3, v0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    sget-object v4, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    if-nez v3, :cond_1

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_0
    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v7, v3, [Lkotlin/reflect/KClass;

    const-class v9, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    aput-object v9, v7, v8

    const-class v9, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    new-array v9, v3, [Lkotlinx/serialization/KSerializer;

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v12, "FromApp"

    invoke-direct {v3, v12, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v9, v8

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v11, "FromLink"

    invoke-direct {v3, v11, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v9, v10

    const-string v3, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v5, v3, v6, v7, v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object v3, v0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    const/4 v6, 0x2

    invoke-interface {v1, v2, v6, v5, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :goto_1
    iget-object v3, v0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v10

    if-nez v3, :cond_2

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Lkotlin/reflect/KClass;

    const-class v9, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    aput-object v9, v7, v8

    const-class v9, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    new-array v6, v6, [Lkotlinx/serialization/KSerializer;

    new-instance v9, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v12, "FromApp"

    invoke-direct {v9, v12, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v9, v6, v8

    new-instance v8, Lkotlinx/serialization/internal/ObjectSerializer;

    const-string v9, "FromLink"

    invoke-direct {v8, v9, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v8, v6, v10

    const-string v4, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v3, v4, v5, v7, v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object v0, v0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    const/4 v4, 0x3

    invoke-interface {v1, v2, v4, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/internal/ui/StringResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    return-object v0
.end method

.method public final b()Lio/branch/search/internal/ui/StringResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    return-object v0
.end method

.method public final c()Lio/branch/search/internal/ui/ImageResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    return-object v0
.end method

.method public final d()Lio/branch/search/internal/ui/ImageResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/ui/LinkEntityResolver;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/ui/LinkEntityResolver;

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    iget-object p1, p1, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkEntityResolver(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->c:Lio/branch/search/internal/ui/ImageResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/LinkEntityResolver;->d:Lio/branch/search/internal/ui/ImageResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
