.class public final Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;
.super Lio/branch/search/internal/ui/ContainerResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ContainerResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppContainerResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$Companion;,
        Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/branch/search/internal/ui/AppEntityResolver;

.field public final c:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->Companion:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    const/4 p5, 0x0

    invoke-direct {p0, p1, p5}, Lio/branch/search/internal/ui/ContainerResolver;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    iput-object p2, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->b:Lio/branch/search/internal/ui/AppEntityResolver;

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iput-object p4, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

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

.method public static final a(Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/ui/ContainerResolver;->a(Lio/branch/search/internal/ui/ContainerResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->b:Lio/branch/search/internal/ui/AppEntityResolver;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final c()Lio/branch/search/internal/ui/AppEntityResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->b:Lio/branch/search/internal/ui/AppEntityResolver;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->a:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->b:Lio/branch/search/internal/ui/AppEntityResolver;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->b:Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

    iget-object p1, p1, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

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

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->b:Lio/branch/search/internal/ui/AppEntityResolver;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

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

    const-string v1, "AppContainerResolver(header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->b:Lio/branch/search/internal/ui/AppEntityResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
