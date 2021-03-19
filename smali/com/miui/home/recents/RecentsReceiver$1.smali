.class Lcom/miui/home/recents/RecentsReceiver$1;
.super Ljava/lang/Object;
.source "RecentsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/RecentsReceiver;->doClear(Ljava/util/List;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/RecentsReceiver;

.field final synthetic val$cleanType:I

.field final synthetic val$packages:Ljava/util/List;

.field final synthetic val$taskinfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/RecentsReceiver;Ljava/util/List;ILjava/util/List;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    iput-object p2, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    iput p3, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$cleanType:I

    iput-object p4, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 131
    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_0
    iget v1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$cleanType:I

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doGameClean(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 136
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doForceClean(Ljava/util/List;)V

    goto :goto_1

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doOneKeyClean(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    const-string v0, "RecentsReceiver"

    const-string v1, "clear success"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
