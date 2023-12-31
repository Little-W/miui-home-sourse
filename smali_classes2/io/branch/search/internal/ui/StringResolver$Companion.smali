.class public final Lio/branch/search/internal/ui/StringResolver$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/StringResolver;
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

    invoke-direct {p0}, Lio/branch/search/internal/ui/StringResolver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/StringResolver;",
            ">;"
        }
    .end annotation

    new-instance p0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Lkotlin/reflect/KClass;

    const-class v3, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v3, v1, v4

    sget-object v3, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v3, v1, v5

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v4, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v5, "AppName"

    invoke-direct {v3, v5, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v6

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v4, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v5, "LinkTitle"

    invoke-direct {v3, v5, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v7

    new-instance v3, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v4, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v5, "LinkDescription"

    invoke-direct {v3, v5, v4}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v8

    const-string v3, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {p0, v3, v0, v2, v1}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    return-object p0
.end method
