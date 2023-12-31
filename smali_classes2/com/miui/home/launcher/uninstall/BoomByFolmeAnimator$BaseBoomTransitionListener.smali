.class public Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "BoomByFolmeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBoomTransitionListener"
.end annotation


# instance fields
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic lambda$onBegin$0(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 169
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$300(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IStateStyle;->cancel()V

    const-string p0, "BoomByFolmeAnimator"

    const-string v0, " cancel it"

    .line 170
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 3

    const-string p1, "BoomByFolmeAnimator"

    const-string v0, " onBegin"

    .line 165
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    if-eqz p0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$100(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomByFolmeAnimator$BaseBoomTransitionListener$ySTlSDHQlQzOpawt9Dv19FIZVlM;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomByFolmeAnimator$BaseBoomTransitionListener$ySTlSDHQlQzOpawt9Dv19FIZVlM;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 173
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$100(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragLayer;->invalidate()V

    :cond_0
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "BoomByFolmeAnimator"

    const-string v0, " onCancel"

    .line 189
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 192
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$202(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Z)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 193
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$300(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "BoomByFolmeAnimator"

    const-string v0, " onComplete"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 182
    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$202(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Z)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 183
    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$300(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$BaseBoomTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    if-eqz p0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$002(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;F)F

    :cond_0
    return-void
.end method
