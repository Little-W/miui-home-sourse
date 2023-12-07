.class public abstract Lio/branch/search/BranchSearch;
.super Ljava/lang/Object;


# static fields
.field public static maxEventTrackingQueueSize:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/branch/search/BranchSearch;
    .locals 1

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/BranchSearch;
    .locals 0

    invoke-static {p0, p1}, Lio/branch/search/l;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/l;

    move-result-object p0

    return-object p0
.end method

.method public static optInToTracking()V
    .locals 0

    invoke-static {}, Lio/branch/search/l;->optInToTracking()V

    return-void
.end method

.method public static optOutOfTracking()V
    .locals 0

    invoke-static {}, Lio/branch/search/l;->optOutOfTracking()V

    return-void
.end method


# virtual methods
.method public abstract autoSuggest(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z
.end method

.method public abstract compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
.end method

.method public abstract localQueryHint(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
.end method

.method public abstract query(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z
.end method

.method public abstract zeroState(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;)V
.end method
