.class public Lkotlinx/coroutines/JobImpl;
.super Lkotlinx/coroutines/JobSupport;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/CompletableJob;


# instance fields
.field private final handlesException:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1

    const/4 v0, 0x1

    .line 1312
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    .line 1313
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobImpl;->initParentJobInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/Job;)V

    .line 1325
    invoke-direct {p0}, Lkotlinx/coroutines/JobImpl;->handlesException()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return-void
.end method

.method private final handlesException()Z
    .locals 3

    .line 1332
    invoke-virtual {p0}, Lkotlinx/coroutines/JobImpl;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lkotlinx/coroutines/ChildHandleNode;->job:Lkotlinx/coroutines/Job;

    check-cast p0, Lkotlinx/coroutines/JobSupport;

    if-eqz p0, :cond_3

    .line 1334
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getHandlesException$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1335
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    move-result-object p0

    instance-of v2, p0, Lkotlinx/coroutines/ChildHandleNode;

    if-nez v2, :cond_2

    move-object p0, v1

    :cond_2
    check-cast p0, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lkotlinx/coroutines/ChildHandleNode;->job:Lkotlinx/coroutines/Job;

    check-cast p0, Lkotlinx/coroutines/JobSupport;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public getHandlesException$kotlinx_coroutines_core()Z
    .locals 0

    .line 1325
    iget-boolean p0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return p0
.end method

.method public getOnCancelComplete$kotlinx_coroutines_core()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
