.class public Lcom/google/android/filament/ToneMapper$ACES;
.super Lcom/google/android/filament/ToneMapper;
.source "ToneMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ToneMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/google/android/filament/ToneMapper;->access$200()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/filament/ToneMapper;-><init>(JLcom/google/android/filament/ToneMapper$1;)V

    return-void
.end method
