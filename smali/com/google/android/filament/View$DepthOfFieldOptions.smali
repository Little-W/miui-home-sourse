.class public Lcom/google/android/filament/View$DepthOfFieldOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepthOfFieldOptions"
.end annotation


# instance fields
.field public blurScale:F

.field public enabled:Z

.field public focusDistance:F

.field public maxApertureDiameter:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/filament/View$DepthOfFieldOptions;->focusDistance:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/filament/View$DepthOfFieldOptions;->blurScale:F

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/google/android/filament/View$DepthOfFieldOptions;->maxApertureDiameter:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/View$DepthOfFieldOptions;->enabled:Z

    return-void
.end method
