.class final Lcom/google/android/libraries/gsa/launcherclient/i;
.super Lcom/google/android/libraries/a/d;
.source "LauncherClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field private c:Landroid/view/WindowManager;

.field private d:I

.field private e:Landroid/view/Window;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/a/d;-><init>()V

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->c:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->e:Landroid/view/Window;

    return-void
.end method

.method public final a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->a:Landroid/os/Handler;

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    .line 23
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "service_status"

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 26
    invoke-static {v0, v2, v1, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    .line 28
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->c:Landroid/view/WindowManager;

    .line 31
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 33
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->d:I

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->e:Landroid/view/Window;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->e:Landroid/view/Window;

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->d:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 12
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 14
    :cond_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 13
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->e:Landroid/view/Window;

    .line 14
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    .line 13
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 15
    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 17
    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->g(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;->onOverlayScrollChanged(F)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 18
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/e;

    move-result-object p1

    const-string v0, "onScroll 0, overlay closed"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 19
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/e;

    move-result-object p1

    const-string v0, "onScroll 1, overlay opened"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 20
    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/e;

    move-result-object v0

    const-string v2, "onScroll"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;F)V

    :cond_4
    :goto_1
    return v1

    .line 4
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 5
    invoke-static {v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/e;

    move-result-object v2

    const-string v3, "stateChanged"

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, p1}, Lcom/google/android/libraries/gsa/launcherclient/e;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/i;->b:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Bundle;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
