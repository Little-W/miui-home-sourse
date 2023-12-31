.class final Lcom/google/android/gms/internal/measurement/zzeq;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 9
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    check-cast p1, Ljava/util/Map$Entry;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzem;->zzb(Lcom/google/android/gms/internal/measurement/zzem;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzem;->zzc:[Ljava/lang/Object;

    aget-object p0, p0, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzdz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->zzf()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzb()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 17
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 18
    check-cast p1, Ljava/util/Map$Entry;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzb(Lcom/google/android/gms/internal/measurement/zzem;)I

    move-result v0

    .line 23
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzem;->zzc(Lcom/google/android/gms/internal/measurement/zzem;)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzem;->zza:[I

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzem;->zzb:[Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    iget-object v8, p1, Lcom/google/android/gms/internal/measurement/zzem;->zzc:[Ljava/lang/Object;

    move v4, v0

    .line 24
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzex;->zza(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/zzem;->zza(II)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzem;->zzd(Lcom/google/android/gms/internal/measurement/zzem;)I

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->zzc()V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final size()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->zza:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzem;->size()I

    move-result p0

    return p0
.end method
