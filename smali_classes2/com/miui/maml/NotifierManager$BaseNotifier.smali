.class public abstract Lcom/miui/maml/NotifierManager$BaseNotifier;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNotifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;
    }
.end annotation


# instance fields
.field private mActiveCount:I

.field protected mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 198
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final checkListeners()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 231
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pause()V

    .line 235
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final checkListenersLocked()I
    .locals 3

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 240
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 241
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 242
    iget-object v2, v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 244
    :cond_0
    invoke-static {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->access$000(Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 248
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    return p0
.end method

.method private final findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;
    .locals 2

    .line 222
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 223
    iget-object v1, v0, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final addListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 203
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    invoke-direct {v2, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;-><init>(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 206
    invoke-virtual {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 208
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public finish()V
    .locals 0

    .line 302
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->unregister()V

    return-void
.end method

.method public final getActiveCount()I
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 281
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    return p0
.end method

.method public final getRef()I
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 286
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    return p0
.end method

.method public init()V
    .locals 0

    .line 290
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->register()V

    return-void
.end method

.method protected onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 0

    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 2

    .line 310
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 311
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 313
    invoke-virtual {v1, p1, p2, p3}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 315
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract onRegister()V
.end method

.method protected abstract onUnregister()V
.end method

.method public pause()V
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->unregister()V

    return-void
.end method

.method public final pauseListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 267
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    const-string p1, "NotifierManager"

    const-string v1, "pauseListener, listener not exist"

    .line 271
    invoke-static {p1, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    monitor-exit v0

    return p0

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pause()V

    .line 275
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected register()V
    .locals 2

    .line 319
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onRegister()V

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegister: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotifierManager"

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final removeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 213
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 218
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->register()V

    return-void
.end method

.method public final resumeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 253
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    const-string p1, "NotifierManager"

    const-string v1, "resumeListener, listener not exist"

    .line 257
    invoke-static {p1, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    monitor-exit v0

    return p0

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->resume()V

    .line 261
    iget p0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected unregister()V
    .locals 3

    const-string v0, "NotifierManager"

    .line 328
    iget-boolean v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-nez v1, :cond_0

    return-void

    .line 331
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 335
    iput-boolean v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
