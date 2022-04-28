.class public Lcom/mi/globallauncher/util/BranchTrackUtils;
.super Ljava/lang/Object;
.source "BranchTrackUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBranchCloseTrack()V
    .locals 3

    .line 13
    invoke-static {}, Lio/branch/search/BranchSearch;->optOutOfTracking()V

    .line 14
    new-instance v0, Lio/branch/search/CustomEvent;

    invoke-direct {v0}, Lio/branch/search/CustomEvent;-><init>()V

    const-string v1, "OPT_IN"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/CustomEvent;->track()V

    return-void
.end method

.method public static setBranchOpenTrack()V
    .locals 3

    .line 8
    invoke-static {}, Lio/branch/search/BranchSearch;->optInToTracking()V

    .line 9
    new-instance v0, Lio/branch/search/CustomEvent;

    invoke-direct {v0}, Lio/branch/search/CustomEvent;-><init>()V

    const-string v1, "OPT_IN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/CustomEvent;->track()V

    return-void
.end method
