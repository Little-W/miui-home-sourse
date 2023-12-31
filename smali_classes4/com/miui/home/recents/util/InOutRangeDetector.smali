.class public Lcom/miui/home/recents/util/InOutRangeDetector;
.super Ljava/lang/Object;
.source "InOutRangeDetector.java"


# instance fields
.field private mIsFirstValue:Z

.field private mIsLastInRange:Z

.field private final mMaxValue:F

.field private final mMinValue:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mIsFirstValue:Z

    .line 10
    iput p1, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mMinValue:F

    .line 11
    iput p2, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mMaxValue:F

    return-void
.end method

.method private isInRange(F)Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mMinValue:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mMaxValue:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onChange(F)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/InOutRangeDetector;->isInRange(F)Z

    move-result p1

    .line 16
    iget-boolean v0, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mIsFirstValue:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/InOutRangeDetector;->onInitValue(Z)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mIsFirstValue:Z

    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mIsLastInRange:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/miui/home/recents/util/InOutRangeDetector;->onInRange()V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/util/InOutRangeDetector;->onOutRange()V

    .line 28
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/recents/util/InOutRangeDetector;->mIsLastInRange:Z

    return-void
.end method

.method public onInRange()V
    .locals 0

    return-void
.end method

.method public onInitValue(Z)V
    .locals 0

    return-void
.end method

.method public onOutRange()V
    .locals 0

    return-void
.end method
