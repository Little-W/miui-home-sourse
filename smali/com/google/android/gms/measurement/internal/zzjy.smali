.class final Lcom/google/android/gms/measurement/internal/zzjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjx;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:Lcom/google/android/gms/measurement/internal/zzkb;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb(Lcom/google/android/gms/measurement/internal/zzjx;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbu:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzr:Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfe;->zza(Z)V

    :cond_1
    return-void
.end method

.method final zza(J)V
    .locals 7

    .line 8
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzjy;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb(Lcom/google/android/gms/measurement/internal/zzjx;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjy;->zzb:Lcom/google/android/gms/measurement/internal/zzkb;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
