.class public Lcom/miui/maml/elements/MusicListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "MusicListenerService.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicListenerService$RCBinder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.service.notification.MusicListenerService"

.field private static final BITMAP_HEIGHT:I = 0x400

.field private static final BITMAP_WIDTH:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "MusicListenerService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mClientUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/RemoteController$OnClientUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRemoteController:Landroid/media/RemoteController;

.field private mRemoteControllerEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 30
    new-instance v0, Lcom/miui/maml/elements/MusicListenerService$RCBinder;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicListenerService$RCBinder;-><init>(Lcom/miui/maml/elements/MusicListenerService;)V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    return-void
.end method

.method private disableRemoteController()V
    .locals 2

    .line 93
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 95
    iget-object v1, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    :cond_0
    return-void
.end method

.method private enableRemoteController()V
    .locals 4

    .line 75
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 77
    new-instance v1, Landroid/media/RemoteController;

    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v1, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MusicListenerService"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to register RemoteController!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(II)Z

    .line 85
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z

    goto :goto_1

    :cond_0
    const-string v0, "MusicListenerService"

    const-string v1, "fail to register RemoteController!"

    .line 87
    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getRemoteController()Landroid/media/RemoteController;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.service.notification.MusicListenerService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MusicListenerService"

    const-string v0, "onBind: success"

    .line 44
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    return-object p1

    :cond_0
    const-string p1, "MusicListenerService"

    const-string v0, "onBind: fail"

    .line 47
    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onClientChange(Z)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 132
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2
    return-void
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 147
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v2, :cond_0

    .line 149
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2
    return-void
.end method

.method public onClientNowPlayingContentChange()V
    .locals 0

    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 0

    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 162
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 11

    move-object v0, p0

    .line 176
    iget-object v1, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 177
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v4, :cond_0

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    move/from16 v10, p6

    .line 179
    invoke-interface/range {v4 .. v10}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v3, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 192
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v2, :cond_0

    .line 194
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2
    return-void
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/miui/maml/elements/MusicListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/media/RemoteController;

    iget-object v1, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    const-string v0, "MusicListenerService"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationPosted: pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->enableRemoteController()V

    .line 102
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 103
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 113
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 119
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_3
    return-void
.end method
