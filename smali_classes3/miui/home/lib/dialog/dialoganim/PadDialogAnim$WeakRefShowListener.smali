.class Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "PadDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefShowListener"
.end annotation


# instance fields
.field mShowDismiss:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowListener;->this$0:Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 231
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    .line 232
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 248
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 249
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const-string v0, "show"

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    :cond_0
    iget-object p0, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    if-eqz p0, :cond_1

    .line 255
    invoke-interface {p0}, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    goto :goto_0

    :cond_1
    const-string p0, "PhoneDialogAnim"

    const-string p1, "weak show onCancel mOnDismiss get null"

    .line 257
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 237
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 238
    iget-object p0, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    if-eqz p0, :cond_0

    .line 240
    invoke-interface {p0}, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    goto :goto_0

    :cond_0
    const-string p0, "PhoneDialogAnim"

    const-string p1, "weak show onComplete mOnDismiss get null"

    .line 242
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
