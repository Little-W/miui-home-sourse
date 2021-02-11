.class public Lcom/miui/home/launcher/common/ConflictsManager;
.super Ljava/lang/Object;
.source "ConflictsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
    }
.end annotation


# instance fields
.field private mCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addCandidate(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isHoldLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public obtainLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->onGainLock()V

    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {v0}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->getPriority()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-interface {v0}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->onLoseLock()V

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-interface {p1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->onGainLock()V

    :cond_3
    :goto_0
    return-void
.end method

.method public releaseLock(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    if-ne v0, p1, :cond_1

    .line 61
    invoke-interface {v0}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->onReleaseLock()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-interface {v1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->onSomeoneReleaseLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    iput-object p1, p0, Lcom/miui/home/launcher/common/ConflictsManager;->mCurrentOwner:Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
