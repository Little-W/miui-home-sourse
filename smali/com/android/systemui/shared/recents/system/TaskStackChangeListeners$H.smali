.class final Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;
.super Landroid/os/Handler;
.source "TaskStackChangeListeners.java"


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

.field private static final ON_TASK_DISPLAY_CHANGED:I = 0xc

.field private static final ON_TASK_PROFILE_LOCKED:I = 0x8

.field private static final ON_TASK_SNAPSHOT_CHANGED:I = 0x2

.field private static final ON_TASK_STACK_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Landroid/os/Looper;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    .line 202
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 208
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_d

    .line 290
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_0
    if-ltz p1, :cond_4

    .line 291
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskDisplayChanged()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_1
    if-ltz p1, :cond_4

    .line 279
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayFailed()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 240
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_4

    .line 241
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityUnpinned()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 253
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_4

    .line 254
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onPinnedStackAnimationStarted()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 284
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_4
    if-ltz v1, :cond_4

    .line 285
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskProfileLocked(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 272
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_5
    if-ltz p1, :cond_4

    .line 273
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityDismissingDockedStack()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 265
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_6
    if-ltz v1, :cond_4

    .line 266
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 259
    :pswitch_7
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_7
    if-ltz p1, :cond_4

    .line 260
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onPinnedStackAnimationEnded()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    .line 246
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_8
    if-ltz v1, :cond_4

    .line 247
    iget-object v3, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_9

    :cond_0
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onPinnedActivityRestartAttempt(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 233
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_a
    if-ltz v1, :cond_4

    .line 234
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onActivityPinned(Ljava/lang/String;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :pswitch_a
    const-string v1, "onTaskSnapshotChanged"

    .line 218
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 219
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->createTaskSnapshotCompat(Ljava/lang/Object;)Lcom/android/systemui/shared/recents/system/ITaskSnapshot;

    move-result-object v1

    .line 220
    new-instance v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 221
    invoke-interface {v1}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getTaskThumbnailInfo()Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;

    move-result-object v4

    .line 222
    invoke-interface {v1}, Lcom/android/systemui/shared/recents/system/ITaskSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/Bitmap;)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_2

    .line 224
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 229
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_d

    :pswitch_b
    const-string p1, "onTaskStackChanged"

    .line 210
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_c
    if-ltz p1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskStackChanged()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    .line 214
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 295
    :cond_4
    :goto_d
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
