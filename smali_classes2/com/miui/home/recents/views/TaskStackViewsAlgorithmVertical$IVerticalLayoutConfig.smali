.class public interface abstract Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;
.super Ljava/lang/Object;
.source "TaskStackViewsAlgorithmVertical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IVerticalLayoutConfig"
.end annotation


# virtual methods
.method public abstract getBottomRatio()F
.end method

.method public abstract getPaddingRatio()F
.end method

.method public abstract getTopRatio(ZI)F
.end method

.method public getVerticalGapFraction()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
