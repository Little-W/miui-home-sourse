.class Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;
.super Ljava/lang/Object;
.source "RecentsModel.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/RecentsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/RecentsModel;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/RecentsModel;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/RecentsModel;Lcom/miui/home/recents/RecentsModel$1;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;-><init>(Lcom/miui/home/recents/RecentsModel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 278
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "RecentsModel"

    const-string v0, "onTaskStackChangedBackground    MSG_TASK_STACK_CHANGE"

    .line 280
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    .line 284
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->preloadRecents()V

    .line 285
    iget-object v0, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 287
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 289
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 290
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 291
    iput-boolean v1, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 292
    iput-boolean v1, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 293
    iget-object p0, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    :cond_1
    return v1
.end method
