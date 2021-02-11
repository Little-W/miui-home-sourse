.class final Lcom/miui/home/launcher/common/Ease$Cubic$3;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/Ease$Cubic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr p1, v1

    mul-float v3, p1, p1

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    mul-float/2addr v3, v0

    add-float v0, v3, v2

    :goto_0
    return v0
.end method
