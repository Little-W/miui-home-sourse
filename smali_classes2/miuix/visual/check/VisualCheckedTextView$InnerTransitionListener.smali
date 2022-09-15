.class Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "VisualCheckedTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/visual/check/VisualCheckedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTransitionListener"
.end annotation


# instance fields
.field mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/visual/check/VisualCheckedTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiuix/visual/check/VisualCheckedTextView;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    .line 49
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/visual/check/VisualCheckedTextView;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1, p3}, Lmiuix/visual/check/VisualCheckedTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
