.class Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager$BaseNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public intent:Landroid/content/Intent;

.field public obj:Ljava/lang/Object;

.field private paused:Z

.field private pendingNotify:Z

.field public ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/NotifierManager$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    return p0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    .line 158
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    .line 160
    iput-object p3, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/NotifierManager$OnNotifyListener;

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0, p1, p2, p3}, Lcom/miui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    return-void
.end method

.method public resume()V
    .locals 5

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->paused:Z

    .line 176
    iget-boolean v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$OnNotifyListener;

    if-eqz v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/miui/maml/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 180
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pendingNotify:Z

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->context:Landroid/content/Context;

    .line 182
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->intent:Landroid/content/Intent;

    .line 183
    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->obj:Ljava/lang/Object;

    :cond_0
    return-void
.end method
