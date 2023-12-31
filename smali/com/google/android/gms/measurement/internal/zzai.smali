.class abstract Lcom/google/android/gms/measurement/internal/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# static fields
.field private static volatile zzb:Landroid/os/Handler;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzgt;

.field private final zzc:Ljava/lang/Runnable;

.field private volatile zzd:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzgt;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzai;J)J
    .locals 0

    const-wide/16 p1, 0x0

    .line 27
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    return-wide p1
.end method

.method private final zzd()Landroid/os/Handler;
    .locals 2

    .line 20
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 21
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Landroid/os/Handler;

    return-object p0

    .line 22
    :cond_0
    const-class v0, Lcom/google/android/gms/measurement/internal/zzai;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzq;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzm()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzq;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Landroid/os/Handler;

    .line 25
    :cond_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzai;->zzb:Landroid/os/Handler;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract zza()V
.end method

.method public final zza(J)V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzb()Z
    .locals 4

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final zzc()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzd:J

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzai;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
