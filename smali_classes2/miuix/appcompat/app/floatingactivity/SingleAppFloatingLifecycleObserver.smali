.class public Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;
.super Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;
.source "SingleAppFloatingLifecycleObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;
    }
.end annotation


# direct methods
.method private executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 78
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;

    invoke-direct {v1, p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/-$$Lambda$SingleAppFloatingLifecycleObserver$DeOG8CgRfbeQ6C-WrrGI6KyjbH4;-><init>(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private reenterTransition(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 60
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 61
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityCache()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityCache()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$executeCloseExit$0$SingleAppFloatingLifecycleObserver(Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 4

    .line 82
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 84
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 86
    new-instance v3, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;

    invoke-direct {v3, p0, p2}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;-><init>(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Lmiuix/appcompat/app/AppCompatActivity;)V

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 87
    invoke-static {p1, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeCloseExitAnimation(Landroid/view/View;Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 20
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 22
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->executeOpenEnterAnimation()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 51
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->remove(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    .line 45
    :cond_0
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->reenterTransition(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_1
    return-void
.end method
