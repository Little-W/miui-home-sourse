.class final Lcom/google/android/gms/measurement/internal/zzfs;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/measurement/internal/zzfs<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final zza:Z

.field private final zzb:J

.field private final zzc:Ljava/lang/String;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzfr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzd:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzm;->zza()Lcom/google/android/gms/internal/measurement/zzn;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/measurement/zzn;->zza(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzc:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zza:Z

    iget-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p2, v0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Tasks index overflow"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzd:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzm;->zza()Lcom/google/android/gms/internal/measurement/zzn;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/measurement/zzn;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzc:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zza:Z

    iget-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p2, v0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Tasks index overflow"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzfs;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zza:Z

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzfs;->zza:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_2

    return v3

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzd:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzf()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "Two tasks share the same index. index"

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzd:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzfq;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
