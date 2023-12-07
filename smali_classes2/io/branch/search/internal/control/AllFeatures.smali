.class public final Lio/branch/search/internal/control/AllFeatures;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/control/AllFeatures$Companion;,
        Lio/branch/search/internal/control/AllFeatures$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/control/AllFeatures$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/control/FeatureFlag;

.field public final b:Lio/branch/search/internal/control/FeatureFlag;

.field public final c:Lio/branch/search/internal/control/FeatureFlag;

.field public final d:Lio/branch/search/internal/control/FeatureFlag;

.field public final e:Lio/branch/search/internal/control/FeatureFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/control/AllFeatures$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/control/AllFeatures$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/control/AllFeatures;->Companion:Lio/branch/search/internal/control/AllFeatures$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/branch/search/internal/control/AllFeatures;-><init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    iput-object p3, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    goto :goto_1

    :cond_1
    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    iput-object p4, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    goto :goto_2

    :cond_2
    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    iput-object p5, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    goto :goto_3

    :cond_3
    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    iput-object p6, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    goto :goto_4

    :cond_4
    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    :goto_4
    return-void
.end method

.method public constructor <init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;)V
    .locals 1

    const-string v0, "remote_search"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app_store_search"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query_hint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auto_suggest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    iput-object p2, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    iput-object p3, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    iput-object p4, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    iput-object p5, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p2

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object p5

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-direct/range {p2 .. p7}, Lio/branch/search/internal/control/AllFeatures;-><init>(Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;Lio/branch/search/internal/control/FeatureFlag;)V

    return-void
.end method

.method public static final a(Lio/branch/search/internal/control/AllFeatures;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object v3, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p2, v2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object v2, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x2

    if-nez v0, :cond_4

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object v3, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p2, v2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x3

    if-nez v0, :cond_6

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object v3, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p2, v2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {}, Lio/branch/search/n0;->a()Lio/branch/search/internal/control/FeatureFlag;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v1, 0x4

    if-nez v0, :cond_8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    sget-object v0, Lio/branch/search/internal/control/FeatureFlag$$serializer;->INSTANCE:Lio/branch/search/internal/control/FeatureFlag$$serializer;

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/internal/control/FeatureFlag;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    return-object p0
.end method

.method public final b()Lio/branch/search/internal/control/FeatureFlag;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    return-object p0
.end method

.method public final c()Lio/branch/search/internal/control/FeatureFlag;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    return-object p0
.end method

.method public final e()Lio/branch/search/internal/control/FeatureFlag;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/control/AllFeatures;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/control/AllFeatures;

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p1, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p1, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p1, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p1, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    iget-object p1, p1, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

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
    .locals 3

    iget-object v0, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AllFeatures(remote_search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/control/AllFeatures;->a:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", app_store_search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/control/AllFeatures;->b:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", query_hint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/control/AllFeatures;->c:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", auto_suggest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/control/AllFeatures;->d:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", analytics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
