.class Lcom/miui/home/launcher/monitor/UIThreadMonitor$2;
.super Lcom/miui/home/launcher/monitor/LooperObserver;
.source "UIThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/monitor/UIThreadMonitor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$2;->this$0:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    invoke-direct {p0}, Lcom/miui/home/launcher/monitor/LooperObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(Ljava/lang/String;JJJJJJ)V
    .locals 0

    const-string p2, "Launcher.UIThreadMonitor"

    const-string p3, "activityName[%s] frame cost:%sms [%s|%s|%s]ns"

    const/4 p4, 0x5

    .line 127
    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p5, 0x1

    aput-object p1, p4, p5

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p5, 0x2

    aput-object p1, p4, p5

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p5, 0x3

    aput-object p1, p4, p5

    invoke-static {p12, p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p5, 0x4

    aput-object p1, p4, p5

    invoke-static {p2, p3, p4}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
