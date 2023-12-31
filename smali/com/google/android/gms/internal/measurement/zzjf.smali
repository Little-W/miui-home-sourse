.class final Lcom/google/android/gms/internal/measurement/zzjf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjc;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjd;

    .line 21
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjd;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjd;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjd;

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjd;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjd;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()Z

    move-result p0

    if-nez p0, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjd;->zzb()Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object p0

    move-object p1, p0

    .line 16
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjd;->zza(Lcom/google/android/gms/internal/measurement/zzjd;)V

    :cond_1
    return-object p1
.end method

.method public final zza(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjd;

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjd;

    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjd;->zzc()V

    return-object p1
.end method

.method public final zze(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjd;->zza()Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjd;->zzb()Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzja;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzja<",
            "**>;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjb;

    .line 4
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method
