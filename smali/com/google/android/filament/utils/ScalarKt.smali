.class public final Lcom/google/android/filament/utils/ScalarKt;
.super Ljava/lang/Object;
.source "Scalar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScalar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,44:1\n29#1:45\n*E\n*S KotlinDebug\n*F\n+ 1 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n31#1:45\n*E\n"
.end annotation


# static fields
.field public static final FOUR_PI:F = 12.566371f

.field public static final FPI:F = 3.1415927f

.field public static final HALF_PI:F = 1.5707964f

.field public static final INV_FOUR_PI:F = 0.07957747f

.field public static final INV_PI:F = 0.31830987f

.field public static final INV_TWO_PI:F = 0.15915494f

.field public static final TWO_PI:F = 6.2831855f


# direct methods
.method public static final clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static final degrees(F)F
    .locals 1

    const v0, 0x42652ee0

    mul-float/2addr p0, v0

    return p0
.end method

.method public static final fract(F)F
    .locals 1

    const/4 v0, 0x1

    int-to-float v0, v0

    rem-float/2addr p0, v0

    return p0
.end method

.method public static final mix(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p0, v0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static final pow(FF)F
    .locals 2

    float-to-double v0, p0

    float-to-double p0, p1

    .line 43
    invoke-static {v0, v1, p0, p1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final radians(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr p0, v0

    return p0
.end method

.method public static final saturate(F)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move p0, v2

    :cond_1
    :goto_0
    return p0
.end method

.method public static final sqr(F)F
    .locals 0

    mul-float/2addr p0, p0

    return p0
.end method
