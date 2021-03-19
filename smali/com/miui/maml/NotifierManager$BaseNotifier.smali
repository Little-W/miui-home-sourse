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

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    .line 194
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final checkListeners()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pause()V

    .line 231
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final checkListenersLocked()I
    .locals 3

    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    .line 236
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 237
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 238
    iget-object v2, v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 239
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 240
    :cond_0
    invoke-static {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->access$000(Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    iget v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    .line 244
    iget v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    return v0
.end method

.method private final findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 219
    iget-object v2, v1, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final addListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    invoke-direct {v2, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;-><init>(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 202
    invoke-virtual {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 204
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finish()V
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->unregister()V

    return-void
.end method

.method public final getActiveCount()I
    .locals 1

    .line 276
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 277
    iget v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mActiveCount:I

    return v0
.end method

.method public final getRef()I
    .locals 1

    .line 281
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 282
    iget v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    return v0
.end method

.method public init()V
    .locals 0

    .line 286
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->register()V

    return-void
.end method

.method protected onListenerAdded(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 0

    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 3

    .line 306
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListeners()V

    .line 307
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    .line 309
    invoke-virtual {v2, p1, p2, p3}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract onRegister()V
.end method

.method protected abstract onUnregister()V
.end method

.method public pause()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->unregister()V

    return-void
.end method

.method public final pauseListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 263
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    const-string p1, "NotifierManager"

    const-string v1, "pauseListener, listener not exist"

    .line 267
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    monitor-exit v0

    return p1

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->pause()V

    .line 271
    iget p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 272
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected register()V
    .locals 3

    .line 315
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onRegister()V

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 320
    invoke-static {}, Lcom/miui/maml/NotifierManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NotifierManager"

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final removeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 209
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    .line 214
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 0

    .line 290
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->register()V

    return-void
.end method

.method public final resumeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 249
    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->findListenerLocked(Lcom/miui/maml/NotifierManager$OnNotifyListener;)Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->checkListenersLocked()I

    const-string p1, "NotifierManager"

    const-string v1, "resumeListener, listener not exist"

    .line 253
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    monitor-exit v0

    return p1

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier$Listener;->resume()V

    .line 257
    iget p1, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRefCount:I

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected unregister()V
    .locals 3

    .line 325
    iget-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotifierManager"

    .line 330
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/miui/maml/NotifierManager$BaseNotifier;->mRegistered:Z

    .line 334
    invoke-static {}, Lcom/miui/maml/NotifierManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NotifierManager"

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
