.class public Lcom/miui/launcher/utils/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field public static final BLUR_MODE_BLACK_SATURATION:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBlur(Ljava/lang/Object;F)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0}, Lcom/miui/launcher/utils/BlurUtils;->setBlur(Ljava/lang/Object;FI)V

    return-void
.end method

.method public static setBlur(Ljava/lang/Object;FI)V
    .locals 2

    .line 17
    instance-of v0, p0, Landroid/view/ViewRootImpl;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    check-cast p0, Landroid/view/ViewRootImpl;

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 26
    :goto_0
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 27
    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setBlur(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBlurRatio(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 30
    invoke-virtual {v1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setBlurMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 32
    :cond_3
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
