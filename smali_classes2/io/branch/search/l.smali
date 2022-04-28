.class public Lio/branch/search/l;
.super Lio/branch/search/BranchSearch;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/b;


# static fields
.field public static k:Lio/branch/search/l;

.field public static l:Lio/branch/search/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/w<",
            "Lio/branch/search/j3;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lio/branch/search/p0;

.field public c:Lio/branch/search/o0;

.field public d:Lio/branch/search/internal/interfaces/LocalInterface;

.field public e:Lio/branch/search/b3;

.field public f:Lio/branch/search/b1;

.field public g:Lio/branch/search/BranchAnalytics;

.field public h:Lio/branch/search/KBranchRemoteConfiguration;

.field public i:Lio/branch/search/BranchConfiguration;

.field public j:Lio/branch/search/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/w;

    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/w;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    sput-object v0, Lio/branch/search/l;->l:Lio/branch/search/w;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/branch/search/l;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;)V
    .locals 4

    invoke-direct {p0}, Lio/branch/search/BranchSearch;-><init>()V

    iget-object v0, p2, Lio/branch/search/BranchConfiguration;->B:Lio/branch/search/j3;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/l;->a:Landroid/content/Context;

    invoke-static {p1, p0}, Lio/branch/search/v;->a(Landroid/content/Context;Lio/branch/search/l;)V

    iput-object p2, p0, Lio/branch/search/l;->i:Lio/branch/search/BranchConfiguration;

    iput-object p3, p0, Lio/branch/search/l;->j:Lio/branch/search/e;

    new-instance p2, Lio/branch/search/BranchAnalytics;

    invoke-direct {p2, p0}, Lio/branch/search/BranchAnalytics;-><init>(Lio/branch/search/l;)V

    iput-object p2, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    new-instance p2, Lio/branch/search/b3;

    invoke-direct {p2, p1}, Lio/branch/search/b3;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/branch/search/l;->e:Lio/branch/search/b3;

    new-instance p1, Lio/branch/search/p0;

    invoke-direct {p1, p0}, Lio/branch/search/p0;-><init>(Lio/branch/search/l;)V

    iput-object p1, p0, Lio/branch/search/l;->b:Lio/branch/search/p0;

    new-instance p1, Lio/branch/search/o0;

    invoke-direct {p1, p0}, Lio/branch/search/o0;-><init>(Lio/branch/search/l;)V

    iput-object p1, p0, Lio/branch/search/l;->c:Lio/branch/search/o0;

    new-instance p1, Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p1, p0}, Lio/branch/search/internal/interfaces/LocalInterface;-><init>(Lio/branch/search/l;)V

    iput-object p1, p0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    new-instance p1, Lio/branch/search/x;

    sget-object p2, Lio/branch/search/l;->l:Lio/branch/search/w;

    new-instance p3, Lio/branch/search/y$a;

    iget-object v1, p0, Lio/branch/search/l;->i:Lio/branch/search/BranchConfiguration;

    iget-object v2, p0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v3, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    invoke-direct {p3, v1, v2, v3}, Lio/branch/search/y$a;-><init>(Lio/branch/search/BranchConfiguration;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/BranchAnalytics;)V

    invoke-direct {p1, p2, v0, p3}, Lio/branch/search/x;-><init>(Lio/branch/search/w;Lio/branch/search/j3;Lio/branch/search/y;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must use BranchConfiguration.trackingStatus(...) during init."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/l;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    sget-object v0, Lio/branch/search/l;->k:Lio/branch/search/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/l;->a(Landroid/content/Context;)V

    new-instance v0, Lio/branch/search/l;

    new-instance v1, Lio/branch/search/e;

    invoke-direct {v1, p0, p1}, Lio/branch/search/e;-><init>(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)V

    invoke-direct {v0, p0, p1, v1}, Lio/branch/search/l;-><init>(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;)V

    sput-object v0, Lio/branch/search/l;->k:Lio/branch/search/l;

    iget-object p1, v0, Lio/branch/search/l;->j:Lio/branch/search/e;

    invoke-virtual {p1, p0}, Lio/branch/search/e;->a(Landroid/content/Context;)V

    sget-object p1, Lio/branch/search/l;->k:Lio/branch/search/l;

    iget-object p1, p1, Lio/branch/search/l;->i:Lio/branch/search/BranchConfiguration;

    invoke-virtual {p1, p0}, Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;)V

    sget-object p0, Lio/branch/search/l;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lio/branch/search/l;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/AnalyticsEvent;

    sget-object v0, Lio/branch/search/l;->k:Lio/branch/search/l;

    invoke-virtual {v0, p1}, Lio/branch/search/l;->trackAnalyticsEvent(Lio/branch/search/AnalyticsEvent;)Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Lio/branch/search/l;->k:Lio/branch/search/l;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SQLUpdaterService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleaned job with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BranchSearchInternal.clearJobs"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static d()Lio/branch/search/l;
    .locals 1

    sget-object v0, Lio/branch/search/l;->k:Lio/branch/search/l;

    return-object v0
.end method

.method public static optInToTracking()V
    .locals 5

    sget-object v0, Lio/branch/search/l;->l:Lio/branch/search/w;

    new-instance v1, Lio/branch/search/j3;

    sget-object v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    iget v2, v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->sqlValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lio/branch/search/j3;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lio/branch/search/w;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static optOutOfTracking()V
    .locals 5

    sget-object v0, Lio/branch/search/l;->l:Lio/branch/search/w;

    new-instance v1, Lio/branch/search/j3;

    sget-object v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    iget v2, v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->sqlValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lio/branch/search/j3;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lio/branch/search/w;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static trackEvent(Lio/branch/search/AnalyticsEvent;)Z
    .locals 2

    sget-object v0, Lio/branch/search/l;->k:Lio/branch/search/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lio/branch/search/l;->trackAnalyticsEvent(Lio/branch/search/AnalyticsEvent;)Ljava/lang/Boolean;

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lio/branch/search/l;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lio/branch/search/BranchSearch;->maxEventTrackingQueueSize:I

    if-ge v0, v1, :cond_1

    sget-object v0, Lio/branch/search/l;->m:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/l;->f()Lio/branch/search/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/search/p0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public autoSuggest(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->b:Lio/branch/search/p0;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/p0;->a(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z

    move-result p1

    return p1
.end method

.method public b()Lio/branch/search/BranchConfiguration;
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->i:Lio/branch/search/BranchConfiguration;

    return-object v0
.end method

.method public c()Lio/branch/search/e;
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->j:Lio/branch/search/e;

    return-object v0
.end method

.method public compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/l;->c:Lio/branch/search/o0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Lio/branch/search/o0;->a(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/ui/KBranchSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V

    return-void
.end method

.method public e()Lio/branch/search/internal/interfaces/LocalInterface;
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    return-object v0
.end method

.method public f()Lio/branch/search/p0;
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->b:Lio/branch/search/p0;

    return-object v0
.end method

.method public g()Lio/branch/search/KBranchRemoteConfiguration;
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->h:Lio/branch/search/KBranchRemoteConfiguration;

    return-object v0
.end method

.method public localQueryHint(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->d:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V

    return-void
.end method

.method public query(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->b:Lio/branch/search/p0;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/p0;->a(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z

    move-result p1

    return p1
.end method

.method public trackAnalyticsEvent(Lio/branch/search/AnalyticsEvent;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->g:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public zeroState(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/l;->c:Lio/branch/search/o0;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/o0;->a(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;)V

    return-void
.end method
