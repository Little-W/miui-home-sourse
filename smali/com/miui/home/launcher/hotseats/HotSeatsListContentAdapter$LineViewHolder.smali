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
    .locals 2

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V

    .line 252
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 253
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellHeight()I

    move-result v0

    iput v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    .line 255
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setMaxWidth(I)V

    .line 256
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setMinWidth(I)V

    .line 258
    iget p2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->setPivotX(F)V

    .line 259
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellContentHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->setPivotY(F)V

    return-void
.end method
