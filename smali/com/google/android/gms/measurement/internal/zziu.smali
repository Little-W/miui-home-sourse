.class final Lcom/google/android/gms/measurement/internal/zziu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzir;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/measurement/internal/zzir;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzir;->zzd(Lcom/google/android/gms/measurement/internal/zzir;)Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object p0

    const-string v0, "Failed to reset data on the service: not connected to service"

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zza:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzei;->zzd(Lcom/google/android/gms/measurement/internal/zzn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to reset data on the service: remote exception"

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zziu;->zzb:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzir;->zze(Lcom/google/android/gms/measurement/internal/zzir;)V

    return-void
.end method
