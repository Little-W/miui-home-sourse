.class public final Lio/branch/search/internal/ui/ImageResolver$FromLink;
.super Lio/branch/search/internal/ui/ImageResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ImageResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FromLink"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final a:Lio/branch/search/internal/ui/ImageResolver$FromLink;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/internal/ui/ImageResolver$FromLink;

    invoke-direct {v0}, Lio/branch/search/internal/ui/ImageResolver$FromLink;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/ImageResolver;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/ImageResolver$FromLink;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lio/branch/search/internal/ui/ImageResolver$FromLink;->a:Lio/branch/search/internal/ui/ImageResolver$FromLink;

    const-string v2, "FromLink"

    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
