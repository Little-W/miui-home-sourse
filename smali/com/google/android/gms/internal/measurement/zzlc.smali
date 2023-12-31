.class final Lcom/google/android/gms/internal/measurement/zzlc;
.super Lcom/google/android/gms/internal/measurement/zzld;
.source "com.google.android.gms:play-services-measurement-base@@18.0.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzld;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(I[BII)I
    .locals 5

    :goto_0
    if-ge p3, p4, :cond_0

    .line 3
    aget-byte p0, p2, p3

    if-ltz p0, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    if-lt p3, p4, :cond_1

    return p0

    :cond_1
    :goto_1
    if-lt p3, p4, :cond_2

    return p0

    :cond_2
    add-int/lit8 p1, p3, 0x1

    .line 8
    aget-byte p3, p2, p3

    if-gez p3, :cond_d

    const/16 v0, -0x20

    const/4 v1, -0x1

    const/16 v2, -0x41

    if-ge p3, v0, :cond_5

    if-lt p1, p4, :cond_3

    return p3

    :cond_3
    const/16 v0, -0x3e

    if-lt p3, v0, :cond_4

    add-int/lit8 p3, p1, 0x1

    .line 12
    aget-byte p1, p2, p1

    if-le p1, v2, :cond_1

    :cond_4
    return v1

    :cond_5
    const/16 v3, -0x10

    if-ge p3, v3, :cond_a

    add-int/lit8 v3, p4, -0x1

    if-lt p1, v3, :cond_6

    .line 16
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc([BII)I

    move-result p0

    return p0

    :cond_6
    add-int/lit8 v3, p1, 0x1

    .line 17
    aget-byte p1, p2, p1

    if-gt p1, v2, :cond_9

    const/16 v4, -0x60

    if-ne p3, v0, :cond_7

    if-lt p1, v4, :cond_9

    :cond_7
    const/16 v0, -0x13

    if-ne p3, v0, :cond_8

    if-ge p1, v4, :cond_9

    :cond_8
    add-int/lit8 p1, v3, 0x1

    aget-byte p3, p2, v3

    if-le p3, v2, :cond_d

    :cond_9
    return v1

    :cond_a
    add-int/lit8 v0, p4, -0x2

    if-lt p1, v0, :cond_b

    .line 20
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc([BII)I

    move-result p0

    return p0

    :cond_b
    add-int/lit8 v0, p1, 0x1

    .line 21
    aget-byte p1, p2, p1

    if-gt p1, v2, :cond_c

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p3, p1

    shr-int/lit8 p1, p3, 0x1e

    if-nez p1, :cond_c

    add-int/lit8 p1, v0, 0x1

    aget-byte p3, p2, v0

    if-gt p3, v2, :cond_c

    add-int/lit8 p3, p1, 0x1

    aget-byte p1, p2, p1

    if-le p1, v2, :cond_1

    :cond_c
    return v1

    :cond_d
    move p3, p1

    goto :goto_1
.end method

.method final zza(Ljava/lang/CharSequence;[BII)I
    .locals 6

    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr p4, p3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x80

    if-ge v0, p0, :cond_0

    add-int v2, v0, p3

    if-ge v2, p4, :cond_0

    .line 65
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v1, :cond_0

    int-to-byte v1, v3

    .line 66
    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    add-int/2addr p3, p0

    return p3

    :cond_1
    add-int/2addr p3, v0

    :goto_1
    if-ge v0, p0, :cond_b

    .line 72
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ge v2, v1, :cond_2

    if-ge p3, p4, :cond_2

    add-int/lit8 v3, p3, 0x1

    int-to-byte v2, v2

    .line 74
    aput-byte v2, p2, p3

    :goto_2
    move p3, v3

    goto/16 :goto_3

    :cond_2
    const/16 v3, 0x800

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, p4, -0x2

    if-gt p3, v3, :cond_3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 76
    aput-byte v4, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 77
    aput-byte v2, p2, v3

    goto :goto_3

    :cond_3
    const v3, 0xdfff

    const v4, 0xd800

    if-lt v2, v4, :cond_4

    if-ge v3, v2, :cond_5

    :cond_4
    add-int/lit8 v5, p4, -0x3

    if-gt p3, v5, :cond_5

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 79
    aput-byte v4, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 80
    aput-byte v4, p2, v3

    add-int/lit8 v3, p3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    .line 81
    aput-byte v2, p2, p3

    goto :goto_2

    :cond_5
    add-int/lit8 v5, p4, -0x4

    if-gt p3, v5, :cond_8

    add-int/lit8 v3, v0, 0x1

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_7

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 85
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    .line 86
    aput-byte v4, p2, p3

    add-int/lit8 p3, v2, 0x1

    ushr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 87
    aput-byte v4, p2, v2

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 88
    aput-byte v4, p2, p3

    add-int/lit8 p3, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 89
    aput-byte v0, p2, v2

    move v0, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    move v0, v3

    .line 84
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlf;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/zzlf;-><init>(II)V

    throw p1

    :cond_8
    if-gt v4, v2, :cond_a

    if-gt v2, v3, :cond_a

    add-int/lit8 p2, v0, 0x1

    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_9

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    .line 93
    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzlf;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/zzlf;-><init>(II)V

    throw p1

    .line 94
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p1, 0x25

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed writing "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    return p3
.end method

.method final zza([BII)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzij;
        }
    .end annotation

    or-int p0, p2, p3

    .line 24
    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_9

    add-int p0, p2, p3

    .line 29
    new-array p3, p3, [C

    move v2, v0

    :goto_0
    if-ge p2, p0, :cond_0

    .line 32
    aget-byte v3, p1, p2

    .line 33
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzla;->zza(B)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 35
    invoke-static {v3, p3, v2}, Lcom/google/android/gms/internal/measurement/zzla;->zza(B[CI)V

    move v2, v4

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_1
    if-ge p2, p0, :cond_8

    add-int/lit8 v2, p2, 0x1

    .line 38
    aget-byte p2, p1, p2

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzla;->zza(B)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v7, 0x1

    .line 40
    invoke-static {p2, p3, v7}, Lcom/google/android/gms/internal/measurement/zzla;->zza(B[CI)V

    :goto_2
    if-ge v2, p0, :cond_1

    .line 42
    aget-byte p2, p1, v2

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzla;->zza(B)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    .line 45
    invoke-static {p2, p3, v3}, Lcom/google/android/gms/internal/measurement/zzla;->zza(B[CI)V

    move v3, v4

    goto :goto_2

    :cond_1
    move p2, v2

    move v7, v3

    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzla;->zzb(B)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ge v2, p0, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 50
    aget-byte v2, p1, v2

    add-int/lit8 v4, v7, 0x1

    invoke-static {p2, v2, p3, v7}, Lcom/google/android/gms/internal/measurement/zzla;->zza(BB[CI)V

    move p2, v3

    move v7, v4

    goto :goto_1

    .line 49
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzh()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    .line 51
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzla;->zzc(B)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, p0, -0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    .line 54
    aget-byte v2, p1, v2

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v5, v7, 0x1

    invoke-static {p2, v2, v3, p3, v7}, Lcom/google/android/gms/internal/measurement/zzla;->zza(BBB[CI)V

    move p2, v4

    move v7, v5

    goto :goto_1

    .line 53
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzh()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    :cond_6
    add-int/lit8 v3, p0, -0x2

    if-ge v2, v3, :cond_7

    add-int/lit8 v3, v2, 0x1

    .line 57
    aget-byte v4, p1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v5, p1, v3

    add-int/lit8 v8, v2, 0x1

    aget-byte v6, p1, v2

    add-int/lit8 v9, v7, 0x1

    move v2, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzla;->zza(BBBB[CI)V

    add-int/2addr v9, v1

    move p2, v8

    move v7, v9

    goto :goto_1

    .line 56
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzij;->zzh()Lcom/google/android/gms/internal/measurement/zzij;

    move-result-object p0

    throw p0

    .line 60
    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3, v0, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 25
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
