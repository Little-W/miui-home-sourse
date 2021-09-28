.class Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SmallWindowListRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 159
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 160
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 163
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/smallwindow/ItemView;

    .line 164
    invoke-virtual {v1}, Lcom/miui/home/smallwindow/ItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/miui/home/smallwindow/ItemView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object p3, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$3;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-static {p3, p1, p2}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->access$100(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method
