.class final Lcom/google/android/gms/internal/measurement/zzgs;
.super Lcom/google/android/gms/internal/measurement/zzgu;
.source "com.google.android.gms:play-services-measurement-base@@18.0.0"


# instance fields
.field private zza:I

.field private final zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzgp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zzc:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgu;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zza:I

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zzc:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgp;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zza:I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zzb:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()B
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zza:I

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zzb:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zza:I

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zzc:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzgp;->zzb(I)B

    move-result p0

    return p0

    .line 7
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
