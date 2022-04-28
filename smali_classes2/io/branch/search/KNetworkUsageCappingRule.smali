.class public final Lio/branch/search/KNetworkUsageCappingRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/KNetworkUsageCappingRule$Companion;,
        Lio/branch/search/KNetworkUsageCappingRule$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/KNetworkUsageCappingRule$Companion;

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lio/branch/search/KNetworkUsageCappingRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/KNetworkUsageCappingRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/KNetworkUsageCappingRule;->Companion:Lio/branch/search/KNetworkUsageCappingRule$Companion;

    const/4 v1, 0x3

    new-array v2, v1, [Lkotlin/Pair;

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Lio/branch/search/e5;->v:Lio/branch/search/e5;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v7, Lio/branch/search/e5;->x:Lio/branch/search/e5;

    const/4 v8, 0x1

    aput-object v7, v4, v8

    sget-object v9, Lio/branch/search/e5;->w:Lio/branch/search/e5;

    const/4 v10, 0x2

    aput-object v9, v4, v10

    sget-object v11, Lio/branch/search/e5;->y:Lio/branch/search/e5;

    aput-object v11, v4, v1

    invoke-static {v0, v4}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "LOCAL_IMAGES"

    invoke-static {v12, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v6

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object v7, v4, v8

    invoke-static {v0, v4}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "ADS_IMAGES"

    invoke-static {v12, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v6

    aput-object v7, v4, v8

    aput-object v9, v4, v10

    aput-object v11, v4, v1

    sget-object v5, Lio/branch/search/e5;->m:Lio/branch/search/e5;

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ALL_LOCAL"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lio/branch/search/KNetworkUsageCappingRule;->e:Ljava/util/Map;

    new-array v2, v3, [Lkotlin/Pair;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "wifi"

    aput-object v4, v3, v6

    const-string v4, "wifi:metered"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ALL_WIFI"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v6

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "cellular"

    aput-object v4, v3, v6

    const-string v4, "cellular:metered"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ALL_CELLULAR"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "wifi:metered"

    aput-object v4, v3, v6

    const-string v4, "cellular:metered"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ALL_METERED"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "wifi"

    aput-object v4, v3, v6

    const-string v4, "cellular"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Lio/branch/search/KNetworkUsageCappingRule$Companion;->a(Lio/branch/search/KNetworkUsageCappingRule$Companion;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ALL_NONMETERED"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/branch/search/KNetworkUsageCappingRule;->f:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    if-eqz p7, :cond_3

    iput p2, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_2

    iput-wide p3, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_1

    iput-object p5, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    iput-object p6, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "connection_types"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "channels"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "byte_limit"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "days"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    iput-wide p2, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    iput-object p4, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lio/branch/search/KNetworkUsageCappingRule;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static final a(Lio/branch/search/KNetworkUsageCappingRule;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget-wide v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lio/branch/search/KNetworkUsageCappingRule;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/KNetworkUsageCappingRule;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/KNetworkUsageCappingRule;

    iget v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    iget v1, p1, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    iget-wide v2, p1, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

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

.method public final f()I
    .locals 1

    iget v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KNetworkUsageCappingRule(days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", byte_limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connection_types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/KNetworkUsageCappingRule;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
