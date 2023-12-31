.class Lcom/miui/home/launcher/Launcher$23;
.super Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->insertNewScreen(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 3720
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$23;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p11, p0, Lcom/miui/home/launcher/Launcher$23;->val$action:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p10}, Lcom/miui/home/launcher/Launcher$WaitForAddScreenReadyTask;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;JJIIZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 3723
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$23;->val$action:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 3724
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
