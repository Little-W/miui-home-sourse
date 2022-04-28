.class Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;
.super Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
.source "HotSeatsListContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShortcutViewHolder"
.end annotation


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V
    .locals 3

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V

    .line 255
    instance-of v0, p2, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 256
    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setIsHideTitle(Z)V

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellWidth()I

    move-result v1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellHeight()I

    move-result v1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->height:I

    .line 262
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setMaxWidth(I)V

    .line 263
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->setMinWidth(I)V

    .line 267
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->setPivotX(F)V

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellContentHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->setPivotY(F)V

    .line 269
    iget p1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->width:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    .line 270
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellContentHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ShortcutViewHolder;-><init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V

    return-void
.end method
