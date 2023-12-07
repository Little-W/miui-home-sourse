.class abstract Lcom/google/android/gms/internal/measurement/zzej;
.super Lcom/google/android/gms/internal/measurement/zzfw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfw<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final zza:I

.field private zzb:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;-><init>()V

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/zzeb;->zzb(II)I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzej;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zza:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzej;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzej;->zza(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzej;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzej;->zza(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzb:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method protected abstract zza(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method
