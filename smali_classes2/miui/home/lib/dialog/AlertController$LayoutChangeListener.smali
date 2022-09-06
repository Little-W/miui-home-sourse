.class Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutChangeListener"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/home/lib/dialog/AlertController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/AlertController;)V
    .locals 1

    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1999
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 2000
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private changeViewPadding(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 2064
    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiui/home/lib/dialog/AlertController;)V
    .locals 1

    .line 2042
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p3}, Lmiui/home/lib/dialog/AlertController;->access$2000(Lmiui/home/lib/dialog/AlertController;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2043
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    if-lez p1, :cond_0

    neg-int p1, p1

    .line 2050
    invoke-static {p3}, Lmiui/home/lib/dialog/AlertController;->access$2100(Lmiui/home/lib/dialog/AlertController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lmiuix/core/util/MiuixUIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    .line 2055
    invoke-static {}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->cancelAnimator()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2060
    :goto_0
    invoke-static {p3, p1}, Lmiui/home/lib/dialog/AlertController;->access$1500(Lmiui/home/lib/dialog/AlertController;I)V

    return-void
.end method

.method private handleMultiWindowLandscapeChange(Lmiui/home/lib/dialog/AlertController;I)V
    .locals 3

    .line 2068
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2100(Lmiui/home/lib/dialog/AlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2069
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    .line 2070
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p2, v0

    .line 2072
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v2, p2, :cond_0

    .line 2074
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2200(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2077
    :cond_0
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2200(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2080
    :cond_1
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2200(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2083
    :cond_2
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2200(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;

    move-result-object p1

    .line 2084
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    if-gtz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    if-lez p2, :cond_4

    .line 2086
    :cond_3
    invoke-direct {p0, p1, v1, v1}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 2006
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/home/lib/dialog/AlertController;

    if-eqz p2, :cond_2

    .line 2009
    iget-object p3, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2010
    invoke-direct {p0, p2, p4}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->handleMultiWindowLandscapeChange(Lmiui/home/lib/dialog/AlertController;I)V

    .line 2011
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1e

    if-lt p3, p4, :cond_0

    .line 2012
    invoke-static {p2}, Lmiui/home/lib/dialog/AlertController;->access$700(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object p3

    invoke-virtual {p3}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p3

    .line 2013
    invoke-static {p2, p3}, Lmiui/home/lib/dialog/AlertController;->access$1700(Lmiui/home/lib/dialog/AlertController;Landroid/view/WindowInsets;)V

    .line 2015
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p3, p4, :cond_2

    .line 2016
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 2019
    invoke-static {p2}, Lmiui/home/lib/dialog/AlertController;->access$1900(Lmiui/home/lib/dialog/AlertController;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 2020
    iget-object p3, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3, p2}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiui/home/lib/dialog/AlertController;)V

    goto :goto_0

    .line 2023
    :cond_1
    invoke-static {p2}, Lmiui/home/lib/dialog/AlertController;->access$700(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result p1

    const/4 p3, 0x0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 2024
    invoke-static {p2, p1}, Lmiui/home/lib/dialog/AlertController;->access$1500(Lmiui/home/lib/dialog/AlertController;I)V

    :cond_2
    :goto_0
    return-void
.end method
