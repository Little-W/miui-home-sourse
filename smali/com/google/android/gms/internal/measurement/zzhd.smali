.class final Lcom/google/android/gms/internal/measurement/zzhd;
.super Lcom/google/android/gms/internal/measurement/zzhb;


# instance fields
.field private final zzd:[B

.field private final zze:Z

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhb;-><init>(Lcom/google/android/gms/internal/measurement/zzhe;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzk:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzi:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zze:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzhe;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/gms/internal/measurement/zzhd;-><init>([BIIZ)V

    return-void
.end method

.method private final zzaa()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    aget-byte p0, v1, v0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method private final zzf(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method private final zzv()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    if-eq v1, v0, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzs()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private final zzw()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    if-eq v1, v0, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    move-wide v2, v3

    :goto_4
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    return-wide v2

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzx()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method private final zzy()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    aget-byte p0, v1, v0

    int-to-long v3, p0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 p0, v0, 0x1

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 p0, v0, 0x2

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x10

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x3

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x18

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x4

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x20

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x5

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x28

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 p0, v0, 0x6

    aget-byte p0, v1, p0

    int-to-long v7, p0

    and-long/2addr v7, v5

    const/16 p0, 0x30

    shl-long/2addr v7, p0

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte p0, v1, v0

    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method private final zzz()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzi:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzk:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzg:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzg:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzj:I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzj:I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzj:I

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzd()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method public final zza(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzj:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zze()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method public final zzb()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf(I)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzf()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object p0

    throw p0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zza()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzb(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zza(I)V

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf(I)V

    return v2

    :cond_5
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf(I)V

    return v2

    :cond_6
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_8

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzc()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :cond_8
    :goto_1
    if-ge v1, v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzaa()B

    move-result p1

    if-gez p1, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return v2

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzc()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method public final zzc()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzx()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final zzc(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhb;->zzu()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzk:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzk:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzz()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method public final zzd()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzk:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzz()V

    return-void
.end method

.method public final zze()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result p0

    return p0
.end method

.method public final zzg()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzx()I

    move-result p0

    return p0
.end method

.method public final zzi()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzw()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzia;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-gez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzb([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-gtz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method public final zzl()Lcom/google/android/gms/internal/measurement/zzgp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzgp;->zza([BII)Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzgp;->zza:Lcom/google/android/gms/internal/measurement/zzgp;

    return-object p0

    :cond_1
    if-lez v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzd:[B

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    invoke-static {v0, v2, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    if-gtz v0, :cond_4

    if-nez v0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzia;->zzb:[B

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgp;->zza([B)Lcom/google/android/gms/internal/measurement/zzgp;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzb()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zza()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method public final zzm()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result p0

    return p0
.end method

.method public final zzn()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result p0

    return p0
.end method

.method public final zzo()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzx()I

    move-result p0

    return p0
.end method

.method public final zzp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzv()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zze(I)I

    move-result p0

    return p0
.end method

.method public final zzr()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzw()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzs()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzaa()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzc()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0
.end method

.method public final zzt()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzf:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzh:I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzi:I

    sub-int/2addr v0, p0

    return v0
.end method
