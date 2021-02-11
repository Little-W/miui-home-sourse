.class public Lmiuix/recyclerview/widget/RecyclerView;
.super Landroidx/recyclerview/widget/SpringRecyclerView;
.source "RecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    sget v0, Landroidx/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-direct {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;-><init>()V

    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method


# virtual methods
.method public fling(II)Z
    .locals 3

    .line 32
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x12c

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    move p1, v2

    .line 35
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    move p2, v2

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    return v2

    .line 42
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method
