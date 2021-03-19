.class public Lcom/google/android/filament/Box;
.super Ljava/lang/Object;
.source "Box.java"


# instance fields
.field private final mCenter:[F

.field private final mHalfExtent:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 30
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->mCenter:[F

    .line 31
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->mHalfExtent:[F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 30
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->mCenter:[F

    .line 31
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->mHalfExtent:[F

    .line 43
    iget-object v0, p0, Lcom/google/android/filament/Box;->mCenter:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 44
    aput p2, v0, p1

    const/4 p2, 0x2

    .line 45
    aput p3, v0, p2

    .line 46
    iget-object p3, p0, Lcom/google/android/filament/Box;->mHalfExtent:[F

    aput p4, p3, v1

    .line 47
    aput p5, p3, p1

    .line 48
    aput p6, p3, p2

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 30
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->mCenter:[F

    .line 31
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->mHalfExtent:[F

    .line 59
    iget-object v0, p0, Lcom/google/android/filament/Box;->mCenter:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 60
    aget v3, p1, v2

    aput v3, v0, v2

    const/4 v3, 0x2

    .line 61
    aget p1, p1, v3

    aput p1, v0, v3

    .line 62
    iget-object p1, p0, Lcom/google/android/filament/Box;->mHalfExtent:[F

    aget v0, p2, v1

    aput v0, p1, v1

    .line 63
    aget v0, p2, v2

    aput v0, p1, v2

    .line 64
    aget p2, p2, v3

    aput p2, p1, v3

    return-void
.end method


# virtual methods
.method public getCenter()[F
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/filament/Box;->mCenter:[F

    return-object v0
.end method

.method public getHalfExtent()[F
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/android/filament/Box;->mHalfExtent:[F

    return-object v0
.end method

.method public setCenter(FFF)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/android/filament/Box;->mCenter:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 72
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 73
    aput p3, v0, p1

    return-void
.end method

.method public setHalfExtent(FFF)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/android/filament/Box;->mHalfExtent:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 81
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 82
    aput p3, v0, p1

    return-void
.end method
