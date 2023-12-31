.class Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;
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

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$isLandscape:Z

.field final synthetic val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic val$listener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;ZLmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iput-object p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$contentView:Landroid/view/View;

    iput-boolean p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    iput-object p4, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$listener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    iput-object p5, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    .line 138
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 139
    iget-object p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$contentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    const/4 p2, 0x0

    .line 140
    invoke-static {p1, p4, p2}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 141
    iget-boolean p6, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    new-instance p7, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;

    iget-object v1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iget-object v2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$listener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    iget-object v3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v5, 0x0

    move-object v0, p7

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;I)V

    new-instance p8, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;

    iget-object p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    iget-boolean p0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$2;->val$isLandscape:Z

    invoke-direct {p8, p3, p1, p0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;-><init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Z)V

    const/4 p5, 0x0

    move-object p3, p1

    invoke-static/range {p3 .. p8}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$200(Landroid/view/View;IIZLmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
