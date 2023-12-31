.class public final Lio/branch/search/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchConfiguration$BranchTrackingStatus;)V
    .locals 1

    const-string v0, "analyticsTrackingStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/o0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-void
.end method


# virtual methods
.method public final a()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lio/branch/search/o0;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/o0;

    iget-object p0, p0, Lio/branch/search/o0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    iget-object p1, p1, Lio/branch/search/o0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

    iget-object p0, p0, Lio/branch/search/o0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserData(analyticsTrackingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/o0;->a:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
