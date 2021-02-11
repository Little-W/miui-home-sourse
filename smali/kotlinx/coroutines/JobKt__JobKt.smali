.class final synthetic Lkotlinx/coroutines/JobKt__JobKt;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,640:1\n13#2:641\n1084#3,2:642\n1084#3,2:644\n1084#3,2:646\n1084#3,2:648\n*E\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n465#1:641\n492#1,2:642\n506#1,2:644\n599#1,2:646\n613#1,2:648\n*E\n"
.end annotation


# direct methods
.method public static final Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;
    .locals 1

    .line 361
    new-instance v0, Lkotlinx/coroutines/JobImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    check-cast v0, Lkotlinx/coroutines/CompletableJob;

    return-object v0
.end method

.method public static synthetic Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 361
    check-cast p0, Lkotlinx/coroutines/Job;

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/JobKt;->Job(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p0

    return-object p0
.end method
