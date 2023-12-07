.class final Lcom/google/android/gms/internal/measurement/zzfo;
.super Lcom/google/android/gms/internal/measurement/zzfg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfg<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/measurement/zzfc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfc<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I

.field private final transient zzd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfc;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzfc<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzb:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzd:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfo;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzd:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfo;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzb:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzfc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zza()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzd:I

    return p0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zze()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzey;->zza([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/zzfx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfx<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->zze()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzey;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfx;

    return-object p0
.end method

.method final zzf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method final zzh()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfb<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzfr;-><init>(Lcom/google/android/gms/internal/measurement/zzfo;)V

    return-object v0
.end method
