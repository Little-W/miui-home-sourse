.class Lcom/miui/home/launcher/search/SearchEdgeEffect$1;
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

    .line 73
    invoke-direct {p0}, Lcom/miui/home/launcher/search/SearchEdgeEffect$Position;-><init>()V

    return-void
.end method


# virtual methods
.method getCurveLimitAndOffset(FF)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->doLauncherHavePaddingTopForStatusBarAndNotch()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x40800000    # 4.0f

    div-float p2, p0, p2

    sub-float p2, p0, p2

    add-float/2addr p1, p2

    .line 81
    :cond_0
    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public getDeltaDistance(F)F
    .locals 0

    return p1
.end method

.method public getDrawRotate()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVelocity(I)I
    .locals 0

    return p1
.end method
