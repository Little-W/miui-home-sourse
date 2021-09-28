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
.method constructor <init>(Lcom/miui/home/recents/RecentsReceiver;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    iput p2, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$cleanType:I

    iput-object p3, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    iput-object p4, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    const-string v0, "miui.process.ProcessConfig"

    .line 133
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    iget v1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$cleanType:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_0

    .line 139
    new-array v1, v8, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "POLICY_GAME_CLEAN"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 140
    invoke-static {v0, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 139
    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    .line 142
    :cond_0
    new-array v1, v8, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v7

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "POLICY_ONE_KEY_CLEAN"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 143
    invoke-static {v0, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 142
    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    :goto_0
    if-nez v9, :cond_1

    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v3, "setWhiteList"

    .line 149
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v8, [Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    aput-object v1, v5, v7

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    aput-object v1, v6, v7

    move-object v1, v0

    move-object v2, v9

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 151
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 153
    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "setRemoveTaskNeeded"

    .line 155
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v5, v7

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v7

    move-object v1, v0

    move-object v2, v9

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v3, "setRemovingTaskIdList"

    .line 156
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v8, [Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    aput-object v1, v5, v7

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v10, v6, v7

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v1, "miui.process.ProcessManager"

    .line 157
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "kill"

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v0, v4, v7

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v9, v0, v7

    invoke-static {v1, v2, v3, v4, v0}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RecentsReceiver"

    const-string v1, "clear success"

    .line 160
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RecentsReceiver"

    const-string v2, "doClear"

    .line 135
    return-void
.end method
