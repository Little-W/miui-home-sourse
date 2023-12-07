.class public final Lio/branch/search/internal/control/FeatureRule$Constant;
.super Lio/branch/search/internal/control/FeatureRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/control/FeatureRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/control/FeatureRule$Constant$Companion;,
        Lio/branch/search/internal/control/FeatureRule$Constant$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/control/FeatureRule$Constant$Companion;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/control/FeatureRule$Constant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/control/FeatureRule$Constant$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/control/FeatureRule$Constant;->Companion:Lio/branch/search/internal/control/FeatureRule$Constant$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lio/branch/search/internal/control/FeatureRule;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    return-void

    :cond_0
    new-instance p0, Lkotlinx/serialization/MissingFieldException;

    const-string p1, "value"

    invoke-direct {p0, p1}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Lio/branch/search/internal/control/FeatureRule$Constant;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lio/branch/search/internal/control/FeatureRule;->a(Lio/branch/search/internal/control/FeatureRule;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/o0;)Z
    .locals 1

    const-string v0, "userData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/internal/control/FeatureRule$Constant;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/internal/control/FeatureRule$Constant;

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    iget-boolean p1, p1, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constant(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lio/branch/search/internal/control/FeatureRule$Constant;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
