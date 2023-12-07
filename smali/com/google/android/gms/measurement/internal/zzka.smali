.class final synthetic Lcom/google/android/gms/measurement/internal/zzka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzka;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzka;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zza:J

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:J

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v3, "Application going to the background"

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzbu:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzfc;->zzr:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzfe;->zza(Z)V

    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzb(J)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzbl:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {p0, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result p0

    const/4 v7, 0x0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zza(J)J

    move-result-wide v8

    const-string p0, "_et"

    invoke-virtual {v6, p0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Z)Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object p0

    invoke-static {p0, v6, v3}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Lcom/google/android/gms/measurement/internal/zzij;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    move v3, v7

    :goto_0
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0, v7, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zza(ZZJ)Z

    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzd;->zze()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_ab"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
