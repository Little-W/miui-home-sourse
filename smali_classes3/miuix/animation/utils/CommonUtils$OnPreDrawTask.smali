.class Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnPreDrawTask"
.end annotation


# instance fields
.field mTask:Ljava/lang/Runnable;

.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    const/4 p0, 0x1

    return p0
.end method

.method public start(Landroid/view/View;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mView:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
