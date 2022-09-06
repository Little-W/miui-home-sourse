.class public Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;
.super Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;
.source "MultiAppFloatingLifecycleObserver.java"


# direct methods
.method private executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 84
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;

    invoke-direct {v1, p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$2;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 28
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v1

    new-instance v2, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;

    invoke-direct {v2, p0, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;-><init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 31
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->postEnterAnimationTask(Lmiuix/appcompat/app/AppCompatActivity;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 20
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->remove(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 21
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getCurrentPageCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 22
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->updateResumeState(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v1

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->updateResumeState(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 57
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->checkBg(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 63
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->isAboveActivityFinishing(Lmiuix/appcompat/app/AppCompatActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->executeCloseEnterAnimation()V

    .line 66
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_0
    return-void
.end method
