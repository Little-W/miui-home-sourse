.class Lcom/miui/home/launcher/search/SearchEdgeEffect$2;
.super Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;
.source "SearchEdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/search/SearchEdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;-><init>()V

    return-void
.end method


# virtual methods
.method getCurveLimitAndOffset(FF)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 p2, 0x40800000    # 4.0f

    div-float p2, p1, p2

    sub-float p2, v0, p2

    add-float/2addr p1, p2

    move p2, v0

    .line 110
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDeltaDistance(F)F
    .locals 0

    neg-float p1, p1

    return p1
.end method

.method public getDrawRotate()F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    return v0
.end method

.method public getVelocity(I)I
    .locals 0

    neg-int p1, p1

    return p1
.end method
