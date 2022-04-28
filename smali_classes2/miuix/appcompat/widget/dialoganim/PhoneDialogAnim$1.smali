.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$isLandscape:Z

.field final synthetic val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLandroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iput-boolean p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$isLandscape:Z

    iput-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$contentView:Landroid/view/View;

    iput-object p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .line 85
    iget-boolean p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$isLandscape:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-ne p5, p2, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 87
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$contentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Landroid/view/View;I)V

    .line 88
    iget-object p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$contentView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p5

    const/4 p6, 0x0

    iget-boolean p7, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$isLandscape:Z

    new-instance p8, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;

    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    iget-object p9, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$contentView:Landroid/view/View;

    invoke-direct {p8, p2, p3, p9}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V

    new-instance p9, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;

    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$contentView:Landroid/view/View;

    .line 90
    invoke-static {p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->val$isLandscape:Z

    invoke-direct {p9, p2, p3, v0, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;Z)V

    .line 88
    invoke-static/range {p4 .. p9}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$200(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    const/4 p2, 0x0

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
