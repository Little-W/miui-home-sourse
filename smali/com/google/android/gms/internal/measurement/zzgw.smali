.class final Lcom/google/android/gms/internal/measurement/zzgw;
.super Lcom/google/android/gms/internal/measurement/zzgz;


# instance fields
.field private final zzc:I

.field private final zzd:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzgz;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzgw;->zzb(III)I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgp;->zza()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Index < 0: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index > length: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zzc:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zzd:I

    return p0
.end method

.method final zzb(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zzb:[B

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zzc:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method protected final zze()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzgw;->zzc:I

    return p0
.end method
