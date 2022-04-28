.class public final synthetic Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$CfAB1-4PsRdcl7uLniubSLF4L2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/content/ComponentName;

.field private final synthetic f$1:Lcom/android/systemui/shared/recents/model/Task$TaskKey;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$CfAB1-4PsRdcl7uLniubSLF4L2o;->f$0:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$CfAB1-4PsRdcl7uLniubSLF4L2o;->f$1:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$CfAB1-4PsRdcl7uLniubSLF4L2o;->f$0:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$CfAB1-4PsRdcl7uLniubSLF4L2o;->f$1:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    check-cast p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    invoke-static {v0, v1, p1}, Lcom/miui/home/recents/ForegroundTaskInfo;->lambda$removeForegroundSmallWindow$1(Landroid/content/ComponentName;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result p1

    return p1
.end method
