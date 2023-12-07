.class public final Lio/branch/search/n0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lio/branch/search/internal/control/FeatureFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/branch/search/internal/control/FeatureFlag;

    new-instance v1, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;

    sget-object v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    invoke-direct {v1, v2}, Lio/branch/search/internal/control/FeatureRule$TrackingStatus;-><init>(Lio/branch/search/BranchConfiguration$BranchTrackingStatus;)V

    invoke-direct {v0, v1}, Lio/branch/search/internal/control/FeatureFlag;-><init>(Lio/branch/search/internal/control/FeatureRule;)V

    sput-object v0, Lio/branch/search/n0;->a:Lio/branch/search/internal/control/FeatureFlag;

    return-void
.end method

.method public static final synthetic a()Lio/branch/search/internal/control/FeatureFlag;
    .locals 1

    sget-object v0, Lio/branch/search/n0;->a:Lio/branch/search/internal/control/FeatureFlag;

    return-object v0
.end method
