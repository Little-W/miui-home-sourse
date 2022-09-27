.class public Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SmallWindowListRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private mBottom:I

.field private mLeft:I

.field private mRight:I

.field private mSpace:I

.field private mTop:I

.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;


# direct methods
.method public constructor <init>(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;IIIII)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 76
    iput p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mLeft:I

    .line 77
    iput p3, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mTop:I

    .line 78
    iput p5, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mBottom:I

    .line 79
    iput p4, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mRight:I

    .line 80
    iput p6, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 86
    iget p4, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mTop:I

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 87
    iget p4, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mBottom:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 89
    iget-object p4, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->this$0:Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;

    invoke-static {p4}, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;->access$000(Lcom/miui/home/smallwindow/SmallWindowListRecyclerView;)Lcom/miui/home/smallwindow/BaseDelegateAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/smallwindow/BaseDelegateAdapter;->getSelectedCount()I

    move-result p4

    .line 91
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    if-nez p4, :cond_0

    const/4 p2, 0x0

    .line 93
    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 95
    :cond_0
    iget p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mLeft:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 98
    :cond_1
    iget p2, p0, Lcom/miui/home/smallwindow/SmallWindowListRecyclerView$SpacesItemDecoration;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method
