.class Lcom/miui/maml/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/SoundManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/SoundManager;


# direct methods
.method constructor <init>(Lcom/miui/maml/SoundManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    invoke-static {v0, v1}, Lcom/miui/maml/SoundManager;->access$002(Lcom/miui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 108
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    invoke-static {v0}, Lcom/miui/maml/SoundManager;->access$000(Lcom/miui/maml/SoundManager;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 109
    iget-object v0, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    invoke-static {v0}, Lcom/miui/maml/SoundManager;->access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/maml/SoundManager;->access$202(Lcom/miui/maml/SoundManager;Z)Z

    .line 111
    iget-object v1, p0, Lcom/miui/maml/SoundManager$1;->this$0:Lcom/miui/maml/SoundManager;

    invoke-static {v1}, Lcom/miui/maml/SoundManager;->access$100(Lcom/miui/maml/SoundManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
