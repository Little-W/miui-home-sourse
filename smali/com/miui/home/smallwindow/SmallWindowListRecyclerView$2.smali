.class Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$2;
.super Ljava/lang/Object;
.source "SmallWindowListRecyclerView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/ArrayList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$2;->accept(Ljava/util/ArrayList;)V

    return-void
.end method

.method public accept(Ljava/util/ArrayList;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->access$000(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->setItemInfoList(Ljava/util/ArrayList;)V

    .line 119
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-static {p1}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->access$000(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->notifyDataSetChanged()V

    return-void
.end method
