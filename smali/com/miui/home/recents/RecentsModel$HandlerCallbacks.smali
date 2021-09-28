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

    .line 148
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/RecentsModel;Lcom/miui/home/recents/RecentsModel$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;-><init>(Lcom/miui/home/recents/RecentsModel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 151
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    return v0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    .line 156
    iget-object v1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {v1}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    const/4 v2, -0x1

    .line 157
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 158
    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    const/4 v2, 0x2

    .line 160
    iput v2, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 161
    iput v2, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    const/4 v2, 0x1

    .line 162
    iput-boolean v2, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 163
    iput-boolean v2, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 164
    iget-object v3, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {v3}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    return v2
.end method
