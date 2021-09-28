.class Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 15

    move-object v0, p0

    .line 428
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget-object v2, v2, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    aget v2, v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    iget-object v2, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v2, v2, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v2, v2, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v10, v1, v2

    .line 429
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    if-ge v10, v1, :cond_0

    .line 430
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget-object v6, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v7, v1, v10

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v8, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v9, v1, p2

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v11, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int v12, v1, v10

    const/4 v13, 0x1

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget-object v14, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 441
    :cond_0
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget-object v2, v2, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    aget v2, v2, p2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v2, v2, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v2, v2, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    mul-int/2addr v1, v2

    .line 442
    iget-object v2, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v2, v2, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    if-le v1, v2, :cond_1

    .line 443
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    if-lez v9, :cond_2

    .line 446
    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget-object v3, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v5, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v1, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    mul-int v6, v1, p2

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v7, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget v8, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    const/4 v10, 0x1

    iget-object v1, v0, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lcom/miui/maml/widget/SpectrumVisualizer;

    iget-object v11, v1, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method
