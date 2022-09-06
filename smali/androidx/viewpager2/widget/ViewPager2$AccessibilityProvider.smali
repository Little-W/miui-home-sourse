.class abstract Landroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;
.super Ljava/lang/Object;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AccessibilityProvider"
.end annotation


# virtual methods
.method handlesGetAccessibilityClassName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method handlesPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method onAttachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method onDetachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method onGetAccessibilityClassName()Ljava/lang/String;
    .locals 2

    .line 1230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    return-void
.end method

.method onPerformAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    .line 1262
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method onRestorePendingState()V
    .locals 0

    return-void
.end method

.method onSetLayoutDirection()V
    .locals 0

    return-void
.end method

.method onSetNewCurrentItem()V
    .locals 0

    return-void
.end method

.method onSetOrientation()V
    .locals 0

    return-void
.end method

.method onSetUserInputEnabled()V
    .locals 0

    return-void
.end method
