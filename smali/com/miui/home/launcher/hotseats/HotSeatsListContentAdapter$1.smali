.class Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;
.super Ljava/lang/Object;
.source "HotSeatsListContentAdapter.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 118
    iget-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$1;->this$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-static {p2}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->access$000(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)Landroid/view/View$OnLongClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
