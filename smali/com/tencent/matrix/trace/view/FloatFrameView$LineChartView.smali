.class public Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;
.super Landroid/view/View;
.source "FloatFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/trace/view/FloatFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineChartView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;
    }
.end annotation


# instance fields
.field private grayColor:I

.field private greenColor:I

.field height:F

.field private final levelLinePaint:Landroid/graphics/Paint;

.field lineContentWidth:F

.field linePadding:F

.field lineStrokeWidth:F

.field private final lines:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private middlePath:Landroid/graphics/Path;

.field private middleTip:[F

.field private orangeColor:I

.field padding:F

.field private final paint:Landroid/graphics/Paint;

.field private redColor:I

.field textSize:F

.field private final tipLinePaint:Landroid/graphics/Paint;

.field private final tipPaint:Landroid/text/TextPaint;

.field private topPath:Landroid/graphics/Path;

.field private topTip:[F

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->topPath:Landroid/graphics/Path;

    const/4 p1, 0x2

    .line 55
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->topTip:[F

    .line 56
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->middlePath:Landroid/graphics/Path;

    .line 57
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->middleTip:[F

    .line 58
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1060015

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->greenColor:I

    .line 59
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1060019

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->orangeColor:I

    .line 60
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1060017

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->redColor:I

    .line 61
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/tencent/matrix/trace/R$color;->dark_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->grayColor:I

    .line 62
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41200000    # 10.0f

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->padding:F

    .line 70
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->paint:Landroid/graphics/Paint;

    .line 71
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    .line 72
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p3, v0

    iput p3, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->textSize:F

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 73
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    const/high16 p3, 0x40400000    # 3.0f

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 74
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    iget p3, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->grayColor:I

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 76
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->levelLinePaint:Landroid/graphics/Paint;

    .line 77
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->levelLinePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->levelLinePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    new-instance p2, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipLinePaint:Landroid/graphics/Paint;

    .line 81
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipLinePaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->grayColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipLinePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipLinePaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/DashPathEffect;

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 85
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->lines:Ljava/util/LinkedList;

    return-void

    nop

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x40c00000    # 6.0f
    .end array-data
.end method

.method static synthetic access$200(Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;)Landroid/graphics/Paint;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private getColor(I)I
    .locals 1

    const/16 v0, 0x32

    if-lt p1, v0, :cond_0

    .line 193
    iget p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->greenColor:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    .line 195
    iget p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->orangeColor:I

    goto :goto_0

    .line 197
    :cond_1
    iget p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->redColor:I

    :goto_0
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 134
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->lines:Ljava/util/LinkedList;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->lines:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;

    .line 136
    iget v8, v6, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->fps:I

    add-int/2addr v4, v8

    .line 137
    invoke-virtual {v6, p1, v5}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->draw(Landroid/graphics/Canvas;I)V

    .line 138
    rem-int/lit8 v8, v5, 0x19

    if-eqz v8, :cond_0

    if-nez v5, :cond_1

    .line 139
    :cond_0
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 140
    invoke-static {v6}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;->access$000(Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView$LineInfo;)[F

    move-result-object v6

    aget v6, v6, v3

    const/4 v9, 0x0

    .line 141
    invoke-virtual {v8, v9, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v10, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    iget-object v10, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 144
    iget-object v8, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    iget v10, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->grayColor:I

    invoke-virtual {v8, v10}, Landroid/text/TextPaint;->setColor(I)V

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v10, v5, 0x5

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "s"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->textSize:F

    add-float/2addr v10, v6

    iget-object v11, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-lez v5, :cond_1

    .line 147
    div-int v8, v4, v5

    .line 148
    iget-object v10, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v8}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    .line 149
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " FPS"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->textSize:F

    div-float/2addr v10, v7

    sub-float/2addr v6, v10

    iget-object v7, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 154
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->grayColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->levelLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->greenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->topPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->levelLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v0, "50"

    .line 158
    iget-object v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->topTip:[F

    aget v4, v1, v2

    iget v5, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->textSize:F

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    aget v1, v1, v3

    iget-object v5, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->levelLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->orangeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->middlePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->levelLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v0, "30  FPS"

    .line 162
    iget-object v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->middleTip:[F

    aget v2, v1, v2

    iget v4, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->textSize:F

    div-float/2addr v4, v7

    sub-float/2addr v2, v4

    aget v1, v1, v3

    iget-object v3, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->tipPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 94
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->width:F

    .line 97
    invoke-virtual {p0}, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->height:F

    .line 99
    iget p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->width:F

    iget p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->padding:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->lineContentWidth:F

    .line 100
    iget p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->height:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    const/high16 p2, 0x43160000    # 150.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->lineStrokeWidth:F

    .line 101
    iget-object p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->lineStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->lineStrokeWidth:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->linePadding:F

    .line 104
    iget p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->lineContentWidth:F

    const/high16 p2, 0x42700000    # 60.0f

    div-float/2addr p1, p2

    .line 105
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->topTip:[F

    const/high16 p3, 0x41200000    # 10.0f

    mul-float/2addr p3, p1

    iget p4, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->padding:F

    add-float/2addr p3, p4

    const/4 p4, 0x0

    aput p3, p2, p4

    .line 106
    iget p3, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->height:F

    const/4 p5, 0x1

    aput p3, p2, p5

    .line 107
    iget-object v0, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->topPath:Landroid/graphics/Path;

    aget p2, p2, p4

    iget v1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->textSize:F

    sub-float/2addr p3, v1

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->topPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->topTip:[F

    aget p3, p3, p4

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->middleTip:[F

    const/high16 p3, 0x41f00000    # 30.0f

    mul-float/2addr p1, p3

    iget p3, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->padding:F

    add-float/2addr p1, p3

    aput p1, p2, p4

    .line 111
    iget p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->height:F

    aput p1, p2, p5

    .line 112
    iget-object p3, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->middlePath:Landroid/graphics/Path;

    aget p2, p2, p4

    iget p5, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->textSize:F

    sub-float/2addr p1, p5

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 113
    iget-object p1, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->middlePath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/tencent/matrix/trace/view/FloatFrameView$LineChartView;->middleTip:[F

    aget p2, p2, p4

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    return-void
.end method
