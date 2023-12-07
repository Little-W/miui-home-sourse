.class final Lcom/google/android/gms/measurement/internal/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzgt;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzgt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Lcom/google/android/gms/measurement/internal/zzai;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzal;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzt()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzw;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzp()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Lcom/google/android/gms/measurement/internal/zzai;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zza(Lcom/google/android/gms/measurement/internal/zzai;J)J

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzai;->zza()V

    :cond_1
    return-void
.end method
