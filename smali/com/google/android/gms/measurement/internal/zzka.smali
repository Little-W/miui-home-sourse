.class final synthetic Lcom/google/android/gms/measurement/internal/zzka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

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
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzka;->zza:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkb;->zzc:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzkb;->zza:J

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzkb;->zzb:J

    .line 3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzc()V

    .line 4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zzv()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v4, "Application going to the background"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbu:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzfc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfc;->zzr:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzfe;->zza(Z)V

    .line 7
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzb(J)V

    .line 11
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzbl:Lcom/google/android/gms/measurement/internal/zzej;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzej;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zza(J)J

    move-result-wide v9

    const-string v0, "_et"

    .line 14
    invoke-virtual {v7, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzh()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Z)Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    .line 17
    invoke-static {v0, v7, v4}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Lcom/google/android/gms/measurement/internal/zzij;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    move v4, v8

    .line 18
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0, v8, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zza(ZZJ)Z

    .line 19
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zze()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
