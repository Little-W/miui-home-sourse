.class final Lcom/google/android/gms/internal/measurement/zzfr;
.super Lcom/google/android/gms/internal/measurement/zzfb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfb<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzfo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfb;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zza(Lcom/google/android/gms/internal/measurement/zzfo;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzb(Lcom/google/android/gms/internal/measurement/zzfo;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    aget-object v0, v0, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zzb(Lcom/google/android/gms/internal/measurement/zzfo;)[Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfr;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfo;->zza(Lcom/google/android/gms/internal/measurement/zzfo;)I

    move-result p0

    return p0
.end method

.method public final zzf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
