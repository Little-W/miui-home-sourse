.class public final Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;
.super Lio/branch/search/internal/ui/ExtraResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/ExtraResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FromAppStoreLink"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    invoke-direct {v0}, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/ExtraResolver;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;",
            ">;"
        }
    .end annotation

    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;->a:Lio/branch/search/internal/ui/ExtraResolver$FromAppStoreLink;

    const-string v1, "FromAppStoreLink"

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
