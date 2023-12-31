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

    .line 2359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2360
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 2361
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private changeViewPadding(Landroid/view/View;II)V
    .locals 0

    const/4 p0, 0x0

    .line 2433
    invoke-virtual {p1, p2, p0, p3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiui/home/lib/dialog/AlertController;)V
    .locals 2

    .line 2399
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {p3}, Lmiui/home/lib/dialog/AlertController;->access$2400(Lmiui/home/lib/dialog/AlertController;)I

    move-result v0

    sub-int/2addr p0, v0

    .line 2400
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    if-lez p0, :cond_2

    neg-int p0, p0

    .line 2406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 2407
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2409
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    .line 2410
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 2411
    iget p2, p1, Landroid/graphics/Insets;->bottom:I

    goto :goto_0

    .line 2413
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    :cond_1
    :goto_0
    add-int/2addr p2, p0

    .line 2424
    invoke-static {}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper;->cancelAnimator()V

    .line 2429
    :cond_2
    invoke-static {p3, p2}, Lmiui/home/lib/dialog/AlertController;->access$1800(Lmiui/home/lib/dialog/AlertController;I)V

    return-void
.end method

.method private handleMultiWindowLandscapeChange(Lmiui/home/lib/dialog/AlertController;I)V
    .locals 3

    .line 2437
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2500(Lmiui/home/lib/dialog/AlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2438
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    .line 2439
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p2, v0

    .line 2441
    iget-object v2, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v2, p2, :cond_0

    .line 2443
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2600(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2446
    :cond_0
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2600(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2449
    :cond_1
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2600(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    .line 2452
    :cond_2
    invoke-static {p1}, Lmiui/home/lib/dialog/AlertController;->access$2600(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogRootView;

    move-result-object p1

    .line 2453
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    if-gtz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    if-lez p2, :cond_4

    .line 2455
    :cond_3
    invoke-direct {p0, p1, v1, v1}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 2367
    iget-object p2, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/home/lib/dialog/AlertController;

    if-eqz p2, :cond_1

    .line 2370
    iget-object p3, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2371
    invoke-direct {p0, p2, p4}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->handleMultiWindowLandscapeChange(Lmiui/home/lib/dialog/AlertController;I)V

    .line 2372
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1e

    if-ge p3, p4, :cond_1

    .line 2373
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2376
    invoke-static {p2}, Lmiui/home/lib/dialog/AlertController;->access$2300(Lmiui/home/lib/dialog/AlertController;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2377
    iget-object p3, p0, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3, p2}, Lmiui/home/lib/dialog/AlertController$LayoutChangeListener;->handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiui/home/lib/dialog/AlertController;)V

    goto :goto_0

    .line 2380
    :cond_0
    invoke-static {p2}, Lmiui/home/lib/dialog/AlertController;->access$000(Lmiui/home/lib/dialog/AlertController;)Lmiui/home/lib/dialog/widget/DialogParentPanel2;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->getTranslationY()F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x0

    .line 2381
    invoke-static {p2, p0}, Lmiui/home/lib/dialog/AlertController;->access$1800(Lmiui/home/lib/dialog/AlertController;I)V

    :cond_1
    :goto_0
    return-void
.end method
