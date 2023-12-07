.class public Lcom/google/android/gms/internal/measurement/zzfe;
.super Lcom/google/android/gms/internal/measurement/zzek;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzek<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/measurement/zzfc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfc<",
            "TK;+",
            "Lcom/google/android/gms/internal/measurement/zzey<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final transient zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfc;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzfc<",
            "TK;+",
            "Lcom/google/android/gms/internal/measurement/zzey<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzb:I

    return-void
.end method


# virtual methods
.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzek;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzek;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzek;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zza()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    return-object p0
.end method

.method public final zza(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzek;->zza(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final zzb()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "should never be called"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
