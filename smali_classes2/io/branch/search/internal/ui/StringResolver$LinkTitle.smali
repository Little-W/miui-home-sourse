.class public final Lio/branch/search/internal/ui/StringResolver$LinkTitle;
.super Lio/branch/search/internal/ui/StringResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/StringResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkTitle"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    invoke-direct {v0}, Lio/branch/search/internal/ui/StringResolver$LinkTitle;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/StringResolver;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/StringResolver$LinkTitle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lio/branch/search/internal/ui/StringResolver$LinkTitle;->a:Lio/branch/search/internal/ui/StringResolver$LinkTitle;

    const-string v2, "LinkTitle"

    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
