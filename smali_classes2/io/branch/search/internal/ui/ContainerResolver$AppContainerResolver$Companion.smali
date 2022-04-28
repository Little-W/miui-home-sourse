.class public final Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;
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

    invoke-direct {p0}, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/ContainerResolver$AppContainerResolver$$serializer;

    return-object v0
.end method
