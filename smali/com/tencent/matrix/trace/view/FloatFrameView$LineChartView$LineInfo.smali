.class Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;
.super Ljava/lang/Object;
.source "FloatFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineInfo"
.end annotation


# instance fields
.field color:I

.field fps:I

.field private linePoint:[F

.field final synthetic this$0:Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;


# direct methods
.method static synthetic access$000(Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;)[F
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->linePoint:[F

    return-object p0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 178
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->this$0:Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;

    invoke-static {v0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->access$200(Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->color:I

    if-eq v0, v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->this$0:Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;

    invoke-static {v0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->access$200(Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->linePoint:[F

    const/4 v1, 0x1

    add-int/2addr p2, v1

    int-to-float p2, p2

    iget-object v2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->this$0:Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;

    iget v2, v2, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->linePadding:F

    mul-float/2addr p2, v2

    aput p2, v0, v1

    .line 182
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->linePoint:[F

    aget v0, p2, v1

    const/4 v2, 0x3

    aput v0, p2, v2

    const/4 v0, 0x0

    .line 183
    aget v4, p2, v0

    aget v5, p2, v1

    const/4 v0, 0x2

    aget v6, p2, v0

    aget v7, p2, v2

    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->this$0:Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;

    invoke-static {p2}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->access$200(Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;)Landroid/graphics/Paint;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
