.class public final Lcom/google/android/filament/utils/RayKt;
.super Ljava/lang/Object;
.source "Ray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ray.kt\ncom/google/android/filament/utils/RayKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/Float3\n*L\n1#1,22:1\n313#2:23\n321#2:24\n*E\n*S KotlinDebug\n*F\n+ 1 Ray.kt\ncom/google/android/filament/utils/RayKt\n*L\n21#1:23\n21#1:24\n*E\n"
.end annotation


# direct methods
.method public static final pointAt(Lcom/google/android/filament/utils/Ray;F)Lcom/google/android/filament/utils/Float3;
    .locals 4

    const-string v0, "r"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/filament/utils/Ray;->getOrigin()Lcom/google/android/filament/utils/Float3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Ray;->getDirection()Lcom/google/android/filament/utils/Float3;

    move-result-object p0

    .line 23
    new-instance v1, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result p0

    mul-float/2addr p0, p1

    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    .line 24
    new-instance p0, Lcom/google/android/filament/utils/Float3;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result p1

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getX()F

    move-result v2

    add-float/2addr p1, v2

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/filament/utils/Float3;->getZ()F

    move-result v1

    add-float/2addr v0, v1

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    return-object p0
.end method
