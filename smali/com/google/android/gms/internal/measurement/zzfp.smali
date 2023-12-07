.class final Lcom/google/android/gms/internal/measurement/zzfp;
.super Lcom/google/android/gms/internal/measurement/zzfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/measurement/zzfc<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzfc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzfc<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:Ljava/lang/Object;

.field private final transient zzc:[Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfp;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfp;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzc:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzd:I

    return-void
.end method

.method static zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzfp;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzfp<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfp;->zza:Lcom/google/android/gms/internal/measurement/zzfc;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzfp;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    aget-object p0, p1, v1

    aget-object v1, p1, v2

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-direct {p0, v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzfp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    :cond_1
    array-length v3, p1

    shr-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/measurement/zzeb;->zzb(II)I

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(I)I

    move-result v3

    if-ne p0, v2, :cond_2

    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v0

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v0, v3, -0x1

    const/16 v2, 0x80

    const/4 v4, -0x1

    if-gt v3, v2, :cond_5

    new-array v2, v3, [B

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-ge v1, p0, :cond_b

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzez;->zza(I)I

    move-result v6

    :goto_1
    and-int/2addr v6, v0

    aget-byte v7, v2, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_3

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    const v2, 0x8000

    if-gt v3, v2, :cond_8

    new-array v2, v3, [S

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([SS)V

    :goto_2
    if-ge v1, p0, :cond_b

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzez;->zza(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, v0

    aget-short v7, v2, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_6

    int-to-short v3, v3

    aput-short v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    new-array v2, v3, [I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    :goto_4
    if-ge v1, p0, :cond_b

    mul-int/lit8 v3, v1, 0x2

    aget-object v5, p1, v3

    xor-int/lit8 v6, v3, 0x1

    aget-object v6, p1, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzez;->zza(I)I

    move-result v7

    :goto_5
    and-int/2addr v7, v0

    aget v8, v2, v7

    if-ne v8, v4, :cond_9

    aput v3, v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    invoke-static {v5, v6, p1, v8}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_b
    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-direct {v0, v2, p1, p0}, Lcom/google/android/gms/internal/measurement/zzfp;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzb:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzc:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzd:I

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x1

    if-ne p0, v3, :cond_2

    const/4 p0, 0x0

    aget-object p0, v1, p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    aget-object p0, v1, v3

    return-object p0

    :cond_1
    return-object v2

    :cond_2
    if-nez v0, :cond_3

    return-object v2

    :cond_3
    instance-of p0, v0, [B

    if-eqz p0, :cond_6

    move-object p0, v0

    check-cast p0, [B

    array-length v0, p0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzez;->zza(I)I

    move-result v0

    :goto_0
    and-int/2addr v0, v4

    aget-byte v5, p0, v0

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    return-object v2

    :cond_4
    aget-object v6, v1, v5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v1, p0

    return-object p0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    instance-of p0, v0, [S

    if-eqz p0, :cond_9

    move-object p0, v0

    check-cast p0, [S

    array-length v0, p0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzez;->zza(I)I

    move-result v0

    :goto_1
    and-int/2addr v0, v4

    aget-short v5, p0, v0

    const v6, 0xffff

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_7

    return-object v2

    :cond_7
    aget-object v6, v1, v5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v1, p0

    return-object p0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    check-cast v0, [I

    array-length p0, v0

    sub-int/2addr p0, v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzez;->zza(I)I

    move-result v4

    :goto_2
    and-int/2addr v4, p0

    aget v5, v0, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    return-object v2

    :cond_a
    aget-object v6, v1, v5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    xor-int/lit8 p0, v5, 0x1

    aget-object p0, v1, p0

    return-object p0

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzd:I

    return p0
.end method

.method final zza()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzd:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>(Lcom/google/android/gms/internal/measurement/zzfc;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzfg<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzft;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzd:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzft;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>(Lcom/google/android/gms/internal/measurement/zzfc;Lcom/google/android/gms/internal/measurement/zzfb;)V

    return-object v1
.end method

.method final zzc()Lcom/google/android/gms/internal/measurement/zzey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/zzey<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzft;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzc:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzd:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/measurement/zzft;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method
