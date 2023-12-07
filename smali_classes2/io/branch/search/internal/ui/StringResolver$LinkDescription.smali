.class public final Lio/branch/search/internal/ui/StringResolver$LinkDescription;
.super Lio/branch/search/internal/ui/StringResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/StringResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkDescription"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    invoke-direct {v0}, Lio/branch/search/internal/ui/StringResolver$LinkDescription;-><init>()V

    sput-object v0, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/branch/search/internal/ui/StringResolver$LinkDescription;",
            ">;"
        }
    .end annotation

    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lio/branch/search/internal/ui/StringResolver$LinkDescription;->a:Lio/branch/search/internal/ui/StringResolver$LinkDescription;

    const-string v1, "LinkDescription"

    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
