.class final Lcom/google/android/gms/internal/measurement/zzak;
.super Lcom/google/android/gms/internal/measurement/zzag$zzb;


# instance fields
.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Lcom/google/android/gms/internal/measurement/zzt;

.field private final synthetic zzf:Lcom/google/android/gms/internal/measurement/zzag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzag;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzf:Lcom/google/android/gms/internal/measurement/zzag;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzak;->zze:Lcom/google/android/gms/internal/measurement/zzt;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzag$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzag;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzf:Lcom/google/android/gms/internal/measurement/zzag;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzag;->zzc(Lcom/google/android/gms/internal/measurement/zzag;)Lcom/google/android/gms/internal/measurement/zzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzak;->zzd:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzak;->zze:Lcom/google/android/gms/internal/measurement/zzt;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/internal/measurement/zzv;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzw;)V

    return-void
.end method

.method protected final zzb()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzak;->zze:Lcom/google/android/gms/internal/measurement/zzt;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzt;->zza(Landroid/os/Bundle;)V

    return-void
.end method
