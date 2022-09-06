.class public abstract Lcom/miui/home/launcher/common/DirectionState;
.super Ljava/lang/Object;
.source "DirectionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/DirectionState$Direction;
    }
.end annotation


# instance fields
.field private mDirection:Lcom/miui/home/launcher/common/DirectionState$Direction;

.field private mEnd:F

.field private mStart:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_UNKNOWN:Lcom/miui/home/launcher/common/DirectionState$Direction;

    iput-object v0, p0, Lcom/miui/home/launcher/common/DirectionState;->mDirection:Lcom/miui/home/launcher/common/DirectionState$Direction;

    .line 15
    iput p1, p0, Lcom/miui/home/launcher/common/DirectionState;->mStart:F

    .line 16
    iput p2, p0, Lcom/miui/home/launcher/common/DirectionState;->mEnd:F

    return-void
.end method


# virtual methods
.method public abstract getCurrent()F
.end method

.method public getEnd()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/miui/home/launcher/common/DirectionState;->mEnd:F

    return v0
.end method

.method public getStart()F
    .locals 1

    .line 20
    iget v0, p0, Lcom/miui/home/launcher/common/DirectionState;->mStart:F

    return v0
.end method

.method public goToEnd()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/common/DirectionState;->mDirection:Lcom/miui/home/launcher/common/DirectionState$Direction;

    sget-object v1, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_START_TO_END:Lcom/miui/home/launcher/common/DirectionState$Direction;

    if-eq v0, v1, :cond_0

    .line 35
    sget-object v0, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_START_TO_END:Lcom/miui/home/launcher/common/DirectionState$Direction;

    iput-object v0, p0, Lcom/miui/home/launcher/common/DirectionState;->mDirection:Lcom/miui/home/launcher/common/DirectionState$Direction;

    .line 36
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/DirectionState;->onDirectionChanged()V

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/DirectionState;->getCurrent()F

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/common/DirectionState;->mEnd:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/DirectionState;->onGoToEnd()V

    :cond_0
    return-void
.end method

.method public goToStart()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/common/DirectionState;->mDirection:Lcom/miui/home/launcher/common/DirectionState$Direction;

    sget-object v1, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_END_TO_START:Lcom/miui/home/launcher/common/DirectionState$Direction;

    if-eq v0, v1, :cond_0

    .line 45
    sget-object v0, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_END_TO_START:Lcom/miui/home/launcher/common/DirectionState$Direction;

    iput-object v0, p0, Lcom/miui/home/launcher/common/DirectionState;->mDirection:Lcom/miui/home/launcher/common/DirectionState$Direction;

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/DirectionState;->onDirectionChanged()V

    .line 47
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/DirectionState;->getCurrent()F

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/common/DirectionState;->mStart:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/DirectionState;->onGoToStart()V

    :cond_0
    return-void
.end method

.method protected onDirectionChanged()V
    .locals 0

    return-void
.end method

.method protected onGoToEnd()V
    .locals 0

    return-void
.end method

.method protected onGoToStart()V
    .locals 0

    return-void
.end method

.method public resetDirection()V
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/launcher/common/DirectionState$Direction;->DIRECTION_UNKNOWN:Lcom/miui/home/launcher/common/DirectionState$Direction;

    iput-object v0, p0, Lcom/miui/home/launcher/common/DirectionState;->mDirection:Lcom/miui/home/launcher/common/DirectionState$Direction;

    return-void
.end method
