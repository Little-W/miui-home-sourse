.class Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefUpdateListener"
.end annotation


# instance fields
.field mIsLandscape:Z

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
.method constructor <init>(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;Landroid/view/View;Z)V
    .locals 0

    .line 290
    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    .line 292
    iput-boolean p3, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mIsLandscape:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "hide"

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 307
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 308
    iget-object v1, p0, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;

    invoke-static {v1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$000(Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lmiui/home/lib/dialog/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;I)V

    return-void
.end method
