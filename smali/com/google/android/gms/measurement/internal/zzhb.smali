.class public final Lcom/google/android/gms/measurement/internal/zzhb;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzhy;

.field final zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzgw;

.field private final zzd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/internal/zzgz;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Z

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/lang/Object;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzac;

.field private zzi:I

.field private final zzj:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzk:J

.field private zzl:I

.field private zzm:Z

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzky;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzfu;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzd:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzg:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzm:Z

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzhq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzhq;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzn:Lcom/google/android/gms/measurement/internal/zzky;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzac;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzh:Lcom/google/android/gms/measurement/internal/zzac;

    const/16 v0, 0x64

    .line 8
    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzi:I

    const-wide/16 v1, -0x1

    .line 9
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzk:J

    .line 10
    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzl:I

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzj:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzac;IJZZ)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 118
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzk:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzl:I

    .line 119
    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/zzac;->zza(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Dropped out-of-date consent setting, proposed settings"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(Lcom/google/android/gms/measurement/internal/zzac;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzk:J

    .line 123
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzl:I

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Z)V

    if-eqz p6, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p3, "Lower precedence consent source ignored, proposed source"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhb;)V
    .locals 0

    .line 847
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzal()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhb;Landroid/os/Bundle;)V
    .locals 0

    .line 848
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzc(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzac;IJZZ)V
    .locals 0

    .line 846
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzac;IJZZ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/lang/Boolean;Z)V
    .locals 0

    const/4 p2, 0x1

    .line 845
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method private final zza(Ljava/lang/Boolean;Z)V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(Ljava/lang/Boolean;)V

    .line 107
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzb(Ljava/lang/Boolean;)V

    .line 110
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 112
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzac()Z

    move-result p2

    if-nez p2, :cond_1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzal()V

    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .line 444
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzhi;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzhi;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 445
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzal()V
    .locals 8

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzn:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfi;->zza()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_2

    const-string v1, "unset"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "app"

    const-string v2, "_npa"

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_1

    :cond_0
    const-string v1, "app"

    const-string v2, "_npa"

    const-string v3, "true"

    .line 138
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_1
    move-wide v3, v6

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 141
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzm:Z

    if-eqz v0, :cond_7

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Recording app launch after enabling measurement for the first time (FE)"

    .line 144
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzah()V

    .line 146
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbp:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkf;->zza()V

    .line 149
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmy;->zzb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbs:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zze()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    .line 152
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzi:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zze()Lcom/google/android/gms/measurement/internal/zzfl;

    move-result-object v0

    .line 156
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzfl;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;)V

    .line 157
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcc:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzhe;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    .line 161
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzir;->zzab()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzhb;Landroid/os/Bundle;)V
    .locals 0

    .line 849
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhb;->zzd(Landroid/os/Bundle;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 13

    .line 398
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 399
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzhj;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/zzhj;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 400
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzc(Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v0, p1

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 644
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 645
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "origin"

    .line 646
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "value"

    .line 647
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    .line 648
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v2

    if-nez v2, :cond_0

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    .line 651
    :cond_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzku;

    const-string v3, "name"

    .line 652
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "triggered_timestamp"

    .line 653
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v3, "value"

    .line 654
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v3, "origin"

    .line 655
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 657
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v9

    const-string v3, "app_id"

    .line 658
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "triggered_event_name"

    .line 659
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "triggered_event_params"

    .line 660
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const-string v3, "origin"

    .line 661
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 662
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzas;->zzck:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v18, v4

    goto :goto_0

    :cond_1
    move/from16 v18, v5

    .line 663
    :goto_0
    invoke-virtual/range {v9 .. v18}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v14

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v15

    const-string v3, "app_id"

    .line 666
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "timed_out_event_name"

    .line 667
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "timed_out_event_params"

    .line 668
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    const-string v3, "origin"

    .line 669
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    .line 670
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzas;->zzck:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_2

    move/from16 v24, v4

    goto :goto_1

    :cond_2
    move/from16 v24, v5

    .line 671
    :goto_1
    invoke-virtual/range {v15 .. v24}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v11

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v15

    const-string v3, "app_id"

    .line 674
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "expired_event_name"

    .line 675
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "expired_event_params"

    .line 676
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    const-string v3, "origin"

    .line 677
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    .line 678
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzas;->zzck:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v24, v4

    goto :goto_2

    :cond_3
    move/from16 v24, v5

    .line 679
    :goto_2
    invoke-virtual/range {v15 .. v24}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzz;

    const-string v3, "app_id"

    .line 684
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "origin"

    .line 685
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "creation_timestamp"

    .line 686
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    const-string v3, "trigger_event_name"

    .line 687
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "trigger_timeout"

    .line 688
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v3, "time_to_live"

    .line 689
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object v3, v15

    move-object v6, v2

    move-object v0, v15

    move-wide/from16 v15, v18

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzku;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;JLcom/google/android/gms/measurement/internal/zzaq;JLcom/google/android/gms/measurement/internal/zzaq;)V

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Lcom/google/android/gms/measurement/internal/zzz;)V

    return-void

    :catch_0
    return-void
