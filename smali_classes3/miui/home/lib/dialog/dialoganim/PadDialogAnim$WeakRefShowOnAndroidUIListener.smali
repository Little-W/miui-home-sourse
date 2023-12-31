.class Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PadDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeakRefShowOnAndroidUIListener"
.end annotation


# instance fields
.field mOnDismiss:Ljava/lang/ref/WeakReference;
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

    .line 142
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->this$0:Lmiui/home/lib/dialog/dialoganim/PadDialogAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 143
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 144
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 163
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 164
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    :cond_0
    iget-object p0, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    if-eqz p0, :cond_1

    .line 170
    invoke-interface {p0}, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 151
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const-string v0, "show"

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :cond_0
    iget-object p0, p0, Lmiui/home/lib/dialog/dialoganim/PadDialogAnim$WeakRefShowOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    if-eqz p0, :cond_1

    .line 157
    invoke-interface {p0}, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    :cond_1
    return-void
.end method
