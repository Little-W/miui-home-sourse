.class Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HotSeatsListContentLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 155
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellContentHeight()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 156
    iget-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager$OffsetDecoration;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;

    invoke-static {p3, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;->access$100(Lcom/miui/home/launcher/hotseats/HotSeatsListContentLayoutManager;Landroid/view/View;)F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
