.class public abstract Lkotlinx/coroutines/JobCancellingNode;
.super Lkotlinx/coroutines/JobNode;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/Job;",
        ">",
        "Lkotlinx/coroutines/JobNode<",
        "TJ;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1455
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobNode;-><init>(Lkotlinx/coroutines/Job;)V

    return-void
.end method
