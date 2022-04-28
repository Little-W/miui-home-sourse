.class Lcom/miui/launcher/utils/BoostHelper$2;
.super Ljava/lang/Object;
.source "BoostHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/launcher/utils/BoostHelper;->boostThreadInternal(J[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/utils/BoostHelper;

.field final synthetic val$duration:J

.field final synthetic val$threadIds:[I


# direct methods
.method constructor <init>(Lcom/miui/launcher/utils/BoostHelper;[IJ)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/miui/launcher/utils/BoostHelper$2;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    iput-object p2, p0, Lcom/miui/launcher/utils/BoostHelper$2;->val$threadIds:[I

    iput-wide p3, p0, Lcom/miui/launcher/utils/BoostHelper$2;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/miui/launcher/utils/BoostHelper$2;->val$threadIds:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/launcher/utils/BoostHelper$2;->this$0:Lcom/miui/launcher/utils/BoostHelper;

    invoke-static {v0}, Lcom/miui/launcher/utils/BoostHelper;->access$600(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v2, "beginSchedThreads"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-string v5, "[I"

    .line 163
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/launcher/utils/BoostHelper$2;->val$threadIds:[I

    aput-object v5, v3, v6

    iget-wide v5, p0, Lcom/miui/launcher/utils/BoostHelper$2;->val$duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v7

    .line 162
    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
