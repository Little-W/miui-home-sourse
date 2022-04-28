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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/StringResolver;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lio/branch/search/internal/ui/StringResolver;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x5

    new-array v3, v2, [Lkotlin/reflect/KClass;

    const-class v4, Lio/branch/search/internal/ui/StringResolver$Constant;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lio/branch/search/internal/ui/StringResolver$Template;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lio/branch/search/internal/ui/StringResolver$AppName;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v4, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Constant$$serializer;

    aput-object v4, v2, v5

    sget-object v4, Lio/branch/search/internal/ui/StringResolver$Template$$serializer;->INSTANCE:Lio/branch/search/internal/ui/StringResolver$Template$$serializer;

    aput-object v4, v2, v6

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$AppName;->a:Lio/branch/search/internal/ui/StringResolver$AppName;

    const-string v6, "AppName"

    invoke-direct {v4, v6, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v7

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v6, "LinkTitle"

    invoke-direct {v4, v6, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v8

    new-instance v4, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v6, "LinkDescription"

    invoke-direct {v4, v6, v5}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v2, v9

    const-string v4, "io.branch.search.internal.ui.StringResolver"

    invoke-direct {v0, v4, v1, v3, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
