.class public Lcom/google/android/filament/Colors;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Colors$Conversion;,
        Lcom/google/android/filament/Colors$RgbaType;,
        Lcom/google/android/filament/Colors$RgbType;,
        Lcom/google/android/filament/Colors$LinearColor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cct(F)[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Lcom/google/android/filament/Colors;->nCct(F[F)V

    return-object v0
.end method

.method public static illuminantD(F)[F
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Lcom/google/android/filament/Colors;->nIlluminantD(F[F)V

    return-object v0
.end method

.method private static native nCct(F[F)V
.end method

.method private static native nIlluminantD(F[F)V
.end method

.method public static toLinear(Lcom/google/android/filament/Colors$Conversion;[F)[F
    .locals 6

    sget-object v0, Lcom/google/android/filament/Colors$1;->$SwitchMap$com$google$android$filament$Colors$Conversion:[I

    invoke-virtual {p0}, Lcom/google/android/filament/Colors$Conversion;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    aget p0, p1, v1

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    aput p0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    aget p0, p1, v1

    const v2, 0x3d25aee6    # 0.04045f

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_2

    aget p0, p1, v1

    const v2, 0x414eb852    # 12.92f

    div-float/2addr p0, v2

    goto :goto_2

    :cond_2
    aget p0, p1, v1

    const v2, 0x3d6147ae    # 0.055f

    add-float/2addr p0, v2

    const v2, 0x3f870a3d    # 1.055f

    div-float/2addr p0, v2

    float-to-double v2, p0

    const-wide v4, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p0, v2

    :goto_2
    aput p0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-object p1
.end method

.method public static toLinear(Lcom/google/android/filament/Colors$RgbType;FFF)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-static {p0, v0}, Lcom/google/android/filament/Colors;->toLinear(Lcom/google/android/filament/Colors$RgbType;[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static toLinear(Lcom/google/android/filament/Colors$RgbType;[F)[F
    .locals 1

    sget-object v0, Lcom/google/android/filament/Colors$RgbType;->LINEAR:Lcom/google/android/filament/Colors$RgbType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/filament/Colors$Conversion;->ACCURATE:Lcom/google/android/filament/Colors$Conversion;

    invoke-static {p0, p1}, Lcom/google/android/filament/Colors;->toLinear(Lcom/google/android/filament/Colors$Conversion;[F)[F

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static toLinear(Lcom/google/android/filament/Colors$RgbaType;FFFF)[F
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    invoke-static {p0, v0}, Lcom/google/android/filament/Colors;->toLinear(Lcom/google/android/filament/Colors$RgbaType;[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static toLinear(Lcom/google/android/filament/Colors$RgbaType;[F)[F
    .locals 4

    sget-object v0, Lcom/google/android/filament/Colors$1;->$SwitchMap$com$google$android$filament$Colors$RgbaType:[I

    invoke-virtual {p0}, Lcom/google/android/filament/Colors$RgbaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    :cond_0
    return-object p1

    :cond_1
    sget-object p0, Lcom/google/android/filament/Colors$Conversion;->ACCURATE:Lcom/google/android/filament/Colors$Conversion;

    invoke-static {p0, p1}, Lcom/google/android/filament/Colors;->toLinear(Lcom/google/android/filament/Colors$Conversion;[F)[F

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/filament/Colors$Conversion;->ACCURATE:Lcom/google/android/filament/Colors$Conversion;

    invoke-static {p0, p1}, Lcom/google/android/filament/Colors;->toLinear(Lcom/google/android/filament/Colors$Conversion;[F)[F

    :cond_3
    aget p0, p1, v0

    const/4 v0, 0x0

    aget v3, p1, v0

    mul-float/2addr v3, p0

    aput v3, p1, v0

    aget v0, p1, v2

    mul-float/2addr v0, p0

    aput v0, p1, v2

    aget v0, p1, v1

    mul-float/2addr v0, p0

    aput v0, p1, v1

    return-object p1
.end method
