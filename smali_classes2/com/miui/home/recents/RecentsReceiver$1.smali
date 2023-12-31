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
.method constructor <init>(Lcom/miui/home/recents/RecentsReceiver;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$1;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    iput-object p2, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    iput p4, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$cleanType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidT()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/miui/home/recents/RecentsReceiver$1;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    iget-object v3, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/miui/home/recents/RecentsReceiver;->access$000(Lcom/miui/home/recents/RecentsReceiver;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/RecentsReceiver$1;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    iget-object v3, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$taskinfos:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/miui/home/recents/RecentsReceiver;->access$100(Lcom/miui/home/recents/RecentsReceiver;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 142
    :goto_0
    iget v2, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$cleanType:I

    if-nez v2, :cond_1

    .line 143
    iget-object p0, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-static {v0, p0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doGameClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/RecentsReceiver$1;->val$packages:Ljava/util/List;

    invoke-static {v0, p0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->doOneKeyClean(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    const-string p0, "RecentsReceiver"

    const-string v0, "clear success"

    .line 147
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
