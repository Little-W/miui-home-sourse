.class Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

.field final synthetic val$isLandscape:Z

.field final synthetic val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic val$listener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iput-boolean p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    iput-object p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$listener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    iput-object p4, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 154
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sub-int p2, p5, p3

    const/4 p3, 0x0

    .line 156
    invoke-static {p1, p2, p3}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 157
    iget-boolean p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    new-instance v0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;

    iget-object p5, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iget-object p6, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$listener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    iget-object p7, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 p9, 0x0

    move-object p4, v0

    move-object p8, p1

    invoke-direct/range {p4 .. p9}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;I)V

    new-instance p5, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;

    iget-object p4, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iget-boolean p0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    invoke-direct {p5, p4, p1, p0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Z)V

    const/4 p4, 0x0

    move-object p0, p1

    move p1, p2

    move p2, p4

    move-object p4, v0

    invoke-static/range {p0 .. p5}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$200(Landroid/view/View;IIZLmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    return-void
.end method
