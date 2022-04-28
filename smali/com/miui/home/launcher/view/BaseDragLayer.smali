.class public abstract Lcom/miui/home/launcher/view/BaseDragLayer;
.super Lcom/miui/home/launcher/InsettableFrameLayout;
.source "BaseDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/home/launcher/BaseDraggingActivity;",
        ">",
        "Lcom/miui/home/launcher/InsettableFrameLayout;"
    }
.end annotation


# instance fields
.field protected final mActivity:Lcom/miui/home/launcher/BaseDraggingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {p1}, Lcom/miui/home/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/miui/home/launcher/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/BaseDraggingActivity;

    iput-object p1, p0, Lcom/miui/home/launcher/view/BaseDragLayer;->mActivity:Lcom/miui/home/launcher/BaseDraggingActivity;

    return-void
.end method

.method static synthetic lambda$onViewRemoved$0(Landroid/view/View;)V
    .locals 1

    .line 91
    check-cast p0, Lcom/miui/home/launcher/AbstractFloatingView;

    .line 92
    invoke-virtual {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/AbstractFloatingView;->close(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseDragLayer;->mActivity:Lcom/miui/home/launcher/BaseDraggingActivity;

    const/16 v1, 0xfbf

    invoke-static {v0, v1}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/miui/home/launcher/BaseDraggingActivity;I)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/view/BaseDragLayer;->addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/miui/home/launcher/view/BaseDragLayer;->mActivity:Lcom/miui/home/launcher/BaseDraggingActivity;

    invoke-static {p1}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseDragLayer;->mActivity:Lcom/miui/home/launcher/BaseDraggingActivity;

    invoke-static {v0}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenView(Lcom/miui/home/launcher/BaseDraggingActivity;)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/view/BaseDragLayer;->mActivity:Lcom/miui/home/launcher/BaseDraggingActivity;

    const/16 v1, 0xfbf

    invoke-static {v0, v1}, Lcom/miui/home/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/miui/home/launcher/BaseDraggingActivity;I)Lcom/miui/home/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    .line 55
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 61
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 87
    instance-of v0, p1, Lcom/miui/home/launcher/AbstractFloatingView;

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/miui/home/launcher/view/-$$Lambda$BaseDragLayer$KkW4b0_wY1GAiLZEgF6YhArEZHs;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/view/-$$Lambda$BaseDragLayer$KkW4b0_wY1GAiLZEgF6YhArEZHs;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/view/BaseDragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
