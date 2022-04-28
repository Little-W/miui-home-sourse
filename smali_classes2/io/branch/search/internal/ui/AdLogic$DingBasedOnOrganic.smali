.class public final Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;
.super Lio/branch/search/internal/ui/AdLogic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/AdLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DingBasedOnOrganic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;,
        Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;


# instance fields
.field public final a:I

.field public final b:Lio/branch/search/internal/ui/LinkEntityResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->Companion:Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILio/branch/search/internal/ui/LinkEntityResolver;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    const/4 p4, 0x0

    invoke-direct {p0, p1, p4}, Lio/branch/search/internal/ui/AdLogic;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x3e8

    :goto_0
    iput p2, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    iput-object p3, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-void

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "resolver"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/ui/AdLogic;->a(Lio/branch/search/internal/ui/AdLogic;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iget v0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_2
    sget-object v0, Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;->INSTANCE:Lio/branch/search/internal/ui/LinkEntityResolver$$serializer;

    invoke-virtual {p0}, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a()Lio/branch/search/internal/ui/LinkEntityResolver;

    move-result-object p0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/internal/ui/LinkEntityResolver;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->b:Lio/branch/search/internal/ui/LinkEntityResolver;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lio/branch/search/internal/ui/AdLogic$DingBasedOnOrganic;->a:I

    return v0
.end method
