.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefUpdateListener"
.end annotation


# instance fields
.field mHolderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    .line 246
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    .line 248
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mHolderView:Ljava/lang/ref/WeakReference;

    .line 249
    iput-boolean p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mIsLandscape:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 254
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 255
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mHolderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "hide"

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 262
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 266
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 267
    iget-boolean v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mIsLandscape:Z

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    .line 269
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_4

    const/4 v2, 0x0

    .line 275
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_4
    :goto_0
    invoke-static {v0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Landroid/view/View;I)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method
