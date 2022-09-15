.class Lcom/miui/home/launcher/common/Ease$Sine$2;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/Ease$Sine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    float-to-double v1, p1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v1, v3

    .line 122
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    add-float/2addr p1, v0

    return p1
.end method
