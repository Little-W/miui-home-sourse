.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$JobInfoSchedulerService$V3wA045JGbQPPEw1rM8LPYhhWLI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$JobInfoSchedulerService$V3wA045JGbQPPEw1rM8LPYhhWLI;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$JobInfoSchedulerService$V3wA045JGbQPPEw1rM8LPYhhWLI;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$JobInfoSchedulerService$V3wA045JGbQPPEw1rM8LPYhhWLI;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$JobInfoSchedulerService$V3wA045JGbQPPEw1rM8LPYhhWLI;->f$1:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->lambda$onStartJob$0$JobInfoSchedulerService(Landroid/app/job/JobParameters;)V

    return-void
.end method