.end method

.method private final zzd(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p1

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 694
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 695
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v1, p0

    .line 696
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Conditional property not cleared since app measurement is disabled"

    .line 699
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    .line 701
    :cond_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzku;

    const-string v3, "name"

    .line 702
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 704
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v9

    const-string v3, "app_id"

    .line 705
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "expired_event_name"

    .line 706
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "expired_event_params"

    .line 707
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    const-string v3, "origin"

    .line 708
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "creation_timestamp"

    .line 709
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 710
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzck:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move/from16 v18, v3

    .line 711
    invoke-virtual/range {v9 .. v18}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzz;

    const-string v3, "app_id"

    .line 716
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "origin"

    .line 717
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "creation_timestamp"

    .line 718
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v3, "active"

    .line 719
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v3, "trigger_event_name"

    .line 720
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v3, "trigger_timeout"

    .line 721
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x0

    const-string v3, "time_to_live"

    .line 722
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    move-object v3, v15

    move-object v6, v2

    move-object v0, v15

    move-wide/from16 v15, v18

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzku;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;JLcom/google/android/gms/measurement/internal/zzaq;JLcom/google/android/gms/measurement/internal/zzaq;)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Lcom/google/android/gms/measurement/internal/zzz;)V

    return-void

    :catch_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzf()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 728
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    .line 729
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 730
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 731
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzw;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 733
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 734
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 735
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 736
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    const-wide/16 v8, 0x1388

    const-string v10, "get conditional user properties"

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzho;

    const/4 v5, 0x0

    move-object v2, v11

    move-object v3, p0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzho;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v0

    move-wide v4, v8

    move-object v6, v10

    move-object v7, v11

    .line 737
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 738
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 740
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 741
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "Timed out waiting for get conditional user properties"

    const/4 v0, 0x0

    .line 742
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 743
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 744
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 747
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Cannot get user properties from analytics worker thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 749
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 750
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzw;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Cannot get user properties from main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 752
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 753
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v8, p0

    .line 754
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 755
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    const-wide/16 v10, 0x1388

    const-string v12, "get user properties"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzhr;

    const/4 v4, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzhr;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v9

    move-object v2, v0

    move-wide v3, v10

    move-object v5, v12

    move-object v6, v13

    .line 756
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 757
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 759
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Timed out waiting for handle get user properties, includeInternal"

    .line 761
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 762
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 764
    :cond_2
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 765
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzku;

    .line 766
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzku;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final bridge synthetic zza()V
    .locals 0

    .line 786
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    return-void
.end method

.method final zza(JZ)V
    .locals 5

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 491
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Resetting analytics data (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 494
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zza()V

    .line 495
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v0

    .line 496
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    .line 497
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzh:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    .line 498
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfi;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 499
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    .line 500
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznj;->zzb()Z

    move-result p1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbp:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 501
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzp:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    .line 502
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()Z

    move-result p1

    if-nez p1, :cond_2

    xor-int/lit8 p1, v0, 0x1

    .line 503
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzfc;->zzb(Z)V

    .line 504
    :cond_2
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzv:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    .line 505
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzw:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    .line 506
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzx:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(Landroid/os/Bundle;)V

    if-eqz p3, :cond_3

    .line 508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzir;->zzac()V

    .line 509
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznj;->zzb()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzas;->zzbp:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkf;->zza()V

    :cond_4
    xor-int/lit8 p1, v0, 0x1

    .line 511
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzm:Z

    return-void
.end method

.method public final zza(Landroid/os/Bundle;)V
    .locals 2

    .line 552
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zza(Landroid/os/Bundle;IJ)V
    .locals 3

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Ignoring invalid consent setting"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Valid consent values are \'granted\', \'denied\'"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Lcom/google/android/gms/measurement/internal/zzac;IJ)V

    :cond_1
    return-void
