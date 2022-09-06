.class Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;
.super Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;
.source "PhoneDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

.field final synthetic val$dimBgOriginalBottomMargin:I

.field final synthetic val$dimBgView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iput-object p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->val$dimBgView:Landroid/view/View;

    iput p4, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    invoke-direct {p0, p1, p2}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 100
    invoke-super/range {p0 .. p9}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p3

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p4

    if-eqz p2, :cond_0

    .line 105
    iget-object p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iget p5, p3, Landroid/graphics/Insets;->bottom:I

    iget p4, p4, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p5, p4

    invoke-static {p2, p5}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$002(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;I)I

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->isInMultiScreenMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->isInMultiScreenBottom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->val$dimBgView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    iget p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    iget p3, p3, Landroid/graphics/Insets;->bottom:I

    add-int/2addr p2, p3

    .line 113
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq p3, p2, :cond_1

    .line 114
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 115
    iget-object p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->val$dimBgView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
