.class Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/view/viewpager/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/library/view/viewpager/ViewPager;


# direct methods
.method constructor <init>(Lcom/miui/home/library/view/viewpager/ViewPager;)V
    .locals 0

    .line 3034
    iput-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .line 3086
    iget-object v0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object v0, v0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3038
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3039
    const-class p1, Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3040
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3041
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object p1, p1, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    if-eqz p1, :cond_0

    .line 3042
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object p1, p1, Lcom/miui/home/library/view/viewpager/ViewPager;->mAdapter:Lcom/miui/home/library/view/viewpager/PagerAdapter;

    invoke-virtual {p1}, Lcom/miui/home/library/view/viewpager/PagerAdapter;->getCount()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3043
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget p1, p1, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 3044
    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 3050
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3051
    const-class p1, Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3052
    invoke-direct {p0}, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3053
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 3054
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3056
    :cond_0
    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x2000

    .line 3057
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 3063
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 3075
    :cond_1
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/miui/home/library/view/viewpager/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3076
    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    .line 3068
    :cond_3
    iget-object p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p1, p3}, Lcom/miui/home/library/view/viewpager/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3069
    iget-object p0, p0, Lcom/miui/home/library/view/viewpager/ViewPager$MyAccessibilityDelegate;->this$0:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget p1, p0, Lcom/miui/home/library/view/viewpager/ViewPager;->mCurItem:I

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(I)V

    return p3

    :cond_4
    return v0
.end method
