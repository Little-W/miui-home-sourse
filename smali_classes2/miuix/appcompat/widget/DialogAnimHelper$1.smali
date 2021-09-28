.class final Lmiuix/appcompat/widget/DialogAnimHelper$1;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$isLandscape:Z

.field final synthetic val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method constructor <init>(ZLandroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$isLandscape:Z

    iput-object p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$contentView:Landroid/view/View;

    iput-object p3, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 48
    iget-boolean p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$isLandscape:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-ne p5, p2, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 50
    iget-object p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$contentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$000(Landroid/view/View;I)V

    .line 51
    iget-object p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$contentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-boolean p4, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$isLandscape:Z

    iget-object p5, p0, Lmiuix/appcompat/widget/DialogAnimHelper$1;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    const/4 p6, 0x0

    invoke-static {p2, p3, p6, p4, p5}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$100(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 52
    invoke-virtual {p1, p6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
