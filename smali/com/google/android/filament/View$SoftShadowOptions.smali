.class public Lcom/google/android/filament/View$SoftShadowOptions;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftShadowOptions"
.end annotation


# instance fields
.field public penumbraRatioScale:F

.field public penumbraScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 824
    iput v0, p0, Lcom/google/android/filament/View$SoftShadowOptions;->penumbraScale:F

    .line 832
    iput v0, p0, Lcom/google/android/filament/View$SoftShadowOptions;->penumbraRatioScale:F

    return-void
.end method
