.class final Lcom/google/android/gms/measurement/internal/zzjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Z

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzz;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzz;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzir;ZZLcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/zzz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzir;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Z

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzz;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zze:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzir;->zzd(Lcom/google/android/gms/measurement/internal/zzir;)Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Z

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzir;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzz;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzir;->zza(Lcom/google/android/gms/measurement/internal/zzei;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    .line 10
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zze:Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzei;->zza(Lcom/google/android/gms/measurement/internal/zzz;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzei;->zza(Lcom/google/android/gms/measurement/internal/zzz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zze()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjh;->zzf:Lcom/google/android/gms/measurement/internal/zzir;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzir;->zze(Lcom/google/android/gms/measurement/internal/zzir;)V

    return-void
.end method
