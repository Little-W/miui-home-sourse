.class Lcom/miui/home/launcher/CellLayout$ItemArea;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemArea"
.end annotation


# instance fields
.field mCellX:I

.field mCellY:I

.field mSpanX:I

.field mSpanY:I

.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;IIII)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    iput p2, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    .line 1695
    iput p3, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    .line 1696
    iput p4, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    .line 1697
    iput p5, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    return-void
.end method


# virtual methods
.method public getCoveringRect()Landroid/graphics/Rect;
    .locals 5

    .line 1701
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public iterateAllViewsInArea(Ljava8/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1705
    iget v0, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1706
    iget v1, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    :goto_1
    iget v2, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 1707
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/CellLayout;->access$400(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public iterateAllViewsInAreaInterruptably(Ljava8/util/function/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 1713
    iget v0, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellY:I

    iget v2, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 1714
    iget v1, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    :goto_1
    iget v2, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mCellX:I

    iget v3, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->mSpanX:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 1715
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$ItemArea;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/CellLayout;->access$400(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
