.class public abstract Lio/branch/search/internal/control/FeatureRule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/control/FeatureRule$TrackingStatus;,
        Lio/branch/search/internal/control/FeatureRule$Constant;,
        Lio/branch/search/internal/control/FeatureRule$Or;,
        Lio/branch/search/internal/control/FeatureRule$And;,
        Lio/branch/search/internal/control/FeatureRule$Not;,
        Lio/branch/search/internal/control/FeatureRule$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/control/FeatureRule$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/control/FeatureRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/control/FeatureRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/control/FeatureRule;->Companion:Lio/branch/search/internal/control/FeatureRule$Companion;

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

    invoke-direct {p0}, Lio/branch/search/internal/control/FeatureRule;-><init>()V

    return-void
.end method

.method public static final a(Lio/branch/search/internal/control/FeatureRule;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
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
.method public abstract a(Lio/branch/search/o0;)Z
.end method
