.class Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/SafeLoggingExecutor$SafeLoggingRunnable;
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;->delegate:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;->delegate:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor$SafeLoggingRunnable;

    invoke-direct {v0, p1}, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor$SafeLoggingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
