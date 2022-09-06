.class Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefShowListener"
.end annotation


# instance fields
.field mEndTranslateY:I

.field mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

.field mOnShow:Ljava/lang/ref/WeakReference;
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

.field final synthetic this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;


# direct methods
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;I)V
    .locals 0

    .line 225
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 226
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 227
    iput-object p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 228
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 229
    iput p5, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    return-void
.end method

.method private done()V
    .locals 3

    .line 269
    iget-object v0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    iget-object v2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 272
    iput-object v1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 274
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v0}, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 278
    :cond_1
    invoke-static {}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 279
    invoke-static {}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$300()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 280
    invoke-static {v1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 257
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 258
    invoke-direct {p0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->done()V

    .line 260
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 262
    iget v0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    invoke-static {p1, v0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;I)V

    .line 264
    :cond_0
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 265
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 250
    invoke-direct {p0}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->done()V

    .line 251
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 252
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 234
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const-string p2, "show"

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-object p2, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p2, :cond_0

    .line 238
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 241
    :cond_0
    iget-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    if-eqz p1, :cond_1

    .line 243
    invoke-interface {p1}, Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    :cond_1
    return-void
.end method
