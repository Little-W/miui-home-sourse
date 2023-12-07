.class public Lcom/miui/home/launcher/InsettableFrameLayout;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "InsettableFrameLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;
    }
.end annotation


# instance fields
.field protected mInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-void
.end method

.method public static dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 104
    instance-of v3, v2, Lcom/miui/home/launcher/Insettable;

    if-eqz v3, :cond_0

    .line 105
    check-cast v2, Lcom/miui/home/launcher/Insettable;

    invoke-interface {v2, p1}, Lcom/miui/home/launcher/Insettable;->setInsets(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 65
    instance-of p0, p1, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/launcher/InsettableFrameLayout;->generateDefaultLayoutParams()Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/launcher/InsettableFrameLayout;->generateDefaultLayoutParams()Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;
    .locals 1

    .line 59
    new-instance p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;
    .locals 1

    .line 54
    new-instance v0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/home/launcher/InsettableFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;
    .locals 0

    .line 70
    new-instance p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;

    .line 31
    instance-of v0, p1, Lcom/miui/home/launcher/Insettable;

    if-eqz v0, :cond_0

    .line 32
    move-object p3, p1

    check-cast p3, Lcom/miui/home/launcher/Insettable;

    invoke-interface {p3, p2}, Lcom/miui/home/launcher/Insettable;->setInsets(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    if-nez v0, :cond_1

    .line 34
    iget v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 35
    iget v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->leftMargin:I

    .line 36
    iget v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->rightMargin:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->rightMargin:I

    .line 37
    iget v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    add-int/2addr v0, p2

    iput v0, p0, Lcom/miui/home/launcher/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/InsettableFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 46
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/InsettableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, p1, v3}, Lcom/miui/home/launcher/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
