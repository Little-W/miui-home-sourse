.class public final Lio/branch/search/internal/ui/ContainerResolver$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ContainerResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/internal/ui/ContainerResolver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/ContainerResolver;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lio/branch/search/internal/ui/ContainerResolver;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Lkotlin/reflect/KClass;

    const-class v4, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;

    aput-object v4, v2, v5

    sget-object v4, Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$LinkContainerResolver$$serializer;

    aput-object v4, v2, v6

    sget-object v4, Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$FlatLinkContainerResolver$$serializer;

    aput-object v4, v2, v7

    const-string v4, "io.branch.search.internal.ui.ContainerResolver"

    invoke-direct {v0, v4, v1, v3, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
