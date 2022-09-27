.class public Lcom/google/android/filament/Renderer$FrameRateOptions;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameRateOptions"
.end annotation


# instance fields
.field public headRoomRatio:F

.field public history:I

.field public interval:F

.field public scaleRate:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3c888889

    .line 100
    iput v0, p0, Lcom/google/android/filament/Renderer$FrameRateOptions;->interval:F

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/google/android/filament/Renderer$FrameRateOptions;->headRoomRatio:F

    const v0, 0x3d888889

    .line 110
    iput v0, p0, Lcom/google/android/filament/Renderer$FrameRateOptions;->scaleRate:F

    const/16 v0, 0xf

    .line 115
    iput v0, p0, Lcom/google/android/filament/Renderer$FrameRateOptions;->history:I

    return-void
.end method
