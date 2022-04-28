.class public final Lio/branch/search/internal/ui/StringResolver$Template;
.super Lio/branch/search/internal/ui/StringResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/StringResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Template"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/StringResolver$Template$Companion;,
        Lio/branch/search/internal/ui/StringResolver$Template$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/StringResolver$Template$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/branch/search/internal/ui/StringResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$Template$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/StringResolver$Template$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/StringResolver$Template;->Companion:Lio/branch/search/internal/ui/StringResolver$Template$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lio/branch/search/internal/ui/StringResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4}, Lio/branch/search/internal/ui/StringResolver;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "field"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "template"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Lio/branch/search/internal/ui/StringResolver$Template;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 11

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/ui/StringResolver;->a(Lio/branch/search/internal/ui/StringResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iget-object v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x5

    new-array v4, v3, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v4, v1

    const-class v5, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-class v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v4, v9

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v5, v3, v1

    sget-object v1, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v1, v3, v6

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v10, "AppName"

    invoke-direct {v1, v10, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v3, v7

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v7, "LinkTitle"

    invoke-direct {v1, v7, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v3, v8

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v7, "LinkDescription"

    invoke-direct {v1, v7, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v3, v9

    const-string v1, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v0, v1, v2, v4, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object p0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-interface {p1, p2, v6, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/internal/ui/StringResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/ui/StringResolver$Template;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/ui/StringResolver$Template;

    iget-object v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    iget-object p1, p1, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

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

    iget-object v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Template(template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
