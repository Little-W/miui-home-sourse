.class public Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# instance fields
.field final mRecyclerViewDelegate:Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method public constructor <init>(Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 109
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    .line 110
    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView;->getLayoutManager()Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView;->getLayoutManager()Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    .line 122
    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView;->getLayoutManager()Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/mysupport/v7/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Landroid/mysupport/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/mysupport/v7/widget/RecyclerView;->getLayoutManager()Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1, p2, p3}, Landroid/mysupport/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
