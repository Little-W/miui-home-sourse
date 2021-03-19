.class Lcom/miui/home/smallwindow/SmallWindowEditView$4;
.super Ljava/lang/Object;
.source "SmallWindowEditView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowEditView;->setData(Ljava/util/List;I)V
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
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

.field final synthetic val$selectedCount:I


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowEditView;I)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    iput p2, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$4;->val$selectedCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/home/smallwindow/SmallWindowEditView$4;->accept(Ljava/util/ArrayList;)V

    return-void
.end method

.method public accept(Ljava/util/ArrayList;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowEditView;->access$100(Lcom/miui/home/smallwindow/SmallWindowEditView;)Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->setItemInfoList(Ljava/util/ArrayList;)V

    .line 114
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {p1}, Lcom/miui/home/smallwindow/SmallWindowEditView;->access$100(Lcom/miui/home/smallwindow/SmallWindowEditView;)Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$4;->val$selectedCount:I

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->setSelectedCount(I)V

    .line 115
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowEditView$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowEditView;

    invoke-static {p1}, Lcom/miui/home/smallwindow/SmallWindowEditView;->access$100(Lcom/miui/home/smallwindow/SmallWindowEditView;)Lcom/miui/home/smallwindow/SmallWindowEditAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/smallwindow/SmallWindowEditAdapter;->notifyDataSetChanged()V

    return-void
.end method