.end method

.method public final zza(Landroid/os/Bundle;J)V
    .locals 6

    .line 554
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "app_id"

    .line 556
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v1, "Package name should be null when calling setConditionalUserProperty"

    .line 559
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_0
    const-string p1, "app_id"

    .line 560
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 562
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "app_id"

    .line 564
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 565
    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    .line 566
    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 567
    const-class v1, Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "trigger_event_name"

    .line 568
    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "trigger_timeout"

    .line 569
    const-class v1, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    .line 570
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 571
    invoke-static {v0, p1, v1, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timed_out_event_name"

    .line 572
    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "timed_out_event_params"

    .line 573
    const-class v1, Landroid/os/Bundle;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "triggered_event_name"

    .line 574
    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "triggered_event_params"

    .line 575
    const-class v1, Landroid/os/Bundle;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time_to_live"

    .line 576
    const-class v1, Ljava/lang/Long;

    .line 577
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 578
    invoke-static {v0, p1, v1, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "expired_event_name"

    .line 579
    const-class v1, Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "expired_event_params"

    .line 580
    const-class v1, Landroid/os/Bundle;

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    .line 581
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "origin"

    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "value"

    .line 583
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "creation_timestamp"

    .line 584
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "name"

    .line 585
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "value"

    .line 586
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 587
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p2

    .line 590
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p2

    const-string p3, "Invalid conditional user property name"

    .line 591
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p3

    if-eqz p3, :cond_2

    .line 596
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p3

    .line 597
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string v0, "Invalid conditional user property value"

    .line 598
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 599
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3

    .line 603
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p3

    .line 604
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p3

    const-string v0, "Unable to normalize conditional user property value"

    .line 605
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 606
    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 608
    :cond_3
    invoke-static {v0, p3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    const-string p2, "trigger_timeout"

    .line 609
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    const-string v1, "trigger_event_name"

    .line 610
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide v4, 0x39ef8b000L

    if-nez v1, :cond_5

    cmp-long v1, p2, v4

    if-gtz v1, :cond_4

    cmp-long v1, p2, v2

    if-gez v1, :cond_5

    .line 613
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Invalid conditional user property timeout"

    .line 615
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 617
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string p2, "time_to_live"

    .line 619
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    cmp-long v1, p2, v4

    if-gtz v1, :cond_7

    cmp-long v1, p2, v2

    if-gez v1, :cond_6

    goto :goto_0

    .line 627
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzhn;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Landroid/os/Bundle;)V

    .line 628
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void

    .line 621
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Invalid conditional user property time to live"

    .line 623
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 624
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 625
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzac;)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzc()Z

    move-result p1

    if-nez p1, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzir;->zzai()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzac()Z

    move-result v0

    if-eq p1, v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzv()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 101
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/Boolean;Z)V

    :cond_4
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzac;IJ)V
    .locals 14

    move-object v10, p0

    move-object v0, p1

    move/from16 v6, p2

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzml;->zzb()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzcg:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzch:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    const/16 v2, 0x14

    if-eqz v1, :cond_0

    if-eq v6, v2, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzb()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zzd()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Discarding empty consent settings"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_1
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzg:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget v3, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzi:I

    invoke-static {v6, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zza(II)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 64
    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzh:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzac;)Z

    move-result v3

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzh:Lcom/google/android/gms/measurement/internal/zzac;

    .line 67
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzac;->zze()Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v4

    .line 68
    :cond_2
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzh:Lcom/google/android/gms/measurement/internal/zzac;

    invoke-virtual {p1, v7}, Lcom/google/android/gms/measurement/internal/zzac;->zzc(Lcom/google/android/gms/measurement/internal/zzac;)Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    .line 69
    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzh:Lcom/google/android/gms/measurement/internal/zzac;

    .line 70
    iput v6, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzi:I

    move v13, v3

    move-object v3, v0

    move v0, v5

    move v5, v13

    goto :goto_0

    :cond_3
    move-object v3, v0

    move v0, v5

    move v4, v0

    .line 72
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Ignoring lower-priority consent settings, proposed settings"

    .line 76
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_4
    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzj:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    if-eqz v5, :cond_5

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzhx;

    move-object v1, v12

    move-object v2, p0

    move-wide/from16 v4, p3

    move/from16 v6, p2

    move v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzhx;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzac;JIJZ)V

    .line 84
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 85
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzch:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x28

    if-eq v6, v1, :cond_6

    if-ne v6, v2, :cond_7

    .line 86
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzhw;

    move-object v1, v11

    move-object v2, p0

    move/from16 v4, p2

    move-wide v5, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzhw;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzac;IJZ)V

    .line 87
    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/lang/Runnable;)V

    return-void

    .line 88
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzhz;

    move-object v1, v11

    move-object v2, p0

    move/from16 v4, p2

    move-wide v5, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzhz;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Lcom/google/android/gms/measurement/internal/zzac;IJZ)V

    .line 89
    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 72
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    :goto_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzgw;)V
    .locals 2

    .line 536
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 537
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    if-eqz p1, :cond_1

    .line 538
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzc:Lcom/google/android/gms/measurement/internal/zzgw;

    if-eq p1, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    .line 539
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 540
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzc:Lcom/google/android/gms/measurement/internal/zzgw;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzgz;)V
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 543
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzd:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/Boolean;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzhu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzhu;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/lang/Boolean;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zza(Ljava/lang/String;)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    move-object v10, p0

    .line 170
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzc:Lcom/google/android/gms/measurement/internal/zzgw;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v7, v0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    .line 171
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method protected final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v15, p2

    move-wide/from16 v13, p3

    move-object/from16 v12, p5

    .line 173
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 177
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzf()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzen;->zzag()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Dropping non-safelisted event. event name, origin"

    invoke-virtual {v0, v1, v15, v8}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 185
    :cond_1
    iget-boolean v0, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zze:Z

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_3

    .line 186
    iput-boolean v9, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zze:Z

    .line 188
    :try_start_0
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzs()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v9, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "com.google.android.gms.tagmanager.TagManagerService"

    .line 192
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v1, "initialize"

    .line 194
    new-array v2, v9, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v10

    .line 195
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 199
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 202
    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzu()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 203
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbd:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_cmp"

    .line 204
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gclid"

    .line 205
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "auto"

    const-string v3, "_lgclid"

    const-string v0, "gclid"

    .line 207
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    .line 209
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 210
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->zzb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzby:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p6, :cond_5

    .line 213
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzx:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    const/16 v0, 0x28

    if-eqz p8, :cond_c

    const-string v1, "_iap"

    .line 216
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 217
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    .line 219
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzck:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v9

    goto :goto_2

    :cond_6
    move v2, v10

    :goto_2
    const-string v3, "event"

    .line 221
    invoke-virtual {v1, v3, v15}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0xd

    const/4 v5, 0x2

    if-nez v3, :cond_7

    move v4, v5

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    const-string v2, "event"

    .line 224
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgv;->zza:[Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgv;->zzb:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v6, v15}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    const-string v2, "event"

    .line 226
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgv;->zza:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v15}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    const-string v2, "event"

    .line 228
    invoke-virtual {v1, v2, v0, v15}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    move v4, v5

    goto :goto_3

    :cond_a
    move v4, v10

    :goto_3
    if-eqz v4, :cond_c

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Invalid public event name. Event will not be logged (FE)"

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 238
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    .line 239
    invoke-static {v15, v0, v9}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v15, :cond_b

    .line 240
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 241
    :cond_b
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 242
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzn:Lcom/google/android/gms/measurement/internal/zzky;

    const-string v3, "_ev"

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p3, v4

    move-object/from16 p4, v3

    move-object/from16 p5, v0

    move/from16 p6, v10

    .line 243
    invoke-virtual/range {p1 .. p6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 245
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Z)Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, "_sc"

    .line 248
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 249
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzij;->zzd:Z

    :cond_d
    if-eqz p6, :cond_e

    if-eqz p8, :cond_e

    move v2, v9

    goto :goto_4

    :cond_e
    move v2, v10

    .line 251
    :goto_4
    invoke-static {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Lcom/google/android/gms/measurement/internal/zzij;Landroid/os/Bundle;Z)V

    const-string v1, "am"

    .line 252
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 253
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-eqz p6, :cond_f

    .line 254
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzc:Lcom/google/android/gms/measurement/internal/zzgw;

    if-eqz v2, :cond_f

    if-nez v1, :cond_f

    if-nez v16, :cond_f

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Passing event to registered event handler (FE)"

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzc:Lcom/google/android/gms/measurement/internal/zzgw;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-wide/from16 v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzgw;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    .line 261
    :cond_f
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaf()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    .line 264
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    .line 265
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlo;->zzb()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzck:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v9

    goto :goto_5

    :cond_11
    move v2, v10

    .line 266
    :goto_5
    invoke-virtual {v1, v15, v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Z)I

    move-result v1

    if-eqz v1, :cond_13

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    .line 269
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzg()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const-string v3, "Invalid event name. Event will not be logged (FE)"

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-static {v15, v0, v9}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v15, :cond_12

    .line 274
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 275
    :cond_12
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 276
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzn:Lcom/google/android/gms/measurement/internal/zzky;

    const-string v4, "_ev"

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, p9

    move/from16 p4, v1

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move/from16 p7, v10

    .line 277
    invoke-virtual/range {p1 .. p7}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_13
    const-string v0, "_o"

    const-string v1, "_sn"

    const-string v2, "_sc"

    const-string v3, "_si"

    .line 279
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    const/4 v2, 0x1

    move v5, v9

    move-object v9, v1

    move v6, v10

    move-object/from16 v10, p9

    move-object v1, v11

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move-wide v3, v13

    move-object v13, v0

    move/from16 v14, p8

    move v15, v2

    .line 283
    invoke-virtual/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v2, "_sc"

    .line 286
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "_si"

    .line 287
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_6

    :cond_14
    const-string v2, "_sn"

    .line 289
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "_sc"

    .line 290
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_si"

    .line 291
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 292
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v11, v2, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzij;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 293
    :cond_15
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzas:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_17

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v2

    .line 296
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Z)Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v2, "_ae"

    move-object/from16 v11, p2

    .line 298
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v2

    .line 300
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzb()J

    move-result-wide v12

    cmp-long v2, v12, v9

    if-lez v2, :cond_18

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    invoke-virtual {v2, v0, v12, v13}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;J)V

    goto :goto_7

    :cond_16
    move-object/from16 v11, p2

    goto :goto_7

    :cond_17
    move-object/from16 v11, p2

    .line 304
    :cond_18
    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzms;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "auto"

    .line 306
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "_ssr"

    .line 307
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v2

    const-string v12, "_ffr"

    .line 309
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 310
    invoke-static {v12}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    goto :goto_8

    .line 312
    :cond_19
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 313
    :goto_8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v12

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzfc;->zzu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfi;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 314
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    move v1, v6

    goto :goto_9

    .line 316
    :cond_1a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfc;->zzu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    move v1, v5

    :goto_9
    if-nez v1, :cond_1c

    return-void

    :cond_1b
    const-string v1, "_ae"

    .line 320
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zza()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "_ffr"

    .line 324
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_1c
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zzg()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzp:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfg;->zza()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-lez v1, :cond_1f

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzr:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfe;->zza()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Current session is expired, remove the session number, ID, and engagement time"

    .line 333
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    const-string v2, "auto"

    const-string v13, "_sid"

    const/4 v14, 0x0

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v4, v14

    move v13, v5

    move v14, v6

    move-wide/from16 v5, v17

    .line 336
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    const-string v2, "auto"

    const-string v3, "_sno"

    const/4 v4, 0x0

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    .line 339
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    const-string v2, "auto"

    const-string v3, "_se"

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    .line 342
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_a

    :cond_1d
    move v13, v5

    move v14, v6

    goto :goto_a

    :cond_1e
    move v13, v5

    move v14, v6

    goto :goto_a

    :cond_1f
    move v13, v5

    move v14, v6

    :goto_a
    const-string v1, "extend_session"

    .line 343
    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 347
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 348
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzd()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    .line 349
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/measurement/internal/zzkf;

    move-wide/from16 v9, p3

    invoke-virtual {v1, v9, v10, v13}, Lcom/google/android/gms/measurement/internal/zzkf;->zza(JZ)V

    goto :goto_b

    :cond_20
    move-wide/from16 v9, p3

    .line 350
    :goto_b
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 351
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 352
    array-length v2, v1

    move v3, v14

    :goto_c
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 355
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_22
    move v0, v14

    .line 357
    :goto_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 358
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v0, :cond_23

    move v2, v13

    goto :goto_e

    :cond_23
    move v2, v14

    :goto_e
    if-eqz v2, :cond_24

    const-string v2, "_ep"

    goto :goto_f

    :cond_24
    move-object v2, v11

    :goto_f
    const-string v3, "_o"

    .line 361
    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_25

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    move-object v15, v1

    goto :goto_10

    :cond_25
    move-object v15, v1

    .line 365
    :goto_10
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v3, v15}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Landroid/os/Bundle;)V

    move-object v1, v5

    move-object/from16 v4, p1

    move-object v13, v5

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzap;Ljava/lang/String;J)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v1

    move-object/from16 v5, p9

    invoke-virtual {v1, v13, v5}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;)V

    if-nez v16, :cond_26

    .line 368
    iget-object v1, v7, Lcom/google/android/gms/measurement/internal/zzhb;->zzd:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzgz;

    .line 369
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 370
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzgz;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v5, p9

    goto :goto_11

    :cond_26
    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x1

    goto :goto_d

    .line 374
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    .line 375
    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Z)Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v0, "_ae"

    .line 377
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zza(ZZJ)Z

    :cond_28
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 11

    .line 380
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()V

    .line 383
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v10, p4

    .line 384
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 11

    if-nez p1, :cond_0

    const-string v0, "app"

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    if-nez p3, :cond_1

    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p3

    .line 390
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzbu:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "screen_view"

    move-object v2, p2

    .line 391
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    move-wide/from16 v3, p6

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Landroid/os/Bundle;J)V

    return-void

    :cond_2
    move-wide/from16 v3, p6

    goto :goto_2

    :cond_3
    move-object v2, p2

    move-wide/from16 v3, p6

    :goto_2
    const/4 v0, 0x1

    if-eqz p5, :cond_5

    move-object v10, p0

    .line 394
    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzhb;->zzc:Lcom/google/android/gms/measurement/internal/zzgw;

    if-eqz v6, :cond_6

    .line 395
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    move v7, v6

    goto :goto_4

    :cond_5
    move-object v10, p0

    :cond_6
    :goto_3
    move v7, v0

    :goto_4
    xor-int/lit8 v8, p4, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide/from16 v3, p6

    move/from16 v6, p5

    .line 396
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 8

    .line 447
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 450
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    const-string v0, "allow_personalized_ads"

    .line 451
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p2, "false"

    .line 453
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    move-wide p2, v0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p2, "_npa"

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfc;->zzn:Lcom/google/android/gms/measurement/internal/zzfi;

    move-object v3, p3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    const-string v0, "true"

    goto :goto_1

    :cond_1
    const-string v0, "false"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    move-object v3, p2

    move-object v6, p3

    goto :goto_2

    :cond_2
    if-nez p3, :cond_3

    const-string p2, "_npa"

    .line 458
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzn:Lcom/google/android/gms/measurement/internal/zzfi;

    const-string v1, "unset"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    move-object v3, p2

    move-object v6, p3

    goto :goto_2

    :cond_3
    move-object v3, p2

    move-object v6, p3

    .line 459
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result p2

    if-nez p2, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    .line 462
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaf()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 464
    :cond_5
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzku;

    move-object v2, p2

    move-wide v4, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Lcom/google/android/gms/measurement/internal/zzku;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .line 402
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 9

    if-nez p1, :cond_0

    const-string p1, "app"

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 p1, 0x6

    const/4 v0, 0x0

    const/16 v2, 0x18

    if-eqz p4, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;)I

    move-result p1

    move v5, p1

    goto :goto_1

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p4

    const-string v3, "user property"

    .line 409
    invoke-virtual {p4, v3, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v5, p1

    goto :goto_1

    :cond_2
    const-string v3, "user property"

    .line 411
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgx;->zza:[Ljava/lang/String;

    invoke-virtual {p4, v3, v4, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 p1, 0xf

    move v5, p1

    goto :goto_1

    :cond_3
    const-string v3, "user property"

    .line 413
    invoke-virtual {p4, v3, v2, p2}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    move v5, p1

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    const/4 p1, 0x1

    if-eqz v5, :cond_6

    .line 419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-static {p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_5

    .line 420
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    move v8, v0

    .line 421
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 422
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzn:Lcom/google/android/gms/measurement/internal/zzky;

    const-string v6, "_ev"

    .line 423
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    if-eqz p3, :cond_b

    .line 426
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzkv;->zzb(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_9

    .line 429
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-static {p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 431
    instance-of p1, p3, Ljava/lang/String;

    if-nez p1, :cond_8

    instance-of p1, p3, Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v8, v0

    goto :goto_3

    .line 432
    :cond_8
    :goto_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v8, v0

    .line 434
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 435
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzh()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzn:Lcom/google/android/gms/measurement/internal/zzky;

    const-string v6, "_ev"

    .line 436
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 438
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzkv;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 440
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_a
    return-void

    :cond_b
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    .line 442
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method public final zzaa()V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final zzab()Ljava/lang/Boolean;
    .locals 6

    .line 20
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    const-string v4, "boolean test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhc;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzac()Ljava/lang/String;
    .locals 6

    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    const-string v4, "String test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzhm;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzad()Ljava/lang/Long;
    .locals 6

    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    const-string v4, "long test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzht;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzht;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final zzae()Ljava/lang/Integer;
    .locals 6

    .line 32
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    const-string v4, "int test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhs;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzhs;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzaf()Ljava/lang/Double;
    .locals 6

    .line 36
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    const-string v4, "double test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzhv;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-wide/16 v2, 0x3a98

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final zzag()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzah()V
    .locals 3

    .line 513
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 514
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 515
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaf()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbc:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    const-string v2, "google_analytics_deferred_deep_link_enabled"

    .line 519
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v2, "Deferred Deep Link feature enabled."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzhd;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzir;->zzad()V

    .line 525
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzm:Z

    .line 526
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfc;->zzy()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 528
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zzab()V

    .line 530
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 532
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_po"

    .line 533
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto"

    const-string v2, "_ou"

    .line 534
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public final zzai()Ljava/lang/String;
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzu()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzii;->zzaa()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzaj()Ljava/lang/String;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzu()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzii;->zzaa()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzak()Ljava/lang/String;
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 780
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_id"

    .line 781
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzig;->zza(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 784
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    .line 787
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    return-void
.end method

.method final synthetic zzb(Landroid/os/Bundle;)V
    .locals 11

    .line 806
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznw;->zzb()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzby:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzx:Lcom/google/android/gms/measurement/internal/zzfh;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(Landroid/os/Bundle;)V

    return-void

    .line 811
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzx:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 812
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 813
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 814
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_4

    .line 815
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 816
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzn:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v7, 0x1b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 817
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;ILjava/lang/String;Ljava/lang/String;I)V

    .line 818
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v4

    .line 819
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v4

    const-string v5, "Invalid default event parameter type. Name, value"

    .line 820
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 822
    :cond_4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkv;->zzd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 823
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v3

    .line 824
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v3

    const-string v4, "Invalid default event parameter name. Name"

    .line 825
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    .line 828
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 829
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v4

    const-string v5, "param"

    const/16 v6, 0x64

    .line 831
    invoke-virtual {v4, v5, v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 832
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 834
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    .line 835
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzd()I

    move-result p1

    .line 836
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Landroid/os/Bundle;I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 837
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzn:Lcom/google/android/gms/measurement/internal/zzky;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 838
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Lcom/google/android/gms/measurement/internal/zzky;ILjava/lang/String;Ljava/lang/String;I)V

    .line 839
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    .line 840
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v1, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 841
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 842
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfc;->zzx:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(Landroid/os/Bundle;)V

    .line 843
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Landroid/os/Bundle;)V

    return-void

    :cond_9
    :goto_1
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zzgz;)V
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 548
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzd:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzh()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    .line 788
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 631
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 632
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 633
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    .line 634
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "creation_timestamp"

    .line 635
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string p1, "expired_event_name"

    .line 637
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expired_event_params"

    .line 638
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzhb;Landroid/os/Bundle;)V

    .line 640
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 789
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzhb;
    .locals 1

    .line 790
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzen;
    .locals 1

    .line 791
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzir;
    .locals 1

    .line 792
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Lcom/google/android/gms/measurement/internal/zzir;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzii;
    .locals 1

    .line 793
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzem;
    .locals 1

    .line 794
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzjx;
    .locals 1

    .line 795
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzak;
    .locals 1

    .line 796
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 797
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Landroid/content/Context;
    .locals 1

    .line 798
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzeo;
    .locals 1

    .line 799
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzkv;
    .locals 1

    .line 800
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()Lcom/google/android/gms/measurement/internal/zzkv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    .line 801
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 802
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzfc;
    .locals 1

    .line 803
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    .line 804
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzw;
    .locals 1

    .line 805
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    return-object v0
.end method

.method protected final zzy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
