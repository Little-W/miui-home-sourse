.class final Landroidx/viewpager2/widget/FakeDrag;
.super Ljava/lang/Object;


# instance fields
.field private final mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;


# virtual methods
.method isFakeDragging()Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    move-result p0

    return p0
.end method
