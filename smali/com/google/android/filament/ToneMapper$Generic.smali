.class public Lcom/google/android/filament/ToneMapper$Generic;
.super Lcom/google/android/filament/ToneMapper;
.source "ToneMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/ToneMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Generic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x3fc66666    # 1.55f

    const v1, 0x3e3851ec    # 0.18f

    const v2, 0x3e5c28f6    # 0.215f

    const/high16 v3, 0x41200000    # 10.0f

    .line 132
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/filament/ToneMapper$Generic;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 147
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/filament/ToneMapper;->access$500(FFFF)J

    move-result-wide p1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/ToneMapper;-><init>(JLcom/google/android/filament/ToneMapper$1;)V

    return-void
.end method


# virtual methods
.method public getContrast()F
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper$Generic;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->access$600(J)F

    move-result v0

    return v0
.end method

.method public getHdrMax()F
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper$Generic;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->access$1200(J)F

    move-result v0

    return v0
.end method

.method public getMidGrayIn()F
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper$Generic;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->access$800(J)F

    move-result v0

    return v0
.end method

.method public getMidGrayOut()F
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper$Generic;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/ToneMapper;->access$1000(J)F

    move-result v0

    return v0
.end method

.method public setContrast(F)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper$Generic;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ToneMapper;->access$700(JF)V

    return-void
.end method

.method public setHdrMax(F)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper$Generic;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ToneMapper;->access$1300(JF)V

    return-void
.end method

.method public setMidGrayIn(F)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper$Generic;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ToneMapper;->access$900(JF)V

    return-void
.end method

.method public setMidGrayOut(F)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/google/android/filament/ToneMapper$Generic;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/ToneMapper;->access$1100(JF)V

    return-void
.end method
