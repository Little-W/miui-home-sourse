.class public Lcom/mi/globallauncher/util/BranchTrackUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBranchCloseTrack()V
    .locals 3

    invoke-static {}, Lio/branch/search/BranchSearch;->optOutOfTracking()V

    new-instance v0, Lio/branch/search/CustomEvent;

    invoke-direct {v0}, Lio/branch/search/CustomEvent;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "OPT_IN"

    invoke-virtual {v0, v2, v1}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/CustomEvent;->track()V

    return-void
.end method

.method public static setBranchOpenTrack()V
    .locals 3

    invoke-static {}, Lio/branch/search/BranchSearch;->optInToTracking()V

    new-instance v0, Lio/branch/search/CustomEvent;

    invoke-direct {v0}, Lio/branch/search/CustomEvent;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "OPT_IN"

    invoke-virtual {v0, v2, v1}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/CustomEvent;->track()V

    return-void
.end method
