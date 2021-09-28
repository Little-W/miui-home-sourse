.class final Lmiuix/appcompat/widget/DialogAnimHelper$2;
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
.field final synthetic val$isLandscape:Z

.field final synthetic val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method constructor <init>(ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$2;->val$isLandscape:Z

    iput-object p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper$2;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    sub-int/2addr p5, p2

    .line 65
    invoke-static {p1, p5}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$000(Landroid/view/View;I)V

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 67
    iget-boolean p3, p0, Lmiuix/appcompat/widget/DialogAnimHelper$2;->val$isLandscape:Z

    iget-object p4, p0, Lmiuix/appcompat/widget/DialogAnimHelper$2;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-static {p1, p5, p2, p3, p4}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$100(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method
