.class public abstract Lio/branch/search/internal/ui/AdLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/AdLogic$Static;,
        Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;,
        Lio/branch/search/internal/ui/AdLogic$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/AdLogic$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/AdLogic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/AdLogic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/AdLogic;->Companion:Lio/branch/search/internal/ui/AdLogic$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/internal/ui/AdLogic;-><init>()V

    return-void
.end method

.method public static final a(Lio/branch/search/internal/ui/AdLogic;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "output"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "serialDesc"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract a()Lio/branch/search/internal/ui/LinkEntityResolver;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lio/branch/search/internal/ui/AdLogic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lio/branch/search/internal/ui/AdLogic$Static;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/ui/AdLogic$Static;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v0

    check-cast p1, Lio/branch/search/internal/ui/AdLogic;

    invoke-virtual {p1}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    instance-of v0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lio/branch/search/internal/ui/AdLogic;

    invoke-virtual {v2}, Lio/branch/search/internal/ui/AdLogic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    invoke-virtual {v0}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->b()I

    move-result v0

    check-cast p1, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;

    invoke-virtual {p1}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->b()I

    move-result p1

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
