.class Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HotSeatsListContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private final content:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;Landroid/view/View;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 238
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->content:Landroid/view/View;

    .line 240
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;->content:Landroid/view/View;

    return-object v0
.end method
