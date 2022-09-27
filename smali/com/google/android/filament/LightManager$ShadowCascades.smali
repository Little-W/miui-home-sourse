.class public Lcom/google/android/filament/LightManager$ShadowCascades;
.super Ljava/lang/Object;
.source "LightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/LightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowCascades"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeLogSplits([FIFF)V
    .locals 2

    .line 392
    array-length v0, p0

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_0

    .line 396
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/LightManager;->access$100([FIFF)V

    return-void

    .line 393
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "splitPositions array length must be at least %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computePracticalSplits([FIFFF)V
    .locals 2

    .line 420
    array-length v0, p0

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_0

    .line 424
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->access$200([FIFFF)V

    return-void

    .line 421
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "splitPositions array length must be at least %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeUniformSplits([FI)V
    .locals 2

    .line 373
    array-length v0, p0

    add-int/lit8 v1, p1, -0x1

    if-lt v0, v1, :cond_0

    .line 377
    invoke-static {p0, p1}, Lcom/google/android/filament/LightManager;->access$000([FI)V

    return-void

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "splitPositions array length must be at least %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
