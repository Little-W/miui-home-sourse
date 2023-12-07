.class abstract Lcom/google/android/gms/measurement/internal/zzki;
.super Lcom/google/android/gms/measurement/internal/zzkj;


# instance fields
.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza(Lcom/google/android/gms/measurement/internal/zzki;)V

    return-void
.end method


# virtual methods
.method final zzai()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected final zzaj()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzai()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzak()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzd()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zzs()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract zzd()Z
.end method
