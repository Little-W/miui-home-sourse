.class Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;
.super Ljava/lang/Object;
.source "ParasiticDrawingFireworks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Spark"
.end annotation


# instance fields
.field a:F

.field alpha:F

.field b:F

.field color:I

.field edelay:F

.field h:F

.field r:F

.field ri:F

.field sdelay:F

.field final synthetic this$0:Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;

.field v:F

.field x:F

.field xi:F

.field y:F

.field yi:F


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->this$0:Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;-><init>(Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;)V

    return-void
.end method


# virtual methods
.method public update(F)V
    .locals 9

    const v0, 0x3fb33333    # 1.4f

    div-float/2addr p1, v0

    .line 50
    iget v1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->sdelay:F

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->edelay:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v2

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p1, v1

    sub-float v1, v4, v1

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    const v1, 0x3f333333    # 0.7f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    div-float v3, p1, v1

    :goto_0
    sub-float/2addr v4, v3

    .line 56
    iput v4, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->alpha:F

    .line 57
    iget p1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->h:F

    mul-float/2addr p1, v0

    .line 58
    iget v1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->xi:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->x:F

    .line 59
    iget v1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->yi:F

    float-to-double v1, v1

    iget v3, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->a:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget v3, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->b:F

    mul-float/2addr v3, p1

    float-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-float p1, v1

    iput p1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->y:F

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->access$000()F

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->ri:F

    invoke-static {}, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks;->access$000()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->r:F

    return-void

    .line 51
    :cond_2
    :goto_1
    iput v3, p0, Lcom/miui/home/launcher/common/ParasiticDrawingFireworks$Spark;->alpha:F

    return-void
.end method
