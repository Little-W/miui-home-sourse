.class public Lcom/google/android/gms/measurement/internal/zzfu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgt;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzfu;


# instance fields
.field final zza:J

.field private zzaa:Ljava/lang/Boolean;

.field private zzab:J

.field private volatile zzac:Ljava/lang/Boolean;

.field private zzad:Ljava/lang/Boolean;

.field private zzae:Ljava/lang/Boolean;

.field private volatile zzaf:Z

.field private zzag:I

.field private zzah:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzw;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzab;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzfc;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzeq;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzfr;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzjx;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzkv;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zzeo;

.field private final zzp:Lcom/google/android/gms/common/util/Clock;

.field private final zzq:Lcom/google/android/gms/measurement/internal/zzii;

.field private final zzr:Lcom/google/android/gms/measurement/internal/zzhb;

.field private final zzs:Lcom/google/android/gms/measurement/internal/zza;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzid;

.field private zzu:Lcom/google/android/gms/measurement/internal/zzem;

.field private zzv:Lcom/google/android/gms/measurement/internal/zzir;

.field private zzw:Lcom/google/android/gms/measurement/internal/zzak;

.field private zzx:Lcom/google/android/gms/measurement/internal/zzen;

.field private zzy:Lcom/google/android/gms/measurement/internal/zzfl;

.field private zzz:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzgy;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzz:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zza:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzh:Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzh:Lcom/google/android/gms/measurement/internal/zzw;

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzeg;->zza:Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zza:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzb:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzd:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzc:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zze:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzd:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzf:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzh:Z

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzg:Z

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zze:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzac:Ljava/lang/Boolean;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaf:Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementEnabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzad:Ljava/lang/Boolean;

    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string v3, "measurementDeactivated"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzae:Ljava/lang/Boolean;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzp:Lcom/google/android/gms/common/util/Clock;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzi:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzi:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzfc;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zzac()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzj:Lcom/google/android/gms/measurement/internal/zzfc;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zzac()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzk:Lcom/google/android/gms/measurement/internal/zzeq;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzkv;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zzac()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzn:Lcom/google/android/gms/measurement/internal/zzkv;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzeo;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zzac()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzo:Lcom/google/android/gms/measurement/internal/zzeo;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzs:Lcom/google/android/gms/measurement/internal/zza;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzii;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzii;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzq:Lcom/google/android/gms/measurement/internal/zzii;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzhb;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzr:Lcom/google/android/gms/measurement/internal/zzhb;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzjx;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzm:Lcom/google/android/gms/measurement/internal/zzjx;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzid;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zzac()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzt:Lcom/google/android/gms/measurement/internal/zzid;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zzac()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzl:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzg:Lcom/google/android/gms/internal/measurement/zzae;

    iget-wide v2, v2, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhb;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    if-nez v3, :cond_4

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzhy;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzhy;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzhc;)V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzhb;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhb;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhb;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzl:Lcom/google/android/gms/measurement/internal/zzfr;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfw;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Lcom/google/android/gms/measurement/internal/zzgy;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 11

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzae;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzd:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/zzae;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfu;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/zzfu;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzfu;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;-><init>(Lcom/google/android/gms/measurement/internal/zzgy;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Z)V

    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzb:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzfu;Lcom/google/android/gms/measurement/internal/zzgy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzgy;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zzgr;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzgy;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzac()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzw:Lcom/google/android/gms/measurement/internal/zzak;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzen;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzgy;->zzf:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzen;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzx:Lcom/google/android/gms/measurement/internal/zzen;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzem;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzem;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzu:Lcom/google/android/gms/measurement/internal/zzem;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzir;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzir;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzv:Lcom/google/android/gms/measurement/internal/zzir;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzn:Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zzad()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzj:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zzad()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzx:Lcom/google/android/gms/measurement/internal/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-wide/32 v1, 0x8101

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzen;->zzaa()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzag:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzz:Z

    return-void
.end method

