.class public final Lio/branch/search/internal/ui/UISkeletonResolver$Default;
.super Lio/branch/search/internal/ui/UISkeletonResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/UISkeletonResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;,
        Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lio/branch/search/internal/ui/AdLogic;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->Companion:Lio/branch/search/internal/ui/UISkeletonResolver$Default$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lio/branch/search/internal/ui/AdLogic;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            ">;",
            "Lio/branch/search/internal/ui/AdLogic;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4}, Lio/branch/search/internal/ui/UISkeletonResolver;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    return-void

    :cond_0
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    const-string p1, "adLogic"

    invoke-direct {p0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    const-string p1, "containers"

    invoke-direct {p0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;Lio/branch/search/internal/ui/AdLogic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            ">;",
            "Lio/branch/search/internal/ui/AdLogic;",
            ")V"
        }
    .end annotation

    const-string v0, "containers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLogic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/UISkeletonResolver;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    iput-object p2, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    return-void
.end method

.method public static final a(Lio/branch/search/internal/ui/UISkeletonResolver$Default;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 9

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/ui/UISkeletonResolver;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lio/branch/search/internal/ui/ContainerResolver;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;

    aput-object v5, v3, v6

    sget-object v5, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;

    aput-object v5, v3, v7

    sget-object v5, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    aput-object v5, v3, v8

    const-string v5, "io.branch.search.internal.ui.ContainerResolver"

    invoke-direct {v1, v5, v2, v4, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v1, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    invoke-interface {p1, p2, v6, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lio/branch/search/internal/ui/AdLogic;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v2, v8, [Lkotlin/reflect/KClass;

    const-class v3, Lio/branch/search/internal/ui/AdLogic$Static;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    aput-object v3, v2, v6

    const-class v3, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v8, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lio/branch/search/internal/ui/AdLogic$Static$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$Static$$serializer;

    aput-object v4, v3, v6

    sget-object v4, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;->INSTANCE:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;

    aput-object v4, v3, v7

    const-string v4, "io.branch.search.internal.ui.AdLogic"

    invoke-direct {v0, v4, v1, v2, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p0

    invoke-interface {p1, p2, v7, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/AdLogic;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->b:Lio/branch/search/internal/ui/AdLogic;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    iget-object v0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    iget-object v1, p1, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p0

    invoke-virtual {p1}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p1

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
    .locals 2

    iget-object v0, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default(containers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adLogic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/UISkeletonResolver$Default;->a()Lio/branch/search/internal/ui/AdLogic;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
