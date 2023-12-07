.class public final Lio/reactivex/schedulers/Schedulers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/schedulers/Schedulers$ComputationTask;,
        Lio/reactivex/schedulers/Schedulers$SingleTask;,
        Lio/reactivex/schedulers/Schedulers$NewThreadTask;,
        Lio/reactivex/schedulers/Schedulers$IOTask;,
        Lio/reactivex/schedulers/Schedulers$NewThreadHolder;,
        Lio/reactivex/schedulers/Schedulers$IoHolder;,
        Lio/reactivex/schedulers/Schedulers$ComputationHolder;,
        Lio/reactivex/schedulers/Schedulers$SingleHolder;
    }
.end annotation


# static fields
.field static final COMPUTATION:Lio/reactivex/Scheduler;

.field static final IO:Lio/reactivex/Scheduler;

.field static final NEW_THREAD:Lio/reactivex/Scheduler;

.field static final SINGLE:Lio/reactivex/Scheduler;

.field static final TRAMPOLINE:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/schedulers/Schedulers$SingleTask;

    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$SingleTask;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->SINGLE:Lio/reactivex/Scheduler;

    new-instance v0, Lio/reactivex/schedulers/Schedulers$ComputationTask;

    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$ComputationTask;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/Scheduler;

    new-instance v0, Lio/reactivex/schedulers/Schedulers$IOTask;

    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$IOTask;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    invoke-static {}, Lio/reactivex/internal/schedulers/TrampolineScheduler;->instance()Lio/reactivex/internal/schedulers/TrampolineScheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->TRAMPOLINE:Lio/reactivex/Scheduler;

    new-instance v0, Lio/reactivex/schedulers/Schedulers$NewThreadTask;

    invoke-direct {v0}, Lio/reactivex/schedulers/Schedulers$NewThreadTask;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/schedulers/Schedulers;->NEW_THREAD:Lio/reactivex/Scheduler;

    return-void
.end method

.method public static computation()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lio/reactivex/schedulers/Schedulers;->COMPUTATION:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onComputationScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static io()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lio/reactivex/schedulers/Schedulers;->IO:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onIoScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
