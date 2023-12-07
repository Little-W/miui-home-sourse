.class final Lcom/google/android/gms/measurement/internal/zzkf;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzb(JZ)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjx;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzaa()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzp:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzd;->zze()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    move-object v5, v0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfc;->zzm:Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfe;->zza(Z)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "_sid"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbj:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x1

    const-string p3, "_aib"

    invoke-virtual {v8, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzd;->zze()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzms;->zzb()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzfc;->zzu:Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfi;->zza()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_ffr"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zze()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ssr"

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method


# virtual methods
.method final zza()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzm:Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfe;->zza(Z)V

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzw()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Detected application was in foreground"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkf;->zzb(JZ)V

    :cond_0
    return-void
.end method

.method final zza(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zza(Lcom/google/android/gms/measurement/internal/zzjx;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfc;->zza(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzm:Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfe;->zza(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzp:Lcom/google/android/gms/measurement/internal/zzfg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfg;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkf;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzm:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfe;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzkf;->zzb(JZ)V

    :cond_1
    return-void
.end method
