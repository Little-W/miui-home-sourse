.class public Lcom/google/android/filament/View$TemporalAntiAliasingOptions;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemporalAntiAliasingOptions"
.end annotation


# instance fields
.field public enabled:Z

.field public feedback:F

.field public filterWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 330
    iput v0, p0, Lcom/google/android/filament/View$TemporalAntiAliasingOptions;->filterWidth:F

    const v0, 0x3d23d70a    # 0.04f

    .line 333
    iput v0, p0, Lcom/google/android/filament/View$TemporalAntiAliasingOptions;->feedback:F

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/google/android/filament/View$TemporalAntiAliasingOptions;->enabled:Z

    return-void
.end method
