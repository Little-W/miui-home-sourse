.class public Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;
.super Ljava/lang/Object;
.source "BranchSearchAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;,
        Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;,
        Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;
    }
.end annotation


# static fields
.field private static final BRANCH_DEBOUNCE_INTERVAL:J = 0x190L

.field public static final BRANCH_QUERY_LENGTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BranchSearchAlgorithm"


# instance fields
.field private branchSearchEventszLDS:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;

.field private mBranchSearchRunnable:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;

.field private mCallback:Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

.field private mInterruptActiveRequests:Z

.field private mLastBranchQueryStamp:J

.field private mLastQuery:Ljava/lang/String;

.field private mLocalBranchSearchEvents:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;

.field private mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;-><init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)V

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mLocalBranchSearchEvents:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;

    .line 36
    new-instance v0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;-><init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)V

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->branchSearchEventszLDS:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mInterruptActiveRequests:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mLastQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mCallback:Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mLocalBranchSearchEvents:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEvents;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->branchSearchEventszLDS:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$LocalBranchSearchEventszLDS;

    return-object p0
.end method

.method private getAutoSuggest(Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p1}, Lio/branch/search/BranchAutoSuggestRequest;->create(Ljava/lang/String;)Lio/branch/search/BranchAutoSuggestRequest;

    move-result-object p1

    .line 171
    invoke-static {}, Lio/branch/search/BranchSearch;->getInstance()Lio/branch/search/BranchSearch;

    move-result-object v0

    new-instance v1, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;

    invoke-direct {v1, p0}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$1;-><init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;)V

    invoke-virtual {v0, p1, v1}, Lio/branch/search/BranchSearch;->autoSuggest(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public doUniSearch(Ljava/lang/String;Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;)V
    .locals 4

    .line 121
    iput-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mLastQuery:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mCallback:Lcom/mi/globallauncher/branchInterface/BranchSearchCallback;

    const-string p2, "BranchSearchAlgorithm"

    const-string v0, "do uni search"

    .line 123
    invoke-static {p2, v0}, Lcom/mi/globallauncher/util/CommercialLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 128
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->getAutoSuggest(Ljava/lang/String;)V

    .line 130
    :cond_1
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object p2

    invoke-interface {p2}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getBranchShowTypeVersion()I

    move-result p2

    .line 131
    new-instance v2, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;

    invoke-direct {v2, p0, p1}, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;-><init>(Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mBranchSearchRunnable:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;

    if-nez p2, :cond_3

    .line 133
    iget-wide p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mLastBranchQueryStamp:J

    sub-long p1, v0, p1

    const-wide/16 v2, 0x190

    cmp-long p1, p1, v2

    if-gez p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mBranchSearchRunnable:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mBranchSearchRunnable:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    .line 138
    iget-object p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mBranchSearchRunnable:Lcom/mi/globallauncher/manager/BranchSearchAlgorithm$BranchSearchRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    :cond_4
    :goto_0
    iput-wide v0, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mLastBranchQueryStamp:J

    return-void
.end method

.method public setInterruptActiveRequests(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/mi/globallauncher/manager/BranchSearchAlgorithm;->mInterruptActiveRequests:Z

    return-void
.end method
