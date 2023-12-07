.class public final Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;
.super Lio/branch/search/internal/ui/ContainerResolver;

# interfaces
.implements Lio/branch/search/r4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ContainerResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlatLinkContainerResolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;,
        Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lio/branch/search/internal/ui/LinkEntityResolver;

.field public final d:Lio/branch/search/internal/ui/AppEntityResolver;

.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->Companion:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    const/4 p7, 0x0

    invoke-direct {p0, p1, p2, p7}, Lio/branch/search/internal/ui/ContainerResolver;-><init>(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_3

    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    iput-object p4, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_0

    iput-object p5, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    goto :goto_0

    :cond_0
    iput-object p7, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    :goto_0
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    iput-object p6, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p7, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

    :goto_1
    return-void

    :cond_2
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    const-string p1, "entities"

    invoke-direct {p0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    const-string p1, "header"

    invoke-direct {p0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lio/branch/search/internal/ui/LinkEntityResolver;Lio/branch/search/internal/ui/AppEntityResolver;Ljava/lang/String;)V
    .locals 1

    const-string v0, "entities"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lio/branch/search/internal/ui/ContainerResolver;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    iput-object p3, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    iput-object p4, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/ui/ContainerResolver;->a(Lio/branch/search/internal/ui/ContainerResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v3, 0x3

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lio/branch/search/internal/ui/AppEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AppEntityResolver$$serializer;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v4

    invoke-interface {p1, p2, v3, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/AppEntityResolver;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->d:Lio/branch/search/internal/ui/AppEntityResolver;

    return-object p0
.end method

.method public a(Lio/branch/search/u4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u4;",
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

    invoke-static {p0, p1, p2}, Lio/branch/search/r4$a;->a(Lio/branch/search/r4;Lio/branch/search/u4;Lio/branch/search/BranchBaseAppResult;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b()Lio/branch/search/internal/ui/LinkEntityResolver;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->c:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

    iget-object p1, p1, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

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

    iget-object v0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

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

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlatLinkContainerResolver(header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->b()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", includeAppAtTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->a()Lio/branch/search/internal/ui/AppEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
