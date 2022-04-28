.class public final Lio/branch/search/internal/ui/ImageResolver$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ImageResolver;
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

    invoke-direct {p0}, Lio/branch/search/internal/ui/ImageResolver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/ImageResolver;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lio/branch/search/internal/ui/ImageResolver;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Lkotlin/reflect/KClass;

    const-class v4, Lio/branch/search/internal/ui/ImageResolver$FromApp;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lio/branch/search/internal/ui/ImageResolver$FromApp;->a:Lio/branch/search/internal/ui/ImageResolver$FromApp;

    const-string v8, "FromApp"

    invoke-direct {v4, v8, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v5

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-string v7, "FromLink"

    invoke-direct {v4, v7, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v6

    const-string v4, "io.branch.search.internal.ui.ImageResolver"

    invoke-direct {v0, v4, v1, v3, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
