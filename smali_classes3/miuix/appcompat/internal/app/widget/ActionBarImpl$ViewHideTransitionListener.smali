.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHideTransitionListener"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1814
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 1815
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 0

    .line 1820
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewHideTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 1822
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
