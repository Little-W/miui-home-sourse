.class Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$LineViewHolder;
.super Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
.source "HotSeatsListContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V
    .locals 1

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V

    .line 278
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 279
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsListCellWidth()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    .line 280
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellHeight()I

    move-result p2

    iput p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    .line 281
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setMaxWidth(I)V

    .line 282
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setMinWidth(I)V

    .line 284
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->setPivotX(F)V

    .line 285
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellContentHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->setPivotY(F)V

    return-void
.end method
