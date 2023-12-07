.class final Lcom/google/android/gms/internal/measurement/zzes;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzem;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzes;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzes;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzes;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzem;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzes;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->zze()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzes;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzes;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Lcom/google/android/gms/internal/measurement/zzem;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzem;->zzh()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzes;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->size()I

    move-result p0

    return p0
.end method
