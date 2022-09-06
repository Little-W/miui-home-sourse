.class Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimLayoutChangeListener"
.end annotation


# instance fields
.field final decorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final screenSize:Landroid/graphics/Point;

.field final synthetic this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

.field final windowVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->decorView:Ljava/lang/ref/WeakReference;

    .line 320
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->windowVisibleFrame:Landroid/graphics/Rect;

    .line 321
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->screenSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public isInMultiScreenBottom(Landroid/content/Context;)Z
    .locals 2

    .line 348
    invoke-static {p1}, Lmiui/home/lib/dialog/utils/WindowUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->screenSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 349
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->windowVisibleFrame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->windowVisibleFrame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->screenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne p1, v1, :cond_0

    .line 352
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->screenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 353
    iget-object v1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->windowVisibleFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-lt v1, p1, :cond_0

    const/4 p1, 0x1

    move v0, p1

    :cond_0
    return v0
.end method

.method public isInMultiScreenMode(Landroid/content/Context;)Z
    .locals 1

    .line 339
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 328
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->decorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 330
    iget-object p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->windowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
