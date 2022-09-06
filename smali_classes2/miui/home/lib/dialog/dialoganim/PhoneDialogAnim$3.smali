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

    .line 142
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iput-boolean p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    iput-object p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$listener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    iput-object p4, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    .line 146
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sub-int p2, p5, p3

    .line 148
    invoke-static {p1, p2}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;I)V

    .line 149
    iget-boolean p4, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    new-instance p5, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;

    iget-object v1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iget-object v2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$listener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    iget-object v3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v5, 0x0

    move-object v0, p5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;I)V

    new-instance p6, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;

    iget-object p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iget-boolean p7, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$3;->val$isLandscape:Z

    invoke-direct {p6, p3, p1, p7}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Z)V

    const/4 p3, 0x0

    invoke-static/range {p1 .. p6}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$200(Landroid/view/View;IIZLmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    return-void
.end method
