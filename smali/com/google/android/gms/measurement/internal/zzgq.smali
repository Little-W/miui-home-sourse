.class abstract Lcom/google/android/gms/measurement/internal/zzgq;
.super Lcom/google/android/gms/measurement/internal/zzgr;


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzgr;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgq;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Lcom/google/android/gms/measurement/internal/zzgq;)V

    return-void
.end method


# virtual methods
.method protected g_()V
    .locals 0

    return-void
.end method

.method final zzaa()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzgq;->zza:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected final zzab()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzaa()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzac()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgq;->zza:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zzd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgq;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzae()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgq;->zza:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzad()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgq;->zza:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgq;->g_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgq;->zzy:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzae()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgq;->zza:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract zzd()Z
.end method
