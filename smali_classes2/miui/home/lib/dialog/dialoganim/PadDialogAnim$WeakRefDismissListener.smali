.class Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefDismissListener;
.super Ljava/lang/Object;
.source "PadDialogAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefDismissListener"
.end annotation


# instance fields
.field mOnDismiss:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;",
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
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;Landroid/view/View;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefDismissListener;->this$0:Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 174
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_0

    .line 199
    invoke-interface {p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_0

    :cond_0
    const-string p1, "PhoneDialogAnim"

    const-string v0, "weak dismiss onCancel mOnDismiss get null"

    .line 201
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_0

    .line 189
    invoke-interface {p1}, Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_0

    :cond_0
    const-string p1, "PhoneDialogAnim"

    const-string v0, "weak dismiss onComplete mOnDismiss get null"

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const-string v0, "hide"

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
