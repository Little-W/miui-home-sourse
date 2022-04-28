.class public Lcom/miui/maml/util/MamlAccessHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "MamlAccessHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlAccessHelper"


# instance fields
.field mHostView:Landroid/view/View;

.field mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    iput-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 29
    iput-object p2, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    .line 30
    iget-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 52
    invoke-virtual {v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    .line 114
    iget-object p3, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    const/16 v1, 0x10

    if-eq p2, v1, :cond_0

    return v0

    .line 117
    :cond_0
    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object p2

    if-ltz p1, :cond_2

    .line 118
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 119
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    const-string p2, "up"

    .line 120
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 121
    instance-of p2, p1, Lcom/miui/maml/elements/ButtonScreenElement;

    if-eqz p2, :cond_1

    .line 122
    check-cast p1, Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-virtual {p1}, Lcom/miui/maml/elements/ButtonScreenElement;->onActionUp()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 78
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 88
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 89
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "MamlAccessHelper"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "element.getContentDescription() == null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 95
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v3

    .line 97
    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v4

    invoke-virtual {p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result p1

    add-float/2addr v4, p1

    float-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const-string v0, "MamlAccessHelper"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virtualViewId not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 102
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const-string p1, "MamlAccessHelper"

    const-string v0, "mRoot == null, add an empty content description"

    .line 106
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 107
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public performAccessibilityAction(II)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    new-instance v1, Lcom/miui/maml/util/MamlAccessHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/util/MamlAccessHelper$1;-><init>(Lcom/miui/maml/util/MamlAccessHelper;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeRoot()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-void
.end method