.method private final zzah()Lcom/google/android/gms/measurement/internal/zzid;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzt:Lcom/google/android/gms/measurement/internal/zzid;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzgq;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzt:Lcom/google/android/gms/measurement/internal/zzid;

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzgq;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    return-object p0
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzae;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzx()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfc;->zzw()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzch:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v4

    const/16 v5, 0x28

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzab;->zzi()Ljava/lang/Boolean;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzab;->zzj()Ljava/lang/Boolean;

    move-result-object v6

    const/16 v7, 0x14

    if-nez v4, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(I)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzac;

    invoke-direct {p1, v4, v6}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move v5, v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzen;->zzab()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    invoke-virtual {p1, v3, v7, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzac;IJ)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzac;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v1

    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    invoke-virtual {v0, p1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzac;IJ)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzae;->zzg:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzac;->zza:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzac;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    invoke-virtual {v0, p1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzac;IJ)V

    :goto_2
    move-object v0, p1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzc:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzh:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "Persisting first open"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzh:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzcc:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzhb;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzo;->zzb()V

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaf()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzy()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfm;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzab()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzab()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzen;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfc;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzj()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzj()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzaa()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzv:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzir;->zzag()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzv:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzir;->zzae()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzh:Lcom/google/android/gms/measurement/internal/zzfg;

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zza:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzj:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzen;->zzab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzen;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzc(Ljava/lang/String;)V

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzx()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzj:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzj:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfi;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzms;->zzb()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzj()Z

    move-result p1

    if-nez p1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfi;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzab()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzz()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzb(Z)V

    :cond_16
    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzg()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzah()V

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkf;->zza()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzv()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->zzb()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzby:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzv()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzx:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Landroid/os/Bundle;)V

    :cond_18
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzo:Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzax:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfe;->zza(Z)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzag:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzag:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzgq;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzag:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzag:I

    return-void
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    const-string p1, "gclid"

    const-string p5, ""

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_0

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_0

    const/16 v2, 0x130

    if-ne p2, v2, :cond_1

    :cond_0
    if-nez p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-virtual {p0, p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzfc;->zzs:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfe;->zza(Z)V

    array-length p2, p4

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p1, "Deferred Deep Link response empty."

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "deeplink"

    invoke-virtual {p3, p2, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo p5, "timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, p5, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance p5, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p5, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p3, p5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_cis"

    const-string p4, "ddp"

    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzr:Lcom/google/android/gms/measurement/internal/zzhb;

    const-string p4, "auto"

    const-string p5, "_cmp"

    invoke-virtual {p1, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;D)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string p2, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzac:Ljava/lang/Boolean;

    return-void
.end method

.method public final zzaa()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzab()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzab()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzae:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzac()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzu()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x3

    return p0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x4

    return p0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzad:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x5

    return p0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x6

    return p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzar:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzac:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x7

    return p0

    :cond_b
    return v1
.end method

.method public final zzac()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaf:Z

    return p0
.end method

.method final zzad()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected call on client side"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final zzae()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzah:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final zzaf()Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzz:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzab:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzab:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzab:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfm;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzen;->zzab()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzen;->zzac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzen;->zzad()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzen;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa:Ljava/lang/Boolean;

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AppMeasurement is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzag()V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzah()Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzgq;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzen;->zzaa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzi:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzg()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzah()Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzf()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzx()Lcom/google/android/gms/measurement/internal/zzen;

    const-wide/32 v3, 0x8101

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzt:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzah()Lcom/google/android/gms/measurement/internal/zzid;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zzab()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p0

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzif;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzif;-><init>(Lcom/google/android/gms/measurement/internal/zzid;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzfc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzj:Lcom/google/android/gms/measurement/internal/zzfc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzgr;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzj:Lcom/google/android/gms/measurement/internal/zzfc;

    return-object p0
.end method

.method public final zzb(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzaf:Z

    return-void
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzk:Lcom/google/android/gms/measurement/internal/zzeq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzk:Lcom/google/android/gms/measurement/internal/zzeq;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzjx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzm:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzm:Lcom/google/android/gms/measurement/internal/zzjx;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzfl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzy:Lcom/google/android/gms/measurement/internal/zzfl;

    return-object p0
.end method

.method final zzf()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzl:Lcom/google/android/gms/measurement/internal/zzfr;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzhb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzr:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzr:Lcom/google/android/gms/measurement/internal/zzhb;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzn:Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzgr;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzn:Lcom/google/android/gms/measurement/internal/zzkv;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzeo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzo:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzgr;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzo:Lcom/google/android/gms/measurement/internal/zzeo;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzu:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzu:Lcom/google/android/gms/measurement/internal/zzem;

    return-object p0
.end method

.method public final zzk()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzd:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzp:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method public final zzm()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzl:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzgq;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzl:Lcom/google/android/gms/measurement/internal/zzfr;

    return-object p0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzk:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzgq;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzk:Lcom/google/android/gms/measurement/internal/zzeq;

    return-object p0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzs()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzg:Z

    return p0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzh:Lcom/google/android/gms/measurement/internal/zzw;

    return-object p0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzii;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzq:Lcom/google/android/gms/measurement/internal/zzii;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzq:Lcom/google/android/gms/measurement/internal/zzii;

    return-object p0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzir;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzv:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzv:Lcom/google/android/gms/measurement/internal/zzir;

    return-object p0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzw:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzgq;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzw:Lcom/google/android/gms/measurement/internal/zzak;

    return-object p0
.end method

.method public final zzx()Lcom/google/android/gms/measurement/internal/zzen;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzx:Lcom/google/android/gms/measurement/internal/zzen;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzx:Lcom/google/android/gms/measurement/internal/zzen;

    return-object p0
.end method

.method public final zzy()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzs:Lcom/google/android/gms/measurement/internal/zza;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzz()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzac:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfu;->zzac:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
