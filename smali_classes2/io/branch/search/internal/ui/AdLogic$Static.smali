.class public final Lio/branch/search/internal/ui/AdLogic$Static;
.super Lio/branch/search/internal/ui/AdLogic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/AdLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Static"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/AdLogic$Static$Companion;,
        Lio/branch/search/internal/ui/AdLogic$Static$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/AdLogic$Static$Companion;


# instance fields
.field public final a:Lio/branch/search/internal/ui/LinkEntityResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/AdLogic$Static$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/AdLogic$Static$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/AdLogic$Static;->Companion:Lio/branch/search/internal/ui/AdLogic$Static$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILio/branch/search/internal/ui/LinkEntityResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lio/branch/search/internal/ui/AdLogic;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lio/branch/search/internal/ui/AdLogic$Static;->a:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-void

    :cond_0
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    const-string p1, "resolver"

    invoke-direct {p0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lio/branch/search/internal/ui/LinkEntityResolver;)V
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/branch/search/internal/ui/AdLogic;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/branch/search/internal/ui/AdLogic$Static;->a:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-void
.end method

.method public static final a(Lio/branch/search/internal/ui/AdLogic$Static;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/ui/AdLogic;->a(Lio/branch/search/internal/ui/AdLogic;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AdLogic$Static;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/LinkEntityResolver;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/ui/AdLogic$Static;->a:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-object p0
.end method
