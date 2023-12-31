.class public Lcom/google/android/filament/View$VignetteOptions;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VignetteOptions"
.end annotation


# instance fields
.field public color:[F

.field public enabled:Z

.field public feather:F

.field public midPoint:F

.field public roundness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 354
    iput v0, p0, Lcom/google/android/filament/View$VignetteOptions;->midPoint:F

    .line 360
    iput v0, p0, Lcom/google/android/filament/View$VignetteOptions;->roundness:F

    .line 365
    iput v0, p0, Lcom/google/android/filament/View$VignetteOptions;->feather:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 371
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/google/android/filament/View$VignetteOptions;->enabled:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
