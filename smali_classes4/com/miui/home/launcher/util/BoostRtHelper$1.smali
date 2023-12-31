.class Lcom/miui/home/launcher/util/BoostRtHelper$1;
.super Ljava/lang/Object;
.source "BoostRtHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/util/BoostRtHelper;->boostThreadInternal(JLjava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

.field final synthetic val$duration:J

.field final synthetic val$mode:I

.field final synthetic val$threadIds:[I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/util/BoostRtHelper;[IJI)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$threadIds:[I

    iput-wide p3, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$duration:J

    iput p5, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/util/BoostRtHelper;->access$000(Lcom/miui/home/launcher/util/BoostRtHelper;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "[I"

    const-string v2, "beginSchedThreads"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/util/BoostRtHelper;->access$100(Lcom/miui/home/launcher/util/BoostRtHelper;)Ljava/lang/Class;

    move-result-object v0

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    .line 97
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v8, v4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v8, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v8, v5

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$threadIds:[I

    aput-object v7, v1, v4

    iget-wide v9, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$duration:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    iget p0, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$mode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v5

    .line 96
    invoke-static {v0, v6, v2, v8, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->this$0:Lcom/miui/home/launcher/util/BoostRtHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/util/BoostRtHelper;->access$100(Lcom/miui/home/launcher/util/BoostRtHelper;)Ljava/lang/Class;

    move-result-object v0

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Class;

    .line 100
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v7, v4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v7, v3

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$threadIds:[I

    aput-object v5, v1, v4

    iget-wide v4, p0, Lcom/miui/home/launcher/util/BoostRtHelper$1;->val$duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v3

    .line 99
    invoke-static {v0, v6, v2, v7, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
