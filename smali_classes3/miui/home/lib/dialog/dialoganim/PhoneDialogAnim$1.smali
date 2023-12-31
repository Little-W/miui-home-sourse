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


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iput p4, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    invoke-direct {p0, p1, p2, p3}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 108
    invoke-super/range {p0 .. p9}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$AnimLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 112
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p3

    .line 113
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p4

    .line 114
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 116
    iget-object p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iget p5, p4, Landroid/graphics/Insets;->bottom:I

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p5, p2

    invoke-static {p3, p5}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$002(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;I)I

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->isInMultiScreenMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 122
    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->isInMultiScreenBottom(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 123
    iget p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->val$dimBgOriginalBottomMargin:I

    if-eqz p4, :cond_2

    iget p2, p4, Landroid/graphics/Insets;->bottom:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    add-int/2addr p1, p2

    .line 124
    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$1;->updateDimBgMargin(I)V

    :cond_3
    return-void
.end method
