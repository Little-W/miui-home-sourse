.class public final Lio/reactivex2/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/schedulers/Schedulers$ComputationTask;,
        Lio/reactivex2/schedulers/Schedulers$SingleTask;,
        Lio/reactivex2/schedulers/Schedulers$NewThreadTask;,
        Lio/reactivex2/schedulers/Schedulers$IOTask;,
        Lio/reactivex2/schedulers/Schedulers$NewThreadHolder;,
        Lio/reactivex2/schedulers/Schedulers$IoHolder;,
        Lio/reactivex2/schedulers/Schedulers$ComputationHolder;,
        Lio/reactivex2/schedulers/Schedulers$SingleHolder;
    }
.end annotation


# static fields
.field static final COMPUTATION:Lio/reactivex2/Scheduler;

.field static final IO:Lio/reactivex2/Scheduler;

.field static final NEW_THREAD:Lio/reactivex2/Scheduler;

.field static final SINGLE:Lio/reactivex2/Scheduler;

.field static final TRAMPOLINE:Lio/reactivex2/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lio/reactivex2/schedulers/Schedulers$SingleTask;

    invoke-direct {v0}, Lio/reactivex2/schedulers/Schedulers$SingleTask;-><init>()V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex2/schedulers/Schedulers;->SINGLE:Lio/reactivex2/Scheduler;

    .line 77
    new-instance v0, Lio/reactivex2/schedulers/Schedulers$ComputationTask;

    invoke-direct {v0}, Lio/reactivex2/schedulers/Schedulers$ComputationTask;-><init>()V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex2/schedulers/Schedulers;->COMPUTATION:Lio/reactivex2/Scheduler;

    .line 79
    new-instance v0, Lio/reactivex2/schedulers/Schedulers$IOTask;

    invoke-direct {v0}, Lio/reactivex2/schedulers/Schedulers$IOTask;-><init>()V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex2/schedulers/Schedulers;->IO:Lio/reactivex2/Scheduler;

    .line 81
    invoke-static {}, Lio/reactivex2/internal/schedulers/TrampolineScheduler;->instance()Lio/reactivex2/internal/schedulers/TrampolineScheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex2/schedulers/Schedulers;->TRAMPOLINE:Lio/reactivex2/Scheduler;

    .line 83
    new-instance v0, Lio/reactivex2/schedulers/Schedulers$NewThreadTask;

    invoke-direct {v0}, Lio/reactivex2/schedulers/Schedulers$NewThreadTask;-><init>()V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex2/schedulers/Schedulers;->NEW_THREAD:Lio/reactivex2/Scheduler;

    return-void
.end method

.method public static computation()Lio/reactivex2/Scheduler;
    .locals 1

    .line 136
    sget-object v0, Lio/reactivex2/schedulers/Schedulers;->COMPUTATION:Lio/reactivex2/Scheduler;

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onComputationScheduler(Lio/reactivex2/Scheduler;)Lio/reactivex2/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static io()Lio/reactivex2/Scheduler;
    .locals 1

    .line 181
    sget-object v0, Lio/reactivex2/schedulers/Schedulers;->IO:Lio/reactivex2/Scheduler;

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onIoScheduler(Lio/reactivex2/Scheduler;)Lio/reactivex2/Scheduler;

    move-result-object v0

    return-object v0
.end method
