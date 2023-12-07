.class Lcom/android/systemui/shared/recents/AppObserver$1;
.super Lmiui/process/IForegroundInfoListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/AppObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/AppObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/AppObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/AppObserver$1;->this$0:Lcom/android/systemui/shared/recents/AppObserver;

    invoke-direct {p0}, Lmiui/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lmiui/process/ForegroundInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shared/recents/AppObserver$1;->this$0:Lcom/android/systemui/shared/recents/AppObserver;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/AppObserver;->access$000(Lcom/android/systemui/shared/recents/AppObserver;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/AppObserver$1;->this$0:Lcom/android/systemui/shared/recents/AppObserver;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/AppObserver;->access$000(Lcom/android/systemui/shared/recents/AppObserver;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;->onForegroundChanged(Ljava/lang/String;)V

    goto :goto_0

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
