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

    .line 146
    iput-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/RecentsModel;Lcom/miui/home/recents/RecentsModel$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;-><init>(Lcom/miui/home/recents/RecentsModel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 149
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    .line 154
    iget-object v2, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {v2}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    const/4 v3, -0x1

    .line 155
    invoke-virtual {p1, v2, v3, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 156
    new-instance v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    const/4 v4, 0x2

    .line 158
    iput v4, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 159
    iput v4, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    const/4 v4, 0x1

    .line 160
    iput-boolean v4, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 161
    iput-boolean v4, v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 162
    iget-object v5, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {v5}, Lcom/miui/home/recents/RecentsModel;->access$100(Lcom/miui/home/recents/RecentsModel;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1, v5, v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 164
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->access$200(Lcom/miui/home/recents/RecentsModel;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "RecentsModel"

    const-string v2, "onTaskStackChangedBackground: start loading"

    .line 165
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {p1, v1}, Lcom/miui/home/recents/RecentsModel;->access$302(Lcom/miui/home/recents/RecentsModel;Z)Z

    .line 167
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndSplit()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/home/recents/RecentsModel;->access$402(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 168
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreHomeAndFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/home/recents/RecentsModel;->access$502(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 169
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/home/recents/RecentsModel;->access$602(Lcom/miui/home/recents/RecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 170
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->access$700(Lcom/miui/home/recents/RecentsModel;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/miui/home/recents/RecentsModel$HandlerCallbacks;->this$0:Lcom/miui/home/recents/RecentsModel;

    invoke-static {p1, v4}, Lcom/miui/home/recents/RecentsModel;->access$302(Lcom/miui/home/recents/RecentsModel;Z)Z

    const-string p1, "RecentsModel"

    const-string v0, "onTaskStackChangedBackground: finishLoading loading"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method
