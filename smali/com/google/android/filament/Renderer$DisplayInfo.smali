.class public Lcom/google/android/filament/Renderer$DisplayInfo;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayInfo"
.end annotation


# instance fields
.field public presentationDeadlineNanos:J

.field public refreshRate:F

.field public vsyncOffsetNanos:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42700000    # 60.0f

    .line 59
    iput v0, p0, Lcom/google/android/filament/Renderer$DisplayInfo;->refreshRate:F

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/google/android/filament/Renderer$DisplayInfo;->presentationDeadlineNanos:J

    .line 71
    iput-wide v0, p0, Lcom/google/android/filament/Renderer$DisplayInfo;->vsyncOffsetNanos:J

    return-void
.end method
