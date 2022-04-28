.class Lcom/miui/launcher/utils/BoostHelper$1;
.super Ljava/lang/Object;
.source "BoostHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/launcher/utils/BoostHelper;->bindCoreInternal(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/utils/BoostHelper;

.field final synthetic val$duration:J

.field final synthetic val$finalDuration:J

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/launcher/utils/BoostHelper;Landroid/view/View;JJ)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    iput-object p2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->val$view:Landroid/view/View;

    iput-wide p3, p0, Lcom/miui/launcher/utils/BoostHelper$1;->val$duration:J

    iput-wide p5, p0, Lcom/miui/launcher/utils/BoostHelper$1;->val$finalDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 127
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->val$view:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/BoostHelper;->access$000(Lcom/miui/launcher/utils/BoostHelper;Landroid/view/View;)I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/miui/launcher/utils/BoostHelper;->access$102(Lcom/miui/launcher/utils/BoostHelper;J)J

    .line 130
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    iget-wide v3, p0, Lcom/miui/launcher/utils/BoostHelper$1;->val$duration:J

    invoke-static {v2, v3, v4}, Lcom/miui/launcher/utils/BoostHelper;->access$202(Lcom/miui/launcher/utils/BoostHelper;J)J

    .line 131
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {v2}, Lcom/miui/launcher/utils/BoostHelper;->access$300(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    const-string v5, "miui.turbosched.TurboSchedManager"

    invoke-static {v5}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/miui/launcher/utils/BoostHelper;->access$302(Lcom/miui/launcher/utils/BoostHelper;Ljava/lang/Class;)Ljava/lang/Class;

    .line 133
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    iget-object v5, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {v5}, Lcom/miui/launcher/utils/BoostHelper;->access$300(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/miui/launcher/utils/BoostHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Lcom/miui/launcher/utils/ReflectUtils;->createNewInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/miui/launcher/utils/BoostHelper;->access$402(Lcom/miui/launcher/utils/BoostHelper;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {v2}, Lcom/miui/launcher/utils/BoostHelper;->access$300(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {v2}, Lcom/miui/launcher/utils/BoostHelper;->access$400(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {v2}, Lcom/miui/launcher/utils/BoostHelper;->access$300(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;

    move-result-object v5

    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {v2}, Lcom/miui/launcher/utils/BoostHelper;->access$400(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "setTurboSchedAction"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/Class;

    const-string v10, "[I"

    .line 141
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    new-array v10, v2, [Ljava/lang/Object;

    new-array v2, v2, [I

    aput v0, v2, v3

    aput v1, v2, v4

    aput-object v2, v10, v3

    iget-wide v0, p0, Lcom/miui/launcher/utils/BoostHelper$1;->val$finalDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v4

    .line 139
    invoke-static/range {v5 .. v10}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "Launcher.Boost"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindcore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/launcher/utils/BoostHelper$1;->val$finalDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/launcher/utils/BoostHelper$1;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {v0, v4}, Lcom/miui/launcher/utils/BoostHelper;->access$502(Lcom/miui/launcher/utils/BoostHelper;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :goto_1
    return-void
.end method
