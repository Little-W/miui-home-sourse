.class public interface abstract Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;
.super Ljava/lang/Object;
.source "BlurDrawInfo.java"


# static fields
.field public static final DEFAULT_SAMPLING_PERIOD_NS:I = 0x1312d00


# virtual methods
.method public abstract getBlurOutline(Landroid/graphics/Outline;)V
.end method

.method public getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 0

    .line 47
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    return-object p0
.end method

.method public abstract getBlurViewRootImpl()Landroid/view/ViewRootImpl;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public getRequestedSamplingPeriodNs()I
    .locals 0

    const p0, 0x1312d00

    return p0
.end method

.method public abstract getWidth()I
.end method

.method public abstract postInvalidateOnAnimation()V
.end method
