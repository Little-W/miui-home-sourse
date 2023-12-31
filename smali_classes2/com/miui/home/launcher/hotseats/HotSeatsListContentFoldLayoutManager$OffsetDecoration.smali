.class Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HotSeatsListContentFoldLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager$OffsetDecoration;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentFoldLayoutManager;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 67
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotSeatsCellContentHeight()I

    move-result p2

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
