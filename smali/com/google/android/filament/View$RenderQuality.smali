.class public Lcom/google/android/filament/View$RenderQuality;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderQuality"
.end annotation


# instance fields
.field public hdrColorBuffer:Lcom/google/android/filament/View$QualityLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/filament/View$QualityLevel;->HIGH:Lcom/google/android/filament/View$QualityLevel;

    iput-object v0, p0, Lcom/google/android/filament/View$RenderQuality;->hdrColorBuffer:Lcom/google/android/filament/View$QualityLevel;

    return-void
.end method
