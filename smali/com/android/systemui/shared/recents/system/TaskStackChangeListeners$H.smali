.class final Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final ON_ACTIVITY_DISMISSING_DOCKED_STACK:I = 0x7

.field private static final ON_ACTIVITY_FORCED_RESIZABLE:I = 0x6

.field private static final ON_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED:I = 0xb

.field private static final ON_ACTIVITY_PINNED:I = 0x3

.field private static final ON_ACTIVITY_UNPINNED:I = 0xa

.field private static final ON_PINNED_ACTIVITY_RESTART_ATTEMPT:I = 0x4

.field private static final ON_PINNED_STACK_ANIMATION_ENDED:I = 0x5

.field private static final ON_PINNED_STACK_ANIMATION_STARTED:I = 0x9

.field private static final ON_TASK_DESCRIPTION_CHANGED:I = 0xd

.field private static final ON_TASK_DISPLAY_CHANGED:I = 0xc

.field private static final ON_TASK_PROFILE_LOCKED:I = 0x8

.field private static final ON_TASK_SNAPSHOT_CHANGED:I = 0x2

.field private static final ON_TASK_STACK_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskDisplayChanged()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_11

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityUnpinned()V

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_4
    if-ltz p1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onPinnedStackAnimationStarted()V

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_5
    if-ltz v1, :cond_11

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v2

    if-eqz v2, :cond_6

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskProfileLocked(II)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_6
    if-ltz p1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityDismissingDockedStack()V

    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_7
    if-ltz v1, :cond_11

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :pswitch_8
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_8
    if-ltz p1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onPinnedStackAnimationEnded()V

    :cond_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_9
    if-ltz v1, :cond_11

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v3

    if-eqz v3, :cond_b

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onPinnedActivityRestartAttempt(Z)V

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_11

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityPinned(Ljava/lang/String;II)V

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :pswitch_b
    const-string v1, "onTaskSnapshotChanged"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->createTaskSnapshotCompat(Ljava/lang/Object;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-interface {v1}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_e

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v2

    if-eqz v2, :cond_d

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_e

    :pswitch_c
    const-string p1, "onTaskStackChanged"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_d
    if-ltz p1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Ljava/util/List;I)Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskStackChanged()V

    :cond_f
    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    :cond_10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_11
    :goto_e
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
