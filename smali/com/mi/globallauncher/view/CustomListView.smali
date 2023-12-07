.class public Lcom/mi/globallauncher/view/CustomListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/CustomListView$OnNoItemClickListener;
    }
.end annotation


# instance fields
.field private mOnNoItemClickListener:Lcom/mi/globallauncher/view/CustomListView$OnNoItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/mi/globallauncher/view/CustomListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/view/CustomListView;->mOnNoItemClickListener:Lcom/mi/globallauncher/view/CustomListView$OnNoItemClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/globallauncher/view/CustomListView$OnNoItemClickListener;->onNoItemClicked()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnNoItemClickListener(Lcom/mi/globallauncher/view/CustomListView$OnNoItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/view/CustomListView;->mOnNoItemClickListener:Lcom/mi/globallauncher/view/CustomListView$OnNoItemClickListener;

    return-void
.end method
