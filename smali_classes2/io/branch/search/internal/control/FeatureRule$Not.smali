.class public final Lio/branch/search/internal/control/FeatureRule$Not;
.super Lio/branch/search/internal/control/FeatureRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/FeatureRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Not"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/control/FeatureRule$Not$Companion;,
        Lio/branch/search/internal/control/FeatureRule$Not$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/control/FeatureRule$Not$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/control/FeatureRule;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/control/FeatureRule$Not$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/control/FeatureRule$Not$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/control/FeatureRule$Not;->Companion:Lio/branch/search/internal/control/FeatureRule$Not$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/control/FeatureRule;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lio/branch/search/internal/control/FeatureRule;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lio/branch/search/internal/control/FeatureRule$Not;->a:Lio/branch/search/internal/control/FeatureRule;

    return-void

    :cond_0
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    const-string p1, "rule"

    invoke-direct {p0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Lio/branch/search/internal/control/FeatureRule$Not;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 10

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/control/FeatureRule;->a(Lio/branch/search/internal/control/FeatureRule;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lio/branch/search/internal/control/FeatureRule;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x5

    new-array v3, v2, [Lkotlin/reflect/KClass;

    const-class v4, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lio/branch/search/internal/control/FeatureRule$Constant;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lio/branch/search/internal/control/FeatureRule$Or;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lio/branch/search/internal/control/FeatureRule$And;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lio/branch/search/internal/control/FeatureRule$Not;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$TrackingStatus$$serializer;

    aput-object v4, v2, v5

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;

    aput-object v4, v2, v6

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$Or$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Or$$serializer;

    aput-object v4, v2, v7

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$And$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$And$$serializer;

    aput-object v4, v2, v8

    sget-object v4, Lio/branch/search/internal/control/FeatureRule$Not$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureRule$Not$$serializer;

    aput-object v4, v2, v9

    const-string v4, "io.branch.search.internal.control.FeatureRule"

    invoke-direct {v0, v4, v1, v3, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureRule$Not;->a:Lio/branch/search/internal/control/FeatureRule;

    invoke-interface {p1, p2, v5, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/o0;)Z
    .locals 1

    const-string v0, "userData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureRule$Not;->a:Lio/branch/search/internal/control/FeatureRule;

    invoke-virtual {p0, p1}, Lio/branch/search/internal/control/FeatureRule;->a(Lio/branch/search/o0;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/control/FeatureRule$Not;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/control/FeatureRule$Not;

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureRule$Not;->a:Lio/branch/search/internal/control/FeatureRule;

    iget-object p1, p1, Lio/branch/search/internal/control/FeatureRule$Not;->a:Lio/branch/search/internal/control/FeatureRule;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureRule$Not;->a:Lio/branch/search/internal/control/FeatureRule;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not(rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/control/FeatureRule$Not;->a:Lio/branch/search/internal/control/FeatureRule;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
