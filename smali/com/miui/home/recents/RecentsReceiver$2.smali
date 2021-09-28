.class Lcom/miui/home/recents/RecentsReceiver$2;
.super Ljava/lang/Object;
.source "RecentsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/RecentsReceiver;->showCleanEndMsg(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/RecentsReceiver;

.field final synthetic val$freeAtFirst:J


# direct methods
.method constructor <init>(Lcom/miui/home/recents/RecentsReceiver;J)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$2;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    iput-wide p2, p0, Lcom/miui/home/recents/RecentsReceiver$2;->val$freeAtFirst:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 169
    new-instance v0, Lmiuix/androidbasewidget/widget/CircleProgressBar;

    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver$2;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    invoke-static {v1}, Lcom/miui/home/recents/RecentsReceiver;->access$000(Lcom/miui/home/recents/RecentsReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 170
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f0800d0

    aput v4, v2, v3

    new-array v1, v1, [I

    const v4, 0x7f0800d1

    aput v4, v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setDrawablesForLevels([I[I[I)V

    .line 173
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setMax(I)V

    .line 174
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v1

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/miui/home/recents/RecentsReceiver$2;->val$freeAtFirst:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->setProgress(I)V

    const-string v1, "RecentsReceiver"

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalPhysicalMemory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    iget-object v1, p0, Lcom/miui/home/recents/RecentsReceiver$2;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    invoke-static {v1}, Lcom/miui/home/recents/RecentsReceiver;->access$000(Lcom/miui/home/recents/RecentsReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 178
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x51

    .line 184
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 185
    iget-object v2, p0, Lcom/miui/home/recents/RecentsReceiver$2;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    invoke-static {v2}, Lcom/miui/home/recents/RecentsReceiver;->access$000(Lcom/miui/home/recents/RecentsReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    const v2, 0x7f11000c

    .line 186
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v2, "privateFlags"

    .line 187
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "PRIVATE_FLAG_SHOW_FOR_ALL_USERS"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 188
    invoke-static {v4, v5, v6}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 187
    invoke-static {v8, v2, v3, v4}, Lcom/miui/launcher/utils/ReflectUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 190
    invoke-interface {v1, v0, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v2, Lcom/miui/home/recents/RecentsReceiver$2$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/recents/RecentsReceiver$2$1;-><init>(Lcom/miui/home/recents/RecentsReceiver$2;Lmiuix/androidbasewidget/widget/CircleProgressBar;Landroid/view/WindowManager;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/androidbasewidget/widget/CircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
