.class Lcom/miui/home/launcher/common/Ease$Quad$3;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/Ease$Quad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 p0, 0x3f000000    # 0.5f

    div-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-gez v1, :cond_0

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    add-float/2addr p0, v2

    goto :goto_0

    :cond_0
    const/high16 p0, -0x41000000    # -0.5f

    sub-float/2addr p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, p1, v1

    mul-float/2addr p1, v1

    sub-float/2addr p1, v0

    mul-float/2addr p1, p0

    add-float p0, p1, v2

    :goto_0
    return p0
.end method
