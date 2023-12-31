.class Lcom/miui/home/recents/SystemUiProxyWrapper$1;
.super Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;
.source "SystemUiProxyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/SystemUiProxyWrapper;->registerRecentTasksListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/SystemUiProxyWrapper;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/SystemUiProxyWrapper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/miui/home/recents/SystemUiProxyWrapper$1;->this$0:Lcom/miui/home/recents/SystemUiProxyWrapper;

    invoke-direct {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecentTasksChanged()V
    .locals 1

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->onTaskStackChangedBackground()V

    .line 133
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/messages/RecentTasksChangedEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/RecentTasksChangedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
