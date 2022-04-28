.class public final Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;
.super Lio/branch/search/internal/ui/ContainerResolver;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/k4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ContainerResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkContainerResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;,
        Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/ui/StringResolver;

.field public final b:Lio/branch/search/internal/ui/LinkEntityResolver;

.field public final c:Lio/branch/search/internal/ui/AppEntityResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->Companion:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/ui/StringResolver;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    const/4 p5, 0x0

    invoke-direct {p0, p1, p5}, Lio/branch/search/internal/ui/ContainerResolver;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    iput-object p2, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iput-object p4, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "entities"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "header"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 12

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/ui/ContainerResolver;->a(Lio/branch/search/internal/ui/ContainerResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x5

    new-array v3, v2, [Lkotlin/reflect/KClass;

    const-class v4, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v4, v2, v5

    sget-object v4, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v4, v2, v6

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v11, "AppName"

    invoke-direct {v4, v11, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v7

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v11, "LinkTitle"

    invoke-direct {v4, v11, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v8

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v8, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v10, "LinkDescription"

    invoke-direct {v4, v10, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v9

    const-string v4, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v0, v4, v1, v3, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-interface {p1, p2, v5, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v1

    invoke-interface {p1, p2, v6, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object p0

    invoke-interface {p1, p2, v7, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/AppEntityResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->c:Lio/branch/search/internal/ui/AppEntityResolver;

    return-object v0
.end method

.method public a(Lio/branch/search/m4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m4;",
            "Lio/branch/search/BranchBaseAppResult<",
            "+",
            "Lio/branch/search/BranchBaseLinkResult;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/ui/BranchEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/k4$a;->a(Lio/branch/search/k4;Lio/branch/search/m4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()Lio/branch/search/internal/ui/LinkEntityResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-object v0
.end method

.method public final c()Lio/branch/search/internal/ui/StringResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object p1

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

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkContainerResolver(header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a:Lio/branch/search/internal/ui/StringResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", includeAppAtTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
